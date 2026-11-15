package com.bytedance.sdk.component.HiB.TKC.Sj;

import android.content.Context;
import android.os.Environment;
import android.os.StatFs;
import java.io.File;

public class Sj implements com.bytedance.sdk.component.HiB.sP, Cloneable {
    private static volatile com.bytedance.sdk.component.HiB.sP vS;
    private boolean EjP;
    private File HiB;
    private long Sj;
    private boolean TKC;
    private int sP;

    public Sj(int i10, long j10, File file) {
        this(i10, j10, i10 != 0, j10 != 0, file);
    }

    public static com.bytedance.sdk.component.HiB.sP TEQ() {
        return vS;
    }

    private static long Ym() {
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        return ((long) statFs.getAvailableBlocks()) * ((long) statFs.getBlockSize());
    }

    @Override
    public File Dq() {
        return this.HiB;
    }

    @Override
    public int EjP() {
        return 0;
    }

    @Override
    public boolean HiB() {
        return this.TKC;
    }

    @Override
    public boolean Jcg() {
        return this.EjP;
    }

    @Override
    public long Sj() {
        return this.Sj;
    }

    @Override
    public int TKC() {
        return 0;
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
        return false;
    }

    public Sj(int i10, long j10, boolean z10, boolean z11, File file) {
        this.Sj = j10;
        this.sP = i10;
        this.TKC = z10;
        this.EjP = z11;
        this.HiB = file;
    }

    public static void Sj(Context context, com.bytedance.sdk.component.HiB.sP sPVar) {
        if (sPVar != null) {
            vS = sPVar;
        } else {
            vS = Sj(new File(context.getCacheDir(), "image"));
        }
    }

    public static com.bytedance.sdk.component.HiB.sP Sj(File file) {
        int iMin;
        long jMin;
        file.mkdirs();
        if (vS == null) {
            iMin = Math.min(Long.valueOf(Runtime.getRuntime().maxMemory()).intValue() / 16, 31457280);
            jMin = Math.min(Ym() / 16, 41943040L);
        } else {
            iMin = Math.min(vS.sP() / 2, 31457280);
            jMin = Math.min(vS.Sj() / 2, 41943040L);
        }
        return new Sj(Math.max(iMin, 26214400), Math.max(jMin, 20971520L), file);
    }
}
