// Licensed to the .NET Foundation under one or more agreements.
// The .NET Foundation licenses this file to you under the MIT license.


.assembly extern legacy library mscorlib {}
.assembly extern System.Console
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )
  .ver 4:0:0:0
}


//
//======================================

//---- CLASS ----------------
.class public		_ret {

//---- GLOBAL DATA ----------

    .data DATA = int32(0x00000000)

//---- METHODS --------------

.method public static		class _ret ret_test_0(class _ret) {
.maxstack	1
	ldarg	0
	ret

}
.method public static		class _ret ret_test_1(class _ret) {
.maxstack	1
	ldarg	0
	ret

}
.method public static		class _ret ret_test_2(class _ret) {
.maxstack	1
	ldarg	0
	ret

}
.method public static		class _ret ret_test_3(class _ret) {
.maxstack	1
	ldarg	0
	ret

}
.method public static		class _ret ret_test_4(class _ret) {
.maxstack	1
	ldarg	0
	ret

}
.method public static		class _ret ret_test_5(class _ret) {
.maxstack	1
	ldarg	0
	ret

}
//---- CONSTRUCTOR ----------
.method public		void _ret() {
.maxstack	0
	ret
}

//---- MAIN -----------------
.method public static	int32 main(class [mscorlib]System.String[]) {
.entrypoint
.maxstack		5
//====== begin testing ======

	newobj	instance 	void _ret::_ret()
	dup
	call		class _ret _ret::ret_test_0(class _ret)
	ceq
	brfalse		FAIL

	newobj	instance 	void _ret::_ret()
	dup
	call		class _ret _ret::ret_test_1(class _ret)
	ceq
	brfalse		FAIL

	newobj	instance 	void _ret::_ret()
	dup
	call		class _ret _ret::ret_test_2(class _ret)
	ceq
	brfalse		FAIL

	newobj	instance 	void _ret::_ret()
	dup
	call		class _ret _ret::ret_test_3(class _ret)
	ceq
	brfalse		FAIL

	newobj	instance 	void _ret::_ret()
	dup
	call		class _ret _ret::ret_test_4(class _ret)
	ceq
	brfalse		FAIL

	newobj	instance 	void _ret::_ret()
	dup
	call		class _ret _ret::ret_test_5(class _ret)
	ceq
	brfalse		FAIL


//====== end testing ========

//---- branch here on pass --
PASS:
	ldc.i4 100
	br		END

//---- branch here on fail --
FAIL:
	ldc.i4 101

//---- return the result ----
END:
	ret
//---- END OF METHOD --------
}
//---- EOF ------------------
}



.assembly ldc_ret_ref{}

