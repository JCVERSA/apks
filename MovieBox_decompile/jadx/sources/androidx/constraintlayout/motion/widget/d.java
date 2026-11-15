package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.util.AttributeSet;
import java.util.HashMap;
import java.util.HashSet;

public abstract class d {

    public static int f6940f = -1;

    int f6941a;

    int f6942b;

    String f6943c;

    protected int f6944d;

    HashMap f6945e;

    public d() {
        int i10 = f6940f;
        this.f6941a = i10;
        this.f6942b = i10;
        this.f6943c = null;
    }

    public abstract void a(HashMap map);

    @Override
    public abstract d clone();

    public d c(d dVar) {
        this.f6941a = dVar.f6941a;
        this.f6942b = dVar.f6942b;
        this.f6943c = dVar.f6943c;
        this.f6944d = dVar.f6944d;
        this.f6945e = dVar.f6945e;
        return this;
    }

    abstract void d(HashSet hashSet);

    abstract void e(Context context, AttributeSet attributeSet);

    boolean f(String str) {
        String str2 = this.f6943c;
        if (str2 == null || str == null) {
            return false;
        }
        return str.matches(str2);
    }

    public void g(int i10) {
        this.f6941a = i10;
    }

    public d i(int i10) {
        this.f6942b = i10;
        return this;
    }

    boolean j(Object obj) {
        return obj instanceof Boolean ? ((Boolean) obj).booleanValue() : Boolean.parseBoolean(obj.toString());
    }

    float k(Object obj) {
        return obj instanceof Float ? ((Float) obj).floatValue() : Float.parseFloat(obj.toString());
    }

    int l(Object obj) {
        return obj instanceof Integer ? ((Integer) obj).intValue() : Integer.parseInt(obj.toString());
    }

    public void h(HashMap map) {
    }
}
