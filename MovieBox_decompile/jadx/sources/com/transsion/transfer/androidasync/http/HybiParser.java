package com.transsion.transfer.androidasync.http;

import android.support.v4.media.session.PlaybackStateCompat;
import android.util.Log;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.transsion.transfer.androidasync.ByteBufferList;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;
import java.util.List;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;

abstract class HybiParser {

    private static final List f53209w = Arrays.asList(0, 1, 2, 8, 9, 10);

    private static final List f53210x = Arrays.asList(0, 1, 2);

    private int f53213c;

    private boolean f53214d;

    private boolean f53215e;

    private boolean f53216f;

    private int f53217g;

    private int f53218h;

    private int f53219i;

    private int f53220j;

    private com.transsion.transfer.androidasync.r f53232v;

    private boolean f53211a = true;

    private boolean f53212b = false;

    private byte[] f53221k = new byte[0];

    private byte[] f53222l = new byte[0];

    private boolean f53223m = false;

    private ByteArrayOutputStream f53224n = new ByteArrayOutputStream();

    private Inflater f53225o = new Inflater(true);

    private byte[] f53226p = new byte[4096];

    st.d f53227q = new a();

    st.d f53228r = new b();

    st.d f53229s = new c();

    st.d f53230t = new d();

    st.d f53231u = new e();

    public static class ProtocolError extends IOException {
        public ProtocolError(String str) {
            super(str);
        }
    }

    class a implements st.d {
        a() {
        }

        @Override
        public void C(com.transsion.transfer.androidasync.p pVar, ByteBufferList byteBufferList) {
            try {
                HybiParser.this.F(byteBufferList.e());
            } catch (ProtocolError e10) {
                HybiParser.this.H(e10);
                e10.printStackTrace();
            }
            HybiParser.this.C();
        }
    }

    class b implements st.d {
        b() {
        }

        @Override
        public void C(com.transsion.transfer.androidasync.p pVar, ByteBufferList byteBufferList) {
            HybiParser.this.E(byteBufferList.e());
            HybiParser.this.C();
        }
    }

    class c implements st.d {
        c() {
        }

        @Override
        public void C(com.transsion.transfer.androidasync.p pVar, ByteBufferList byteBufferList) {
            byte[] bArr = new byte[HybiParser.this.f53218h];
            byteBufferList.h(bArr);
            try {
                HybiParser.this.D(bArr);
            } catch (ProtocolError e10) {
                HybiParser.this.H(e10);
                e10.printStackTrace();
            }
            HybiParser.this.C();
        }
    }

    class d implements st.d {
        d() {
        }

        @Override
        public void C(com.transsion.transfer.androidasync.p pVar, ByteBufferList byteBufferList) {
            HybiParser.this.f53221k = new byte[4];
            byteBufferList.h(HybiParser.this.f53221k);
            HybiParser.this.f53213c = 4;
            HybiParser.this.C();
        }
    }

    class e implements st.d {
        e() {
        }

        @Override
        public void C(com.transsion.transfer.androidasync.p pVar, ByteBufferList byteBufferList) {
            HybiParser hybiParser = HybiParser.this;
            hybiParser.f53222l = new byte[hybiParser.f53219i];
            byteBufferList.h(HybiParser.this.f53222l);
            try {
                HybiParser.this.n();
            } catch (IOException e10) {
                HybiParser.this.H(e10);
                e10.printStackTrace();
            }
            HybiParser.this.f53213c = 0;
            HybiParser.this.C();
        }
    }

    public HybiParser(com.transsion.transfer.androidasync.p pVar) {
        com.transsion.transfer.androidasync.r rVar = new com.transsion.transfer.androidasync.r();
        this.f53232v = rVar;
        pVar.F(rVar);
        C();
    }

    public void D(byte[] bArr) {
        this.f53219i = u(bArr);
        this.f53213c = this.f53215e ? 3 : 4;
    }

    public void E(byte b10) {
        boolean z10 = (b10 & 128) == 128;
        this.f53215e = z10;
        int i10 = b10 & 127;
        this.f53219i = i10;
        if (i10 >= 0 && i10 <= 125) {
            this.f53213c = z10 ? 3 : 4;
        } else {
            this.f53218h = i10 == 126 ? 2 : 8;
            this.f53213c = 2;
        }
    }

    public void F(byte b10) throws ProtocolError {
        boolean z10 = (b10 & 64) == 64;
        boolean z11 = (b10 & 32) == 32;
        boolean z12 = (b10 & 16) == 16;
        if ((!this.f53212b && z10) || z11 || z12) {
            throw new ProtocolError("RSV not zero");
        }
        this.f53214d = (b10 & 128) == 128;
        int i10 = b10 & 15;
        this.f53217g = i10;
        this.f53216f = z10;
        this.f53221k = new byte[0];
        this.f53222l = new byte[0];
        if (!f53209w.contains(Integer.valueOf(i10))) {
            throw new ProtocolError("Bad opcode");
        }
        if (!f53210x.contains(Integer.valueOf(this.f53217g)) && !this.f53214d) {
            throw new ProtocolError("Expected non-final packet");
        }
        this.f53213c = 1;
    }

    private void I() {
        this.f53220j = 0;
        this.f53224n.reset();
    }

    private byte[] M(byte[] bArr, int i10) {
        byte[] bArr2 = new byte[bArr.length - i10];
        System.arraycopy(bArr, i10, bArr2, 0, bArr.length - i10);
        return bArr2;
    }

    private static long l(byte[] bArr, int i10, int i11) {
        if (bArr.length < i11) {
            throw new IllegalArgumentException("length must be less than or equal to b.length");
        }
        long j10 = 0;
        for (int i12 = 0; i12 < i11; i12++) {
            j10 += (long) ((bArr[i12 + i10] & 255) << (((i11 - 1) - i12) * 8));
        }
        return j10;
    }

    private byte[] m(String str) {
        try {
            return str.getBytes("UTF-8");
        } catch (UnsupportedEncodingException e10) {
            throw new RuntimeException(e10);
        }
    }

    public void n() throws IOException {
        int i10 = 0;
        byte[] bArrW = w(this.f53222l, this.f53221k, 0);
        if (this.f53216f) {
            try {
                bArrW = v(bArrW);
            } catch (DataFormatException unused) {
                throw new IOException("Invalid deflated data");
            }
        }
        int i11 = this.f53217g;
        if (i11 == 0) {
            if (this.f53220j == 0) {
                throw new ProtocolError("Mode was not set.");
            }
            this.f53224n.write(bArrW);
            if (this.f53214d) {
                byte[] byteArray = this.f53224n.toByteArray();
                if (this.f53220j == 1) {
                    y(o(byteArray));
                } else {
                    z(byteArray);
                }
                I();
                return;
            }
            return;
        }
        if (i11 == 1) {
            if (this.f53214d) {
                y(o(bArrW));
                return;
            } else {
                this.f53220j = 1;
                this.f53224n.write(bArrW);
                return;
            }
        }
        if (i11 == 2) {
            if (this.f53214d) {
                z(bArrW);
                return;
            } else {
                this.f53220j = 2;
                this.f53224n.write(bArrW);
                return;
            }
        }
        if (i11 == 8) {
            if (bArrW.length >= 2) {
                i10 = (bArrW[1] & 255) + ((bArrW[0] & 255) * 256);
            }
            x(i10, bArrW.length > 2 ? o(M(bArrW, 2)) : null);
        } else if (i11 != 9) {
            if (i11 == 10) {
                B(o(bArrW));
            }
        } else {
            if (bArrW.length > 125) {
                throw new ProtocolError("Ping payload too large");
            }
            String strO = o(bArrW);
            J(q(10, bArrW, -1));
            A(strO);
        }
    }

    private String o(byte[] bArr) {
        try {
            return new String(bArr, "UTF-8");
        } catch (UnsupportedEncodingException e10) {
            throw new RuntimeException(e10);
        }
    }

    private byte[] p(int i10, String str, int i11) {
        return q(i10, m(str), i11);
    }

    private byte[] q(int i10, byte[] bArr, int i11) {
        return r(i10, bArr, i11, 0, bArr.length);
    }

    /* JADX WARN: Code duplicated, block: B:31:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:34:0x00dd  */
    private byte[] r(int i10, byte[] bArr, int i11, int i12, int i13) {
        int i14;
        if (this.f53223m) {
            return null;
        }
        int i15 = i11 > 0 ? 2 : 0;
        int i16 = (i13 + i15) - i12;
        if (i16 <= 125) {
            i14 = 2;
        } else {
            i14 = i16 <= 65535 ? 4 : 10;
        }
        boolean z10 = this.f53211a;
        int i17 = (z10 ? 4 : 0) + i14;
        int i18 = z10 ? 128 : 0;
        byte[] bArr2 = new byte[i16 + i17];
        bArr2[0] = (byte) (((byte) i10) | (-128));
        if (i16 > 125) {
            if (i16 <= 65535) {
                bArr2[1] = (byte) (i18 | 126);
                bArr2[2] = (byte) (i16 / 256);
                bArr2[3] = (byte) (i16 & 255);
            } else {
                bArr2[1] = (byte) (i18 | 127);
                long j10 = i16;
                bArr2[2] = (byte) ((j10 / 72057594037927936L) & 255);
                bArr2[3] = (byte) ((j10 / 281474976710656L) & 255);
                bArr2[4] = (byte) ((j10 / 1099511627776L) & 255);
                bArr2[5] = (byte) ((j10 / TmcConstants.TEMP_FILE_RUNTIME_MAX_SIZE) & 255);
                bArr2[6] = (byte) ((j10 / 16777216) & 255);
                bArr2[7] = (byte) ((j10 / PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH) & 255);
                bArr2[8] = (byte) ((j10 / 256) & 255);
                bArr2[9] = (byte) (i16 & 255);
            }
            if (i11 > 0) {
                bArr2[i17] = (byte) ((i11 / 256) & 255);
                bArr2[i17 + 1] = (byte) (i11 & 255);
            }
            System.arraycopy(bArr, i12, bArr2, i17 + i15, i13 - i12);
            if (this.f53211a) {
                byte[] bArr3 = {(byte) Math.floor(Math.random() * 256.0d), (byte) Math.floor(Math.random() * 256.0d), (byte) Math.floor(Math.random() * 256.0d), (byte) Math.floor(Math.random() * 256.0d)};
                System.arraycopy(bArr3, 0, bArr2, i14, 4);
                w(bArr2, bArr3, i17);
            }
            return bArr2;
        }
        bArr2[1] = (byte) (i18 | i16);
        if (i11 > 0) {
            bArr2[i17] = (byte) ((i11 / 256) & 255);
            bArr2[i17 + 1] = (byte) (i11 & 255);
        }
        System.arraycopy(bArr, i12, bArr2, i17 + i15, i13 - i12);
        if (this.f53211a) {
            byte[] bArr4 = {(byte) Math.floor(Math.random() * 256.0d), (byte) Math.floor(Math.random() * 256.0d), (byte) Math.floor(Math.random() * 256.0d), (byte) Math.floor(Math.random() * 256.0d)};
            System.arraycopy(bArr4, 0, bArr2, i14, 4);
            w(bArr2, bArr4, i17);
        }
        return bArr2;
    }

    private int u(byte[] bArr) throws ProtocolError {
        long jL = l(bArr, 0, bArr.length);
        if (jL >= 0 && jL <= 2147483647L) {
            return (int) jL;
        }
        throw new ProtocolError("Bad integer: " + jL);
    }

    private byte[] v(byte[] bArr) throws DataFormatException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        this.f53225o.setInput(bArr);
        while (!this.f53225o.needsInput()) {
            byteArrayOutputStream.write(this.f53226p, 0, this.f53225o.inflate(this.f53226p));
        }
        this.f53225o.setInput(new byte[]{0, 0, -1, -1});
        while (!this.f53225o.needsInput()) {
            byteArrayOutputStream.write(this.f53226p, 0, this.f53225o.inflate(this.f53226p));
        }
        return byteArrayOutputStream.toByteArray();
    }

    private static byte[] w(byte[] bArr, byte[] bArr2, int i10) {
        if (bArr2.length == 0) {
            return bArr;
        }
        for (int i11 = 0; i11 < bArr.length - i10; i11++) {
            int i12 = i10 + i11;
            bArr[i12] = (byte) (bArr[i12] ^ bArr2[i11 % 4]);
        }
        return bArr;
    }

    protected abstract void A(String str);

    protected abstract void B(String str);

    void C() {
        int i10 = this.f53213c;
        if (i10 == 0) {
            this.f53232v.b(1, this.f53227q);
            return;
        }
        if (i10 == 1) {
            this.f53232v.b(1, this.f53228r);
            return;
        }
        if (i10 == 2) {
            this.f53232v.b(this.f53218h, this.f53229s);
        } else if (i10 == 3) {
            this.f53232v.b(4, this.f53230t);
        } else {
            if (i10 != 4) {
                return;
            }
            this.f53232v.b(this.f53219i, this.f53231u);
        }
    }

    public byte[] G(String str) {
        return p(9, str, -1);
    }

    protected abstract void H(Exception exc);

    protected abstract void J(byte[] bArr);

    public void K(boolean z10) {
        this.f53212b = z10;
    }

    public void L(boolean z10) {
        this.f53211a = z10;
    }

    protected void finalize() throws Throwable {
        Inflater inflater = this.f53225o;
        if (inflater != null) {
            try {
                inflater.end();
            } catch (Exception e10) {
                Log.e("HybiParser", "inflater.end failed", e10);
            }
        }
        super.finalize();
    }

    public byte[] s(String str) {
        return p(1, str, -1);
    }

    public byte[] t(byte[] bArr) {
        return q(2, bArr, -1);
    }

    protected abstract void x(int i10, String str);

    protected abstract void y(String str);

    protected abstract void z(byte[] bArr);
}
