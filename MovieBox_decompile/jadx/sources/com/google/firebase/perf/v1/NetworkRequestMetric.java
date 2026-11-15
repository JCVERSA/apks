package com.google.firebase.perf.v1;

import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.MapFieldLite;
import com.google.protobuf.WireFormat;
import com.google.protobuf.b1;
import com.google.protobuf.m0;
import com.google.protobuf.t0;
import com.google.protobuf.y;
import java.util.List;

public final class NetworkRequestMetric extends GeneratedMessageLite implements t0 {
    public static final int CLIENT_START_TIME_US_FIELD_NUMBER = 7;
    public static final int CUSTOM_ATTRIBUTES_FIELD_NUMBER = 12;
    private static final NetworkRequestMetric DEFAULT_INSTANCE;
    public static final int HTTP_METHOD_FIELD_NUMBER = 2;
    public static final int HTTP_RESPONSE_CODE_FIELD_NUMBER = 5;
    public static final int NETWORK_CLIENT_ERROR_REASON_FIELD_NUMBER = 11;
    private static volatile b1 PARSER = null;
    public static final int PERF_SESSIONS_FIELD_NUMBER = 13;
    public static final int REQUEST_PAYLOAD_BYTES_FIELD_NUMBER = 3;
    public static final int RESPONSE_CONTENT_TYPE_FIELD_NUMBER = 6;
    public static final int RESPONSE_PAYLOAD_BYTES_FIELD_NUMBER = 4;
    public static final int TIME_TO_REQUEST_COMPLETED_US_FIELD_NUMBER = 8;
    public static final int TIME_TO_RESPONSE_COMPLETED_US_FIELD_NUMBER = 10;
    public static final int TIME_TO_RESPONSE_INITIATED_US_FIELD_NUMBER = 9;
    public static final int URL_FIELD_NUMBER = 1;
    private int bitField0_;
    private long clientStartTimeUs_;
    private int httpMethod_;
    private int httpResponseCode_;
    private int networkClientErrorReason_;
    private long requestPayloadBytes_;
    private long responsePayloadBytes_;
    private long timeToRequestCompletedUs_;
    private long timeToResponseCompletedUs_;
    private long timeToResponseInitiatedUs_;
    private MapFieldLite<String, String> customAttributes_ = MapFieldLite.emptyMapField();
    private String url_ = "";
    private String responseContentType_ = "";
    private y.j perfSessions_ = GeneratedMessageLite.emptyProtobufList();

    public enum HttpMethod implements y.c {
        HTTP_METHOD_UNKNOWN(0),
        GET(1),
        PUT(2),
        POST(3),
        DELETE(4),
        HEAD(5),
        PATCH(6),
        OPTIONS(7),
        TRACE(8),
        CONNECT(9);

        public static final int CONNECT_VALUE = 9;
        public static final int DELETE_VALUE = 4;
        public static final int GET_VALUE = 1;
        public static final int HEAD_VALUE = 5;
        public static final int HTTP_METHOD_UNKNOWN_VALUE = 0;
        public static final int OPTIONS_VALUE = 7;
        public static final int PATCH_VALUE = 6;
        public static final int POST_VALUE = 3;
        public static final int PUT_VALUE = 2;
        public static final int TRACE_VALUE = 8;
        private static final y.d internalValueMap = new a();
        private final int value;

        class a implements y.d {
            a() {
            }

            @Override
            public HttpMethod findValueByNumber(int i10) {
                return HttpMethod.forNumber(i10);
            }
        }

        private static final class b implements y.e {

            static final y.e f31560a = new b();

            private b() {
            }

            @Override
            public boolean isInRange(int i10) {
                return HttpMethod.forNumber(i10) != null;
            }
        }

        HttpMethod(int i10) {
            this.value = i10;
        }

        public static HttpMethod forNumber(int i10) {
            switch (i10) {
                case 0:
                    return HTTP_METHOD_UNKNOWN;
                case 1:
                    return GET;
                case 2:
                    return PUT;
                case 3:
                    return POST;
                case 4:
                    return DELETE;
                case 5:
                    return HEAD;
                case 6:
                    return PATCH;
                case 7:
                    return OPTIONS;
                case 8:
                    return TRACE;
                case 9:
                    return CONNECT;
                default:
                    return null;
            }
        }

        public static y.d internalGetValueMap() {
            return internalValueMap;
        }

        public static y.e internalGetVerifier() {
            return b.f31560a;
        }

        @Override
        public final int getNumber() {
            return this.value;
        }

        @Deprecated
        public static HttpMethod valueOf(int i10) {
            return forNumber(i10);
        }
    }

    public enum NetworkClientErrorReason implements y.c {
        NETWORK_CLIENT_ERROR_REASON_UNKNOWN(0),
        GENERIC_CLIENT_ERROR(1);

        public static final int GENERIC_CLIENT_ERROR_VALUE = 1;
        public static final int NETWORK_CLIENT_ERROR_REASON_UNKNOWN_VALUE = 0;
        private static final y.d internalValueMap = new a();
        private final int value;

        class a implements y.d {
            a() {
            }

            @Override
            public NetworkClientErrorReason findValueByNumber(int i10) {
                return NetworkClientErrorReason.forNumber(i10);
            }
        }

        private static final class b implements y.e {

            static final y.e f31561a = new b();

            private b() {
            }

            @Override
            public boolean isInRange(int i10) {
                return NetworkClientErrorReason.forNumber(i10) != null;
            }
        }

        NetworkClientErrorReason(int i10) {
            this.value = i10;
        }

        public static NetworkClientErrorReason forNumber(int i10) {
            if (i10 == 0) {
                return NETWORK_CLIENT_ERROR_REASON_UNKNOWN;
            }
            if (i10 != 1) {
                return null;
            }
            return GENERIC_CLIENT_ERROR;
        }

        public static y.d internalGetValueMap() {
            return internalValueMap;
        }

        public static y.e internalGetVerifier() {
            return b.f31561a;
        }

        @Override
        public final int getNumber() {
            return this.value;
        }

        @Deprecated
        public static NetworkClientErrorReason valueOf(int i10) {
            return forNumber(i10);
        }
    }

    static class a {

        static final int[] f31562a;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f31562a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f31562a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f31562a[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f31562a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f31562a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f31562a[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f31562a[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public static final class b extends GeneratedMessageLite.b implements t0 {
        b(a aVar) {
            this();
        }

        public b d(Iterable iterable) {
            copyOnWrite();
            ((NetworkRequestMetric) this.instance).u(iterable);
            return this;
        }

        public b j() {
            copyOnWrite();
            ((NetworkRequestMetric) this.instance).v();
            return this;
        }

        public long k() {
            return ((NetworkRequestMetric) this.instance).H();
        }

        public boolean l() {
            return ((NetworkRequestMetric) this.instance).J();
        }

        public boolean m() {
            return ((NetworkRequestMetric) this.instance).L();
        }

        public boolean n() {
            return ((NetworkRequestMetric) this.instance).P();
        }

        public b o(long j10) {
            copyOnWrite();
            ((NetworkRequestMetric) this.instance).S(j10);
            return this;
        }

        public b p(HttpMethod httpMethod) {
            copyOnWrite();
            ((NetworkRequestMetric) this.instance).T(httpMethod);
            return this;
        }

        public b q(int i10) {
            copyOnWrite();
            ((NetworkRequestMetric) this.instance).U(i10);
            return this;
        }

        public b r(NetworkClientErrorReason networkClientErrorReason) {
            copyOnWrite();
            ((NetworkRequestMetric) this.instance).V(networkClientErrorReason);
            return this;
        }

        public b s(long j10) {
            copyOnWrite();
            ((NetworkRequestMetric) this.instance).W(j10);
            return this;
        }

        public b t(String str) {
            copyOnWrite();
            ((NetworkRequestMetric) this.instance).X(str);
            return this;
        }

        public b u(long j10) {
            copyOnWrite();
            ((NetworkRequestMetric) this.instance).Y(j10);
            return this;
        }

        public b v(long j10) {
            copyOnWrite();
            ((NetworkRequestMetric) this.instance).Z(j10);
            return this;
        }

        public b w(long j10) {
            copyOnWrite();
            ((NetworkRequestMetric) this.instance).a0(j10);
            return this;
        }

        public b x(long j10) {
            copyOnWrite();
            ((NetworkRequestMetric) this.instance).b0(j10);
            return this;
        }

        public b y(String str) {
            copyOnWrite();
            ((NetworkRequestMetric) this.instance).c0(str);
            return this;
        }

        private b() {
            super(NetworkRequestMetric.DEFAULT_INSTANCE);
        }
    }

    private static final class c {

        static final m0 f31563a;

        static {
            WireFormat.FieldType fieldType = WireFormat.FieldType.STRING;
            f31563a = m0.newDefaultInstance(fieldType, "", fieldType, "");
        }
    }

    static {
        NetworkRequestMetric networkRequestMetric = new NetworkRequestMetric();
        DEFAULT_INSTANCE = networkRequestMetric;
        GeneratedMessageLite.registerDefaultInstance(NetworkRequestMetric.class, networkRequestMetric);
    }

    private NetworkRequestMetric() {
    }

    public static b R() {
        return (b) DEFAULT_INSTANCE.createBuilder();
    }

    public void S(long j10) {
        this.bitField0_ |= 128;
        this.clientStartTimeUs_ = j10;
    }

    public void T(HttpMethod httpMethod) {
        this.httpMethod_ = httpMethod.getNumber();
        this.bitField0_ |= 2;
    }

    public void U(int i10) {
        this.bitField0_ |= 32;
        this.httpResponseCode_ = i10;
    }

    public void V(NetworkClientErrorReason networkClientErrorReason) {
        this.networkClientErrorReason_ = networkClientErrorReason.getNumber();
        this.bitField0_ |= 16;
    }

    public void W(long j10) {
        this.bitField0_ |= 4;
        this.requestPayloadBytes_ = j10;
    }

    public void X(String str) {
        str.getClass();
        this.bitField0_ |= 64;
        this.responseContentType_ = str;
    }

    public void Y(long j10) {
        this.bitField0_ |= 8;
        this.responsePayloadBytes_ = j10;
    }

    public void Z(long j10) {
        this.bitField0_ |= 256;
        this.timeToRequestCompletedUs_ = j10;
    }

    public void a0(long j10) {
        this.bitField0_ |= 1024;
        this.timeToResponseCompletedUs_ = j10;
    }

    public void b0(long j10) {
        this.bitField0_ |= 512;
        this.timeToResponseInitiatedUs_ = j10;
    }

    public void c0(String str) {
        str.getClass();
        this.bitField0_ |= 1;
        this.url_ = str;
    }

    public void u(Iterable iterable) {
        w();
        com.google.protobuf.a.addAll(iterable, (List) this.perfSessions_);
    }

    public void v() {
        this.bitField0_ &= -65;
        this.responseContentType_ = y().D();
    }

    private void w() {
        y.j jVar = this.perfSessions_;
        if (jVar.isModifiable()) {
            return;
        }
        this.perfSessions_ = GeneratedMessageLite.mutableCopy(jVar);
    }

    public static NetworkRequestMetric y() {
        return DEFAULT_INSTANCE;
    }

    public int A() {
        return this.httpResponseCode_;
    }

    public List B() {
        return this.perfSessions_;
    }

    public long C() {
        return this.requestPayloadBytes_;
    }

    public String D() {
        return this.responseContentType_;
    }

    public long E() {
        return this.responsePayloadBytes_;
    }

    public long F() {
        return this.timeToRequestCompletedUs_;
    }

    public long G() {
        return this.timeToResponseCompletedUs_;
    }

    public long H() {
        return this.timeToResponseInitiatedUs_;
    }

    public String I() {
        return this.url_;
    }

    public boolean J() {
        return (this.bitField0_ & 128) != 0;
    }

    public boolean K() {
        return (this.bitField0_ & 2) != 0;
    }

    public boolean L() {
        return (this.bitField0_ & 32) != 0;
    }

    public boolean M() {
        return (this.bitField0_ & 4) != 0;
    }

    public boolean N() {
        return (this.bitField0_ & 8) != 0;
    }

    public boolean O() {
        return (this.bitField0_ & 256) != 0;
    }

    public boolean P() {
        return (this.bitField0_ & 1024) != 0;
    }

    public boolean Q() {
        return (this.bitField0_ & 512) != 0;
    }

    @Override
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        a aVar = null;
        switch (a.f31562a[methodToInvoke.ordinal()]) {
            case 1:
                return new NetworkRequestMetric();
            case 2:
                return new b(aVar);
            case 3:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0001\r\u0000\u0001\u0001\r\r\u0001\u0001\u0000\u0001ဈ\u0000\u0002᠌\u0001\u0003ဂ\u0002\u0004ဂ\u0003\u0005င\u0005\u0006ဈ\u0006\u0007ဂ\u0007\bဂ\b\tဂ\t\nဂ\n\u000b᠌\u0004\f2\r\u001b", new Object[]{"bitField0_", "url_", "httpMethod_", HttpMethod.internalGetVerifier(), "requestPayloadBytes_", "responsePayloadBytes_", "httpResponseCode_", "responseContentType_", "clientStartTimeUs_", "timeToRequestCompletedUs_", "timeToResponseInitiatedUs_", "timeToResponseCompletedUs_", "networkClientErrorReason_", NetworkClientErrorReason.internalGetVerifier(), "customAttributes_", c.f31563a, "perfSessions_", h.class});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                b1 cVar = PARSER;
                if (cVar == null) {
                    synchronized (NetworkRequestMetric.class) {
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

    public long x() {
        return this.clientStartTimeUs_;
    }

    public HttpMethod z() {
        HttpMethod httpMethodForNumber = HttpMethod.forNumber(this.httpMethod_);
        return httpMethodForNumber == null ? HttpMethod.HTTP_METHOD_UNKNOWN : httpMethodForNumber;
    }
}
