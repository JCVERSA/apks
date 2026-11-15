package com.transsion.transfer.androidasync.http;

import java.util.Hashtable;
import java.util.Locale;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
public class Protocol {
    private static final Protocol[] $VALUES;
    public static final Protocol HTTP_1_0;
    public static final Protocol HTTP_1_1;
    public static final Protocol HTTP_2;
    public static final Protocol SPDY_3;
    private static final Hashtable<String, Protocol> protocols;
    private final String protocol;

    final enum AnonymousClass1 extends Protocol {
        @Override
        public boolean needsSpdyConnection() {
            return true;
        }

        private AnonymousClass1(String str, int i10, String str2) {
            super(str, i10, str2);
        }
    }

    final enum AnonymousClass2 extends Protocol {
        @Override
        public boolean needsSpdyConnection() {
            return true;
        }

        private AnonymousClass2(String str, int i10, String str2) {
            super(str, i10, str2);
        }
    }

    private static Protocol[] $values() {
        return new Protocol[]{HTTP_1_0, HTTP_1_1, SPDY_3, HTTP_2};
    }

    static {
        Protocol protocol = new Protocol("HTTP_1_0", 0, "http/1.0");
        HTTP_1_0 = protocol;
        Protocol protocol2 = new Protocol("HTTP_1_1", 1, "http/1.1");
        HTTP_1_1 = protocol2;
        AnonymousClass1 anonymousClass1 = new AnonymousClass1("SPDY_3", 2, "spdy/3.1");
        SPDY_3 = anonymousClass1;
        AnonymousClass2 anonymousClass2 = new AnonymousClass2("HTTP_2", 3, "h2-13");
        HTTP_2 = anonymousClass2;
        $VALUES = $values();
        Hashtable<String, Protocol> hashtable = new Hashtable<>();
        protocols = hashtable;
        hashtable.put(protocol.toString(), protocol);
        hashtable.put(protocol2.toString(), protocol2);
        hashtable.put(anonymousClass1.toString(), anonymousClass1);
        hashtable.put(anonymousClass2.toString(), anonymousClass2);
    }

    public static Protocol get(String str) {
        if (str == null) {
            return null;
        }
        return protocols.get(str.toLowerCase(Locale.US));
    }

    public static Protocol valueOf(String str) {
        return (Protocol) Enum.valueOf(Protocol.class, str);
    }

    public static Protocol[] values() {
        return (Protocol[]) $VALUES.clone();
    }

    public boolean needsSpdyConnection() {
        return false;
    }

    @Override
    public String toString() {
        return this.protocol;
    }

    private Protocol(String str, int i10, String str2) {
        super(str, i10);
        this.protocol = str2;
    }
}
