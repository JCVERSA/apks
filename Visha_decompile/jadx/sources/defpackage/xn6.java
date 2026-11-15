package defpackage;

import com.google.firebase.messaging.reporting.MessagingClientEvent;

public final class xn6 {
    public static final xn6 b = new a().a();
    public final MessagingClientEvent a;

    public static final class a {
        public MessagingClientEvent a = null;

        public xn6 a() {
            return new xn6(this.a);
        }

        public a b(MessagingClientEvent messagingClientEvent) {
            this.a = messagingClientEvent;
            return this;
        }
    }

    public xn6(MessagingClientEvent messagingClientEvent) {
        this.a = messagingClientEvent;
    }

    public static a b() {
        return new a();
    }

    public MessagingClientEvent a() {
        return this.a;
    }

    public byte[] c() {
        return dj8.a(this);
    }
}
