package com.wandoujia.download.utils;

import com.wandoujia.download.model.SegmentInfo;
import java.util.List;
import java.util.zip.CRC32;
import java.util.zip.Checksum;

public class CrcCalculator {
    public List a;
    public int c;
    public long d;
    public long e;
    public Checksum b = new CRC32();
    public boolean f = true;

    public static class CrcVerifiedException extends Exception {
        public CrcVerifiedException(String str) {
            super(str);
        }
    }

    public CrcCalculator(List list, long j, long j2) {
        this.c = 0;
        this.d = 0L;
        this.a = list;
        this.c = (int) Math.ceil(j / j2);
        this.d = j;
        this.e = j2;
    }

    public void a(byte[] bArr, int i) throws CrcVerifiedException {
        long j = this.d + ((long) i);
        this.d = j;
        boolean z = this.f;
        if (!z || j > ((long) this.c) * this.e) {
            int i2 = this.c;
            long j2 = this.e;
            if (j < ((long) i2) * j2) {
                this.b.update(bArr, 0, i);
                return;
            }
            if (!z) {
                this.b.update(bArr, 0, i - ((int) (j - (((long) i2) * j2))));
                if (!Long.toHexString(this.b.getValue()).equals(((SegmentInfo) this.a.get(this.c - 1)).getCrc())) {
                    throw new CrcVerifiedException("crc result not equals the given one");
                }
                this.b.reset();
            }
            this.f = false;
            long j3 = this.d;
            int i3 = this.c;
            long j4 = this.e;
            if (j3 != ((long) i3) * j4) {
                this.b.update(bArr, i - ((int) (j3 - (((long) i3) * j4))), (int) (j3 - (((long) i3) * j4)));
            }
            this.c++;
        }
    }
}
