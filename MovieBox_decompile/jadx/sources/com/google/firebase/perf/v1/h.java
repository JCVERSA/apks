package com.google.firebase.perf.v1;

import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.b1;
import com.google.protobuf.t0;
import com.google.protobuf.y;
import java.util.List;

public final class h extends GeneratedMessageLite implements t0 {
    private static final h DEFAULT_INSTANCE;
    private static volatile b1 PARSER = null;
    public static final int SESSION_ID_FIELD_NUMBER = 1;
    public static final int SESSION_VERBOSITY_FIELD_NUMBER = 2;
    private static final y.h.a sessionVerbosity_converter_ = new a();
    private int bitField0_;
    private String sessionId_ = "";
    private y.g sessionVerbosity_ = GeneratedMessageLite.emptyIntList();

    class a implements y.h.a {
        a() {
        }

        @Override
        public SessionVerbosity convert(Integer num) {
            SessionVerbosity sessionVerbosityForNumber = SessionVerbosity.forNumber(num.intValue());
            return sessionVerbosityForNumber == null ? SessionVerbosity.SESSION_VERBOSITY_NONE : sessionVerbosityForNumber;
        }
    }

    static class b {

        static final int[] f31575a;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f31575a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f31575a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f31575a[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f31575a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f31575a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f31575a[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f31575a[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public static final class c extends GeneratedMessageLite.b implements t0 {
        c(a aVar) {
            this();
        }

        public c d(SessionVerbosity sessionVerbosity) {
            copyOnWrite();
            ((h) this.instance).j(sessionVerbosity);
            return this;
        }

        public c h(String str) {
            copyOnWrite();
            ((h) this.instance).setSessionId(str);
            return this;
        }

        private c() {
            super(h.DEFAULT_INSTANCE);
        }
    }

    static {
        h hVar = new h();
        DEFAULT_INSTANCE = hVar;
        GeneratedMessageLite.registerDefaultInstance(h.class, hVar);
    }

    private h() {
    }

    public void j(SessionVerbosity sessionVerbosity) {
        sessionVerbosity.getClass();
        k();
        this.sessionVerbosity_.addInt(sessionVerbosity.getNumber());
    }

    private void k() {
        y.g gVar = this.sessionVerbosity_;
        if (gVar.isModifiable()) {
            return;
        }
        this.sessionVerbosity_ = GeneratedMessageLite.mutableCopy(gVar);
    }

    public static c o() {
        return (c) DEFAULT_INSTANCE.createBuilder();
    }

    public void setSessionId(String str) {
        str.getClass();
        this.bitField0_ |= 1;
        this.sessionId_ = str;
    }

    @Override
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        a aVar = null;
        switch (b.f31575a[methodToInvoke.ordinal()]) {
            case 1:
                return new h();
            case 2:
                return new c(aVar);
            case 3:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001ဈ\u0000\u0002ࠞ", new Object[]{"bitField0_", "sessionId_", "sessionVerbosity_", SessionVerbosity.internalGetVerifier()});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                b1 cVar = PARSER;
                if (cVar == null) {
                    synchronized (h.class) {
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

    public SessionVerbosity l(int i10) {
        SessionVerbosity sessionVerbosityForNumber = SessionVerbosity.forNumber(this.sessionVerbosity_.getInt(i10));
        return sessionVerbosityForNumber == null ? SessionVerbosity.SESSION_VERBOSITY_NONE : sessionVerbosityForNumber;
    }

    public int m() {
        return this.sessionVerbosity_.size();
    }

    public List n() {
        return new y.h(this.sessionVerbosity_, sessionVerbosity_converter_);
    }
}
