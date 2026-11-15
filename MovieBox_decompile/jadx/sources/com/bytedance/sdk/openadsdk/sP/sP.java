package com.bytedance.sdk.openadsdk.sP;

import java.io.File;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

public class sP extends Sj {
    private volatile boolean EjP;
    private int TKC;
    private int sP;

    public sP(int i10, int i11) {
        this.sP = 15;
        this.TKC = 3;
        if (i10 <= 0) {
            throw new IllegalArgumentException("Max count must be positive number!");
        }
        this.sP = i10;
        this.TKC = i11;
    }

    private void EjP(List<File> list) {
        long jSP;
        int size;
        boolean zSj;
        if (list != null) {
            try {
                if (list.size() == 0 || (zSj = Sj((jSP = sP(list)), (size = list.size())))) {
                    return;
                }
                TreeMap treeMap = new TreeMap();
                for (File file : list) {
                    treeMap.put(Long.valueOf(file.lastModified()), file);
                }
                for (Map.Entry entry : treeMap.entrySet()) {
                    if (entry != null && !zSj) {
                        ((Long) entry.getKey()).longValue();
                        File file2 = (File) entry.getValue();
                        long length = file2.length();
                        if (file2.delete()) {
                            size--;
                            jSP -= length;
                        }
                        if (Sj(file2, jSP, size)) {
                            return;
                        }
                    }
                }
            } catch (Throwable unused) {
            }
        }
    }

    private void TKC(List<File> list) {
        long jSP = sP(list);
        int size = list.size();
        if (Sj(jSP, size)) {
            return;
        }
        for (File file : list) {
            long length = file.length();
            if (file.delete()) {
                size--;
                jSP -= length;
            }
            if (Sj(file, jSP, size)) {
                return;
            }
        }
    }

    @Override
    protected boolean Sj(long j10, int i10) {
        return i10 <= this.sP;
    }

    @Override
    protected boolean Sj(File file, long j10, int i10) {
        return i10 <= this.TKC;
    }

    @Override
    protected void Sj(List<File> list) {
        if (this.EjP) {
            EjP(list);
            this.EjP = false;
        } else {
            TKC(list);
        }
    }

    public sP(int i10, int i11, boolean z10) {
        this.sP = 15;
        this.TKC = 3;
        if (i10 > 0) {
            this.sP = i10;
            this.TKC = i11;
            this.EjP = z10;
            return;
        }
        throw new IllegalArgumentException("Max count must be positive number!");
    }
}
