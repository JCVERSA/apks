package defpackage;

import android.util.Log;
import java.util.ArrayList;

public class ykc {
    public static volatile ykc b;
    public ArrayList a = new ArrayList();

    public static ykc a() {
        if (b == null) {
            synchronized (ykc.class) {
                try {
                    if (b == null) {
                        b = new ykc();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return b;
    }

    public ArrayList b() {
        return this.a;
    }

    public void c(ArrayList arrayList) {
        Log.i("WhatsAppVideoList", "[WhatsApp] setVideosList: " + arrayList);
        this.a = arrayList;
    }
}
