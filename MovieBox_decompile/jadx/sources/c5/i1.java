package c5;

import com.alibaba.fastjson.serializer.SerializerFeature;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public abstract class i1 {

    protected List f16569a = null;

    protected List f16570b = null;

    protected List f16571c = null;

    protected List f16572d = null;

    protected List f16573e = null;

    protected List f16574f = null;

    protected List f16575g = null;

    protected List f16576h = null;

    protected boolean f16577i = true;

    public void b(h1 h1Var) {
        if (h1Var == null) {
            return;
        }
        if (h1Var instanceof q) {
            g().add((q) h1Var);
        }
        if (h1Var instanceof i) {
            f().add((i) h1Var);
        }
    }

    public boolean d(o0 o0Var, Object obj, String str, Object obj2) {
        List list = o0Var.f16571c;
        if (list != null) {
            Iterator it = list.iterator();
            if (it.hasNext()) {
                android.support.v4.media.session.c.a(it.next());
                throw null;
            }
        }
        List list2 = this.f16571c;
        if (list2 == null) {
            return true;
        }
        Iterator it2 = list2.iterator();
        if (!it2.hasNext()) {
            return true;
        }
        android.support.v4.media.session.c.a(it2.next());
        throw null;
    }

    public boolean e(o0 o0Var, Object obj, String str) {
        List list = o0Var.f16574f;
        if (list != null) {
            Iterator it = list.iterator();
            if (it.hasNext()) {
                android.support.v4.media.session.c.a(it.next());
                throw null;
            }
        }
        List list2 = this.f16574f;
        if (list2 == null) {
            return true;
        }
        Iterator it2 = list2.iterator();
        if (!it2.hasNext()) {
            return true;
        }
        android.support.v4.media.session.c.a(it2.next());
        throw null;
    }

    public List f() {
        if (this.f16570b == null) {
            this.f16570b = new ArrayList();
            this.f16577i = false;
        }
        return this.f16570b;
    }

    public List g() {
        if (this.f16569a == null) {
            this.f16569a = new ArrayList();
            this.f16577i = false;
        }
        return this.f16569a;
    }

    protected String h(o0 o0Var, Object obj, String str, Object obj2) {
        List list = o0Var.f16573e;
        if (list != null) {
            Iterator it = list.iterator();
            if (it.hasNext()) {
                android.support.v4.media.session.c.a(it.next());
                throw null;
            }
        }
        List list2 = this.f16573e;
        if (list2 != null) {
            Iterator it2 = list2.iterator();
            if (it2.hasNext()) {
                android.support.v4.media.session.c.a(it2.next());
                throw null;
            }
        }
        return str;
    }

    protected Object i(o0 o0Var, p pVar, Object obj, String str, Object obj2, int i10) {
        boolean z10;
        if (obj2 != null) {
            int i11 = o0Var.f16619k.f16592c;
            SerializerFeature serializerFeature = SerializerFeature.WriteNonStringValueAsString;
            if ((SerializerFeature.isEnabled(i11, i10, serializerFeature) || !(pVar == null || (pVar.a() & serializerFeature.mask) == 0)) && (((z10 = obj2 instanceof Number)) || (obj2 instanceof Boolean))) {
                String strB = (!z10 || pVar == null) ? null : pVar.b();
                obj2 = strB != null ? new DecimalFormat(strB).format(obj2) : obj2.toString();
            } else if (pVar != null && pVar.c()) {
                obj2 = com.alibaba.fastjson.a.parse((String) obj2);
            }
        }
        List list = o0Var.f16572d;
        if (list != null) {
            Iterator it = list.iterator();
            if (it.hasNext()) {
                android.support.v4.media.session.c.a(it.next());
                throw null;
            }
        }
        List list2 = this.f16572d;
        if (list2 != null) {
            Iterator it2 = list2.iterator();
            if (it2.hasNext()) {
                android.support.v4.media.session.c.a(it2.next());
                throw null;
            }
        }
        List list3 = o0Var.f16576h;
        if (list3 != null) {
            Iterator it3 = list3.iterator();
            if (it3.hasNext()) {
                android.support.v4.media.session.c.a(it3.next());
                throw null;
            }
        }
        List list4 = this.f16576h;
        if (list4 != null) {
            Iterator it4 = list4.iterator();
            if (it4.hasNext()) {
                android.support.v4.media.session.c.a(it4.next());
                throw null;
            }
        }
        return obj2;
    }
}
