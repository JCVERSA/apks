package defpackage;

import android.content.Context;
import java.util.ArrayList;
import java.util.List;

public class wg8 extends vec {
    public static List b;

    public class a implements uv4 {
        public a() {
        }

        @Override
        public void a() {
        }

        @Override
        public void b() {
        }

        @Override
        public void onInitSuccess() {
        }
    }

    static {
        ArrayList arrayList = new ArrayList();
        b = arrayList;
        arrayList.add(zz4.class);
    }

    @Override
    public boolean b() {
        return false;
    }

    @Override
    public boolean c() {
        return false;
    }

    @Override
    public List dependencies() {
        return b;
    }

    @Override
    public Void create(Context context) {
        zdc.l = w6c.c(context, "show_private_room", true);
        if (!pp3.p) {
            zdc.l = false;
        }
        if (!pp3.p) {
            return null;
        }
        tg8.d().g(new a());
        return null;
    }
}
