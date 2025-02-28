// Licensed to the .NET Foundation under one or more agreements.
// The .NET Foundation licenses this file to you under the MIT license.

using System;
using System.Runtime.InteropServices;

internal static partial class Interop
{
    internal static partial class Advapi32
    {
        [GeneratedDllImport(Libraries.Advapi32, EntryPoint = "LogonUserW", CharSet = CharSet.Unicode, ExactSpelling = true, SetLastError = true)]
        internal static partial int LogonUser(
            string username,
            string? domain,
            string? password,
            int logonType,
            int logonProvider,
            ref IntPtr token);
    }
}
