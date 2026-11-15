package com.google.firebase.perf.v1;

import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.b1;
import com.google.protobuf.t0;

public final class d extends GeneratedMessageLite implements t0 {
    public static final int CLIENT_TIME_US_FIELD_NUMBER = 1;
    private static final d DEFAULT_INSTANCE;
    private static volatile b1 PARSER = null;
    public static final int SYSTEM_TIME_US_FIELD_NUMBER = 3;
    public static final int USER_TIME_US_FIELD_NUMBER = 2;
    private int bitField0_;
    private long clientTimeUs_;
    private long systemTimeUs_;
    private long userTimeUs_;

    static class a {

        static final int[] f31571a;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f31571a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f31571a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f31571a[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f31571a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f31571a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f31571a[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f31571a[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public static final class b extends GeneratedMessageLite.b implements t0 {
        b(a aVar) {
            this();
        }

        public b d(long j10) {
            copyOnWrite();
            ((d) this.instance).l(j10);
            return this;
        }

        public b h(long j10) {
            copyOnWrite();
            ((d) this.instance).m(j10);
            return this;
        }

        public b j(long j10) {
            copyOnWrite();
            ((d) this.instance).n(j10);
            return this;
        }

        private b() {
            super(d.DEFAULT_INSTANCE);
        }
    }

    static {
        d dVar = new d();
        DEFAULT_INSTANCE = dVar;
        GeneratedMessageLite.registerDefaultInstance(d.class, dVar);
    }

    private d() {
    }

    public static b k() {
        return (b) DEFAULT_INSTANCE.createBuilder();
    }

    public void l(long j10) {
        this.bitField0_ |= 1;
        this.clientTimeUs_ = j10;
    }

    public void m(long j10) {
        this.bitField0_ |= 4;
        this.systemTimeUs_ = j10;
    }

    public void n(long j10) {
        this.bitField0_ |= 2;
        this.userTimeUs_ = j10;
    }

    @Override
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        a aVar = null;
        switch (a.f31571a[methodToInvoke.ordinal()]) {
            case 1:
                return new d();
            case 2:
                return new b(aVar);
            case 3:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဂ\u0000\u0002ဂ\u0001\u0003ဂ\u0002", new Object[]{"bitField0_", "clientTimeUs_", "userTimeUs_", "systemTimeUs_"});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                b1 cVar = PARSER;
                if (cVar == null) {
                    synchronized (d.class) {
                        try {
                            cVar = PARSER;
                            if (cVar == null) {
                                cVar = new GeneratedMessageLite.c(DEFAULT_INSTANCE);
                                PARSER = cVar;
                            }
                        } catch (Throwable th2) {
                            throw th2;
                        }
                        break;
                    }
                }
                return cVar;
            case 6:
                return (byte) 1;
            case 7:
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }
}
