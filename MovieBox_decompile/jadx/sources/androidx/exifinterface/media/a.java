package androidx.exifinterface.media;

import android.content.res.AssetManager;
import android.media.MediaDataSource;
import android.media.MediaMetadataRetriever;
import android.os.Build;
import android.system.OsConstants;
import android.util.Log;
import androidx.core.view.InputDeviceCompat;
import com.google.logging.type.LogSeverity;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.DataInput;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TimeZone;
import java.util.regex.Pattern;
import java.util.zip.CRC32;
import org.apache.tools.zip.UnixStat;

public class a {
    private static SimpleDateFormat T;
    private static SimpleDateFormat U;
    private static final d[] Y;
    private static final d[] Z;

    private static final d[] f8836a0;

    private static final d[] f8837b0;

    private static final d[] f8838c0;

    private static final d f8839d0;

    private static final d[] f8840e0;

    private static final d[] f8841f0;

    private static final d[] f8842g0;

    private static final d[] f8843h0;

    static final d[][] f8844i0;

    private static final d[] f8845j0;

    private static final HashMap[] f8846k0;

    private static final HashMap[] f8847l0;

    private static final HashSet f8848m0;

    private static final HashMap f8849n0;

    static final Charset f8850o0;

    static final byte[] f8851p0;

    private static final byte[] f8852q0;

    private static final Pattern f8853r0;

    private static final Pattern f8854s0;

    private static final Pattern f8855t0;

    private static final Pattern f8857u0;

    private String f8863a;

    private FileDescriptor f8864b;

    private AssetManager.AssetInputStream f8865c;

    private int f8866d;

    private boolean f8867e;

    private final HashMap[] f8868f;

    private Set f8869g;

    private ByteOrder f8870h;

    private boolean f8871i;

    private boolean f8872j;

    private boolean f8873k;

    private int f8874l;

    private int f8875m;

    private byte[] f8876n;

    private int f8877o;

    private int f8878p;

    private int f8879q;

    private int f8880r;

    private int f8881s;

    private boolean f8882t;

    private static final boolean f8856u = Log.isLoggable("ExifInterface", 3);

    private static final List f8858v = Arrays.asList(1, 6, 3, 8);

    private static final List f8859w = Arrays.asList(2, 7, 4, 5);

    public static final int[] f8860x = {8, 8, 8};

    public static final int[] f8861y = {4};

    public static final int[] f8862z = {8};
    static final byte[] A = {-1, -40, -1};
    private static final byte[] B = {102, 116, 121, 112};
    private static final byte[] C = {109, 105, 102, 49};
    private static final byte[] D = {104, 101, 105, 99};
    private static final byte[] E = {79, 76, 89, 77, 80, 0};
    private static final byte[] F = {79, 76, 89, 77, 80, 85, 83, 0, 73, 73};
    private static final byte[] G = {-119, 80, 78, 71, 13, 10, 26, 10};
    private static final byte[] H = {101, 88, 73, 102};
    private static final byte[] I = {73, 72, 68, 82};
    private static final byte[] J = {73, 69, 78, 68};
    private static final byte[] K = {82, 73, 70, 70};
    private static final byte[] L = {87, 69, 66, 80};
    private static final byte[] M = {69, 88, 73, 70};
    private static final byte[] N = {-99, 1, 42};
    private static final byte[] O = "VP8X".getBytes(Charset.defaultCharset());
    private static final byte[] P = "VP8L".getBytes(Charset.defaultCharset());
    private static final byte[] Q = "VP8 ".getBytes(Charset.defaultCharset());
    private static final byte[] R = "ANIM".getBytes(Charset.defaultCharset());
    private static final byte[] S = "ANMF".getBytes(Charset.defaultCharset());
    static final String[] V = {"", "BYTE", "STRING", "USHORT", "ULONG", "URATIONAL", "SBYTE", "UNDEFINED", "SSHORT", "SLONG", "SRATIONAL", "SINGLE", "DOUBLE", "IFD"};
    static final int[] W = {0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8, 1};
    static final byte[] X = {65, 83, 67, 73, 73, 0, 0, 0};

    private static class b extends InputStream implements DataInput {

        private static final ByteOrder f8886e = ByteOrder.LITTLE_ENDIAN;

        private static final ByteOrder f8887f = ByteOrder.BIG_ENDIAN;

        final DataInputStream f8888a;

        private ByteOrder f8889b;

        int f8890c;

        private byte[] f8891d;

        b(byte[] bArr) {
            this(new ByteArrayInputStream(bArr), ByteOrder.BIG_ENDIAN);
        }

        @Override
        public int available() {
            return this.f8888a.available();
        }

        public int d() {
            return this.f8890c;
        }

        public long h() {
            return ((long) readInt()) & 4294967295L;
        }

        public void j(ByteOrder byteOrder) {
            this.f8889b = byteOrder;
        }

        public void k(int i10) throws IOException {
            int i11 = 0;
            while (i11 < i10) {
                int i12 = i10 - i11;
                int iSkip = (int) this.f8888a.skip(i12);
                if (iSkip <= 0) {
                    if (this.f8891d == null) {
                        this.f8891d = new byte[8192];
                    }
                    iSkip = this.f8888a.read(this.f8891d, 0, Math.min(8192, i12));
                    if (iSkip == -1) {
                        throw new EOFException("Reached EOF while skipping " + i10 + " bytes.");
                    }
                }
                i11 += iSkip;
            }
            this.f8890c += i11;
        }

        @Override
        public void mark(int i10) {
            throw new UnsupportedOperationException("Mark is currently unsupported");
        }

        @Override
        public int read() {
            this.f8890c++;
            return this.f8888a.read();
        }

        @Override
        public boolean readBoolean() {
            this.f8890c++;
            return this.f8888a.readBoolean();
        }

        @Override
        public byte readByte() throws IOException {
            this.f8890c++;
            int i10 = this.f8888a.read();
            if (i10 >= 0) {
                return (byte) i10;
            }
            throw new EOFException();
        }

        @Override
        public char readChar() {
            this.f8890c += 2;
            return this.f8888a.readChar();
        }

        @Override
        public double readDouble() {
            return Double.longBitsToDouble(readLong());
        }

        @Override
        public float readFloat() {
            return Float.intBitsToFloat(readInt());
        }

        @Override
        public void readFully(byte[] bArr, int i10, int i11) throws IOException {
            this.f8890c += i11;
            this.f8888a.readFully(bArr, i10, i11);
        }

        @Override
        public int readInt() throws IOException {
            this.f8890c += 4;
            int i10 = this.f8888a.read();
            int i11 = this.f8888a.read();
            int i12 = this.f8888a.read();
            int i13 = this.f8888a.read();
            if ((i10 | i11 | i12 | i13) < 0) {
                throw new EOFException();
            }
            ByteOrder byteOrder = this.f8889b;
            if (byteOrder == f8886e) {
                return (i13 << 24) + (i12 << 16) + (i11 << 8) + i10;
            }
            if (byteOrder == f8887f) {
                return (i10 << 24) + (i11 << 16) + (i12 << 8) + i13;
            }
            throw new IOException("Invalid byte order: " + this.f8889b);
        }

        @Override
        public String readLine() {
            return null;
        }

        @Override
        public long readLong() throws IOException {
            this.f8890c += 8;
            int i10 = this.f8888a.read();
            int i11 = this.f8888a.read();
            int i12 = this.f8888a.read();
            int i13 = this.f8888a.read();
            int i14 = this.f8888a.read();
            int i15 = this.f8888a.read();
            int i16 = this.f8888a.read();
            int i17 = this.f8888a.read();
            if ((i10 | i11 | i12 | i13 | i14 | i15 | i16 | i17) < 0) {
                throw new EOFException();
            }
            ByteOrder byteOrder = this.f8889b;
            if (byteOrder == f8886e) {
                return (((long) i17) << 56) + (((long) i16) << 48) + (((long) i15) << 40) + (((long) i14) << 32) + (((long) i13) << 24) + (((long) i12) << 16) + (((long) i11) << 8) + ((long) i10);
            }
            if (byteOrder == f8887f) {
                return (((long) i10) << 56) + (((long) i11) << 48) + (((long) i12) << 40) + (((long) i13) << 32) + (((long) i14) << 24) + (((long) i15) << 16) + (((long) i16) << 8) + ((long) i17);
            }
            throw new IOException("Invalid byte order: " + this.f8889b);
        }

        @Override
        public short readShort() throws IOException {
            this.f8890c += 2;
            int i10 = this.f8888a.read();
            int i11 = this.f8888a.read();
            if ((i10 | i11) < 0) {
                throw new EOFException();
            }
            ByteOrder byteOrder = this.f8889b;
            if (byteOrder == f8886e) {
                return (short) ((i11 << 8) + i10);
            }
            if (byteOrder == f8887f) {
                return (short) ((i10 << 8) + i11);
            }
            throw new IOException("Invalid byte order: " + this.f8889b);
        }

        @Override
        public String readUTF() {
            this.f8890c += 2;
            return this.f8888a.readUTF();
        }

        @Override
        public int readUnsignedByte() {
            this.f8890c++;
            return this.f8888a.readUnsignedByte();
        }

        @Override
        public int readUnsignedShort() throws IOException {
            this.f8890c += 2;
            int i10 = this.f8888a.read();
            int i11 = this.f8888a.read();
            if ((i10 | i11) < 0) {
                throw new EOFException();
            }
            ByteOrder byteOrder = this.f8889b;
            if (byteOrder == f8886e) {
                return (i11 << 8) + i10;
            }
            if (byteOrder == f8887f) {
                return (i10 << 8) + i11;
            }
            throw new IOException("Invalid byte order: " + this.f8889b);
        }

        @Override
        public void reset() {
            throw new UnsupportedOperationException("Reset is currently unsupported");
        }

        @Override
        public int skipBytes(int i10) {
            throw new UnsupportedOperationException("skipBytes is currently unsupported");
        }

        b(InputStream inputStream) {
            this(inputStream, ByteOrder.BIG_ENDIAN);
        }

        b(InputStream inputStream, ByteOrder byteOrder) {
            this.f8889b = ByteOrder.BIG_ENDIAN;
            DataInputStream dataInputStream = new DataInputStream(inputStream);
            this.f8888a = dataInputStream;
            dataInputStream.mark(0);
            this.f8890c = 0;
            this.f8889b = byteOrder;
        }

        @Override
        public int read(byte[] bArr, int i10, int i11) throws IOException {
            int i12 = this.f8888a.read(bArr, i10, i11);
            this.f8890c += i12;
            return i12;
        }

        @Override
        public void readFully(byte[] bArr) throws IOException {
            this.f8890c += bArr.length;
            this.f8888a.readFully(bArr);
        }
    }

    private static class c {

        public final int f8892a;

        public final int f8893b;

        public final long f8894c;

        public final byte[] f8895d;

        c(int i10, int i11, byte[] bArr) {
            this(i10, i11, -1L, bArr);
        }

        public static c a(String str) {
            byte[] bytes = (str + (char) 0).getBytes(a.f8850o0);
            return new c(2, bytes.length, bytes);
        }

        public static c b(long j10, ByteOrder byteOrder) {
            return c(new long[]{j10}, byteOrder);
        }

        public static c c(long[] jArr, ByteOrder byteOrder) {
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(new byte[a.W[4] * jArr.length]);
            byteBufferWrap.order(byteOrder);
            for (long j10 : jArr) {
                byteBufferWrap.putInt((int) j10);
            }
            return new c(4, jArr.length, byteBufferWrap.array());
        }

        public static c d(e eVar, ByteOrder byteOrder) {
            return e(new e[]{eVar}, byteOrder);
        }

        public static c e(e[] eVarArr, ByteOrder byteOrder) {
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(new byte[a.W[5] * eVarArr.length]);
            byteBufferWrap.order(byteOrder);
            for (e eVar : eVarArr) {
                byteBufferWrap.putInt((int) eVar.f8900a);
                byteBufferWrap.putInt((int) eVar.f8901b);
            }
            return new c(5, eVarArr.length, byteBufferWrap.array());
        }

        public static c f(int i10, ByteOrder byteOrder) {
            return g(new int[]{i10}, byteOrder);
        }

        public static c g(int[] iArr, ByteOrder byteOrder) {
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(new byte[a.W[3] * iArr.length]);
            byteBufferWrap.order(byteOrder);
            for (int i10 : iArr) {
                byteBufferWrap.putShort((short) i10);
            }
            return new c(3, iArr.length, byteBufferWrap.array());
        }

        public double h(ByteOrder byteOrder) throws Throwable {
            Object objK = k(byteOrder);
            if (objK == null) {
                throw new NumberFormatException("NULL can't be converted to a double value");
            }
            if (objK instanceof String) {
                return Double.parseDouble((String) objK);
            }
            if (objK instanceof long[]) {
                long[] jArr = (long[]) objK;
                if (jArr.length == 1) {
                    return jArr[0];
                }
                throw new NumberFormatException("There are more than one component");
            }
            if (objK instanceof int[]) {
                int[] iArr = (int[]) objK;
                if (iArr.length == 1) {
                    return iArr[0];
                }
                throw new NumberFormatException("There are more than one component");
            }
            if (objK instanceof double[]) {
                double[] dArr = (double[]) objK;
                if (dArr.length == 1) {
                    return dArr[0];
                }
                throw new NumberFormatException("There are more than one component");
            }
            if (!(objK instanceof e[])) {
                throw new NumberFormatException("Couldn't find a double value");
            }
            e[] eVarArr = (e[]) objK;
            if (eVarArr.length == 1) {
                return eVarArr[0].a();
            }
            throw new NumberFormatException("There are more than one component");
        }

        public int i(ByteOrder byteOrder) throws Throwable {
            Object objK = k(byteOrder);
            if (objK == null) {
                throw new NumberFormatException("NULL can't be converted to a integer value");
            }
            if (objK instanceof String) {
                return Integer.parseInt((String) objK);
            }
            if (objK instanceof long[]) {
                long[] jArr = (long[]) objK;
                if (jArr.length == 1) {
                    return (int) jArr[0];
                }
                throw new NumberFormatException("There are more than one component");
            }
            if (!(objK instanceof int[])) {
                throw new NumberFormatException("Couldn't find a integer value");
            }
            int[] iArr = (int[]) objK;
            if (iArr.length == 1) {
                return iArr[0];
            }
            throw new NumberFormatException("There are more than one component");
        }

        public String j(ByteOrder byteOrder) throws Throwable {
            Object objK = k(byteOrder);
            if (objK == null) {
                return null;
            }
            if (objK instanceof String) {
                return (String) objK;
            }
            StringBuilder sb2 = new StringBuilder();
            int i10 = 0;
            if (objK instanceof long[]) {
                long[] jArr = (long[]) objK;
                while (i10 < jArr.length) {
                    sb2.append(jArr[i10]);
                    i10++;
                    if (i10 != jArr.length) {
                        sb2.append(",");
                    }
                }
                return sb2.toString();
            }
            if (objK instanceof int[]) {
                int[] iArr = (int[]) objK;
                while (i10 < iArr.length) {
                    sb2.append(iArr[i10]);
                    i10++;
                    if (i10 != iArr.length) {
                        sb2.append(",");
                    }
                }
                return sb2.toString();
            }
            if (objK instanceof double[]) {
                double[] dArr = (double[]) objK;
                while (i10 < dArr.length) {
                    sb2.append(dArr[i10]);
                    i10++;
                    if (i10 != dArr.length) {
                        sb2.append(",");
                    }
                }
                return sb2.toString();
            }
            if (!(objK instanceof e[])) {
                return null;
            }
            e[] eVarArr = (e[]) objK;
            while (i10 < eVarArr.length) {
                sb2.append(eVarArr[i10].f8900a);
                sb2.append('/');
                sb2.append(eVarArr[i10].f8901b);
                i10++;
                if (i10 != eVarArr.length) {
                    sb2.append(",");
                }
            }
            return sb2.toString();
        }

        /* JADX WARN: Code duplicated, block: B:162:0x018f A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Not initialized variable reg: 5, insn: 0x0030: MOVE (r4 I:??[OBJECT, ARRAY]) = (r5 I:??[OBJECT, ARRAY]) (LINE:49), block:B:17:0x0030 */
        Object k(ByteOrder byteOrder) throws Throwable {
            b bVar;
            InputStream inputStream;
            byte b10;
            byte b11;
            int length = 0;
            InputStream inputStream2 = null;
            try {
                try {
                    bVar = new b(this.f8895d);
                    try {
                        bVar.j(byteOrder);
                        switch (this.f8892a) {
                            case 1:
                            case 6:
                                byte[] bArr = this.f8895d;
                                if (bArr.length != 1 || (b10 = bArr[0]) < 0 || b10 > 1) {
                                    String str = new String(bArr, a.f8850o0);
                                    try {
                                        bVar.close();
                                        break;
                                    } catch (IOException e10) {
                                        Log.e("ExifInterface", "IOException occurred while closing InputStream", e10);
                                    }
                                    return str;
                                }
                                String str2 = new String(new char[]{(char) (b10 + 48)});
                                try {
                                    bVar.close();
                                    break;
                                } catch (IOException e11) {
                                    Log.e("ExifInterface", "IOException occurred while closing InputStream", e11);
                                }
                                return str2;
                            case 2:
                            case 7:
                                if (this.f8893b >= a.X.length) {
                                    int i10 = 0;
                                    while (true) {
                                        byte[] bArr2 = a.X;
                                        if (i10 >= bArr2.length) {
                                            length = bArr2.length;
                                        } else if (this.f8895d[i10] == bArr2[i10]) {
                                            i10++;
                                        }
                                    }
                                }
                                StringBuilder sb2 = new StringBuilder();
                                while (length < this.f8893b && (b11 = this.f8895d[length]) != 0) {
                                    if (b11 >= 32) {
                                        sb2.append((char) b11);
                                    } else {
                                        sb2.append('?');
                                    }
                                    length++;
                                }
                                String string = sb2.toString();
                                try {
                                    bVar.close();
                                    break;
                                } catch (IOException e12) {
                                    Log.e("ExifInterface", "IOException occurred while closing InputStream", e12);
                                }
                                return string;
                            case 3:
                                int[] iArr = new int[this.f8893b];
                                while (length < this.f8893b) {
                                    iArr[length] = bVar.readUnsignedShort();
                                    length++;
                                }
                                try {
                                    bVar.close();
                                    break;
                                } catch (IOException e13) {
                                    Log.e("ExifInterface", "IOException occurred while closing InputStream", e13);
                                }
                                return iArr;
                            case 4:
                                long[] jArr = new long[this.f8893b];
                                while (length < this.f8893b) {
                                    jArr[length] = bVar.h();
                                    length++;
                                }
                                try {
                                    bVar.close();
                                    break;
                                } catch (IOException e14) {
                                    Log.e("ExifInterface", "IOException occurred while closing InputStream", e14);
                                }
                                return jArr;
                            case 5:
                                e[] eVarArr = new e[this.f8893b];
                                while (length < this.f8893b) {
                                    eVarArr[length] = new e(bVar.h(), bVar.h());
                                    length++;
                                }
                                try {
                                    bVar.close();
                                    break;
                                } catch (IOException e15) {
                                    Log.e("ExifInterface", "IOException occurred while closing InputStream", e15);
                                }
                                return eVarArr;
                            case 8:
                                int[] iArr2 = new int[this.f8893b];
                                while (length < this.f8893b) {
                                    iArr2[length] = bVar.readShort();
                                    length++;
                                }
                                try {
                                    bVar.close();
                                    break;
                                } catch (IOException e16) {
                                    Log.e("ExifInterface", "IOException occurred while closing InputStream", e16);
                                }
                                return iArr2;
                            case 9:
                                int[] iArr3 = new int[this.f8893b];
                                while (length < this.f8893b) {
                                    iArr3[length] = bVar.readInt();
                                    length++;
                                }
                                try {
                                    bVar.close();
                                    break;
                                } catch (IOException e17) {
                                    Log.e("ExifInterface", "IOException occurred while closing InputStream", e17);
                                }
                                return iArr3;
                            case 10:
                                e[] eVarArr2 = new e[this.f8893b];
                                while (length < this.f8893b) {
                                    eVarArr2[length] = new e(bVar.readInt(), bVar.readInt());
                                    length++;
                                }
                                try {
                                    bVar.close();
                                    break;
                                } catch (IOException e18) {
                                    Log.e("ExifInterface", "IOException occurred while closing InputStream", e18);
                                }
                                return eVarArr2;
                            case 11:
                                double[] dArr = new double[this.f8893b];
                                while (length < this.f8893b) {
                                    dArr[length] = bVar.readFloat();
                                    length++;
                                }
                                try {
                                    bVar.close();
                                    break;
                                } catch (IOException e19) {
                                    Log.e("ExifInterface", "IOException occurred while closing InputStream", e19);
                                }
                                return dArr;
                            case 12:
                                double[] dArr2 = new double[this.f8893b];
                                while (length < this.f8893b) {
                                    dArr2[length] = bVar.readDouble();
                                    length++;
                                }
                                try {
                                    bVar.close();
                                    break;
                                } catch (IOException e20) {
                                    Log.e("ExifInterface", "IOException occurred while closing InputStream", e20);
                                }
                                return dArr2;
                            default:
                                try {
                                    bVar.close();
                                    break;
                                } catch (IOException e21) {
                                    Log.e("ExifInterface", "IOException occurred while closing InputStream", e21);
                                }
                                return null;
                        }
                    } catch (IOException e22) {
                        e = e22;
                        Log.w("ExifInterface", "IOException occurred during reading a value", e);
                        if (bVar != null) {
                            try {
                                bVar.close();
                            } catch (IOException e23) {
                                Log.e("ExifInterface", "IOException occurred while closing InputStream", e23);
                            }
                        }
                        return null;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    inputStream2 = inputStream;
                    if (inputStream2 != null) {
                        try {
                            inputStream2.close();
                        } catch (IOException e24) {
                            Log.e("ExifInterface", "IOException occurred while closing InputStream", e24);
                        }
                    }
                    throw th;
                }
            } catch (IOException e25) {
                e = e25;
                bVar = null;
            } catch (Throwable th3) {
                th = th3;
                if (inputStream2 != null) {
                    inputStream2.close();
                }
                throw th;
            }
        }

        public String toString() {
            return "(" + a.V[this.f8892a] + ", data length:" + this.f8895d.length + ")";
        }

        c(int i10, int i11, long j10, byte[] bArr) {
            this.f8892a = i10;
            this.f8893b = i11;
            this.f8894c = j10;
            this.f8895d = bArr;
        }
    }

    private static class e {

        public final long f8900a;

        public final long f8901b;

        e(long j10, long j11) {
            if (j11 == 0) {
                this.f8900a = 0L;
                this.f8901b = 1L;
            } else {
                this.f8900a = j10;
                this.f8901b = j11;
            }
        }

        public double a() {
            return this.f8900a / this.f8901b;
        }

        public String toString() {
            return this.f8900a + "/" + this.f8901b;
        }
    }

    static {
        d[] dVarArr = {new d("NewSubfileType", 254, 4), new d("SubfileType", 255, 4), new d("ImageWidth", 256, 3, 4), new d("ImageLength", InputDeviceCompat.SOURCE_KEYBOARD, 3, 4), new d("BitsPerSample", 258, 3), new d("Compression", 259, 3), new d("PhotometricInterpretation", 262, 3), new d("ImageDescription", 270, 2), new d("Make", 271, 2), new d("Model", 272, 2), new d("StripOffsets", 273, 3, 4), new d("Orientation", 274, 3), new d("SamplesPerPixel", 277, 3), new d("RowsPerStrip", 278, 3, 4), new d("StripByteCounts", 279, 3, 4), new d("XResolution", 282, 5), new d("YResolution", 283, 5), new d("PlanarConfiguration", 284, 3), new d("ResolutionUnit", 296, 3), new d("TransferFunction", Sdk$SDKError.Reason.MRAID_ERROR_VALUE, 3), new d("Software", Sdk$SDKError.Reason.MRAID_BRIDGE_ERROR_VALUE, 2), new d("DateTime", 306, 2), new d("Artist", Sdk$SDKError.Reason.JSON_PARAMS_ENCODE_ERROR_VALUE, 2), new d("WhitePoint", Sdk$SDKError.Reason.AD_CLOSED_MISSING_HEARTBEAT_VALUE, 5), new d("PrimaryChromaticities", Sdk$SDKError.Reason.SILENT_MODE_MONITOR_ERROR_VALUE, 5), new d("SubIFDPointer", 330, 4), new d("JPEGInterchangeFormat", 513, 4), new d("JPEGInterchangeFormatLength", 514, 4), new d("YCbCrCoefficients", 529, 5), new d("YCbCrSubSampling", 530, 3), new d("YCbCrPositioning", 531, 3), new d("ReferenceBlackWhite", 532, 5), new d("Copyright", 33432, 2), new d("ExifIFDPointer", 34665, 4), new d("GPSInfoIFDPointer", 34853, 4), new d("SensorTopBorder", 4, 4), new d("SensorLeftBorder", 5, 4), new d("SensorBottomBorder", 6, 4), new d("SensorRightBorder", 7, 4), new d("ISO", 23, 3), new d("JpgFromRaw", 46, 7), new d("Xmp", LogSeverity.ALERT_VALUE, 1)};
        Y = dVarArr;
        d[] dVarArr2 = {new d("ExposureTime", 33434, 5), new d("FNumber", 33437, 5), new d("ExposureProgram", 34850, 3), new d("SpectralSensitivity", 34852, 2), new d("PhotographicSensitivity", 34855, 3), new d("OECF", 34856, 7), new d("SensitivityType", 34864, 3), new d("StandardOutputSensitivity", 34865, 4), new d("RecommendedExposureIndex", 34866, 4), new d("ISOSpeed", 34867, 4), new d("ISOSpeedLatitudeyyy", 34868, 4), new d("ISOSpeedLatitudezzz", 34869, 4), new d("ExifVersion", 36864, 2), new d("DateTimeOriginal", 36867, 2), new d("DateTimeDigitized", 36868, 2), new d("OffsetTime", 36880, 2), new d("OffsetTimeOriginal", 36881, 2), new d("OffsetTimeDigitized", 36882, 2), new d("ComponentsConfiguration", 37121, 7), new d("CompressedBitsPerPixel", 37122, 5), new d("ShutterSpeedValue", 37377, 10), new d("ApertureValue", 37378, 5), new d("BrightnessValue", 37379, 10), new d("ExposureBiasValue", 37380, 10), new d("MaxApertureValue", 37381, 5), new d("SubjectDistance", 37382, 5), new d("MeteringMode", 37383, 3), new d("LightSource", 37384, 3), new d("Flash", 37385, 3), new d("FocalLength", 37386, 5), new d("SubjectArea", 37396, 3), new d("MakerNote", 37500, 7), new d("UserComment", 37510, 7), new d("SubSecTime", 37520, 2), new d("SubSecTimeOriginal", 37521, 2), new d("SubSecTimeDigitized", 37522, 2), new d("FlashpixVersion", UnixStat.LINK_FLAG, 7), new d("ColorSpace", 40961, 3), new d("PixelXDimension", 40962, 3, 4), new d("PixelYDimension", 40963, 3, 4), new d("RelatedSoundFile", 40964, 2), new d("InteroperabilityIFDPointer", 40965, 4), new d("FlashEnergy", 41483, 5), new d("SpatialFrequencyResponse", 41484, 7), new d("FocalPlaneXResolution", 41486, 5), new d("FocalPlaneYResolution", 41487, 5), new d("FocalPlaneResolutionUnit", 41488, 3), new d("SubjectLocation", 41492, 3), new d("ExposureIndex", 41493, 5), new d("SensingMethod", 41495, 3), new d("FileSource", 41728, 7), new d("SceneType", 41729, 7), new d("CFAPattern", 41730, 7), new d("CustomRendered", 41985, 3), new d("ExposureMode", 41986, 3), new d("WhiteBalance", 41987, 3), new d("DigitalZoomRatio", 41988, 5), new d("FocalLengthIn35mmFilm", 41989, 3), new d("SceneCaptureType", 41990, 3), new d("GainControl", 41991, 3), new d("Contrast", 41992, 3), new d("Saturation", 41993, 3), new d("Sharpness", 41994, 3), new d("DeviceSettingDescription", 41995, 7), new d("SubjectDistanceRange", 41996, 3), new d("ImageUniqueID", 42016, 2), new d("CameraOwnerName", 42032, 2), new d("BodySerialNumber", 42033, 2), new d("LensSpecification", 42034, 5), new d("LensMake", 42035, 2), new d("LensModel", 42036, 2), new d("Gamma", 42240, 5), new d("DNGVersion", 50706, 1), new d("DefaultCropSize", 50720, 3, 4)};
        Z = dVarArr2;
        d[] dVarArr3 = {new d("GPSVersionID", 0, 1), new d("GPSLatitudeRef", 1, 2), new d("GPSLatitude", 2, 5, 10), new d("GPSLongitudeRef", 3, 2), new d("GPSLongitude", 4, 5, 10), new d("GPSAltitudeRef", 5, 1), new d("GPSAltitude", 6, 5), new d("GPSTimeStamp", 7, 5), new d("GPSSatellites", 8, 2), new d("GPSStatus", 9, 2), new d("GPSMeasureMode", 10, 2), new d("GPSDOP", 11, 5), new d("GPSSpeedRef", 12, 2), new d("GPSSpeed", 13, 5), new d("GPSTrackRef", 14, 2), new d("GPSTrack", 15, 5), new d("GPSImgDirectionRef", 16, 2), new d("GPSImgDirection", 17, 5), new d("GPSMapDatum", 18, 2), new d("GPSDestLatitudeRef", 19, 2), new d("GPSDestLatitude", 20, 5), new d("GPSDestLongitudeRef", 21, 2), new d("GPSDestLongitude", 22, 5), new d("GPSDestBearingRef", 23, 2), new d("GPSDestBearing", 24, 5), new d("GPSDestDistanceRef", 25, 2), new d("GPSDestDistance", 26, 5), new d("GPSProcessingMethod", 27, 7), new d("GPSAreaInformation", 28, 7), new d("GPSDateStamp", 29, 2), new d("GPSDifferential", 30, 3), new d("GPSHPositioningError", 31, 5)};
        f8836a0 = dVarArr3;
        d[] dVarArr4 = {new d("InteroperabilityIndex", 1, 2)};
        f8837b0 = dVarArr4;
        d[] dVarArr5 = {new d("NewSubfileType", 254, 4), new d("SubfileType", 255, 4), new d("ThumbnailImageWidth", 256, 3, 4), new d("ThumbnailImageLength", InputDeviceCompat.SOURCE_KEYBOARD, 3, 4), new d("BitsPerSample", 258, 3), new d("Compression", 259, 3), new d("PhotometricInterpretation", 262, 3), new d("ImageDescription", 270, 2), new d("Make", 271, 2), new d("Model", 272, 2), new d("StripOffsets", 273, 3, 4), new d("ThumbnailOrientation", 274, 3), new d("SamplesPerPixel", 277, 3), new d("RowsPerStrip", 278, 3, 4), new d("StripByteCounts", 279, 3, 4), new d("XResolution", 282, 5), new d("YResolution", 283, 5), new d("PlanarConfiguration", 284, 3), new d("ResolutionUnit", 296, 3), new d("TransferFunction", Sdk$SDKError.Reason.MRAID_ERROR_VALUE, 3), new d("Software", Sdk$SDKError.Reason.MRAID_BRIDGE_ERROR_VALUE, 2), new d("DateTime", 306, 2), new d("Artist", Sdk$SDKError.Reason.JSON_PARAMS_ENCODE_ERROR_VALUE, 2), new d("WhitePoint", Sdk$SDKError.Reason.AD_CLOSED_MISSING_HEARTBEAT_VALUE, 5), new d("PrimaryChromaticities", Sdk$SDKError.Reason.SILENT_MODE_MONITOR_ERROR_VALUE, 5), new d("SubIFDPointer", 330, 4), new d("JPEGInterchangeFormat", 513, 4), new d("JPEGInterchangeFormatLength", 514, 4), new d("YCbCrCoefficients", 529, 5), new d("YCbCrSubSampling", 530, 3), new d("YCbCrPositioning", 531, 3), new d("ReferenceBlackWhite", 532, 5), new d("Copyright", 33432, 2), new d("ExifIFDPointer", 34665, 4), new d("GPSInfoIFDPointer", 34853, 4), new d("DNGVersion", 50706, 1), new d("DefaultCropSize", 50720, 3, 4)};
        f8838c0 = dVarArr5;
        f8839d0 = new d("StripOffsets", 273, 3);
        d[] dVarArr6 = {new d("ThumbnailImage", 256, 7), new d("CameraSettingsIFDPointer", 8224, 4), new d("ImageProcessingIFDPointer", 8256, 4)};
        f8840e0 = dVarArr6;
        d[] dVarArr7 = {new d("PreviewImageStart", InputDeviceCompat.SOURCE_KEYBOARD, 4), new d("PreviewImageLength", 258, 4)};
        f8841f0 = dVarArr7;
        d[] dVarArr8 = {new d("AspectFrame", 4371, 3)};
        f8842g0 = dVarArr8;
        d[] dVarArr9 = {new d("ColorSpace", 55, 3)};
        f8843h0 = dVarArr9;
        d[][] dVarArr10 = {dVarArr, dVarArr2, dVarArr3, dVarArr4, dVarArr5, dVarArr, dVarArr6, dVarArr7, dVarArr8, dVarArr9};
        f8844i0 = dVarArr10;
        f8845j0 = new d[]{new d("SubIFDPointer", 330, 4), new d("ExifIFDPointer", 34665, 4), new d("GPSInfoIFDPointer", 34853, 4), new d("InteroperabilityIFDPointer", 40965, 4), new d("CameraSettingsIFDPointer", 8224, 1), new d("ImageProcessingIFDPointer", 8256, 1)};
        f8846k0 = new HashMap[dVarArr10.length];
        f8847l0 = new HashMap[dVarArr10.length];
        f8848m0 = new HashSet(Arrays.asList("FNumber", "DigitalZoomRatio", "ExposureTime", "SubjectDistance", "GPSTimeStamp"));
        f8849n0 = new HashMap();
        Charset charsetForName = Charset.forName(C.ASCII_NAME);
        f8850o0 = charsetForName;
        f8851p0 = "Exif\u0000\u0000".getBytes(charsetForName);
        f8852q0 = "http://ns.adobe.com/xap/1.0/\u0000".getBytes(charsetForName);
        Locale locale = Locale.US;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy:MM:dd HH:mm:ss", locale);
        T = simpleDateFormat;
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", locale);
        U = simpleDateFormat2;
        simpleDateFormat2.setTimeZone(TimeZone.getTimeZone("UTC"));
        int i10 = 0;
        while (true) {
            d[][] dVarArr11 = f8844i0;
            if (i10 >= dVarArr11.length) {
                HashMap map = f8849n0;
                d[] dVarArr12 = f8845j0;
                map.put(Integer.valueOf(dVarArr12[0].f8896a), 5);
                map.put(Integer.valueOf(dVarArr12[1].f8896a), 1);
                map.put(Integer.valueOf(dVarArr12[2].f8896a), 2);
                map.put(Integer.valueOf(dVarArr12[3].f8896a), 3);
                map.put(Integer.valueOf(dVarArr12[4].f8896a), 7);
                map.put(Integer.valueOf(dVarArr12[5].f8896a), 8);
                f8853r0 = Pattern.compile(".*[1-9].*");
                f8854s0 = Pattern.compile("^(\\d{2}):(\\d{2}):(\\d{2})$");
                f8855t0 = Pattern.compile("^(\\d{4}):(\\d{2}):(\\d{2})\\s(\\d{2}):(\\d{2}):(\\d{2})$");
                f8857u0 = Pattern.compile("^(\\d{4})-(\\d{2})-(\\d{2})\\s(\\d{2}):(\\d{2}):(\\d{2})$");
                return;
            }
            f8846k0[i10] = new HashMap();
            f8847l0[i10] = new HashMap();
            for (d dVar : dVarArr11[i10]) {
                f8846k0[i10].put(Integer.valueOf(dVar.f8896a), dVar);
                f8847l0[i10].put(dVar.f8897b, dVar);
            }
            i10++;
        }
    }

    public a(InputStream inputStream) {
        this(inputStream, 0);
    }

    private boolean A(HashMap map) {
        c cVar = (c) map.get("ImageLength");
        c cVar2 = (c) map.get("ImageWidth");
        if (cVar == null || cVar2 == null) {
            return false;
        }
        return cVar.i(this.f8870h) <= 512 && cVar2.i(this.f8870h) <= 512;
    }

    private boolean B(byte[] bArr) {
        int i10 = 0;
        while (true) {
            byte[] bArr2 = K;
            if (i10 >= bArr2.length) {
                int i11 = 0;
                while (true) {
                    byte[] bArr3 = L;
                    if (i11 >= bArr3.length) {
                        return true;
                    }
                    if (bArr[K.length + i11 + 4] != bArr3[i11]) {
                        return false;
                    }
                    i11++;
                }
            } else {
                if (bArr[i10] != bArr2[i10]) {
                    return false;
                }
                i10++;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:49:0x009f A[Catch: all -> 0x0015, TRY_LEAVE, TryCatch #0 {all -> 0x0015, blocks: (B:4:0x0004, B:6:0x0009, B:13:0x001e, B:15:0x0022, B:16:0x0030, B:18:0x0038, B:20:0x0041, B:31:0x0061, B:21:0x0045, B:23:0x004b, B:26:0x0052, B:29:0x005a, B:30:0x005e, B:32:0x006b, B:34:0x0075, B:37:0x007d, B:40:0x0085, B:43:0x008d, B:47:0x009b, B:49:0x009f), top: B:60:0x0004 }] */
    /* JADX WARN: Code duplicated, block: B:63:? A[RETURN, SYNTHETIC] */
    private void C(InputStream inputStream) {
        boolean z10;
        if (inputStream == null) {
            throw new NullPointerException("inputstream shouldn't be null");
        }
        for (int i10 = 0; i10 < f8844i0.length; i10++) {
            try {
                try {
                    this.f8868f[i10] = new HashMap();
                } catch (Throwable th2) {
                    a();
                    if (f8856u) {
                        E();
                    }
                    throw th2;
                }
            } catch (IOException e10) {
                e = e10;
                z10 = f8856u;
                if (z10) {
                    Log.w("ExifInterface", "Invalid image: ExifInterface got an unsupported image format file(ExifInterface supports JPEG and some RAW image formats only) or a corrupted JPEG file to ExifInterface.", e);
                }
                a();
                if (!z10) {
                    return;
                }
            } catch (UnsupportedOperationException e11) {
                e = e11;
                z10 = f8856u;
                if (z10) {
                    Log.w("ExifInterface", "Invalid image: ExifInterface got an unsupported image format file(ExifInterface supports JPEG and some RAW image formats only) or a corrupted JPEG file to ExifInterface.", e);
                }
                a();
                if (!z10) {
                    return;
                }
            }
        }
        if (!this.f8867e) {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream, 5000);
            this.f8866d = g(bufferedInputStream);
            inputStream = bufferedInputStream;
        }
        if (L(this.f8866d)) {
            f fVar = new f(inputStream);
            if (this.f8867e) {
                n(fVar);
            } else {
                int i11 = this.f8866d;
                if (i11 == 12) {
                    e(fVar);
                } else if (i11 == 7) {
                    h(fVar);
                } else if (i11 == 10) {
                    m(fVar);
                } else {
                    k(fVar);
                }
            }
            fVar.l(this.f8878p);
            K(fVar);
        } else {
            b bVar = new b(inputStream);
            int i12 = this.f8866d;
            if (i12 == 4) {
                f(bVar, 0, 0);
            } else if (i12 == 13) {
                i(bVar);
            } else if (i12 == 9) {
                j(bVar);
            } else if (i12 == 14) {
                o(bVar);
            }
        }
        a();
        if (!f8856u) {
            return;
        }
        E();
    }

    private void D(b bVar) throws IOException {
        ByteOrder byteOrderF = F(bVar);
        this.f8870h = byteOrderF;
        bVar.j(byteOrderF);
        int unsignedShort = bVar.readUnsignedShort();
        int i10 = this.f8866d;
        if (i10 != 7 && i10 != 10 && unsignedShort != 42) {
            throw new IOException("Invalid start code: " + Integer.toHexString(unsignedShort));
        }
        int i11 = bVar.readInt();
        if (i11 < 8) {
            throw new IOException("Invalid first Ifd offset: " + i11);
        }
        int i12 = i11 - 8;
        if (i12 > 0) {
            bVar.k(i12);
        }
    }

    private void E() {
        for (int i10 = 0; i10 < this.f8868f.length; i10++) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("The size of tag group[");
            sb2.append(i10);
            sb2.append("]: ");
            sb2.append(this.f8868f[i10].size());
            for (Map.Entry entry : this.f8868f[i10].entrySet()) {
                c cVar = (c) entry.getValue();
                StringBuilder sb3 = new StringBuilder();
                sb3.append("tagName: ");
                sb3.append((String) entry.getKey());
                sb3.append(", tagType: ");
                sb3.append(cVar.toString());
                sb3.append(", tagValue: '");
                sb3.append(cVar.j(this.f8870h));
                sb3.append("'");
            }
        }
    }

    private ByteOrder F(b bVar) throws IOException {
        short s10 = bVar.readShort();
        if (s10 == 18761) {
            return ByteOrder.LITTLE_ENDIAN;
        }
        if (s10 == 19789) {
            return ByteOrder.BIG_ENDIAN;
        }
        throw new IOException("Invalid byte order: " + Integer.toHexString(s10));
    }

    private void G(byte[] bArr, int i10) throws IOException {
        f fVar = new f(bArr);
        D(fVar);
        H(fVar, i10);
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0284  */
    /* JADX WARN: Code duplicated, block: B:102:0x0288  */
    /* JADX WARN: Code duplicated, block: B:116:0x02c9  */
    /* JADX WARN: Code duplicated, block: B:40:0x00ef A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:41:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:44:0x0103  */
    /* JADX WARN: Code duplicated, block: B:45:0x010d  */
    /* JADX WARN: Code duplicated, block: B:47:0x0113  */
    /* JADX WARN: Code duplicated, block: B:49:0x0119  */
    /* JADX WARN: Code duplicated, block: B:50:0x0129  */
    /* JADX WARN: Code duplicated, block: B:53:0x0130  */
    /* JADX WARN: Code duplicated, block: B:55:0x013a  */
    /* JADX WARN: Code duplicated, block: B:56:0x013c  */
    /* JADX WARN: Code duplicated, block: B:57:0x0141  */
    /* JADX WARN: Code duplicated, block: B:63:0x018e  */
    /* JADX WARN: Code duplicated, block: B:66:0x01a2  */
    /* JADX WARN: Code duplicated, block: B:69:0x01bb  */
    /* JADX WARN: Code duplicated, block: B:71:0x01be  */
    /* JADX WARN: Code duplicated, block: B:73:0x01c1 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:74:0x01c3  */
    /* JADX WARN: Code duplicated, block: B:81:0x01d4  */
    /* JADX WARN: Code duplicated, block: B:82:0x01d9  */
    /* JADX WARN: Code duplicated, block: B:83:0x01de  */
    /* JADX WARN: Code duplicated, block: B:85:0x01e5  */
    /* JADX WARN: Code duplicated, block: B:87:0x01fc  */
    /* JADX WARN: Code duplicated, block: B:90:0x0202  */
    /* JADX WARN: Code duplicated, block: B:92:0x020f  */
    /* JADX WARN: Code duplicated, block: B:94:0x021c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:95:0x021e  */
    /* JADX WARN: Code duplicated, block: B:96:0x0239 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:97:0x023b  */
    /* JADX WARN: Code duplicated, block: B:99:0x0250  */
    private void H(f fVar, int i10) throws IOException {
        long j10;
        char c10;
        Integer num;
        long j11;
        int i11;
        int unsignedShort;
        long jH;
        int i12;
        int i13 = 5;
        char c11 = 0;
        int i14 = 1;
        this.f8869g.add(Integer.valueOf(fVar.f8890c));
        short s10 = fVar.readShort();
        if (f8856u) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("numberOfDirectoryEntry: ");
            sb2.append((int) s10);
        }
        if (s10 <= 0) {
            return;
        }
        short s11 = 0;
        while (s11 < s10) {
            int unsignedShort2 = fVar.readUnsignedShort();
            int unsignedShort3 = fVar.readUnsignedShort();
            int i15 = fVar.readInt();
            long jD = ((long) fVar.d()) + 4;
            d dVar = (d) f8846k0[i10].get(Integer.valueOf(unsignedShort2));
            boolean z10 = f8856u;
            if (z10) {
                Integer numValueOf = Integer.valueOf(i10);
                Integer numValueOf2 = Integer.valueOf(unsignedShort2);
                String str = dVar != null ? dVar.f8897b : null;
                Integer numValueOf3 = Integer.valueOf(unsignedShort3);
                Integer numValueOf4 = Integer.valueOf(i15);
                Object[] objArr = new Object[i13];
                objArr[c11] = numValueOf;
                objArr[i14] = numValueOf2;
                objArr[2] = str;
                objArr[3] = numValueOf3;
                objArr[4] = numValueOf4;
                String.format("ifdType: %d, tagNumber: %d, tagName: %s, dataFormat: %d, numberOfComponents: %d", objArr);
            }
            if (dVar != null) {
                if (unsignedShort3 > 0) {
                    int[] iArr = W;
                    if (unsignedShort3 >= iArr.length) {
                        if (z10) {
                            StringBuilder sb3 = new StringBuilder();
                            sb3.append("Skip the tag entry since data format is invalid: ");
                            sb3.append(unsignedShort3);
                        }
                    } else if (dVar.a(unsignedShort3)) {
                        if (unsignedShort3 == 7) {
                            unsignedShort3 = dVar.f8898c;
                        }
                        j10 = ((long) iArr[unsignedShort3]) * ((long) i15);
                        if (j10 < 0 || j10 > 2147483647L) {
                            if (z10) {
                                StringBuilder sb4 = new StringBuilder();
                                sb4.append("Skip the tag entry since the number of components is invalid: ");
                                sb4.append(i15);
                            }
                            c10 = c11;
                        } else {
                            c10 = 1;
                        }
                    } else if (z10) {
                        StringBuilder sb5 = new StringBuilder();
                        sb5.append("Skip the tag entry since data format (");
                        sb5.append(V[unsignedShort3]);
                        sb5.append(") is unexpected for tag: ");
                        sb5.append(dVar.f8897b);
                    }
                } else if (z10) {
                    StringBuilder sb6 = new StringBuilder();
                    sb6.append("Skip the tag entry since data format is invalid: ");
                    sb6.append(unsignedShort3);
                }
                if (c10 == 0) {
                    fVar.l(jD);
                    s11 = s11;
                    i11 = 1;
                } else {
                    if (j10 > 4) {
                        i12 = fVar.readInt();
                        if (z10) {
                            StringBuilder sb7 = new StringBuilder();
                            sb7.append("seek to data offset: ");
                            sb7.append(i12);
                        }
                        if (this.f8866d != 7) {
                            if ("MakerNote".equals(dVar.f8897b)) {
                                this.f8879q = i12;
                            } else if (i10 != 6 && "ThumbnailImage".equals(dVar.f8897b)) {
                                this.f8880r = i12;
                                this.f8881s = i15;
                                c cVarF = c.f(6, this.f8870h);
                                c cVarB = c.b(this.f8880r, this.f8870h);
                                c cVarB2 = c.b(this.f8881s, this.f8870h);
                                this.f8868f[4].put("Compression", cVarF);
                                this.f8868f[4].put("JPEGInterchangeFormat", cVarB);
                                this.f8868f[4].put("JPEGInterchangeFormatLength", cVarB2);
                            }
                        }
                        fVar.l(i12);
                    } else {
                        s11 = s11;
                        jD = jD;
                        i15 = i15;
                    }
                    num = (Integer) f8849n0.get(Integer.valueOf(unsignedShort2));
                    if (z10) {
                        StringBuilder sb8 = new StringBuilder();
                        sb8.append("nextIfdType: ");
                        sb8.append(num);
                        sb8.append(" byteCount: ");
                        sb8.append(j10);
                    }
                    if (num != null) {
                        if (unsignedShort3 != 3) {
                            if (unsignedShort3 != 4) {
                                jH = fVar.h();
                            } else if (unsignedShort3 == 8) {
                                unsignedShort = fVar.readShort();
                            } else if (unsignedShort3 != 9 || unsignedShort3 == 13) {
                                unsignedShort = fVar.readInt();
                            } else {
                                jH = -1;
                            }
                            if (z10) {
                                String.format("Offset: %d, tagName: %s", Long.valueOf(jH), dVar.f8897b);
                            }
                            if (jH > 0) {
                                if (!this.f8869g.contains(Integer.valueOf((int) jH))) {
                                    fVar.l(jH);
                                    H(fVar, num.intValue());
                                } else if (z10) {
                                    StringBuilder sb9 = new StringBuilder();
                                    sb9.append("Skip jump into the IFD since it has already been read: IfdType ");
                                    sb9.append(num);
                                    sb9.append(" (at ");
                                    sb9.append(jH);
                                    sb9.append(")");
                                }
                            } else if (z10) {
                                StringBuilder sb10 = new StringBuilder();
                                sb10.append("Skip jump into the IFD since its offset is invalid: ");
                                sb10.append(jH);
                            }
                            fVar.l(jD);
                            i11 = 1;
                        } else {
                            unsignedShort = fVar.readUnsignedShort();
                        }
                        jH = unsignedShort;
                        if (z10) {
                            String.format("Offset: %d, tagName: %s", Long.valueOf(jH), dVar.f8897b);
                        }
                        if (jH > 0) {
                            if (!this.f8869g.contains(Integer.valueOf((int) jH))) {
                                fVar.l(jH);
                                H(fVar, num.intValue());
                            } else if (z10) {
                                StringBuilder sb11 = new StringBuilder();
                                sb11.append("Skip jump into the IFD since it has already been read: IfdType ");
                                sb11.append(num);
                                sb11.append(" (at ");
                                sb11.append(jH);
                                sb11.append(")");
                            }
                        } else if (z10) {
                            StringBuilder sb12 = new StringBuilder();
                            sb12.append("Skip jump into the IFD since its offset is invalid: ");
                            sb12.append(jH);
                        }
                        fVar.l(jD);
                        i11 = 1;
                    } else {
                        j11 = jD;
                        int iD = fVar.d() + this.f8878p;
                        byte[] bArr = new byte[(int) j10];
                        fVar.readFully(bArr);
                        c cVar = new c(unsignedShort3, i15, iD, bArr);
                        this.f8868f[i10].put(dVar.f8897b, cVar);
                        if ("DNGVersion".equals(dVar.f8897b)) {
                            this.f8866d = 3;
                        }
                        if (((!"Make".equals(dVar.f8897b) || "Model".equals(dVar.f8897b)) && cVar.j(this.f8870h).contains("PENTAX")) || ("Compression".equals(dVar.f8897b) && cVar.i(this.f8870h) == 65535)) {
                            this.f8866d = 8;
                        }
                        if (fVar.d() != j11) {
                            fVar.l(j11);
                        }
                        i11 = 1;
                    }
                }
                i14 = i11;
                s11 = (short) (s11 + 1);
                s10 = s10;
                i13 = 5;
                c11 = 0;
            } else if (z10) {
                StringBuilder sb13 = new StringBuilder();
                sb13.append("Skip the tag entry since tag number is not defined: ");
                sb13.append(unsignedShort2);
            }
            c10 = c11;
            j10 = 0;
            if (c10 == 0) {
                fVar.l(jD);
                s11 = s11;
                i11 = 1;
            } else {
                if (j10 > 4) {
                    i12 = fVar.readInt();
                    if (z10) {
                        StringBuilder sb14 = new StringBuilder();
                        sb14.append("seek to data offset: ");
                        sb14.append(i12);
                    }
                    if (this.f8866d != 7) {
                        if ("MakerNote".equals(dVar.f8897b)) {
                            this.f8879q = i12;
                        } else if (i10 != 6) {
                        }
                    }
                    fVar.l(i12);
                } else {
                    s11 = s11;
                    jD = jD;
                    i15 = i15;
                }
                num = (Integer) f8849n0.get(Integer.valueOf(unsignedShort2));
                if (z10) {
                    StringBuilder sb15 = new StringBuilder();
                    sb15.append("nextIfdType: ");
                    sb15.append(num);
                    sb15.append(" byteCount: ");
                    sb15.append(j10);
                }
                if (num != null) {
                    if (unsignedShort3 != 3) {
                        if (unsignedShort3 != 4) {
                            jH = fVar.h();
                        } else if (unsignedShort3 == 8) {
                            if (unsignedShort3 != 9) {
                            }
                            unsignedShort = fVar.readInt();
                        } else {
                            unsignedShort = fVar.readShort();
                        }
                        if (z10) {
                            String.format("Offset: %d, tagName: %s", Long.valueOf(jH), dVar.f8897b);
                        }
                        if (jH > 0) {
                            if (!this.f8869g.contains(Integer.valueOf((int) jH))) {
                                fVar.l(jH);
                                H(fVar, num.intValue());
                            } else if (z10) {
                                StringBuilder sb16 = new StringBuilder();
                                sb16.append("Skip jump into the IFD since it has already been read: IfdType ");
                                sb16.append(num);
                                sb16.append(" (at ");
                                sb16.append(jH);
                                sb16.append(")");
                            }
                        } else if (z10) {
                            StringBuilder sb17 = new StringBuilder();
                            sb17.append("Skip jump into the IFD since its offset is invalid: ");
                            sb17.append(jH);
                        }
                        fVar.l(jD);
                        i11 = 1;
                    } else {
                        unsignedShort = fVar.readUnsignedShort();
                    }
                    jH = unsignedShort;
                    if (z10) {
                        String.format("Offset: %d, tagName: %s", Long.valueOf(jH), dVar.f8897b);
                    }
                    if (jH > 0) {
                        if (!this.f8869g.contains(Integer.valueOf((int) jH))) {
                            fVar.l(jH);
                            H(fVar, num.intValue());
                        } else if (z10) {
                            StringBuilder sb18 = new StringBuilder();
                            sb18.append("Skip jump into the IFD since it has already been read: IfdType ");
                            sb18.append(num);
                            sb18.append(" (at ");
                            sb18.append(jH);
                            sb18.append(")");
                        }
                    } else if (z10) {
                        StringBuilder sb19 = new StringBuilder();
                        sb19.append("Skip jump into the IFD since its offset is invalid: ");
                        sb19.append(jH);
                    }
                    fVar.l(jD);
                    i11 = 1;
                } else {
                    j11 = jD;
                    int iD2 = fVar.d() + this.f8878p;
                    byte[] bArr2 = new byte[(int) j10];
                    fVar.readFully(bArr2);
                    c cVar2 = new c(unsignedShort3, i15, iD2, bArr2);
                    this.f8868f[i10].put(dVar.f8897b, cVar2);
                    if ("DNGVersion".equals(dVar.f8897b)) {
                        this.f8866d = 3;
                    }
                    if (!"Make".equals(dVar.f8897b)) {
                    }
                    this.f8866d = 8;
                    if (fVar.d() != j11) {
                        fVar.l(j11);
                    }
                    i11 = 1;
                }
            }
            i14 = i11;
            s11 = (short) (s11 + 1);
            s10 = s10;
            i13 = 5;
            c11 = 0;
        }
        int i16 = i14;
        int i17 = fVar.readInt();
        boolean z11 = f8856u;
        if (z11) {
            Object[] objArr2 = new Object[i16];
            objArr2[0] = Integer.valueOf(i17);
            String.format("nextIfdOffset: %d", objArr2);
        }
        long j12 = i17;
        if (j12 <= 0) {
            if (z11) {
                StringBuilder sb20 = new StringBuilder();
                sb20.append("Stop reading file since a wrong offset may cause an infinite loop: ");
                sb20.append(i17);
                return;
            }
            return;
        }
        if (this.f8869g.contains(Integer.valueOf(i17))) {
            if (z11) {
                StringBuilder sb21 = new StringBuilder();
                sb21.append("Stop reading file since re-reading an IFD may cause an infinite loop: ");
                sb21.append(i17);
                return;
            }
            return;
        }
        fVar.l(j12);
        if (this.f8868f[4].isEmpty()) {
            H(fVar, 4);
        } else if (this.f8868f[5].isEmpty()) {
            H(fVar, 5);
        }
    }

    private void I(int i10, String str, String str2) {
        if (this.f8868f[i10].isEmpty() || this.f8868f[i10].get(str) == null) {
            return;
        }
        HashMap map = this.f8868f[i10];
        map.put(str2, map.get(str));
        this.f8868f[i10].remove(str);
    }

    private void J(f fVar, int i10) throws Throwable {
        c cVar = (c) this.f8868f[i10].get("ImageLength");
        c cVar2 = (c) this.f8868f[i10].get("ImageWidth");
        if (cVar == null || cVar2 == null) {
            c cVar3 = (c) this.f8868f[i10].get("JPEGInterchangeFormat");
            c cVar4 = (c) this.f8868f[i10].get("JPEGInterchangeFormatLength");
            if (cVar3 == null || cVar4 == null) {
                return;
            }
            int i11 = cVar3.i(this.f8870h);
            int i12 = cVar3.i(this.f8870h);
            fVar.l(i11);
            byte[] bArr = new byte[i12];
            fVar.read(bArr);
            f(new b(bArr), i11, i10);
        }
    }

    private void K(b bVar) throws Throwable {
        HashMap map = this.f8868f[4];
        c cVar = (c) map.get("Compression");
        if (cVar == null) {
            this.f8877o = 6;
            p(bVar, map);
            return;
        }
        int i10 = cVar.i(this.f8870h);
        this.f8877o = i10;
        if (i10 != 1) {
            if (i10 == 6) {
                p(bVar, map);
                return;
            } else if (i10 != 7) {
                return;
            }
        }
        if (z(map)) {
            q(bVar, map);
        }
    }

    private static boolean L(int i10) {
        return (i10 == 4 || i10 == 9 || i10 == 13 || i10 == 14) ? false : true;
    }

    private void M(int i10, int i11) throws Throwable {
        if (this.f8868f[i10].isEmpty() || this.f8868f[i11].isEmpty()) {
            return;
        }
        c cVar = (c) this.f8868f[i10].get("ImageLength");
        c cVar2 = (c) this.f8868f[i10].get("ImageWidth");
        c cVar3 = (c) this.f8868f[i11].get("ImageLength");
        c cVar4 = (c) this.f8868f[i11].get("ImageWidth");
        if (cVar == null || cVar2 == null || cVar3 == null || cVar4 == null) {
            return;
        }
        int i12 = cVar.i(this.f8870h);
        int i13 = cVar2.i(this.f8870h);
        int i14 = cVar3.i(this.f8870h);
        int i15 = cVar4.i(this.f8870h);
        if (i12 >= i14 || i13 >= i15) {
            return;
        }
        HashMap[] mapArr = this.f8868f;
        HashMap map = mapArr[i10];
        mapArr[i10] = mapArr[i11];
        mapArr[i11] = map;
    }

    private void N(f fVar, int i10) throws Throwable {
        c cVarF;
        c cVarF2;
        c cVar = (c) this.f8868f[i10].get("DefaultCropSize");
        c cVar2 = (c) this.f8868f[i10].get("SensorTopBorder");
        c cVar3 = (c) this.f8868f[i10].get("SensorLeftBorder");
        c cVar4 = (c) this.f8868f[i10].get("SensorBottomBorder");
        c cVar5 = (c) this.f8868f[i10].get("SensorRightBorder");
        if (cVar == null) {
            if (cVar2 == null || cVar3 == null || cVar4 == null || cVar5 == null) {
                J(fVar, i10);
                return;
            }
            int i11 = cVar2.i(this.f8870h);
            int i12 = cVar4.i(this.f8870h);
            int i13 = cVar5.i(this.f8870h);
            int i14 = cVar3.i(this.f8870h);
            if (i12 <= i11 || i13 <= i14) {
                return;
            }
            c cVarF3 = c.f(i12 - i11, this.f8870h);
            c cVarF4 = c.f(i13 - i14, this.f8870h);
            this.f8868f[i10].put("ImageLength", cVarF3);
            this.f8868f[i10].put("ImageWidth", cVarF4);
            return;
        }
        if (cVar.f8892a == 5) {
            e[] eVarArr = (e[]) cVar.k(this.f8870h);
            if (eVarArr == null || eVarArr.length != 2) {
                Log.w("ExifInterface", "Invalid crop size values. cropSize=" + Arrays.toString(eVarArr));
                return;
            }
            cVarF = c.d(eVarArr[0], this.f8870h);
            cVarF2 = c.d(eVarArr[1], this.f8870h);
        } else {
            int[] iArr = (int[]) cVar.k(this.f8870h);
            if (iArr == null || iArr.length != 2) {
                Log.w("ExifInterface", "Invalid crop size values. cropSize=" + Arrays.toString(iArr));
                return;
            }
            cVarF = c.f(iArr[0], this.f8870h);
            cVarF2 = c.f(iArr[1], this.f8870h);
        }
        this.f8868f[i10].put("ImageWidth", cVarF);
        this.f8868f[i10].put("ImageLength", cVarF2);
    }

    private void O() throws Throwable {
        M(0, 5);
        M(0, 4);
        M(5, 4);
        c cVar = (c) this.f8868f[1].get("PixelXDimension");
        c cVar2 = (c) this.f8868f[1].get("PixelYDimension");
        if (cVar != null && cVar2 != null) {
            this.f8868f[0].put("ImageWidth", cVar);
            this.f8868f[0].put("ImageLength", cVar2);
        }
        if (this.f8868f[4].isEmpty() && A(this.f8868f[5])) {
            HashMap[] mapArr = this.f8868f;
            mapArr[4] = mapArr[5];
            mapArr[5] = new HashMap();
        }
        A(this.f8868f[4]);
        I(0, "ThumbnailOrientation", "Orientation");
        I(0, "ThumbnailImageLength", "ImageLength");
        I(0, "ThumbnailImageWidth", "ImageWidth");
        I(5, "ThumbnailOrientation", "Orientation");
        I(5, "ThumbnailImageLength", "ImageLength");
        I(5, "ThumbnailImageWidth", "ImageWidth");
        I(4, "Orientation", "ThumbnailOrientation");
        I(4, "ImageLength", "ThumbnailImageLength");
        I(4, "ImageWidth", "ThumbnailImageWidth");
    }

    private void a() {
        String strB = b("DateTimeOriginal");
        if (strB != null && b("DateTime") == null) {
            this.f8868f[0].put("DateTime", c.a(strB));
        }
        if (b("ImageWidth") == null) {
            this.f8868f[0].put("ImageWidth", c.b(0L, this.f8870h));
        }
        if (b("ImageLength") == null) {
            this.f8868f[0].put("ImageLength", c.b(0L, this.f8870h));
        }
        if (b("Orientation") == null) {
            this.f8868f[0].put("Orientation", c.b(0L, this.f8870h));
        }
        if (b("LightSource") == null) {
            this.f8868f[1].put("LightSource", c.b(0L, this.f8870h));
        }
    }

    private c d(String str) {
        if (str == null) {
            throw new NullPointerException("tag shouldn't be null");
        }
        if ("ISOSpeedRatings".equals(str)) {
            str = "PhotographicSensitivity";
        }
        for (int i10 = 0; i10 < f8844i0.length; i10++) {
            c cVar = (c) this.f8868f[i10].get(str);
            if (cVar != null) {
                return cVar;
            }
        }
        return null;
    }

    private void e(f fVar) throws IOException {
        String strExtractMetadata;
        String strExtractMetadata2;
        String strExtractMetadata3;
        int i10;
        if (Build.VERSION.SDK_INT < 28) {
            throw new UnsupportedOperationException("Reading EXIF from HEIF files is supported from SDK 28 and above");
        }
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        try {
            try {
                androidx.exifinterface.media.b.C0075b.a(mediaMetadataRetriever, new C0074a(fVar));
                String strExtractMetadata4 = mediaMetadataRetriever.extractMetadata(33);
                String strExtractMetadata5 = mediaMetadataRetriever.extractMetadata(34);
                String strExtractMetadata6 = mediaMetadataRetriever.extractMetadata(26);
                String strExtractMetadata7 = mediaMetadataRetriever.extractMetadata(17);
                if ("yes".equals(strExtractMetadata6)) {
                    strExtractMetadata = mediaMetadataRetriever.extractMetadata(29);
                    strExtractMetadata2 = mediaMetadataRetriever.extractMetadata(30);
                    strExtractMetadata3 = mediaMetadataRetriever.extractMetadata(31);
                } else if ("yes".equals(strExtractMetadata7)) {
                    strExtractMetadata = mediaMetadataRetriever.extractMetadata(18);
                    strExtractMetadata2 = mediaMetadataRetriever.extractMetadata(19);
                    strExtractMetadata3 = mediaMetadataRetriever.extractMetadata(24);
                } else {
                    strExtractMetadata = null;
                    strExtractMetadata2 = null;
                    strExtractMetadata3 = null;
                }
                if (strExtractMetadata != null) {
                    this.f8868f[0].put("ImageWidth", c.f(Integer.parseInt(strExtractMetadata), this.f8870h));
                }
                if (strExtractMetadata2 != null) {
                    this.f8868f[0].put("ImageLength", c.f(Integer.parseInt(strExtractMetadata2), this.f8870h));
                }
                if (strExtractMetadata3 != null) {
                    int i11 = Integer.parseInt(strExtractMetadata3);
                    if (i11 == 90) {
                        i10 = 6;
                    } else if (i11 != 180) {
                        i10 = i11 != 270 ? 1 : 8;
                    } else {
                        i10 = 3;
                    }
                    this.f8868f[0].put("Orientation", c.f(i10, this.f8870h));
                }
                if (strExtractMetadata4 != null && strExtractMetadata5 != null) {
                    int i12 = Integer.parseInt(strExtractMetadata4);
                    int i13 = Integer.parseInt(strExtractMetadata5);
                    if (i13 <= 6) {
                        throw new IOException("Invalid exif length");
                    }
                    fVar.l(i12);
                    byte[] bArr = new byte[6];
                    if (fVar.read(bArr) != 6) {
                        throw new IOException("Can't read identifier");
                    }
                    int i14 = i12 + 6;
                    int i15 = i13 - 6;
                    if (!Arrays.equals(bArr, f8851p0)) {
                        throw new IOException("Invalid identifier");
                    }
                    byte[] bArr2 = new byte[i15];
                    if (fVar.read(bArr2) != i15) {
                        throw new IOException("Can't read exif");
                    }
                    this.f8878p = i14;
                    G(bArr2, 0);
                }
                if (f8856u) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Heif meta: ");
                    sb2.append(strExtractMetadata);
                    sb2.append("x");
                    sb2.append(strExtractMetadata2);
                    sb2.append(", rotation ");
                    sb2.append(strExtractMetadata3);
                }
                mediaMetadataRetriever.release();
            } catch (RuntimeException unused) {
                throw new UnsupportedOperationException("Failed to read EXIF from HEIF file. Given stream is either malformed or unsupported.");
            }
        } catch (Throwable th2) {
            mediaMetadataRetriever.release();
            throw th2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:34:0x009e A[FALL_THROUGH] */
    /* JADX WARN: Code duplicated, block: B:36:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:37:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:40:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:41:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:61:0x015b A[LOOP:0: B:10:0x002e->B:61:0x015b, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:79:0x0161 A[SYNTHETIC] */
    /*  JADX ERROR: UnsupportedOperationException in pass: RegionMakerVisitor
        java.lang.UnsupportedOperationException
        	at java.base/java.util.Collections$UnmodifiableCollection.add(Collections.java:1068)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker$1.leaveRegion(SwitchRegionMaker.java:419)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:91)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:31)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaksForCase(SwitchRegionMaker.java:399)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaks(SwitchRegionMaker.java:89)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.leaveRegion(PostProcessRegions.java:31)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:91)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:27)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.process(PostProcessRegions.java:21)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:31)
        */
    private void f(androidx.exifinterface.media.a.b r20, int r21, int r22) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 496
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.exifinterface.media.a.f(androidx.exifinterface.media.a$b, int, int):void");
    }

    private int g(BufferedInputStream bufferedInputStream) throws IOException {
        bufferedInputStream.mark(5000);
        byte[] bArr = new byte[5000];
        bufferedInputStream.read(bArr);
        bufferedInputStream.reset();
        if (t(bArr)) {
            return 4;
        }
        if (w(bArr)) {
            return 9;
        }
        if (s(bArr)) {
            return 12;
        }
        if (u(bArr)) {
            return 7;
        }
        if (x(bArr)) {
            return 10;
        }
        if (v(bArr)) {
            return 13;
        }
        return B(bArr) ? 14 : 0;
    }

    private void h(f fVar) throws Throwable {
        int i10;
        int i11;
        k(fVar);
        c cVar = (c) this.f8868f[1].get("MakerNote");
        if (cVar != null) {
            f fVar2 = new f(cVar.f8895d);
            fVar2.j(this.f8870h);
            byte[] bArr = E;
            byte[] bArr2 = new byte[bArr.length];
            fVar2.readFully(bArr2);
            fVar2.l(0L);
            byte[] bArr3 = F;
            byte[] bArr4 = new byte[bArr3.length];
            fVar2.readFully(bArr4);
            if (Arrays.equals(bArr2, bArr)) {
                fVar2.l(8L);
            } else if (Arrays.equals(bArr4, bArr3)) {
                fVar2.l(12L);
            }
            H(fVar2, 6);
            c cVar2 = (c) this.f8868f[7].get("PreviewImageStart");
            c cVar3 = (c) this.f8868f[7].get("PreviewImageLength");
            if (cVar2 != null && cVar3 != null) {
                this.f8868f[5].put("JPEGInterchangeFormat", cVar2);
                this.f8868f[5].put("JPEGInterchangeFormatLength", cVar3);
            }
            c cVar4 = (c) this.f8868f[8].get("AspectFrame");
            if (cVar4 != null) {
                int[] iArr = (int[]) cVar4.k(this.f8870h);
                if (iArr == null || iArr.length != 4) {
                    Log.w("ExifInterface", "Invalid aspect frame values. frame=" + Arrays.toString(iArr));
                    return;
                }
                int i12 = iArr[2];
                int i13 = iArr[0];
                if (i12 <= i13 || (i10 = iArr[3]) <= (i11 = iArr[1])) {
                    return;
                }
                int i14 = (i12 - i13) + 1;
                int i15 = (i10 - i11) + 1;
                if (i14 < i15) {
                    int i16 = i14 + i15;
                    i15 = i16 - i15;
                    i14 = i16 - i15;
                }
                c cVarF = c.f(i14, this.f8870h);
                c cVarF2 = c.f(i15, this.f8870h);
                this.f8868f[0].put("ImageWidth", cVarF);
                this.f8868f[0].put("ImageLength", cVarF2);
            }
        }
    }

    private void i(b bVar) throws Throwable {
        if (f8856u) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("getPngAttributes starting with: ");
            sb2.append(bVar);
        }
        bVar.j(ByteOrder.BIG_ENDIAN);
        byte[] bArr = G;
        bVar.k(bArr.length);
        int length = bArr.length;
        while (true) {
            try {
                int i10 = bVar.readInt();
                byte[] bArr2 = new byte[4];
                if (bVar.read(bArr2) != 4) {
                    throw new IOException("Encountered invalid length while parsing PNG chunktype");
                }
                int i11 = length + 8;
                if (i11 == 16 && !Arrays.equals(bArr2, I)) {
                    throw new IOException("Encountered invalid PNG file--IHDR chunk should appearas the first chunk");
                }
                if (Arrays.equals(bArr2, J)) {
                    return;
                }
                if (Arrays.equals(bArr2, H)) {
                    byte[] bArr3 = new byte[i10];
                    if (bVar.read(bArr3) != i10) {
                        throw new IOException("Failed to read given length for given PNG chunk type: " + androidx.exifinterface.media.b.a(bArr2));
                    }
                    int i12 = bVar.readInt();
                    CRC32 crc32 = new CRC32();
                    crc32.update(bArr2);
                    crc32.update(bArr3);
                    if (((int) crc32.getValue()) == i12) {
                        this.f8878p = i11;
                        G(bArr3, 0);
                        O();
                        K(new b(bArr3));
                        return;
                    }
                    throw new IOException("Encountered invalid CRC value for PNG-EXIF chunk.\n recorded CRC value: " + i12 + ", calculated CRC value: " + crc32.getValue());
                }
                int i13 = i10 + 4;
                bVar.k(i13);
                length = i11 + i13;
            } catch (EOFException unused) {
                throw new IOException("Encountered corrupt PNG file.");
            }
        }
    }

    private void j(b bVar) throws Throwable {
        boolean z10 = f8856u;
        if (z10) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("getRafAttributes starting with: ");
            sb2.append(bVar);
        }
        bVar.k(84);
        byte[] bArr = new byte[4];
        byte[] bArr2 = new byte[4];
        byte[] bArr3 = new byte[4];
        bVar.read(bArr);
        bVar.read(bArr2);
        bVar.read(bArr3);
        int i10 = ByteBuffer.wrap(bArr).getInt();
        int i11 = ByteBuffer.wrap(bArr2).getInt();
        int i12 = ByteBuffer.wrap(bArr3).getInt();
        byte[] bArr4 = new byte[i11];
        bVar.k(i10 - bVar.d());
        bVar.read(bArr4);
        f(new b(bArr4), i10, 5);
        bVar.k(i12 - bVar.d());
        bVar.j(ByteOrder.BIG_ENDIAN);
        int i13 = bVar.readInt();
        if (z10) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("numberOfDirectoryEntry: ");
            sb3.append(i13);
        }
        for (int i14 = 0; i14 < i13; i14++) {
            int unsignedShort = bVar.readUnsignedShort();
            int unsignedShort2 = bVar.readUnsignedShort();
            if (unsignedShort == f8839d0.f8896a) {
                short s10 = bVar.readShort();
                short s11 = bVar.readShort();
                c cVarF = c.f(s10, this.f8870h);
                c cVarF2 = c.f(s11, this.f8870h);
                this.f8868f[0].put("ImageLength", cVarF);
                this.f8868f[0].put("ImageWidth", cVarF2);
                if (f8856u) {
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append("Updated to length: ");
                    sb4.append((int) s10);
                    sb4.append(", width: ");
                    sb4.append((int) s11);
                    return;
                }
                return;
            }
            bVar.k(unsignedShort2);
        }
    }

    private void k(f fVar) throws Throwable {
        c cVar;
        D(fVar);
        H(fVar, 0);
        N(fVar, 0);
        N(fVar, 5);
        N(fVar, 4);
        O();
        if (this.f8866d != 8 || (cVar = (c) this.f8868f[1].get("MakerNote")) == null) {
            return;
        }
        f fVar2 = new f(cVar.f8895d);
        fVar2.j(this.f8870h);
        fVar2.k(6);
        H(fVar2, 9);
        c cVar2 = (c) this.f8868f[9].get("ColorSpace");
        if (cVar2 != null) {
            this.f8868f[1].put("ColorSpace", cVar2);
        }
    }

    private void m(f fVar) throws Throwable {
        if (f8856u) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("getRw2Attributes starting with: ");
            sb2.append(fVar);
        }
        k(fVar);
        c cVar = (c) this.f8868f[0].get("JpgFromRaw");
        if (cVar != null) {
            f(new b(cVar.f8895d), (int) cVar.f8894c, 5);
        }
        c cVar2 = (c) this.f8868f[0].get("ISO");
        c cVar3 = (c) this.f8868f[1].get("PhotographicSensitivity");
        if (cVar2 == null || cVar3 != null) {
            return;
        }
        this.f8868f[1].put("PhotographicSensitivity", cVar2);
    }

    private void n(f fVar) throws IOException {
        byte[] bArr = f8851p0;
        fVar.k(bArr.length);
        byte[] bArr2 = new byte[fVar.available()];
        fVar.readFully(bArr2);
        this.f8878p = bArr.length;
        G(bArr2, 0);
    }

    private void o(b bVar) throws Throwable {
        if (f8856u) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("getWebpAttributes starting with: ");
            sb2.append(bVar);
        }
        bVar.j(ByteOrder.LITTLE_ENDIAN);
        bVar.k(K.length);
        int i10 = bVar.readInt() + 8;
        byte[] bArr = L;
        bVar.k(bArr.length);
        int length = bArr.length + 8;
        while (true) {
            try {
                byte[] bArr2 = new byte[4];
                if (bVar.read(bArr2) != 4) {
                    throw new IOException("Encountered invalid length while parsing WebP chunktype");
                }
                int i11 = bVar.readInt();
                int i12 = length + 8;
                if (Arrays.equals(M, bArr2)) {
                    byte[] bArr3 = new byte[i11];
                    if (bVar.read(bArr3) == i11) {
                        this.f8878p = i12;
                        G(bArr3, 0);
                        K(new b(bArr3));
                        return;
                    } else {
                        throw new IOException("Failed to read given length for given PNG chunk type: " + androidx.exifinterface.media.b.a(bArr2));
                    }
                }
                if (i11 % 2 == 1) {
                    i11++;
                }
                length = i12 + i11;
                if (length == i10) {
                    return;
                }
                if (length > i10) {
                    throw new IOException("Encountered WebP file with invalid chunk size");
                }
                bVar.k(i11);
            } catch (EOFException unused) {
                throw new IOException("Encountered corrupt WebP file.");
            }
        }
    }

    private void p(b bVar, HashMap map) throws Throwable {
        c cVar = (c) map.get("JPEGInterchangeFormat");
        c cVar2 = (c) map.get("JPEGInterchangeFormatLength");
        if (cVar == null || cVar2 == null) {
            return;
        }
        int i10 = cVar.i(this.f8870h);
        int i11 = cVar2.i(this.f8870h);
        if (this.f8866d == 7) {
            i10 += this.f8879q;
        }
        if (i10 > 0 && i11 > 0) {
            this.f8871i = true;
            if (this.f8863a == null && this.f8865c == null && this.f8864b == null) {
                byte[] bArr = new byte[i11];
                bVar.skip(i10);
                bVar.read(bArr);
                this.f8876n = bArr;
            }
            this.f8874l = i10;
            this.f8875m = i11;
        }
        if (f8856u) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Setting thumbnail attributes with offset: ");
            sb2.append(i10);
            sb2.append(", length: ");
            sb2.append(i11);
        }
    }

    private void q(b bVar, HashMap map) {
        c cVar = (c) map.get("StripOffsets");
        c cVar2 = (c) map.get("StripByteCounts");
        if (cVar == null || cVar2 == null) {
            return;
        }
        long[] jArrB = androidx.exifinterface.media.b.b(cVar.k(this.f8870h));
        long[] jArrB2 = androidx.exifinterface.media.b.b(cVar2.k(this.f8870h));
        if (jArrB == null || jArrB.length == 0) {
            Log.w("ExifInterface", "stripOffsets should not be null or have zero length.");
            return;
        }
        if (jArrB2 == null || jArrB2.length == 0) {
            Log.w("ExifInterface", "stripByteCounts should not be null or have zero length.");
            return;
        }
        if (jArrB.length != jArrB2.length) {
            Log.w("ExifInterface", "stripOffsets and stripByteCounts should have same length.");
            return;
        }
        long j10 = 0;
        for (long j11 : jArrB2) {
            j10 += j11;
        }
        int i10 = (int) j10;
        byte[] bArr = new byte[i10];
        this.f8873k = true;
        this.f8872j = true;
        this.f8871i = true;
        int i11 = 0;
        int i12 = 0;
        for (int i13 = 0; i13 < jArrB.length; i13++) {
            int i14 = (int) jArrB[i13];
            int i15 = (int) jArrB2[i13];
            if (i13 < jArrB.length - 1 && i14 + i15 != jArrB[i13 + 1]) {
                this.f8873k = false;
            }
            int i16 = i14 - i11;
            if (i16 < 0) {
                return;
            }
            long j12 = i16;
            if (bVar.skip(j12) != j12) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Failed to skip ");
                sb2.append(i16);
                sb2.append(" bytes.");
                return;
            }
            int i17 = i11 + i16;
            byte[] bArr2 = new byte[i15];
            if (bVar.read(bArr2) != i15) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("Failed to read ");
                sb3.append(i15);
                sb3.append(" bytes.");
                return;
            }
            i11 = i17 + i15;
            System.arraycopy(bArr2, 0, bArr, i12, i15);
            i12 += i15;
        }
        this.f8876n = bArr;
        if (this.f8873k) {
            this.f8874l = (int) jArrB[0];
            this.f8875m = i10;
        }
    }

    private static boolean r(BufferedInputStream bufferedInputStream) throws IOException {
        byte[] bArr = f8851p0;
        bufferedInputStream.mark(bArr.length);
        byte[] bArr2 = new byte[bArr.length];
        bufferedInputStream.read(bArr2);
        bufferedInputStream.reset();
        int i10 = 0;
        while (true) {
            byte[] bArr3 = f8851p0;
            if (i10 >= bArr3.length) {
                return true;
            }
            if (bArr2[i10] != bArr3[i10]) {
                return false;
            }
            i10++;
        }
    }

    private boolean s(byte[] bArr) throws Throwable {
        long j10;
        b bVar = null;
        try {
            b bVar2 = new b(bArr);
            try {
                long length = bVar2.readInt();
                byte[] bArr2 = new byte[4];
                bVar2.read(bArr2);
                if (!Arrays.equals(bArr2, B)) {
                    bVar2.close();
                    return false;
                }
                if (length == 1) {
                    length = bVar2.readLong();
                    j10 = 16;
                    if (length < 16) {
                        bVar2.close();
                        return false;
                    }
                } else {
                    j10 = 8;
                }
                if (length > bArr.length) {
                    length = bArr.length;
                }
                long j11 = length - j10;
                if (j11 < 8) {
                    bVar2.close();
                    return false;
                }
                byte[] bArr3 = new byte[4];
                boolean z10 = false;
                boolean z11 = false;
                for (long j12 = 0; j12 < j11 / 4; j12++) {
                    if (bVar2.read(bArr3) != 4) {
                        bVar2.close();
                        return false;
                    }
                    if (j12 != 1) {
                        if (Arrays.equals(bArr3, C)) {
                            z10 = true;
                        } else if (Arrays.equals(bArr3, D)) {
                            z11 = true;
                        }
                        if (z10 && z11) {
                            bVar2.close();
                            return true;
                        }
                    }
                }
                bVar2.close();
            } catch (Exception unused) {
                bVar = bVar2;
                if (bVar != null) {
                    bVar.close();
                }
            } catch (Throwable th2) {
                th = th2;
                bVar = bVar2;
                if (bVar != null) {
                    bVar.close();
                }
                throw th;
            }
        } catch (Exception unused2) {
        } catch (Throwable th3) {
            th = th3;
        }
        return false;
    }

    private static boolean t(byte[] bArr) {
        int i10 = 0;
        while (true) {
            byte[] bArr2 = A;
            if (i10 >= bArr2.length) {
                return true;
            }
            if (bArr[i10] != bArr2[i10]) {
                return false;
            }
            i10++;
        }
    }

    private boolean u(byte[] bArr) throws Throwable {
        b bVar = null;
        try {
            b bVar2 = new b(bArr);
            try {
                ByteOrder byteOrderF = F(bVar2);
                this.f8870h = byteOrderF;
                bVar2.j(byteOrderF);
                short s10 = bVar2.readShort();
                boolean z10 = s10 == 20306 || s10 == 21330;
                bVar2.close();
                return z10;
            } catch (Exception unused) {
                bVar = bVar2;
                if (bVar != null) {
                    bVar.close();
                }
                return false;
            } catch (Throwable th2) {
                th = th2;
                bVar = bVar2;
                if (bVar != null) {
                    bVar.close();
                }
                throw th;
            }
        } catch (Exception unused2) {
        } catch (Throwable th3) {
            th = th3;
        }
    }

    private boolean v(byte[] bArr) {
        int i10 = 0;
        while (true) {
            byte[] bArr2 = G;
            if (i10 >= bArr2.length) {
                return true;
            }
            if (bArr[i10] != bArr2[i10]) {
                return false;
            }
            i10++;
        }
    }

    private boolean w(byte[] bArr) {
        byte[] bytes = "FUJIFILMCCD-RAW".getBytes(Charset.defaultCharset());
        for (int i10 = 0; i10 < bytes.length; i10++) {
            if (bArr[i10] != bytes[i10]) {
                return false;
            }
        }
        return true;
    }

    private boolean x(byte[] bArr) throws Throwable {
        b bVar = null;
        try {
            b bVar2 = new b(bArr);
            try {
                ByteOrder byteOrderF = F(bVar2);
                this.f8870h = byteOrderF;
                bVar2.j(byteOrderF);
                boolean z10 = bVar2.readShort() == 85;
                bVar2.close();
                return z10;
            } catch (Exception unused) {
                bVar = bVar2;
                if (bVar != null) {
                    bVar.close();
                }
                return false;
            } catch (Throwable th2) {
                th = th2;
                bVar = bVar2;
                if (bVar != null) {
                    bVar.close();
                }
                throw th;
            }
        } catch (Exception unused2) {
        } catch (Throwable th3) {
            th = th3;
        }
    }

    private static boolean y(FileDescriptor fileDescriptor) {
        try {
            androidx.exifinterface.media.b.a.c(fileDescriptor, 0L, OsConstants.SEEK_CUR);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    private boolean z(HashMap map) throws Throwable {
        c cVar;
        c cVar2 = (c) map.get("BitsPerSample");
        if (cVar2 == null) {
            return false;
        }
        int[] iArr = (int[]) cVar2.k(this.f8870h);
        int[] iArr2 = f8860x;
        if (Arrays.equals(iArr2, iArr)) {
            return true;
        }
        if (this.f8866d != 3 || (cVar = (c) map.get("PhotometricInterpretation")) == null) {
            return false;
        }
        int i10 = cVar.i(this.f8870h);
        return (i10 == 1 && Arrays.equals(iArr, f8862z)) || (i10 == 6 && Arrays.equals(iArr, iArr2));
    }

    public String b(String str) {
        if (str == null) {
            throw new NullPointerException("tag shouldn't be null");
        }
        c cVarD = d(str);
        if (cVarD != null) {
            if (!f8848m0.contains(str)) {
                return cVarD.j(this.f8870h);
            }
            if (str.equals("GPSTimeStamp")) {
                int i10 = cVarD.f8892a;
                if (i10 != 5 && i10 != 10) {
                    Log.w("ExifInterface", "GPS Timestamp format is not rational. format=" + cVarD.f8892a);
                    return null;
                }
                e[] eVarArr = (e[]) cVarD.k(this.f8870h);
                if (eVarArr == null || eVarArr.length != 3) {
                    Log.w("ExifInterface", "Invalid GPS Timestamp array. array=" + Arrays.toString(eVarArr));
                    return null;
                }
                e eVar = eVarArr[0];
                Integer numValueOf = Integer.valueOf((int) (eVar.f8900a / eVar.f8901b));
                e eVar2 = eVarArr[1];
                Integer numValueOf2 = Integer.valueOf((int) (eVar2.f8900a / eVar2.f8901b));
                e eVar3 = eVarArr[2];
                return String.format("%02d:%02d:%02d", numValueOf, numValueOf2, Integer.valueOf((int) (eVar3.f8900a / eVar3.f8901b)));
            }
            try {
                return Double.toString(cVarD.h(this.f8870h));
            } catch (NumberFormatException unused) {
            }
        }
        return null;
    }

    public int c(String str, int i10) {
        if (str == null) {
            throw new NullPointerException("tag shouldn't be null");
        }
        c cVarD = d(str);
        if (cVarD == null) {
            return i10;
        }
        try {
            return cVarD.i(this.f8870h);
        } catch (NumberFormatException unused) {
            return i10;
        }
    }

    public int l() {
        switch (c("Orientation", 1)) {
            case 3:
            case 4:
                return 180;
            case 5:
            case 8:
                return 270;
            case 6:
            case 7:
                return 90;
            default:
                return 0;
        }
    }

    private static class f extends b {
        f(byte[] bArr) {
            super(bArr);
            this.f8888a.mark(Integer.MAX_VALUE);
        }

        public void l(long j10) throws IOException {
            int i10 = this.f8890c;
            if (i10 > j10) {
                this.f8890c = 0;
                this.f8888a.reset();
            } else {
                j10 -= (long) i10;
            }
            k((int) j10);
        }

        f(InputStream inputStream) {
            super(inputStream);
            if (inputStream.markSupported()) {
                this.f8888a.mark(Integer.MAX_VALUE);
                return;
            }
            throw new IllegalArgumentException("Cannot create SeekableByteOrderedDataInputStream with stream that does not support mark/reset");
        }
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0062  */
    public a(InputStream inputStream, int i10) {
        d[][] dVarArr = f8844i0;
        this.f8868f = new HashMap[dVarArr.length];
        this.f8869g = new HashSet(dVarArr.length);
        this.f8870h = ByteOrder.BIG_ENDIAN;
        if (inputStream == null) {
            throw new NullPointerException("inputStream cannot be null");
        }
        this.f8863a = null;
        if (i10 == 1) {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream, f8851p0.length);
            if (!r(bufferedInputStream)) {
                Log.w("ExifInterface", "Given data does not follow the structure of an Exif-only data.");
                return;
            }
            this.f8867e = true;
            this.f8865c = null;
            this.f8864b = null;
            inputStream = bufferedInputStream;
        } else if (inputStream instanceof AssetManager.AssetInputStream) {
            this.f8865c = (AssetManager.AssetInputStream) inputStream;
            this.f8864b = null;
        } else if (inputStream instanceof FileInputStream) {
            FileInputStream fileInputStream = (FileInputStream) inputStream;
            if (y(fileInputStream.getFD())) {
                this.f8865c = null;
                this.f8864b = fileInputStream.getFD();
            } else {
                this.f8865c = null;
                this.f8864b = null;
            }
        } else {
            this.f8865c = null;
            this.f8864b = null;
        }
        C(inputStream);
    }

    static class d {

        public final int f8896a;

        public final String f8897b;

        public final int f8898c;

        public final int f8899d;

        d(String str, int i10, int i11) {
            this.f8897b = str;
            this.f8896a = i10;
            this.f8898c = i11;
            this.f8899d = -1;
        }

        boolean a(int i10) {
            int i11;
            int i12 = this.f8898c;
            if (i12 == 7 || i10 == 7 || i12 == i10 || (i11 = this.f8899d) == i10) {
                return true;
            }
            if ((i12 == 4 || i11 == 4) && i10 == 3) {
                return true;
            }
            if ((i12 == 9 || i11 == 9) && i10 == 8) {
                return true;
            }
            return (i12 == 12 || i11 == 12) && i10 == 11;
        }

        d(String str, int i10, int i11, int i12) {
            this.f8897b = str;
            this.f8896a = i10;
            this.f8898c = i11;
            this.f8899d = i12;
        }
    }

    class C0074a extends MediaDataSource {

        long f8883a;

        final f f8884b;

        C0074a(f fVar) {
            this.f8884b = fVar;
        }

        @Override
        public long getSize() {
            return -1L;
        }

        @Override
        public int readAt(long j10, byte[] bArr, int i10, int i11) {
            if (i11 == 0) {
                return 0;
            }
            if (j10 < 0) {
                return -1;
            }
            try {
                long j11 = this.f8883a;
                if (j11 != j10) {
                    if (j11 >= 0 && j10 >= j11 + ((long) this.f8884b.available())) {
                        return -1;
                    }
                    this.f8884b.l(j10);
                    this.f8883a = j10;
                }
                if (i11 > this.f8884b.available()) {
                    i11 = this.f8884b.available();
                }
                int i12 = this.f8884b.read(bArr, i10, i11);
                if (i12 >= 0) {
                    this.f8883a += (long) i12;
                    return i12;
                }
            } catch (IOException unused) {
            }
            this.f8883a = -1L;
            return -1;
        }

        @Override
        public void close() {
        }
    }
}
