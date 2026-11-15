package com.sun.jna;

import com.transsion.socket.pkgdata.SocketData;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import org.mozilla.javascript.NativeSymbol;

public class ELFAnalyser {
    public static final byte[] i = {127, 69, 76, 70};
    public final String a;
    public boolean b = false;
    public boolean c = false;
    public boolean d = false;
    public boolean e = false;
    public boolean f = false;
    public boolean g = false;
    public boolean h = false;

    public static class ArmAeabiAttributesTag {
        public static final ArmAeabiAttributesTag A;
        public static final ArmAeabiAttributesTag B;
        public static final ArmAeabiAttributesTag C;
        public static final ArmAeabiAttributesTag D;
        public static final ArmAeabiAttributesTag E;
        public static final ArmAeabiAttributesTag F;
        public static final ArmAeabiAttributesTag G;
        public static final ArmAeabiAttributesTag H;
        public static final ArmAeabiAttributesTag I;
        public static final ArmAeabiAttributesTag J;
        public static final ArmAeabiAttributesTag K;
        public static final ArmAeabiAttributesTag L;
        public static final ArmAeabiAttributesTag M;
        public static final ArmAeabiAttributesTag N;
        public static final ArmAeabiAttributesTag O;
        public static final ArmAeabiAttributesTag P;
        public static final ArmAeabiAttributesTag Q;
        public static final ArmAeabiAttributesTag R;
        public static final ArmAeabiAttributesTag S;
        public static final ArmAeabiAttributesTag T;
        public static final ArmAeabiAttributesTag U;
        public static final ArmAeabiAttributesTag V;
        public static final ArmAeabiAttributesTag W;
        public static final List d = new LinkedList();
        public static final Map e = new HashMap();
        public static final Map f = new HashMap();
        public static final ArmAeabiAttributesTag g;
        public static final ArmAeabiAttributesTag h;
        public static final ArmAeabiAttributesTag i;
        public static final ArmAeabiAttributesTag j;
        public static final ArmAeabiAttributesTag k;
        public static final ArmAeabiAttributesTag l;
        public static final ArmAeabiAttributesTag m;
        public static final ArmAeabiAttributesTag n;
        public static final ArmAeabiAttributesTag o;
        public static final ArmAeabiAttributesTag p;
        public static final ArmAeabiAttributesTag q;
        public static final ArmAeabiAttributesTag r;
        public static final ArmAeabiAttributesTag s;
        public static final ArmAeabiAttributesTag t;
        public static final ArmAeabiAttributesTag u;
        public static final ArmAeabiAttributesTag v;
        public static final ArmAeabiAttributesTag w;
        public static final ArmAeabiAttributesTag x;
        public static final ArmAeabiAttributesTag y;
        public static final ArmAeabiAttributesTag z;
        public final int a;
        public final String b;
        public final ParameterType c;

        public enum ParameterType {
            UINT32,
            NTBS,
            ULEB128
        }

        static {
            ParameterType parameterType = ParameterType.UINT32;
            g = a(1, "File", parameterType);
            h = a(2, "Section", parameterType);
            i = a(3, NativeSymbol.CLASS_NAME, parameterType);
            ParameterType parameterType2 = ParameterType.NTBS;
            j = a(4, "CPU_raw_name", parameterType2);
            k = a(5, "CPU_name", parameterType2);
            ParameterType parameterType3 = ParameterType.ULEB128;
            l = a(6, "CPU_arch", parameterType3);
            m = a(7, "CPU_arch_profile", parameterType3);
            n = a(8, "ARM_ISA_use", parameterType3);
            o = a(9, "THUMB_ISA_use", parameterType3);
            p = a(10, "FP_arch", parameterType3);
            q = a(11, "WMMX_arch", parameterType3);
            r = a(12, "Advanced_SIMD_arch", parameterType3);
            s = a(13, "PCS_config", parameterType3);
            t = a(14, "ABI_PCS_R9_use", parameterType3);
            u = a(15, "ABI_PCS_RW_data", parameterType3);
            v = a(16, "ABI_PCS_RO_data", parameterType3);
            w = a(17, "ABI_PCS_GOT_use", parameterType3);
            x = a(18, "ABI_PCS_wchar_t", parameterType3);
            y = a(19, "ABI_FP_rounding", parameterType3);
            z = a(20, "ABI_FP_denormal", parameterType3);
            A = a(21, "ABI_FP_exceptions", parameterType3);
            B = a(22, "ABI_FP_user_exceptions", parameterType3);
            C = a(23, "ABI_FP_number_model", parameterType3);
            D = a(24, "ABI_align_needed", parameterType3);
            E = a(25, "ABI_align8_preserved", parameterType3);
            F = a(26, "ABI_enum_size", parameterType3);
            G = a(27, "ABI_HardFP_use", parameterType3);
            H = a(28, "ABI_VFP_args", parameterType3);
            I = a(29, "ABI_WMMX_args", parameterType3);
            J = a(30, "ABI_optimization_goals", parameterType3);
            K = a(31, "ABI_FP_optimization_goals", parameterType3);
            L = a(32, "compatibility", parameterType2);
            M = a(34, "CPU_unaligned_access", parameterType3);
            N = a(36, "FP_HP_extension", parameterType3);
            O = a(38, "ABI_FP_16bit_format", parameterType3);
            P = a(42, "MPextension_use", parameterType3);
            Q = a(44, "DIV_use", parameterType3);
            R = a(64, "nodefaults", parameterType3);
            S = a(65, "also_compatible_with", parameterType2);
            T = a(67, "conformance", parameterType2);
            U = a(66, "T2EE_use", parameterType3);
            V = a(68, "Virtualization_use", parameterType3);
            W = a(70, "MPextension_use", parameterType3);
        }

        public ArmAeabiAttributesTag(int i2, String str, ParameterType parameterType) {
            this.a = i2;
            this.b = str;
            this.c = parameterType;
        }

        public static ArmAeabiAttributesTag a(int i2, String str, ParameterType parameterType) {
            ArmAeabiAttributesTag armAeabiAttributesTag = new ArmAeabiAttributesTag(i2, str, parameterType);
            Map map = e;
            if (!map.containsKey(Integer.valueOf(armAeabiAttributesTag.f()))) {
                map.put(Integer.valueOf(armAeabiAttributesTag.f()), armAeabiAttributesTag);
            }
            Map map2 = f;
            if (!map2.containsKey(armAeabiAttributesTag.c())) {
                map2.put(armAeabiAttributesTag.c(), armAeabiAttributesTag);
            }
            d.add(armAeabiAttributesTag);
            return armAeabiAttributesTag;
        }

        public static ArmAeabiAttributesTag b(int i2) {
            Map map = e;
            if (map.containsKey(Integer.valueOf(i2))) {
                return (ArmAeabiAttributesTag) map.get(Integer.valueOf(i2));
            }
            return new ArmAeabiAttributesTag(i2, "Unknown " + i2, e(i2));
        }

        public static ParameterType e(int i2) {
            ArmAeabiAttributesTag armAeabiAttributesTagB = b(i2);
            if (armAeabiAttributesTagB == null) {
                return i2 % 2 == 0 ? ParameterType.ULEB128 : ParameterType.NTBS;
            }
            return armAeabiAttributesTagB.d();
        }

        public String c() {
            return this.b;
        }

        public ParameterType d() {
            return this.c;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.a == ((ArmAeabiAttributesTag) obj).a;
        }

        public int f() {
            return this.a;
        }

        public int hashCode() {
            return 469 + this.a;
        }

        public String toString() {
            return this.b + " (" + this.a + ")";
        }
    }

    public static class a {
        public static final int[] a;

        static {
            int[] iArr = new int[ArmAeabiAttributesTag.ParameterType.values().length];
            a = iArr;
            try {
                iArr[ArmAeabiAttributesTag.ParameterType.UINT32.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[ArmAeabiAttributesTag.ParameterType.NTBS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[ArmAeabiAttributesTag.ParameterType.ULEB128.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public static class b {
        public final int a;
        public String b;
        public final int c;
        public final int d;
        public final int e;
        public final int f;

        public b(boolean z, ByteBuffer byteBuffer) {
            this.a = byteBuffer.getInt(0);
            this.c = byteBuffer.getInt(4);
            this.d = (int) (z ? byteBuffer.getLong(8) : byteBuffer.getInt(8));
            this.e = (int) (z ? byteBuffer.getLong(24) : byteBuffer.getInt(16));
            this.f = (int) (z ? byteBuffer.getLong(32) : byteBuffer.getInt(20));
        }

        public String a() {
            return this.b;
        }

        public int b() {
            return this.a;
        }

        public int c() {
            return this.e;
        }

        public int d() {
            return this.f;
        }

        public void e(String str) {
            this.b = str;
        }

        public String toString() {
            return "ELFSectionHeaderEntry{nameIdx=" + this.a + ", name=" + this.b + ", type=" + this.c + ", flags=" + this.d + ", offset=" + this.e + ", size=" + this.f + '}';
        }
    }

    public static class c {
        public final List a = new ArrayList();

        public c(boolean z, boolean z2, ByteBuffer byteBuffer, RandomAccessFile randomAccessFile) throws IOException {
            long j;
            short s;
            short s2;
            short s3;
            byte b;
            if (z) {
                j = byteBuffer.getLong(40);
                s = byteBuffer.getShort(58);
                s2 = byteBuffer.getShort(60);
                s3 = byteBuffer.getShort(62);
            } else {
                j = byteBuffer.getInt(32);
                s = byteBuffer.getShort(46);
                s2 = byteBuffer.getShort(48);
                s3 = byteBuffer.getShort(50);
            }
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(s2 * s);
            byteBufferAllocate.order(z2 ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
            randomAccessFile.getChannel().read(byteBufferAllocate, j);
            for (int i = 0; i < s2; i++) {
                byteBufferAllocate.position(i * s);
                ByteBuffer byteBufferSlice = byteBufferAllocate.slice();
                byteBufferSlice.order(byteBufferAllocate.order());
                byteBufferSlice.limit(s);
                this.a.add(new b(z, byteBufferSlice));
            }
            b bVar = (b) this.a.get(s3);
            ByteBuffer byteBufferAllocate2 = ByteBuffer.allocate(bVar.d());
            byteBufferAllocate2.order(z2 ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
            randomAccessFile.getChannel().read(byteBufferAllocate2, bVar.c());
            byteBufferAllocate2.rewind();
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(20);
            for (b bVar2 : this.a) {
                byteArrayOutputStream.reset();
                byteBufferAllocate2.position(bVar2.b());
                while (byteBufferAllocate2.position() < byteBufferAllocate2.limit() && (b = byteBufferAllocate2.get()) != 0) {
                    byteArrayOutputStream.write(b);
                }
                bVar2.e(byteArrayOutputStream.toString("ASCII"));
            }
        }

        public List a() {
            return this.a;
        }
    }

    public ELFAnalyser(String str) {
        this.a = str;
    }

    public static ELFAnalyser a(String str) {
        ELFAnalyser eLFAnalyser = new ELFAnalyser(str);
        eLFAnalyser.k();
        return eLFAnalyser;
    }

    public static Map e(ByteBuffer byteBuffer) {
        HashMap map = new HashMap();
        while (byteBuffer.position() < byteBuffer.limit()) {
            int iPosition = byteBuffer.position();
            int iIntValue = j(byteBuffer).intValue();
            int i2 = byteBuffer.getInt();
            if (iIntValue == 1) {
                map.put(Integer.valueOf(iIntValue), h(byteBuffer));
            }
            byteBuffer.position(iPosition + i2);
        }
        return map;
    }

    public static Map f(ByteBuffer byteBuffer) {
        if (byteBuffer.get() != 65) {
            return Collections.EMPTY_MAP;
        }
        while (byteBuffer.position() < byteBuffer.limit()) {
            int iPosition = byteBuffer.position();
            int i2 = byteBuffer.getInt();
            if (i2 <= 0) {
                break;
            }
            if ("aeabi".equals(i(byteBuffer, null))) {
                return e(byteBuffer);
            }
            byteBuffer.position(iPosition + i2);
        }
        return Collections.EMPTY_MAP;
    }

    public static Map h(ByteBuffer byteBuffer) {
        HashMap map = new HashMap();
        while (byteBuffer.position() < byteBuffer.limit()) {
            ArmAeabiAttributesTag armAeabiAttributesTagB = ArmAeabiAttributesTag.b(j(byteBuffer).intValue());
            int i2 = a.a[armAeabiAttributesTagB.d().ordinal()];
            if (i2 == 1) {
                map.put(armAeabiAttributesTagB, Integer.valueOf(byteBuffer.getInt()));
            } else if (i2 == 2) {
                map.put(armAeabiAttributesTagB, i(byteBuffer, null));
            } else if (i2 == 3) {
                map.put(armAeabiAttributesTagB, j(byteBuffer));
            }
        }
        return map;
    }

    public static String i(ByteBuffer byteBuffer, Integer num) {
        if (num != null) {
            byteBuffer.position(num.intValue());
        }
        int iPosition = byteBuffer.position();
        while (byteBuffer.get() != 0 && byteBuffer.position() <= byteBuffer.limit()) {
        }
        byte[] bArr = new byte[(byteBuffer.position() - iPosition) - 1];
        byteBuffer.position(iPosition);
        byteBuffer.get(bArr);
        byteBuffer.position(byteBuffer.position() + 1);
        try {
            return new String(bArr, "ASCII");
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException(e);
        }
    }

    public static BigInteger j(ByteBuffer byteBuffer) {
        BigInteger bigIntegerOr = BigInteger.ZERO;
        int i2 = 0;
        while (true) {
            byte b2 = byteBuffer.get();
            bigIntegerOr = bigIntegerOr.or(BigInteger.valueOf(b2 & 127).shiftLeft(i2));
            if ((b2 & SocketData.CLAZZ_TYPE_END_SOCKET) == 0) {
                return bigIntegerOr;
            }
            i2 += 7;
        }
    }

    public boolean b() {
        return this.g;
    }

    public boolean c() {
        return b() || d();
    }

    public boolean d() {
        return this.e;
    }

    public final void g(ByteBuffer byteBuffer, RandomAccessFile randomAccessFile) throws IOException {
        for (b bVar : new c(this.c, this.d, byteBuffer, randomAccessFile).a()) {
            if (".ARM.attributes".equals(bVar.a())) {
                ByteBuffer byteBufferAllocate = ByteBuffer.allocate(bVar.d());
                byteBufferAllocate.order(this.d ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
                randomAccessFile.getChannel().read(byteBufferAllocate, bVar.c());
                byteBufferAllocate.rewind();
                Map map = (Map) f(byteBufferAllocate).get(1);
                if (map != null) {
                    Object obj = map.get(ArmAeabiAttributesTag.H);
                    if ((obj instanceof Integer) && ((Integer) obj).equals(1)) {
                        this.g = true;
                    } else if ((obj instanceof BigInteger) && ((BigInteger) obj).intValue() == 1) {
                        this.g = true;
                    }
                }
            }
        }
    }

    public final void k() {
        RandomAccessFile randomAccessFile = new RandomAccessFile(this.a, "r");
        try {
            boolean z = true;
            if (randomAccessFile.length() > 4) {
                byte[] bArr = new byte[4];
                randomAccessFile.seek(0L);
                randomAccessFile.read(bArr);
                if (Arrays.equals(bArr, i)) {
                    this.b = true;
                }
            }
            if (!this.b) {
                try {
                    return;
                } catch (IOException unused) {
                    return;
                }
            }
            randomAccessFile.seek(4L);
            byte b2 = randomAccessFile.readByte();
            byte b3 = randomAccessFile.readByte();
            this.c = b2 == 2;
            this.d = b3 == 2;
            randomAccessFile.seek(0L);
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(this.c ? 64 : 52);
            randomAccessFile.getChannel().read(byteBufferAllocate, 0L);
            byteBufferAllocate.order(this.d ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
            boolean z2 = byteBufferAllocate.get(18) == 40;
            this.h = z2;
            if (z2) {
                int i2 = byteBufferAllocate.getInt(this.c ? 48 : 36);
                this.e = (i2 & 1024) == 1024;
                if ((i2 & 512) != 512) {
                    z = false;
                }
                this.f = z;
                g(byteBufferAllocate, randomAccessFile);
            }
        } finally {
            try {
                randomAccessFile.close();
            } catch (IOException unused2) {
            }
        }
    }
}
