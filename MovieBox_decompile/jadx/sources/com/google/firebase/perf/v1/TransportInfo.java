package com.google.firebase.perf.v1;

import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.b1;
import com.google.protobuf.t0;
import com.google.protobuf.y;

public final class TransportInfo extends GeneratedMessageLite implements t0 {
    private static final TransportInfo DEFAULT_INSTANCE;
    public static final int DISPATCH_DESTINATION_FIELD_NUMBER = 1;
    private static volatile b1 PARSER;
    private int bitField0_;
    private int dispatchDestination_;

    public enum DispatchDestination implements y.c {
        SOURCE_UNKNOWN(0),
        FL_LEGACY_V1(1);

        public static final int FL_LEGACY_V1_VALUE = 1;
        public static final int SOURCE_UNKNOWN_VALUE = 0;
        private static final y.d internalValueMap = new a();
        private final int value;

        class a implements y.d {
            a() {
            }

            @Override
            public DispatchDestination findValueByNumber(int i10) {
                return DispatchDestination.forNumber(i10);
            }
        }

        private static final class b implements y.e {

            static final y.e f31565a = new b();

            private b() {
            }

            @Override
            public boolean isInRange(int i10) {
                return DispatchDestination.forNumber(i10) != null;
            }
        }

        DispatchDestination(int i10) {
            this.value = i10;
        }

        public static DispatchDestination forNumber(int i10) {
            if (i10 == 0) {
                return SOURCE_UNKNOWN;
            }
            if (i10 != 1) {
                return null;
            }
            return FL_LEGACY_V1;
        }

        public static y.d internalGetValueMap() {
            return internalValueMap;
        }

        public static y.e internalGetVerifier() {
            return b.f31565a;
        }

        @Override
        public final int getNumber() {
            return this.value;
        }

        @Deprecated
        public static DispatchDestination valueOf(int i10) {
            return forNumber(i10);
        }
    }

    static class a {

        static final int[] f31566a;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f31566a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f31566a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f31566a[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f31566a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f31566a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f31566a[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f31566a[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public static final class b extends GeneratedMessageLite.b implements t0 {
        b(a aVar) {
            this();
        }

        private b() {
            super(TransportInfo.DEFAULT_INSTANCE);
        }
    }

    static {
        TransportInfo transportInfo = new TransportInfo();
        DEFAULT_INSTANCE = transportInfo;
        GeneratedMessageLite.registerDefaultInstance(TransportInfo.class, transportInfo);
    }

    private TransportInfo() {
    }

    @Override
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        a aVar = null;
        switch (a.f31566a[methodToInvoke.ordinal()]) {
            case 1:
                return new TransportInfo();
            case 2:
                return new b(aVar);
            case 3:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001᠌\u0000", new Object[]{"bitField0_", "dispatchDestination_", DispatchDestination.internalGetVerifier()});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                b1 cVar = PARSER;
                if (cVar == null) {
                    synchronized (TransportInfo.class) {
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
