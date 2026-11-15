package com.bytedance.sdk.component.Jcg;

import com.bytedance.sdk.component.sP.Sj.TEQ;
import java.io.File;
import java.util.Map;

public class sP {
    final String EjP;
    final long HiB;
    TEQ Jcg;
    final int Sj;
    final Map<String, String> TKC;
    final String sP;
    private final boolean uA;
    final long vS;
    private File Dq = null;
    private byte[] TEQ = null;

    public sP(boolean z10, int i10, String str, Map<String, String> map, String str2, long j10, long j11) {
        this.uA = z10;
        this.Sj = i10;
        this.sP = str;
        this.TKC = map;
        this.EjP = str2;
        this.HiB = j10;
        this.vS = j11;
    }

    public String EjP() {
        return this.EjP;
    }

    public File HiB() {
        return this.Dq;
    }

    public TEQ Jcg() {
        return this.Jcg;
    }

    public int Sj() {
        return this.Sj;
    }

    public Map<String, String> TKC() {
        return this.TKC;
    }

    public String sP() {
        return this.sP;
    }

    public boolean vS() {
        return this.uA;
    }

    public void Sj(File file) {
        this.Dq = file;
    }

    public void Sj(byte[] bArr) {
        this.TEQ = bArr;
    }

    public void Sj(TEQ teq) {
        this.Jcg = teq;
    }
}
