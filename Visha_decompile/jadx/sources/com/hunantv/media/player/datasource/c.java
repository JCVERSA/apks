package com.hunantv.media.player.datasource;

import com.hunantv.media.player.libnative.IMGTVMediaDataSource;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;

public class c implements IMGTVMediaDataSource {
    private RandomAccessFile a;
    private long b;
    private String c;
    private int d;

    public c(String str, int i) {
        this.c = str;
        this.d = i;
    }

    @Override
    public void close(String str) throws IOException {
        this.b = 0L;
        RandomAccessFile randomAccessFile = this.a;
        if (randomAccessFile != null) {
            randomAccessFile.close();
            this.a = null;
        }
    }

    @Override
    public String getDataSourceUrl() {
        return this.c;
    }

    @Override
    public long getSize(String str) throws IOException {
        try {
            try {
                RandomAccessFile randomAccessFile = new RandomAccessFile(new File(str), "r");
                this.a = randomAccessFile;
                long length = randomAccessFile.length();
                this.b = length;
                return length;
            } catch (FileNotFoundException unused) {
                return -21L;
            } catch (IllegalArgumentException unused2) {
                return -22L;
            } catch (NullPointerException unused3) {
                return -23L;
            } catch (Exception unused4) {
                return -11L;
            }
        } catch (Exception unused5) {
            return -13L;
        }
    }

    @Override
    public int getVideoSourceType() {
        return this.d;
    }

    @Override
    public long readAt(String str, byte[] bArr, long j, long j2) throws IOException {
        RandomAccessFile randomAccessFile = this.a;
        if (randomAccessFile == null) {
            return -1L;
        }
        if (randomAccessFile.getFilePointer() != j) {
            this.a.seek(j);
        }
        if (j2 == 0) {
            return 0L;
        }
        long j3 = this.a.read(bArr, 0, (int) j2);
        if (j3 == -1) {
            return -2018102641L;
        }
        return j3;
    }

    @Override
    public void release() {
    }

    @Override
    public void setInfoListener(IMGTVMediaDataSource.IInfoListener iInfoListener) {
    }

    @Override
    public void setLogTag(String str) {
    }
}
