package com.google.firebase.perf.v1;

import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.MapFieldLite;
import com.google.protobuf.WireFormat;
import com.google.protobuf.b1;
import com.google.protobuf.m0;
import com.google.protobuf.t0;
import java.util.Map;

public final class c extends GeneratedMessageLite implements t0 {
    public static final int ANDROID_APP_INFO_FIELD_NUMBER = 3;
    public static final int APPLICATION_PROCESS_STATE_FIELD_NUMBER = 5;
    public static final int APP_INSTANCE_ID_FIELD_NUMBER = 2;
    public static final int CUSTOM_ATTRIBUTES_FIELD_NUMBER = 6;
    private static final c DEFAULT_INSTANCE;
    public static final int GOOGLE_APP_ID_FIELD_NUMBER = 1;
    private static volatile b1 PARSER;
    private com.google.firebase.perf.v1.a androidAppInfo_;
    private int applicationProcessState_;
    private int bitField0_;
    private MapFieldLite<String, String> customAttributes_ = MapFieldLite.emptyMapField();
    private String googleAppId_ = "";
    private String appInstanceId_ = "";

    static class a {

        static final int[] f31569a;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f31569a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f31569a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f31569a[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f31569a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f31569a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f31569a[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f31569a[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public static final class b extends GeneratedMessageLite.b implements t0 {
        b(a aVar) {
            this();
        }

        public boolean j() {
            return ((c) this.instance).q();
        }

        public b k(Map map) {
            copyOnWrite();
            ((c) this.instance).o().putAll(map);
            return this;
        }

        public b l(com.google.firebase.perf.v1.a.b bVar) {
            copyOnWrite();
            ((c) this.instance).v((com.google.firebase.perf.v1.a) bVar.build());
            return this;
        }

        public b m(String str) {
            copyOnWrite();
            ((c) this.instance).w(str);
            return this;
        }

        public b n(ApplicationProcessState applicationProcessState) {
            copyOnWrite();
            ((c) this.instance).x(applicationProcessState);
            return this;
        }

        public b o(String str) {
            copyOnWrite();
            ((c) this.instance).y(str);
            return this;
        }

        private b() {
            super(c.DEFAULT_INSTANCE);
        }
    }

    private static final class C0424c {

        static final m0 f31570a;

        static {
            WireFormat.FieldType fieldType = WireFormat.FieldType.STRING;
            f31570a = m0.newDefaultInstance(fieldType, "", fieldType, "");
        }
    }

    static {
        c cVar = new c();
        DEFAULT_INSTANCE = cVar;
        GeneratedMessageLite.registerDefaultInstance(c.class, cVar);
    }

    private c() {
    }

    public static c n() {
        return DEFAULT_INSTANCE;
    }

    public Map o() {
        return t();
    }

    private MapFieldLite t() {
        if (!this.customAttributes_.isMutable()) {
            this.customAttributes_ = this.customAttributes_.mutableCopy();
        }
        return this.customAttributes_;
    }

    public static b u() {
        return (b) DEFAULT_INSTANCE.createBuilder();
    }

    public void v(com.google.firebase.perf.v1.a aVar) {
        aVar.getClass();
        this.androidAppInfo_ = aVar;
        this.bitField0_ |= 4;
    }

    public void w(String str) {
        str.getClass();
        this.bitField0_ |= 2;
        this.appInstanceId_ = str;
    }

    public void x(ApplicationProcessState applicationProcessState) {
        this.applicationProcessState_ = applicationProcessState.getNumber();
        this.bitField0_ |= 8;
    }

    public void y(String str) {
        str.getClass();
        this.bitField0_ |= 1;
        this.googleAppId_ = str;
    }

    @Override
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        a aVar = null;
        switch (a.f31569a[methodToInvoke.ordinal()]) {
            case 1:
                return new c();
            case 2:
                return new b(aVar);
            case 3:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0001\u0005\u0000\u0001\u0001\u0006\u0005\u0001\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဉ\u0002\u0005᠌\u0003\u00062", new Object[]{"bitField0_", "googleAppId_", "appInstanceId_", "androidAppInfo_", "applicationProcessState_", ApplicationProcessState.internalGetVerifier(), "customAttributes_", C0424c.f31570a});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                b1 cVar = PARSER;
                if (cVar == null) {
                    synchronized (c.class) {
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

    public com.google.firebase.perf.v1.a m() {
        com.google.firebase.perf.v1.a aVar = this.androidAppInfo_;
        return aVar == null ? com.google.firebase.perf.v1.a.k() : aVar;
    }

    public boolean p() {
        return (this.bitField0_ & 4) != 0;
    }

    public boolean q() {
        return (this.bitField0_ & 2) != 0;
    }

    public boolean r() {
        return (this.bitField0_ & 8) != 0;
    }

    public boolean s() {
        return (this.bitField0_ & 1) != 0;
    }
}
