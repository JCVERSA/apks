package c5;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.serializer.SerializerFeature;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.lang.reflect.Type;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.TimeZone;
import java.util.zip.GZIPOutputStream;

public class o0 extends i1 {

    protected final g1 f16618j;

    public final j1 f16619k;

    private int f16620l;

    private String f16621m;

    private String f16622n;

    private DateFormat f16623o;

    private String f16624p;

    protected IdentityHashMap f16625q;

    protected e1 f16626r;

    protected TimeZone f16627s;

    protected Locale f16628t;

    public o0() {
        this(new j1(), g1.g());
    }

    private DateFormat m(String str) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str, this.f16628t);
        simpleDateFormat.setTimeZone(this.f16627s);
        return simpleDateFormat;
    }

    public final void A(Object obj) {
        if (obj == null) {
            this.f16619k.h0();
            return;
        }
        try {
            q(obj.getClass()).c(this, obj, null, null, 0);
        } catch (IOException e10) {
            throw new JSONException(e10.getMessage(), e10);
        }
    }

    public final void B(String str) {
        k1.f16610a.f(this, str);
    }

    public void C() {
        this.f16619k.h0();
    }

    public void D(Object obj) {
        e1 e1Var = this.f16626r;
        if (obj == e1Var.f16518b) {
            this.f16619k.write("{\"$ref\":\"@\"}");
            return;
        }
        e1 e1Var2 = e1Var.f16517a;
        if (e1Var2 != null && obj == e1Var2.f16518b) {
            this.f16619k.write("{\"$ref\":\"..\"}");
            return;
        }
        while (true) {
            e1 e1Var3 = e1Var.f16517a;
            if (e1Var3 == null) {
                break;
            } else {
                e1Var = e1Var3;
            }
        }
        if (obj == e1Var.f16518b) {
            this.f16619k.write("{\"$ref\":\"$\"}");
            return;
        }
        this.f16619k.write("{\"$ref\":\"");
        this.f16619k.write(((e1) this.f16625q.get(obj)).toString());
        this.f16619k.write("\"}");
    }

    public final void E(Object obj, Object obj2) {
        F(obj, obj2, null, 0);
    }

    public final void F(Object obj, Object obj2, Type type, int i10) {
        try {
            if (obj == null) {
                this.f16619k.h0();
            } else {
                q(obj.getClass()).c(this, obj, obj2, type, i10);
            }
        } catch (IOException e10) {
            throw new JSONException(e10.getMessage(), e10);
        }
    }

    public final void G(Object obj, String str) {
        if (obj instanceof Date) {
            if ("unixtime".equals(str)) {
                this.f16619k.e0((int) (((Date) obj).getTime() / 1000));
                return;
            }
            if ("millis".equals(str)) {
                this.f16619k.g0(((Date) obj).getTime());
                return;
            }
            DateFormat dateFormatN = n();
            if (dateFormatN == null) {
                if (str != null) {
                    try {
                        dateFormatN = m(str);
                    } catch (IllegalArgumentException unused) {
                        dateFormatN = m(str.replaceAll("T", "'T'"));
                    }
                } else {
                    String str2 = this.f16624p;
                    dateFormatN = str2 != null ? m(str2) : m(com.alibaba.fastjson.a.DEFFAULT_DATE_FORMAT);
                }
            }
            this.f16619k.o0(dateFormatN.format((Date) obj));
            return;
        }
        if (!(obj instanceof byte[])) {
            if (!(obj instanceof Collection)) {
                A(obj);
                return;
            }
            Collection collection = (Collection) obj;
            Iterator it = collection.iterator();
            this.f16619k.write(91);
            for (int i10 = 0; i10 < collection.size(); i10++) {
                Object next = it.next();
                if (i10 != 0) {
                    this.f16619k.write(44);
                }
                G(next, str);
            }
            this.f16619k.write(93);
            return;
        }
        byte[] bArr = (byte[]) obj;
        if (!"gzip".equals(str) && !"gzip,base64".equals(str)) {
            if ("hex".equals(str)) {
                this.f16619k.d0(bArr);
                return;
            } else {
                this.f16619k.r(bArr);
                return;
            }
        }
        GZIPOutputStream gZIPOutputStream = null;
        try {
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                gZIPOutputStream = bArr.length < 512 ? new GZIPOutputStream(byteArrayOutputStream, bArr.length) : new GZIPOutputStream(byteArrayOutputStream);
                gZIPOutputStream.write(bArr);
                gZIPOutputStream.finish();
                this.f16619k.r(byteArrayOutputStream.toByteArray());
                com.alibaba.fastjson.util.f.a(gZIPOutputStream);
            } catch (IOException e10) {
                throw new JSONException("write gzipBytes error", e10);
            }
        } catch (Throwable th2) {
            com.alibaba.fastjson.util.f.a(gZIPOutputStream);
            throw th2;
        }
    }

    public void j(SerializerFeature serializerFeature, boolean z10) {
        this.f16619k.j(serializerFeature, z10);
    }

    public boolean k(Object obj) {
        e1 e1Var;
        IdentityHashMap identityHashMap = this.f16625q;
        if (identityHashMap == null || (e1Var = (e1) identityHashMap.get(obj)) == null || obj == Collections.emptyMap()) {
            return false;
        }
        Object obj2 = e1Var.f16519c;
        return obj2 == null || (obj2 instanceof Integer) || (obj2 instanceof String);
    }

    public void l() {
        this.f16620l--;
    }

    public DateFormat n() {
        String str;
        if (this.f16623o == null && (str = this.f16622n) != null) {
            this.f16623o = m(str);
        }
        return this.f16623o;
    }

    public String o() {
        DateFormat dateFormat = this.f16623o;
        return dateFormat instanceof SimpleDateFormat ? ((SimpleDateFormat) dateFormat).toPattern() : this.f16622n;
    }

    public String p() {
        return this.f16624p;
    }

    public z0 q(Class cls) {
        return this.f16618j.h(cls);
    }

    public j1 r() {
        return this.f16619k;
    }

    public void s() {
        this.f16620l++;
    }

    public boolean t(SerializerFeature serializerFeature) {
        return this.f16619k.o(serializerFeature);
    }

    public String toString() {
        return this.f16619k.toString();
    }

    public final boolean u(Type type, Object obj) {
        e1 e1Var;
        return this.f16619k.o(SerializerFeature.WriteClassName) && !(type == null && this.f16619k.o(SerializerFeature.NotWriteRootClassName) && ((e1Var = this.f16626r) == null || e1Var.f16517a == null));
    }

    public void v() {
        this.f16619k.write(10);
        for (int i10 = 0; i10 < this.f16620l; i10++) {
            this.f16619k.write(this.f16621m);
        }
    }

    public void w(e1 e1Var, Object obj, Object obj2, int i10) {
        x(e1Var, obj, obj2, i10, 0);
    }

    public void x(e1 e1Var, Object obj, Object obj2, int i10, int i11) {
        if (this.f16619k.f16597h) {
            return;
        }
        this.f16626r = new e1(e1Var, obj, obj2, i10, i11);
        if (this.f16625q == null) {
            this.f16625q = new IdentityHashMap();
        }
        this.f16625q.put(obj, this.f16626r);
    }

    public void y(String str) {
        this.f16622n = str;
        if (this.f16623o != null) {
            this.f16623o = null;
        }
    }

    public void z(String str) {
        this.f16624p = str;
    }

    public o0(j1 j1Var) {
        this(j1Var, g1.g());
    }

    public o0(j1 j1Var, g1 g1Var) {
        this.f16620l = 0;
        this.f16621m = "\t";
        this.f16625q = null;
        this.f16627s = com.alibaba.fastjson.a.defaultTimeZone;
        this.f16628t = com.alibaba.fastjson.a.defaultLocale;
        this.f16619k = j1Var;
        this.f16618j = g1Var;
    }
}
