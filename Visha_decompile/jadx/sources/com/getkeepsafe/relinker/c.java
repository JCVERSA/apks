package com.getkeepsafe.relinker;

import android.os.Build;
import defpackage.oha;

public final class c implements b.InterfaceC0072b {
    @Override
    public void a(String str) {
        System.loadLibrary(str);
    }

    @Override
    public String b(String str) {
        return str.substring(3, str.length() - 3);
    }

    @Override
    public String[] c() {
        String[] strArr = Build.SUPPORTED_ABIS;
        if (strArr.length > 0) {
            return strArr;
        }
        String str = Build.CPU_ABI2;
        return !oha.a(str) ? new String[]{Build.CPU_ABI, str} : new String[]{Build.CPU_ABI};
    }

    @Override
    public void d(String str) {
        System.load(str);
    }

    @Override
    public String e(String str) {
        return (str.startsWith("lib") && str.endsWith(".so")) ? str : System.mapLibraryName(str);
    }
}
