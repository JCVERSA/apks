package defpackage;

import java.util.MissingResourceException;
import java.util.ResourceBundle;

public class vt8 extends qn6 {
    public ResourceBundle b = ResourceBundle.getBundle("com.mq.mgmi.client.message.internal.nls.messages");

    @Override
    public String a(int i) {
        try {
            return this.b.getString(Integer.toString(i));
        } catch (MissingResourceException unused) {
            return "MqttException";
        }
    }
}
