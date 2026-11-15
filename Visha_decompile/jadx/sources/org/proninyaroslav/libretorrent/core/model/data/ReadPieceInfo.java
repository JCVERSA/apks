package org.proninyaroslav.libretorrent.core.model.data;

public class ReadPieceInfo {
    public int a;
    public int b;
    public long c;
    public Exception d;

    public ReadPieceInfo(int i, int i2, long j, Exception exc) {
        this.a = i;
        this.b = i2;
        this.c = j;
        this.d = exc;
    }

    public String toString() {
        return "ReadPieceInfo{piece=" + this.a + ", size=" + this.b + ", bufferPtr=" + this.c + ", err=" + this.d + '}';
    }
}
