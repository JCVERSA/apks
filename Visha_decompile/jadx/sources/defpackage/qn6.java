package defpackage;

public abstract class qn6 {
    public static qn6 a;

    public static final String b(int i) {
        if (a == null) {
            if (ne3.a("java.util.ResourceBundle")) {
                try {
                    a = (qn6) vt8.class.newInstance();
                } catch (Exception unused) {
                    return "";
                }
            } else if (ne3.a("com.mq.mgmi.client.message.internal.MIDPCatalog")) {
                try {
                    a = (qn6) Class.forName("com.mq.mgmi.client.message.internal.MIDPCatalog").newInstance();
                } catch (Exception unused2) {
                    return "";
                }
            }
        }
        return a.a(i);
    }

    public abstract String a(int i);
}
