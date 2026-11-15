package org.apache.commons.compress.archivers.zip;

import java.util.Date;

public class k implements t {

    private static final ZipShort f67998d = new ZipShort(10);

    private static final ZipShort f67999e = new ZipShort(1);

    private static final ZipShort f68000f = new ZipShort(24);

    private ZipEightByteInteger f68001a;

    private ZipEightByteInteger f68002b;

    private ZipEightByteInteger f68003c;

    public k() {
        ZipEightByteInteger zipEightByteInteger = ZipEightByteInteger.ZERO;
        this.f68001a = zipEightByteInteger;
        this.f68002b = zipEightByteInteger;
        this.f68003c = zipEightByteInteger;
    }

    private void d(byte[] bArr, int i10, int i11) {
        if (i11 >= 26) {
            if (f68000f.equals(new ZipShort(bArr, i10))) {
                this.f68001a = new ZipEightByteInteger(bArr, i10 + 2);
                this.f68002b = new ZipEightByteInteger(bArr, i10 + 10);
                this.f68003c = new ZipEightByteInteger(bArr, i10 + 18);
            }
        }
    }

    private void e() {
        ZipEightByteInteger zipEightByteInteger = ZipEightByteInteger.ZERO;
        this.f68001a = zipEightByteInteger;
        this.f68002b = zipEightByteInteger;
        this.f68003c = zipEightByteInteger;
    }

    private static Date f(ZipEightByteInteger zipEightByteInteger) {
        if (zipEightByteInteger == null || ZipEightByteInteger.ZERO.equals(zipEightByteInteger)) {
            return null;
        }
        return new Date((zipEightByteInteger.getLongValue() - 116444736000000000L) / 10000);
    }

    public Date a() {
        return f(this.f68002b);
    }

    public Date b() {
        return f(this.f68003c);
    }

    public Date c() {
        return f(this.f68001a);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof k)) {
            return false;
        }
        k kVar = (k) obj;
        ZipEightByteInteger zipEightByteInteger = this.f68001a;
        ZipEightByteInteger zipEightByteInteger2 = kVar.f68001a;
        if (zipEightByteInteger != zipEightByteInteger2 && (zipEightByteInteger == null || !zipEightByteInteger.equals(zipEightByteInteger2))) {
            return false;
        }
        ZipEightByteInteger zipEightByteInteger3 = this.f68002b;
        ZipEightByteInteger zipEightByteInteger4 = kVar.f68002b;
        if (zipEightByteInteger3 != zipEightByteInteger4 && (zipEightByteInteger3 == null || !zipEightByteInteger3.equals(zipEightByteInteger4))) {
            return false;
        }
        ZipEightByteInteger zipEightByteInteger5 = this.f68003c;
        ZipEightByteInteger zipEightByteInteger6 = kVar.f68003c;
        return zipEightByteInteger5 == zipEightByteInteger6 || (zipEightByteInteger5 != null && zipEightByteInteger5.equals(zipEightByteInteger6));
    }

    @Override
    public ZipShort getHeaderId() {
        return f67998d;
    }

    public int hashCode() {
        ZipEightByteInteger zipEightByteInteger = this.f68001a;
        int iHashCode = zipEightByteInteger != null ? (-123) ^ zipEightByteInteger.hashCode() : -123;
        ZipEightByteInteger zipEightByteInteger2 = this.f68002b;
        if (zipEightByteInteger2 != null) {
            iHashCode ^= Integer.rotateLeft(zipEightByteInteger2.hashCode(), 11);
        }
        ZipEightByteInteger zipEightByteInteger3 = this.f68003c;
        return zipEightByteInteger3 != null ? iHashCode ^ Integer.rotateLeft(zipEightByteInteger3.hashCode(), 22) : iHashCode;
    }

    @Override
    public void parseFromCentralDirectoryData(byte[] bArr, int i10, int i11) {
        e();
        parseFromLocalFileData(bArr, i10, i11);
    }

    @Override
    public void parseFromLocalFileData(byte[] bArr, int i10, int i11) {
        int i12 = i11 + i10;
        int value = i10 + 4;
        while (value + 4 <= i12) {
            ZipShort zipShort = new ZipShort(bArr, value);
            int i13 = value + 2;
            if (zipShort.equals(f67999e)) {
                d(bArr, i13, i12 - i13);
                return;
            }
            value = i13 + new ZipShort(bArr, i13).getValue() + 2;
        }
    }

    public String toString() {
        return "0x000A Zip Extra Field: Modify:[" + c() + "]  Access:[" + a() + "]  Create:[" + b() + "] ";
    }
}
