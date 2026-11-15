package pc;

import com.google.firebase.messaging.l0;
import com.google.firebase.messaging.reporting.MessagingClientEvent;

public final class a {

    private static final a f69126b = new C0855a().a();

    private final MessagingClientEvent f69127a;

    public static final class C0855a {

        private MessagingClientEvent f69128a = null;

        C0855a() {
        }

        public a a() {
            return new a(this.f69128a);
        }

        public C0855a b(MessagingClientEvent messagingClientEvent) {
            this.f69128a = messagingClientEvent;
            return this;
        }
    }

    a(MessagingClientEvent messagingClientEvent) {
        this.f69127a = messagingClientEvent;
    }

    public static C0855a b() {
        return new C0855a();
    }

    public MessagingClientEvent a() {
        return this.f69127a;
    }

    public byte[] c() {
        return l0.a(this);
    }
}
