package com.transsion.transfer.androidasync.http.server;

import com.transsion.transfer.androidasync.ByteBufferList;
import com.transsion.transfer.androidasync.t;
import java.nio.ByteBuffer;

public class p extends t {

    private byte[] f53418g;

    int f53419h = 2;

    @Override
    public void C(com.transsion.transfer.androidasync.p pVar, ByteBufferList byteBufferList) {
        if (this.f53419h > 0) {
            ByteBuffer byteBufferT = ByteBufferList.t(this.f53418g.length);
            byteBufferT.put(this.f53418g, 0, this.f53419h);
            byteBufferT.flip();
            byteBufferList.c(byteBufferT);
            this.f53419h = 0;
        }
        int iC = byteBufferList.C();
        byte[] bArr = new byte[iC];
        byteBufferList.h(bArr);
        int i10 = 0;
        int i11 = 0;
        while (i10 < iC) {
            int i12 = this.f53419h;
            if (i12 >= 0) {
                byte b10 = bArr[i10];
                byte[] bArr2 = this.f53418g;
                if (b10 == bArr2[i12]) {
                    int i13 = i12 + 1;
                    this.f53419h = i13;
                    if (i13 == bArr2.length) {
                        this.f53419h = -1;
                    }
                } else if (i12 > 0) {
                    i10 -= i12;
                    this.f53419h = 0;
                }
            } else if (i12 == -1) {
                byte b11 = bArr[i10];
                if (b11 == 13) {
                    this.f53419h = -4;
                    int length = (i10 - i11) - this.f53418g.length;
                    if (i11 != 0 || length != 0) {
                        ByteBuffer byteBufferPut = ByteBufferList.t(length).put(bArr, i11, length);
                        byteBufferPut.flip();
                        ByteBufferList byteBufferList2 = new ByteBufferList();
                        byteBufferList2.a(byteBufferPut);
                        super.C(this, byteBufferList2);
                    }
                    S();
                } else {
                    if (b11 != 45) {
                        M(new MimeEncodingException("Invalid multipart/form-data. Expected \r or -"));
                        return;
                    }
                    this.f53419h = -2;
                }
            } else if (i12 == -2) {
                if (bArr[i10] != 45) {
                    M(new MimeEncodingException("Invalid multipart/form-data. Expected -"));
                    return;
                }
                this.f53419h = -3;
            } else if (i12 == -3) {
                if (bArr[i10] != 13) {
                    M(new MimeEncodingException("Invalid multipart/form-data. Expected \r"));
                    return;
                }
                this.f53419h = -4;
                int i14 = i10 - i11;
                ByteBuffer byteBufferPut2 = ByteBufferList.t((i14 - this.f53418g.length) - 2).put(bArr, i11, (i14 - this.f53418g.length) - 2);
                byteBufferPut2.flip();
                ByteBufferList byteBufferList3 = new ByteBufferList();
                byteBufferList3.a(byteBufferPut2);
                super.C(this, byteBufferList3);
                R();
            } else if (i12 != -4) {
                M(new MimeEncodingException("Invalid multipart/form-data. Unknown state?"));
            } else if (bArr[i10] == 10) {
                i11 = i10 + 1;
                this.f53419h = 0;
            } else {
                M(new MimeEncodingException("Invalid multipart/form-data. Expected \n"));
            }
            i10++;
        }
        if (i11 < iC) {
            int iMax = (iC - i11) - Math.max(this.f53419h, 0);
            ByteBuffer byteBufferPut3 = ByteBufferList.t(iMax).put(bArr, i11, iMax);
            byteBufferPut3.flip();
            ByteBufferList byteBufferList4 = new ByteBufferList();
            byteBufferList4.a(byteBufferPut3);
            super.C(this, byteBufferList4);
        }
    }

    public String O() {
        byte[] bArr = this.f53418g;
        if (bArr == null) {
            return null;
        }
        return new String(bArr, 4, bArr.length - 4);
    }

    public String P() {
        return Q() + "--\r\n";
    }

    public String Q() {
        byte[] bArr = this.f53418g;
        return new String(bArr, 2, bArr.length - 2);
    }

    protected void R() {
    }

    protected void S() {
    }

    public void T(String str) {
        this.f53418g = ("\r\n--" + str).getBytes();
    }
}
