package com.bytedance.sdk.component.HiB.EjP.TKC.Sj;

import android.content.Context;
import java.io.File;

public class sP implements com.bytedance.sdk.component.HiB.sP, Cloneable {
    private static volatile com.bytedance.sdk.component.HiB.sP uA;
    private File Dq;
    private int EjP;
    private boolean HiB;
    private boolean Jcg;
    private long Sj;
    private int TKC;
    private int sP;
    private boolean vS;

    public sP(int i10, int i11, int i12, long j10, File file) {
        this(i10, i11, i12, j10, i11 != 0, j10 != 0, file);
    }

    public static com.bytedance.sdk.component.HiB.sP TEQ() {
        return uA;
    }

    @Override
    public File Dq() {
        return this.Dq;
    }

    @Override
    public int EjP() {
        return this.EjP;
    }

    @Override
    public boolean HiB() {
        return this.HiB;
    }

    @Override
    public boolean Jcg() {
        return this.vS;
    }

    @Override
    public long Sj() {
        return this.Sj;
    }

    @Override
    public int TKC() {
        return this.TKC;
    }

    @Override
    public int sP() {
        return this.sP;
    }

    @Override
    public boolean uA() {
        return true;
    }

    @Override
    public boolean vS() {
        return this.Jcg;
    }

    public sP(int i10, int i11, int i12, long j10, boolean z10, boolean z11, File file) {
        this.Sj = j10;
        this.sP = i10;
        this.TKC = i11;
        this.EjP = i12;
        this.HiB = z10;
        this.vS = z11;
        this.Dq = file;
        this.Jcg = i12 != 0;
    }

    public static void Sj(Context context, com.bytedance.sdk.component.HiB.sP sPVar) {
        if (sPVar != null) {
            uA = sPVar;
        } else {
            uA = Sj(new File(context.getCacheDir(), "image"));
        }
    }

    public static com.bytedance.sdk.component.HiB.sP Sj(File file) {
        long jSj;
        int iTKC;
        int iEjP;
        file.mkdirs();
        if (uA == null) {
            iTKC = 10;
            iEjP = 14;
            jSj = 20;
        } else {
            jSj = uA.Sj();
            iTKC = uA.TKC();
            iEjP = uA.EjP();
        }
        return new sP(0, iTKC, iEjP, jSj, file);
    }
}
