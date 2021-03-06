/* libstdcxx_wrapper.cc

   Copyright 2009 Red Hat, Inc.

This file is part of Cygwin.

This software is a copyrighted work licensed under the terms of the
Cygwin license.  Please consult the file "CYGWIN_LICENSE" for
details.  */


/* We provide these stubs to call into a user's
   provided ONDEE replacement if there is one - otherwise
   it must fall back to the standard libstdc++ version.  */

#include "winsup.h"
#include "cygwin-cxx.h"
#include "perprocess.h"

/* We are declaring asm names for the functions we define here, as we want
   to define the wrappers in this file.  GCC links everything with wrappers
   around the standard C++ memory management operators; these are the wrappers,
   but we want the compiler to know they are the malloc operators and not have
   it think they're just any old function matching 'extern "C" _wrap_*'.  */

extern void *operator new(std::size_t sz) throw (std::bad_alloc)
			__asm__ ("___wrap__Znwj");
extern void *operator new[](std::size_t sz) throw (std::bad_alloc)
			__asm__ ("___wrap__Znaj");
extern void operator delete(void *p) throw()
			__asm__ ("___wrap__ZdlPv");
extern void operator delete[](void *p) throw()
			__asm__ ("___wrap__ZdaPv");
extern void *operator new(std::size_t sz, const std::nothrow_t &nt) throw()
			__asm__ ("___wrap__ZnwjRKSt9nothrow_t");
extern void *operator new[](std::size_t sz, const std::nothrow_t &nt) throw()
			__asm__ ("___wrap__ZnajRKSt9nothrow_t");
extern void operator delete(void *p, const std::nothrow_t &nt) throw()
			__asm__ ("___wrap__ZdlPvRKSt9nothrow_t");
extern void operator delete[](void *p, const std::nothrow_t &nt) throw()
			__asm__ ("___wrap__ZdaPvRKSt9nothrow_t");

extern void *
operator new(std::size_t sz) throw (std::bad_alloc)
{
  return (*user_data->cxx_malloc->oper_new) (sz);
}

extern void *
operator new[](std::size_t sz) throw (std::bad_alloc)
{
  return (*user_data->cxx_malloc->oper_new__) (sz);
}

extern void
operator delete(void *p) throw()
{
  (*user_data->cxx_malloc->oper_delete) (p);
}

extern void
operator delete[](void *p) throw()
{
  (*user_data->cxx_malloc->oper_delete__) (p);
}

extern void *
operator new(std::size_t sz, const std::nothrow_t &nt) throw()
{
  return (*user_data->cxx_malloc->oper_new_nt) (sz, nt);
}

extern void *
operator new[](std::size_t sz, const std::nothrow_t &nt) throw()
{
  return (*user_data->cxx_malloc->oper_new___nt) (sz, nt);
}

extern void
operator delete(void *p, const std::nothrow_t &nt) throw()
{
  (*user_data->cxx_malloc->oper_delete_nt) (p, nt);
}

extern void
operator delete[](void *p, const std::nothrow_t &nt) throw()
{
  (*user_data->cxx_malloc->oper_delete___nt) (p, nt);
}

