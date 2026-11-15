package com.bykv.vk.openvk.preload.a.b.a;

import com.bykv.vk.openvk.preload.a.n;
import com.bykv.vk.openvk.preload.a.p;
import com.bykv.vk.openvk.preload.a.r;
import com.bykv.vk.openvk.preload.a.s;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.InetAddress;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Calendar;
import java.util.Currency;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.StringTokenizer;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicIntegerArray;

public final class m {
    public static final r<com.bykv.vk.openvk.preload.a.i> A;
    public static final s B;
    public static final s C;
    private static r<Class> D;
    private static r<BitSet> E;
    private static r<Boolean> F;
    private static r<Number> G;
    private static r<Number> H;
    private static r<Number> I;
    private static r<AtomicInteger> J;
    private static r<AtomicBoolean> K;
    private static r<AtomicIntegerArray> L;
    private static r<Number> M;
    private static r<Character> N;
    private static r<String> O;
    private static r<StringBuilder> P;
    private static r<StringBuffer> Q;
    private static r<URL> R;
    private static r<URI> S;
    private static r<InetAddress> T;
    private static r<UUID> U;
    private static r<Currency> V;
    private static r<Calendar> W;
    private static r<Locale> X;

    public static final s f19753a;

    public static final s f19754b;

    public static final r<Boolean> f19755c;

    public static final s f19756d;

    public static final s f19757e;

    public static final s f19758f;

    public static final s f19759g;

    public static final s f19760h;

    public static final s f19761i;

    public static final s f19762j;

    public static final r<Number> f19763k;

    public static final s f19764l;

    public static final s f19765m;

    public static final r<BigDecimal> f19766n;

    public static final r<BigInteger> f19767o;

    public static final s f19768p;

    public static final s f19769q;

    public static final s f19770r;

    public static final s f19771s;

    public static final s f19772t;

    public static final s f19773u;

    public static final s f19774v;

    public static final s f19775w;

    public static final s f19776x;

    public static final s f19777y;

    public static final s f19778z;

    static class AnonymousClass30 {

        static final int[] f19794a;

        static {
            int[] iArr = new int[com.bykv.vk.openvk.preload.a.d.b.values().length];
            f19794a = iArr;
            try {
                iArr[com.bykv.vk.openvk.preload.a.d.b.NUMBER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f19794a[com.bykv.vk.openvk.preload.a.d.b.BOOLEAN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f19794a[com.bykv.vk.openvk.preload.a.d.b.STRING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f19794a[com.bykv.vk.openvk.preload.a.d.b.NULL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f19794a[com.bykv.vk.openvk.preload.a.d.b.BEGIN_ARRAY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f19794a[com.bykv.vk.openvk.preload.a.d.b.BEGIN_OBJECT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f19794a[com.bykv.vk.openvk.preload.a.d.b.END_DOCUMENT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f19794a[com.bykv.vk.openvk.preload.a.d.b.NAME.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f19794a[com.bykv.vk.openvk.preload.a.d.b.END_OBJECT.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f19794a[com.bykv.vk.openvk.preload.a.d.b.END_ARRAY.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    static {
        r<Class> rVarA = new r<Class>() {
            @Override
            public final void a(com.bykv.vk.openvk.preload.a.d.c cVar, Class cls) throws IOException {
                throw new UnsupportedOperationException("Attempted to serialize java.lang.Class: " + cls.getName() + ". Forgot to register a type adapter?");
            }

            @Override
            public final Class a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                throw new UnsupportedOperationException("Attempted to deserialize a java.lang.Class. Forgot to register a type adapter?");
            }
        }.a();
        D = rVarA;
        f19753a = a(Class.class, rVarA);
        r<BitSet> rVarA2 = new r<BitSet>() {
            /* JADX WARN: Code duplicated, block: B:15:0x002e  */
            private static BitSet b(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                BitSet bitSet = new BitSet();
                aVar.a();
                com.bykv.vk.openvk.preload.a.d.b bVarF = aVar.f();
                int i10 = 0;
                while (bVarF != com.bykv.vk.openvk.preload.a.d.b.END_ARRAY) {
                    int i11 = AnonymousClass30.f19794a[bVarF.ordinal()];
                    boolean zI = true;
                    if (i11 != 1) {
                        if (i11 == 2) {
                            zI = aVar.i();
                        } else {
                            if (i11 != 3) {
                                throw new p("Invalid bitset value type: ".concat(String.valueOf(bVarF)));
                            }
                            String strH = aVar.h();
                            try {
                                if (Integer.parseInt(strH) == 0) {
                                    zI = false;
                                }
                            } catch (NumberFormatException unused) {
                                throw new p("Error: Expecting: bitset number value (1, 0), Found: ".concat(String.valueOf(strH)));
                            }
                        }
                    } else if (aVar.m() == 0) {
                        zI = false;
                    }
                    if (zI) {
                        bitSet.set(i10);
                    }
                    i10++;
                    bVarF = aVar.f();
                }
                aVar.b();
                return bitSet;
            }

            @Override
            public final BitSet a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                return b(aVar);
            }

            @Override
            public final void a(com.bykv.vk.openvk.preload.a.d.c cVar, BitSet bitSet) throws IOException {
                BitSet bitSet2 = bitSet;
                cVar.d();
                int length = bitSet2.length();
                for (int i10 = 0; i10 < length; i10++) {
                    cVar.a(bitSet2.get(i10) ? 1L : 0L);
                }
                cVar.e();
            }
        }.a();
        E = rVarA2;
        f19754b = a(BitSet.class, rVarA2);
        F = new r<Boolean>() {
            @Override
            public final void a(com.bykv.vk.openvk.preload.a.d.c cVar, Boolean bool) throws IOException {
                cVar.a(bool);
            }

            @Override
            public final Boolean a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                com.bykv.vk.openvk.preload.a.d.b bVarF = aVar.f();
                if (bVarF == com.bykv.vk.openvk.preload.a.d.b.NULL) {
                    aVar.j();
                    return null;
                }
                if (bVarF == com.bykv.vk.openvk.preload.a.d.b.STRING) {
                    return Boolean.valueOf(Boolean.parseBoolean(aVar.h()));
                }
                return Boolean.valueOf(aVar.i());
            }
        };
        f19755c = new r<Boolean>() {
            @Override
            public final void a(com.bykv.vk.openvk.preload.a.d.c cVar, Boolean bool) throws IOException {
                Boolean bool2 = bool;
                cVar.b(bool2 == null ? "null" : bool2.toString());
            }

            @Override
            public final Boolean a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                if (aVar.f() == com.bykv.vk.openvk.preload.a.d.b.NULL) {
                    aVar.j();
                    return null;
                }
                return Boolean.valueOf(aVar.h());
            }
        };
        f19756d = a(Boolean.TYPE, Boolean.class, F);
        r<Number> rVar = new r<Number>() {
            private static Number b(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                if (aVar.f() == com.bykv.vk.openvk.preload.a.d.b.NULL) {
                    aVar.j();
                    return null;
                }
                try {
                    return Byte.valueOf((byte) aVar.m());
                } catch (NumberFormatException e10) {
                    throw new p(e10);
                }
            }

            @Override
            public final Number a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                return b(aVar);
            }

            @Override
            public final void a(com.bykv.vk.openvk.preload.a.d.c cVar, Number number) throws IOException {
                cVar.a(number);
            }
        };
        G = rVar;
        f19757e = a(Byte.TYPE, Byte.class, rVar);
        r<Number> rVar2 = new r<Number>() {
            private static Number b(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                if (aVar.f() == com.bykv.vk.openvk.preload.a.d.b.NULL) {
                    aVar.j();
                    return null;
                }
                try {
                    return Short.valueOf((short) aVar.m());
                } catch (NumberFormatException e10) {
                    throw new p(e10);
                }
            }

            @Override
            public final Number a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                return b(aVar);
            }

            @Override
            public final void a(com.bykv.vk.openvk.preload.a.d.c cVar, Number number) throws IOException {
                cVar.a(number);
            }
        };
        H = rVar2;
        f19758f = a(Short.TYPE, Short.class, rVar2);
        r<Number> rVar3 = new r<Number>() {
            private static Number b(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                if (aVar.f() == com.bykv.vk.openvk.preload.a.d.b.NULL) {
                    aVar.j();
                    return null;
                }
                try {
                    return Integer.valueOf(aVar.m());
                } catch (NumberFormatException e10) {
                    throw new p(e10);
                }
            }

            @Override
            public final Number a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                return b(aVar);
            }

            @Override
            public final void a(com.bykv.vk.openvk.preload.a.d.c cVar, Number number) throws IOException {
                cVar.a(number);
            }
        };
        I = rVar3;
        f19759g = a(Integer.TYPE, Integer.class, rVar3);
        r<AtomicInteger> rVarA3 = new r<AtomicInteger>() {
            private static AtomicInteger b(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                try {
                    return new AtomicInteger(aVar.m());
                } catch (NumberFormatException e10) {
                    throw new p(e10);
                }
            }

            @Override
            public final AtomicInteger a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                return b(aVar);
            }

            @Override
            public final void a(com.bykv.vk.openvk.preload.a.d.c cVar, AtomicInteger atomicInteger) throws IOException {
                cVar.a(atomicInteger.get());
            }
        }.a();
        J = rVarA3;
        f19760h = a(AtomicInteger.class, rVarA3);
        r<AtomicBoolean> rVarA4 = new r<AtomicBoolean>() {
            @Override
            public final void a(com.bykv.vk.openvk.preload.a.d.c cVar, AtomicBoolean atomicBoolean) throws IOException {
                cVar.d(atomicBoolean.get());
            }

            @Override
            public final AtomicBoolean a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                return new AtomicBoolean(aVar.i());
            }
        }.a();
        K = rVarA4;
        f19761i = a(AtomicBoolean.class, rVarA4);
        r<AtomicIntegerArray> rVarA5 = new r<AtomicIntegerArray>() {
            private static AtomicIntegerArray b(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                ArrayList arrayList = new ArrayList();
                aVar.a();
                while (aVar.e()) {
                    try {
                        arrayList.add(Integer.valueOf(aVar.m()));
                    } catch (NumberFormatException e10) {
                        throw new p(e10);
                    }
                }
                aVar.b();
                int size = arrayList.size();
                AtomicIntegerArray atomicIntegerArray = new AtomicIntegerArray(size);
                for (int i10 = 0; i10 < size; i10++) {
                    atomicIntegerArray.set(i10, ((Integer) arrayList.get(i10)).intValue());
                }
                return atomicIntegerArray;
            }

            @Override
            public final AtomicIntegerArray a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                return b(aVar);
            }

            @Override
            public final void a(com.bykv.vk.openvk.preload.a.d.c cVar, AtomicIntegerArray atomicIntegerArray) throws IOException {
                AtomicIntegerArray atomicIntegerArray2 = atomicIntegerArray;
                cVar.d();
                int length = atomicIntegerArray2.length();
                for (int i10 = 0; i10 < length; i10++) {
                    cVar.a(atomicIntegerArray2.get(i10));
                }
                cVar.e();
            }
        }.a();
        L = rVarA5;
        f19762j = a(AtomicIntegerArray.class, rVarA5);
        f19763k = new r<Number>() {
            private static Number b(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                if (aVar.f() == com.bykv.vk.openvk.preload.a.d.b.NULL) {
                    aVar.j();
                    return null;
                }
                try {
                    return Long.valueOf(aVar.l());
                } catch (NumberFormatException e10) {
                    throw new p(e10);
                }
            }

            @Override
            public final Number a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                return b(aVar);
            }

            @Override
            public final void a(com.bykv.vk.openvk.preload.a.d.c cVar, Number number) throws IOException {
                cVar.a(number);
            }
        };
        new r<Number>() {
            @Override
            public final void a(com.bykv.vk.openvk.preload.a.d.c cVar, Number number) throws IOException {
                cVar.a(number);
            }

            @Override
            public final Number a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                if (aVar.f() == com.bykv.vk.openvk.preload.a.d.b.NULL) {
                    aVar.j();
                    return null;
                }
                return Float.valueOf((float) aVar.k());
            }
        };
        new r<Number>() {
            @Override
            public final void a(com.bykv.vk.openvk.preload.a.d.c cVar, Number number) throws IOException {
                cVar.a(number);
            }

            @Override
            public final Number a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                if (aVar.f() == com.bykv.vk.openvk.preload.a.d.b.NULL) {
                    aVar.j();
                    return null;
                }
                return Double.valueOf(aVar.k());
            }
        };
        r<Number> rVar4 = new r<Number>() {
            @Override
            public final void a(com.bykv.vk.openvk.preload.a.d.c cVar, Number number) throws IOException {
                cVar.a(number);
            }

            @Override
            public final Number a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                com.bykv.vk.openvk.preload.a.d.b bVarF = aVar.f();
                int i10 = AnonymousClass30.f19794a[bVarF.ordinal()];
                if (i10 == 1 || i10 == 3) {
                    return new com.bykv.vk.openvk.preload.a.b.f(aVar.h());
                }
                if (i10 == 4) {
                    aVar.j();
                    return null;
                }
                throw new p("Expecting number, got: ".concat(String.valueOf(bVarF)));
            }
        };
        M = rVar4;
        f19764l = a(Number.class, rVar4);
        r<Character> rVar5 = new r<Character>() {
            @Override
            public final void a(com.bykv.vk.openvk.preload.a.d.c cVar, Character ch2) throws IOException {
                Character ch3 = ch2;
                cVar.b(ch3 == null ? null : String.valueOf(ch3));
            }

            @Override
            public final Character a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                if (aVar.f() == com.bykv.vk.openvk.preload.a.d.b.NULL) {
                    aVar.j();
                    return null;
                }
                String strH = aVar.h();
                if (strH.length() == 1) {
                    return Character.valueOf(strH.charAt(0));
                }
                throw new p("Expecting character, got: ".concat(strH));
            }
        };
        N = rVar5;
        f19765m = a(Character.TYPE, Character.class, rVar5);
        O = new r<String>() {
            @Override
            public final void a(com.bykv.vk.openvk.preload.a.d.c cVar, String str) throws IOException {
                cVar.b(str);
            }

            @Override
            public final String a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                com.bykv.vk.openvk.preload.a.d.b bVarF = aVar.f();
                if (bVarF == com.bykv.vk.openvk.preload.a.d.b.NULL) {
                    aVar.j();
                    return null;
                }
                if (bVarF == com.bykv.vk.openvk.preload.a.d.b.BOOLEAN) {
                    return Boolean.toString(aVar.i());
                }
                return aVar.h();
            }
        };
        f19766n = new r<BigDecimal>() {
            private static BigDecimal b(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                if (aVar.f() == com.bykv.vk.openvk.preload.a.d.b.NULL) {
                    aVar.j();
                    return null;
                }
                try {
                    return new BigDecimal(aVar.h());
                } catch (NumberFormatException e10) {
                    throw new p(e10);
                }
            }

            @Override
            public final BigDecimal a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                return b(aVar);
            }

            @Override
            public final void a(com.bykv.vk.openvk.preload.a.d.c cVar, BigDecimal bigDecimal) throws IOException {
                cVar.a(bigDecimal);
            }
        };
        f19767o = new r<BigInteger>() {
            private static BigInteger b(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                if (aVar.f() == com.bykv.vk.openvk.preload.a.d.b.NULL) {
                    aVar.j();
                    return null;
                }
                try {
                    return new BigInteger(aVar.h());
                } catch (NumberFormatException e10) {
                    throw new p(e10);
                }
            }

            @Override
            public final BigInteger a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                return b(aVar);
            }

            @Override
            public final void a(com.bykv.vk.openvk.preload.a.d.c cVar, BigInteger bigInteger) throws IOException {
                cVar.a(bigInteger);
            }
        };
        f19768p = a(String.class, O);
        r<StringBuilder> rVar6 = new r<StringBuilder>() {
            @Override
            public final void a(com.bykv.vk.openvk.preload.a.d.c cVar, StringBuilder sb2) throws IOException {
                StringBuilder sb3 = sb2;
                cVar.b(sb3 == null ? null : sb3.toString());
            }

            @Override
            public final StringBuilder a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                if (aVar.f() == com.bykv.vk.openvk.preload.a.d.b.NULL) {
                    aVar.j();
                    return null;
                }
                return new StringBuilder(aVar.h());
            }
        };
        P = rVar6;
        f19769q = a(StringBuilder.class, rVar6);
        r<StringBuffer> rVar7 = new r<StringBuffer>() {
            @Override
            public final void a(com.bykv.vk.openvk.preload.a.d.c cVar, StringBuffer stringBuffer) throws IOException {
                StringBuffer stringBuffer2 = stringBuffer;
                cVar.b(stringBuffer2 == null ? null : stringBuffer2.toString());
            }

            @Override
            public final StringBuffer a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                if (aVar.f() == com.bykv.vk.openvk.preload.a.d.b.NULL) {
                    aVar.j();
                    return null;
                }
                return new StringBuffer(aVar.h());
            }
        };
        Q = rVar7;
        f19770r = a(StringBuffer.class, rVar7);
        r<URL> rVar8 = new r<URL>() {
            @Override
            public final void a(com.bykv.vk.openvk.preload.a.d.c cVar, URL url) throws IOException {
                URL url2 = url;
                cVar.b(url2 == null ? null : url2.toExternalForm());
            }

            @Override
            public final URL a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                if (aVar.f() == com.bykv.vk.openvk.preload.a.d.b.NULL) {
                    aVar.j();
                    return null;
                }
                String strH = aVar.h();
                if ("null".equals(strH)) {
                    return null;
                }
                return new URL(strH);
            }
        };
        R = rVar8;
        f19771s = a(URL.class, rVar8);
        r<URI> rVar9 = new r<URI>() {
            private static URI b(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                if (aVar.f() == com.bykv.vk.openvk.preload.a.d.b.NULL) {
                    aVar.j();
                    return null;
                }
                try {
                    String strH = aVar.h();
                    if ("null".equals(strH)) {
                        return null;
                    }
                    return new URI(strH);
                } catch (URISyntaxException e10) {
                    throw new com.bykv.vk.openvk.preload.a.j(e10);
                }
            }

            @Override
            public final URI a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                return b(aVar);
            }

            @Override
            public final void a(com.bykv.vk.openvk.preload.a.d.c cVar, URI uri) throws IOException {
                URI uri2 = uri;
                cVar.b(uri2 == null ? null : uri2.toASCIIString());
            }
        };
        S = rVar9;
        f19772t = a(URI.class, rVar9);
        r<InetAddress> rVar10 = new r<InetAddress>() {
            @Override
            public final void a(com.bykv.vk.openvk.preload.a.d.c cVar, InetAddress inetAddress) throws IOException {
                InetAddress inetAddress2 = inetAddress;
                cVar.b(inetAddress2 == null ? null : inetAddress2.getHostAddress());
            }

            @Override
            public final InetAddress a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                if (aVar.f() == com.bykv.vk.openvk.preload.a.d.b.NULL) {
                    aVar.j();
                    return null;
                }
                return InetAddress.getByName(aVar.h());
            }
        };
        T = rVar10;
        f19773u = b(InetAddress.class, rVar10);
        r<UUID> rVar11 = new r<UUID>() {
            @Override
            public final void a(com.bykv.vk.openvk.preload.a.d.c cVar, UUID uuid) throws IOException {
                UUID uuid2 = uuid;
                cVar.b(uuid2 == null ? null : uuid2.toString());
            }

            @Override
            public final UUID a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                if (aVar.f() == com.bykv.vk.openvk.preload.a.d.b.NULL) {
                    aVar.j();
                    return null;
                }
                return UUID.fromString(aVar.h());
            }
        };
        U = rVar11;
        f19774v = a(UUID.class, rVar11);
        r<Currency> rVarA6 = new r<Currency>() {
            @Override
            public final void a(com.bykv.vk.openvk.preload.a.d.c cVar, Currency currency) throws IOException {
                cVar.b(currency.getCurrencyCode());
            }

            @Override
            public final Currency a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                return Currency.getInstance(aVar.h());
            }
        }.a();
        V = rVarA6;
        f19775w = a(Currency.class, rVarA6);
        f19776x = new s() {
            @Override
            public final <T> r<T> a(com.bykv.vk.openvk.preload.a.d dVar, com.bykv.vk.openvk.preload.a.c.a<T> aVar) {
                if (aVar.a() != Timestamp.class) {
                    return null;
                }
                final r<T> rVarA7 = dVar.a((Class) Date.class);
                return (r<T>) new r<Timestamp>() {
                    @Override
                    public final void a(com.bykv.vk.openvk.preload.a.d.c cVar, Timestamp timestamp) throws IOException {
                        rVarA7.a(cVar, timestamp);
                    }

                    @Override
                    public final Timestamp a(com.bykv.vk.openvk.preload.a.d.a aVar2) throws IOException {
                        Date date = (Date) rVarA7.a(aVar2);
                        if (date != null) {
                            return new Timestamp(date.getTime());
                        }
                        return null;
                    }
                };
            }
        };
        final r<Calendar> rVar12 = new r<Calendar>() {
            @Override
            public final void a(com.bykv.vk.openvk.preload.a.d.c cVar, Calendar calendar) throws IOException {
                Calendar calendar2 = calendar;
                if (calendar2 == null) {
                    cVar.h();
                    return;
                }
                cVar.f();
                cVar.a("year");
                cVar.a(calendar2.get(1));
                cVar.a("month");
                cVar.a(calendar2.get(2));
                cVar.a("dayOfMonth");
                cVar.a(calendar2.get(5));
                cVar.a("hourOfDay");
                cVar.a(calendar2.get(11));
                cVar.a("minute");
                cVar.a(calendar2.get(12));
                cVar.a("second");
                cVar.a(calendar2.get(13));
                cVar.g();
            }

            @Override
            public final Calendar a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                if (aVar.f() == com.bykv.vk.openvk.preload.a.d.b.NULL) {
                    aVar.j();
                    return null;
                }
                aVar.c();
                int i10 = 0;
                int i11 = 0;
                int i12 = 0;
                int i13 = 0;
                int i14 = 0;
                int i15 = 0;
                while (aVar.f() != com.bykv.vk.openvk.preload.a.d.b.END_OBJECT) {
                    String strG = aVar.g();
                    int iM = aVar.m();
                    if ("year".equals(strG)) {
                        i10 = iM;
                    } else if ("month".equals(strG)) {
                        i11 = iM;
                    } else if ("dayOfMonth".equals(strG)) {
                        i12 = iM;
                    } else if ("hourOfDay".equals(strG)) {
                        i13 = iM;
                    } else if ("minute".equals(strG)) {
                        i14 = iM;
                    } else if ("second".equals(strG)) {
                        i15 = iM;
                    }
                }
                aVar.d();
                return new GregorianCalendar(i10, i11, i12, i13, i14, i15);
            }
        };
        W = rVar12;
        final Class<Calendar> cls = Calendar.class;
        final Class<GregorianCalendar> cls2 = GregorianCalendar.class;
        f19777y = new s() {
            @Override
            public final <T> r<T> a(com.bykv.vk.openvk.preload.a.d dVar, com.bykv.vk.openvk.preload.a.c.a<T> aVar) {
                Class<? super T> clsA = aVar.a();
                if (clsA == cls || clsA == cls2) {
                    return rVar12;
                }
                return null;
            }

            public final String toString() {
                return "Factory[type=" + cls.getName() + "+" + cls2.getName() + ",adapter=" + rVar12 + "]";
            }
        };
        r<Locale> rVar13 = new r<Locale>() {
            @Override
            public final void a(com.bykv.vk.openvk.preload.a.d.c cVar, Locale locale) throws IOException {
                Locale locale2 = locale;
                cVar.b(locale2 == null ? null : locale2.toString());
            }

            @Override
            public final Locale a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                if (aVar.f() == com.bykv.vk.openvk.preload.a.d.b.NULL) {
                    aVar.j();
                    return null;
                }
                StringTokenizer stringTokenizer = new StringTokenizer(aVar.h(), "_");
                String strNextToken = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
                String strNextToken2 = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
                String strNextToken3 = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
                if (strNextToken2 == null && strNextToken3 == null) {
                    return new Locale(strNextToken);
                }
                if (strNextToken3 == null) {
                    return new Locale(strNextToken, strNextToken2);
                }
                return new Locale(strNextToken, strNextToken2, strNextToken3);
            }
        };
        X = rVar13;
        f19778z = a(Locale.class, rVar13);
        r<com.bykv.vk.openvk.preload.a.i> rVar14 = new r<com.bykv.vk.openvk.preload.a.i>() {
            @Override
            public com.bykv.vk.openvk.preload.a.i a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                switch (AnonymousClass30.f19794a[aVar.f().ordinal()]) {
                    case 1:
                        return new n(new com.bykv.vk.openvk.preload.a.b.f(aVar.h()));
                    case 2:
                        return new n(Boolean.valueOf(aVar.i()));
                    case 3:
                        return new n(aVar.h());
                    case 4:
                        aVar.j();
                        return com.bykv.vk.openvk.preload.a.k.f19914a;
                    case 5:
                        com.bykv.vk.openvk.preload.a.g gVar = new com.bykv.vk.openvk.preload.a.g();
                        aVar.a();
                        while (aVar.e()) {
                            gVar.a(a(aVar));
                        }
                        aVar.b();
                        return gVar;
                    case 6:
                        com.bykv.vk.openvk.preload.a.l lVar = new com.bykv.vk.openvk.preload.a.l();
                        aVar.c();
                        while (aVar.e()) {
                            lVar.a(aVar.g(), a(aVar));
                        }
                        aVar.d();
                        return lVar;
                    default:
                        throw new IllegalArgumentException();
                }
            }

            @Override
            public void a(com.bykv.vk.openvk.preload.a.d.c cVar, com.bykv.vk.openvk.preload.a.i iVar) throws IOException {
                if (iVar != null && !(iVar instanceof com.bykv.vk.openvk.preload.a.k)) {
                    boolean z10 = iVar instanceof n;
                    if (z10) {
                        if (z10) {
                            n nVar = (n) iVar;
                            if (nVar.e()) {
                                cVar.a(nVar.a());
                                return;
                            } else if (nVar.d()) {
                                cVar.d(nVar.c());
                                return;
                            } else {
                                cVar.b(nVar.b());
                                return;
                            }
                        }
                        throw new IllegalStateException("Not a JSON Primitive: ".concat(String.valueOf(iVar)));
                    }
                    boolean z11 = iVar instanceof com.bykv.vk.openvk.preload.a.g;
                    if (z11) {
                        cVar.d();
                        if (z11) {
                            Iterator<com.bykv.vk.openvk.preload.a.i> it = ((com.bykv.vk.openvk.preload.a.g) iVar).iterator();
                            while (it.hasNext()) {
                                a(cVar, it.next());
                            }
                            cVar.e();
                            return;
                        }
                        throw new IllegalStateException("Not a JSON Array: ".concat(String.valueOf(iVar)));
                    }
                    boolean z12 = iVar instanceof com.bykv.vk.openvk.preload.a.l;
                    if (z12) {
                        cVar.f();
                        if (z12) {
                            for (Map.Entry<String, com.bykv.vk.openvk.preload.a.i> entry : ((com.bykv.vk.openvk.preload.a.l) iVar).d()) {
                                cVar.a(entry.getKey());
                                a(cVar, entry.getValue());
                            }
                            cVar.g();
                            return;
                        }
                        throw new IllegalStateException("Not a JSON Object: ".concat(String.valueOf(iVar)));
                    }
                    throw new IllegalArgumentException("Couldn't write " + iVar.getClass());
                }
                cVar.h();
            }
        };
        A = rVar14;
        B = b(com.bykv.vk.openvk.preload.a.i.class, rVar14);
        C = new s() {
            @Override
            public final <T> r<T> a(com.bykv.vk.openvk.preload.a.d dVar, com.bykv.vk.openvk.preload.a.c.a<T> aVar) {
                Class<? super T> clsA = aVar.a();
                if (!Enum.class.isAssignableFrom(clsA) || clsA == Enum.class) {
                    return null;
                }
                if (!clsA.isEnum()) {
                    clsA = clsA.getSuperclass();
                }
                return new a(clsA);
            }
        };
    }

    public static <TT> s a(final com.bykv.vk.openvk.preload.a.c.a<TT> aVar, final r<TT> rVar) {
        return new s() {
            @Override
            public final <T> r<T> a(com.bykv.vk.openvk.preload.a.d dVar, com.bykv.vk.openvk.preload.a.c.a<T> aVar2) {
                if (aVar2.equals(aVar)) {
                    return rVar;
                }
                return null;
            }
        };
    }

    private static <T1> s b(final Class<T1> cls, final r<T1> rVar) {
        return new s() {
            @Override
            public final <T2> r<T2> a(com.bykv.vk.openvk.preload.a.d dVar, com.bykv.vk.openvk.preload.a.c.a<T2> aVar) {
                final Class<? super T2> clsA = aVar.a();
                if (cls.isAssignableFrom(clsA)) {
                    return (r<T2>) new r<T1>() {
                        @Override
                        public final void a(com.bykv.vk.openvk.preload.a.d.c cVar, T1 t10) throws IOException {
                            rVar.a(cVar, t10);
                        }

                        @Override
                        public final T1 a(com.bykv.vk.openvk.preload.a.d.a aVar2) throws IOException {
                            T1 t10 = (T1) rVar.a(aVar2);
                            if (t10 == null || clsA.isInstance(t10)) {
                                return t10;
                            }
                            throw new p("Expected a " + clsA.getName() + " but was " + t10.getClass().getName());
                        }
                    };
                }
                return null;
            }

            public final String toString() {
                return "Factory[typeHierarchy=" + cls.getName() + ",adapter=" + rVar + "]";
            }
        };
    }

    static final class a<T extends Enum<T>> extends r<T> {

        private final Map<String, T> f19795a = new HashMap();

        private final Map<T, String> f19796b = new HashMap();

        public a(Class<T> cls) {
            try {
                for (T t10 : cls.getEnumConstants()) {
                    String strName = t10.name();
                    com.bykv.vk.openvk.preload.a.a.b bVar = (com.bykv.vk.openvk.preload.a.a.b) cls.getField(strName).getAnnotation(com.bykv.vk.openvk.preload.a.a.b.class);
                    if (bVar != null) {
                        strName = bVar.a();
                        for (String str : bVar.b()) {
                            this.f19795a.put(str, t10);
                        }
                    }
                    this.f19795a.put(strName, t10);
                    this.f19796b.put(t10, strName);
                }
            } catch (NoSuchFieldException e10) {
                throw new AssertionError(e10);
            }
        }

        @Override
        public final void a(com.bykv.vk.openvk.preload.a.d.c cVar, Object obj) throws IOException {
            Enum r10 = (Enum) obj;
            cVar.b(r10 == null ? null : this.f19796b.get(r10));
        }

        @Override
        public final Object a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
            if (aVar.f() == com.bykv.vk.openvk.preload.a.d.b.NULL) {
                aVar.j();
                return null;
            }
            return this.f19795a.get(aVar.h());
        }
    }

    public static <TT> s a(final Class<TT> cls, final r<TT> rVar) {
        return new s() {
            @Override
            public final <T> r<T> a(com.bykv.vk.openvk.preload.a.d dVar, com.bykv.vk.openvk.preload.a.c.a<T> aVar) {
                if (aVar.a() == cls) {
                    return rVar;
                }
                return null;
            }

            public final String toString() {
                return "Factory[type=" + cls.getName() + ",adapter=" + rVar + "]";
            }
        };
    }

    public static <TT> s a(final Class<TT> cls, final Class<TT> cls2, final r<? super TT> rVar) {
        return new s() {
            @Override
            public final <T> r<T> a(com.bykv.vk.openvk.preload.a.d dVar, com.bykv.vk.openvk.preload.a.c.a<T> aVar) {
                Class<? super T> clsA = aVar.a();
                if (clsA == cls || clsA == cls2) {
                    return rVar;
                }
                return null;
            }

            public final String toString() {
                return "Factory[type=" + cls2.getName() + "+" + cls.getName() + ",adapter=" + rVar + "]";
            }
        };
    }
}
