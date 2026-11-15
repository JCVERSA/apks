package com.google.firebase.messaging.reporting;

public final class MessagingClientEvent {

    private static final MessagingClientEvent f31301p = new a().a();

    private final long f31302a;

    private final String f31303b;

    private final String f31304c;

    private final MessageType f31305d;

    private final SDKPlatform f31306e;

    private final String f31307f;

    private final String f31308g;

    private final int f31309h;

    private final int f31310i;

    private final String f31311j;

    private final long f31312k;

    private final Event f31313l;

    private final String f31314m;

    private final long f31315n;

    private final String f31316o;

    public enum Event implements gc.a {
        UNKNOWN_EVENT(0),
        MESSAGE_DELIVERED(1),
        MESSAGE_OPEN(2);

        private final int number_;

        Event(int i10) {
            this.number_ = i10;
        }

        @Override
        public int getNumber() {
            return this.number_;
        }
    }

    public enum MessageType implements gc.a {
        UNKNOWN(0),
        DATA_MESSAGE(1),
        TOPIC(2),
        DISPLAY_NOTIFICATION(3);

        private final int number_;

        MessageType(int i10) {
            this.number_ = i10;
        }

        @Override
        public int getNumber() {
            return this.number_;
        }
    }

    public enum SDKPlatform implements gc.a {
        UNKNOWN_OS(0),
        ANDROID(1),
        IOS(2),
        WEB(3);

        private final int number_;

        SDKPlatform(int i10) {
            this.number_ = i10;
        }

        @Override
        public int getNumber() {
            return this.number_;
        }
    }

    public static final class a {

        private long f31317a = 0;

        private String f31318b = "";

        private String f31319c = "";

        private MessageType f31320d = MessageType.UNKNOWN;

        private SDKPlatform f31321e = SDKPlatform.UNKNOWN_OS;

        private String f31322f = "";

        private String f31323g = "";

        private int f31324h = 0;

        private int f31325i = 0;

        private String f31326j = "";

        private long f31327k = 0;

        private Event f31328l = Event.UNKNOWN_EVENT;

        private String f31329m = "";

        private long f31330n = 0;

        private String f31331o = "";

        a() {
        }

        public MessagingClientEvent a() {
            return new MessagingClientEvent(this.f31317a, this.f31318b, this.f31319c, this.f31320d, this.f31321e, this.f31322f, this.f31323g, this.f31324h, this.f31325i, this.f31326j, this.f31327k, this.f31328l, this.f31329m, this.f31330n, this.f31331o);
        }

        public a b(String str) {
            this.f31329m = str;
            return this;
        }

        public a c(String str) {
            this.f31323g = str;
            return this;
        }

        public a d(String str) {
            this.f31331o = str;
            return this;
        }

        public a e(Event event) {
            this.f31328l = event;
            return this;
        }

        public a f(String str) {
            this.f31319c = str;
            return this;
        }

        public a g(String str) {
            this.f31318b = str;
            return this;
        }

        public a h(MessageType messageType) {
            this.f31320d = messageType;
            return this;
        }

        public a i(String str) {
            this.f31322f = str;
            return this;
        }

        public a j(int i10) {
            this.f31324h = i10;
            return this;
        }

        public a k(long j10) {
            this.f31317a = j10;
            return this;
        }

        public a l(SDKPlatform sDKPlatform) {
            this.f31321e = sDKPlatform;
            return this;
        }

        public a m(String str) {
            this.f31326j = str;
            return this;
        }

        public a n(int i10) {
            this.f31325i = i10;
            return this;
        }
    }

    MessagingClientEvent(long j10, String str, String str2, MessageType messageType, SDKPlatform sDKPlatform, String str3, String str4, int i10, int i11, String str5, long j11, Event event, String str6, long j12, String str7) {
        this.f31302a = j10;
        this.f31303b = str;
        this.f31304c = str2;
        this.f31305d = messageType;
        this.f31306e = sDKPlatform;
        this.f31307f = str3;
        this.f31308g = str4;
        this.f31309h = i10;
        this.f31310i = i11;
        this.f31311j = str5;
        this.f31312k = j11;
        this.f31313l = event;
        this.f31314m = str6;
        this.f31315n = j12;
        this.f31316o = str7;
    }

    public static a p() {
        return new a();
    }

    public String a() {
        return this.f31314m;
    }

    public long b() {
        return this.f31312k;
    }

    public long c() {
        return this.f31315n;
    }

    public String d() {
        return this.f31308g;
    }

    public String e() {
        return this.f31316o;
    }

    public Event f() {
        return this.f31313l;
    }

    public String g() {
        return this.f31304c;
    }

    public String h() {
        return this.f31303b;
    }

    public MessageType i() {
        return this.f31305d;
    }

    public String j() {
        return this.f31307f;
    }

    public int k() {
        return this.f31309h;
    }

    public long l() {
        return this.f31302a;
    }

    public SDKPlatform m() {
        return this.f31306e;
    }

    public String n() {
        return this.f31311j;
    }

    public int o() {
        return this.f31310i;
    }
}
