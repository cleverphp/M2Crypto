/* Copyright (c) 1999-2004 Ng Pheng Siong. All rights reserved.  */
/* $Id: _asn1.i,v 1.2 2004/03/21 12:34:38 ngps Exp $ */

%{
#include <openssl/asn1.h>
%}

%apply Pointer NONNULL { BIO * };
%apply Pointer NONNULL { ASN1_OBJECT * };
%apply Pointer NONNULL { ASN1_STRING * };
%apply Pointer NONNULL { ASN1_INTEGER * };
%apply Pointer NONNULL { ASN1_UTCTIME * };

%name(asn1_object_new) extern ASN1_OBJECT *ASN1_OBJECT_new( void );
%name(asn1_object_create) extern ASN1_OBJECT *ASN1_OBJECT_create( int, unsigned char *, int, const char *, const char *);
%name(asn1_object_free) extern void ASN1_OBJECT_free( ASN1_OBJECT *);
%name(i2d_asn1_object) extern int i2d_ASN1_OBJECT( ASN1_OBJECT *, unsigned char **);
%name(c2i_asn1_object) extern ASN1_OBJECT *c2i_ASN1_OBJECT( ASN1_OBJECT **, unsigned char **, long);
%name(d2i_asn1_object) extern ASN1_OBJECT *d2i_ASN1_OBJECT( ASN1_OBJECT **, unsigned char **, long);

%name(asn1_string_new) extern ASN1_STRING *ASN1_STRING_new( void );
%name(asn1_string_free) extern void ASN1_STRING_free( ASN1_STRING *);
%name(asn1_string_print) extern int ASN1_STRING_print(BIO *, ASN1_STRING *);

%name(asn1_utctime_new) extern ASN1_UTCTIME *ASN1_UTCTIME_new( void );
%name(asn1_utctime_free) extern void ASN1_UTCTIME_free(ASN1_UTCTIME *);
%name(asn1_utctime_check) extern int ASN1_UTCTIME_check(ASN1_UTCTIME *);
%name(asn1_utctime_set) extern ASN1_UTCTIME *ASN1_UTCTIME_set(ASN1_UTCTIME *, long);
%name(asn1_utctime_set_string) extern int ASN1_UTCTIME_set_string(ASN1_UTCTIME *, char *);
%name(asn1_utctime_print) extern int ASN1_UTCTIME_print(BIO *, ASN1_UTCTIME *);

%name(asn1_integer_get) extern long ASN1_INTEGER_get(ASN1_INTEGER *);

%inline %{
/* ASN1_UTCTIME_set_string () is a macro */
int asn1_utctime_type_check(ASN1_UTCTIME *ASN1_UTCTIME) {
    return 1;
}

%}
