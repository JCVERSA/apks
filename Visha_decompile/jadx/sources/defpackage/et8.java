package defpackage;

import androidx.browser.trusted.sharing.ShareTarget;
import com.lzy.okgo.model.HttpHeaders;
import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.net.URI;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.Request;

public final class et8 {
    public final Class a;
    public final Method b;
    public final HttpUrl c;
    public final String d;
    public final String e;
    public final Headers f;
    public final MediaType g;
    public final boolean h;
    public final boolean i;
    public final boolean j;
    public final iw7[] k;
    public final boolean l;

    public static final class a {
        public static final Pattern y = Pattern.compile("\\{([a-zA-Z][a-zA-Z0-9_-]*)\\}");
        public static final Pattern z = Pattern.compile("[a-zA-Z][a-zA-Z0-9_-]*");
        public final ru8 a;
        public final Class b;
        public final Method c;
        public final Annotation[] d;
        public final Annotation[][] e;
        public final Type[] f;
        public boolean g;
        public boolean h;
        public boolean i;
        public boolean j;
        public boolean k;
        public boolean l;
        public boolean m;
        public boolean n;
        public String o;
        public boolean p;
        public boolean q;
        public boolean r;
        public String s;
        public Headers t;
        public MediaType u;
        public Set v;
        public iw7[] w;
        public boolean x;

        public a(ru8 ru8Var, Class cls, Method method) {
            this.a = ru8Var;
            this.b = cls;
            this.c = method;
            this.d = method.getAnnotations();
            this.f = method.getGenericParameterTypes();
            this.e = method.getParameterAnnotations();
        }

        public static Class a(Class cls) {
            if (Boolean.TYPE == cls) {
                return Boolean.class;
            }
            if (Byte.TYPE == cls) {
                return Byte.class;
            }
            if (Character.TYPE == cls) {
                return Character.class;
            }
            if (Double.TYPE == cls) {
                return Double.class;
            }
            if (Float.TYPE == cls) {
                return Float.class;
            }
            if (Integer.TYPE == cls) {
                return Integer.class;
            }
            if (Long.TYPE == cls) {
                return Long.class;
            }
            return Short.TYPE == cls ? Short.class : cls;
        }

        public static Set h(String str) {
            Matcher matcher = y.matcher(str);
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            while (matcher.find()) {
                linkedHashSet.add(matcher.group(1));
            }
            return linkedHashSet;
        }

        public et8 b() {
            for (Annotation annotation : this.d) {
                e(annotation);
            }
            if (this.o == null) {
                throw ulb.n(this.c, "HTTP method annotation is required (e.g., @GET, @POST, etc.).", new Object[0]);
            }
            if (!this.p) {
                if (this.r) {
                    throw ulb.n(this.c, "Multipart can only be specified on HTTP methods with request body (e.g., @POST).", new Object[0]);
                }
                if (this.q) {
                    throw ulb.n(this.c, "FormUrlEncoded can only be specified on HTTP methods with request body (e.g., @POST).", new Object[0]);
                }
            }
            int length = this.e.length;
            this.w = new iw7[length];
            int i = length - 1;
            int i2 = 0;
            while (i2 < length) {
                this.w[i2] = f(i2, this.f[i2], this.e[i2], i2 == i);
                i2++;
            }
            if (this.s == null && !this.n) {
                throw ulb.n(this.c, "Missing either @%s URL or @Url parameter.", this.o);
            }
            boolean z2 = this.q;
            if (!z2 && !this.r && !this.p && this.i) {
                throw ulb.n(this.c, "Non-body HTTP method cannot contain @Body.", new Object[0]);
            }
            if (z2 && !this.g) {
                throw ulb.n(this.c, "Form-encoded method must contain at least one @Field.", new Object[0]);
            }
            if (!this.r || this.h) {
                return new et8(this);
            }
            throw ulb.n(this.c, "Multipart method must contain at least one @Part.", new Object[0]);
        }

        public final Headers c(String[] strArr, boolean z2) {
            Headers.Builder builder = new Headers.Builder();
            for (String str : strArr) {
                int iIndexOf = str.indexOf(58);
                if (iIndexOf == -1 || iIndexOf == 0 || iIndexOf == str.length() - 1) {
                    throw ulb.n(this.c, "@Headers value must be in the form \"Name: Value\". Found: \"%s\"", str);
                }
                String strSubstring = str.substring(0, iIndexOf);
                String strTrim = str.substring(iIndexOf + 1).trim();
                if ("Content-Type".equalsIgnoreCase(strSubstring)) {
                    try {
                        this.u = MediaType.get(strTrim);
                    } catch (IllegalArgumentException e) {
                        throw ulb.o(this.c, e, "Malformed content type: %s", strTrim);
                    }
                } else if (z2) {
                    builder.addUnsafeNonAscii(strSubstring, strTrim);
                } else {
                    builder.add(strSubstring, strTrim);
                }
            }
            return builder.build();
        }

        public final void d(String str, String str2, boolean z2) {
            String str3 = this.o;
            if (str3 != null) {
                throw ulb.n(this.c, "Only one HTTP method is allowed. Found: %s and %s.", str3, str);
            }
            this.o = str;
            this.p = z2;
            if (str2.isEmpty()) {
                return;
            }
            int iIndexOf = str2.indexOf(63);
            if (iIndexOf != -1 && iIndexOf < str2.length() - 1) {
                String strSubstring = str2.substring(iIndexOf + 1);
                if (y.matcher(strSubstring).find()) {
                    throw ulb.n(this.c, "URL query string \"%s\" must not have replace block. For dynamic query parameters use @Query.", strSubstring);
                }
            }
            this.s = str2;
            this.v = h(str2);
        }

        public final void e(Annotation annotation) {
            if (annotation instanceof lp1) {
                d("DELETE", ((lp1) annotation).value(), false);
                return;
            }
            if (annotation instanceof q94) {
                d(ShareTarget.METHOD_GET, ((q94) annotation).value(), false);
                return;
            }
            if (annotation instanceof dl4) {
                d("HEAD", ((dl4) annotation).value(), false);
                return;
            }
            if (annotation instanceof su7) {
                d("PATCH", ((su7) annotation).value(), true);
                return;
            }
            if (annotation instanceof zu7) {
                d("POST", ((zu7) annotation).value(), true);
                return;
            }
            if (annotation instanceof bv7) {
                d("PUT", ((bv7) annotation).value(), true);
                return;
            }
            if (annotation instanceof p47) {
                d("OPTIONS", ((p47) annotation).value(), false);
                return;
            }
            if (annotation instanceof km4) {
                km4 km4Var = (km4) annotation;
                d(km4Var.method(), km4Var.path(), km4Var.hasBody());
                return;
            }
            if (annotation instanceof to4) {
                to4 to4Var = (to4) annotation;
                String[] strArrValue = to4Var.value();
                if (strArrValue.length == 0) {
                    throw ulb.n(this.c, "@Headers annotation is empty.", new Object[0]);
                }
                this.t = c(strArrValue, to4Var.allowUnsafeNonAsciiValues());
                return;
            }
            if (annotation instanceof ct6) {
                if (this.q) {
                    throw ulb.n(this.c, "Only one encoding annotation is allowed.", new Object[0]);
                }
                this.r = true;
            } else if (annotation instanceof z34) {
                if (this.r) {
                    throw ulb.n(this.c, "Only one encoding annotation is allowed.", new Object[0]);
                }
                this.q = true;
            }
        }

        public final iw7 f(int i, Type type, Annotation[] annotationArr, boolean z2) {
            iw7 iw7Var;
            if (annotationArr != null) {
                iw7Var = null;
                for (Annotation annotation : annotationArr) {
                    iw7 iw7VarG = g(i, type, annotationArr, annotation);
                    if (iw7VarG != null) {
                        if (iw7Var != null) {
                            throw ulb.p(this.c, i, "Multiple Retrofit annotations found, only one allowed.", new Object[0]);
                        }
                        iw7Var = iw7VarG;
                    }
                }
            } else {
                iw7Var = null;
            }
            if (iw7Var != null) {
                return iw7Var;
            }
            if (z2) {
                try {
                    if (ulb.h(type) == wh1.class) {
                        this.x = true;
                        return null;
                    }
                } catch (NoClassDefFoundError unused) {
                }
            }
            throw ulb.p(this.c, i, "No Retrofit annotation found.", new Object[0]);
        }

        public final iw7 g(int i, Type type, Annotation[] annotationArr, Annotation annotation) {
            if (annotation instanceof wib) {
                j(i, type);
                if (this.n) {
                    throw ulb.p(this.c, i, "Multiple @Url method annotations found.", new Object[0]);
                }
                if (this.j) {
                    throw ulb.p(this.c, i, "@Path parameters may not be used with @Url.", new Object[0]);
                }
                if (this.k) {
                    throw ulb.p(this.c, i, "A @Url parameter must not come after a @Query.", new Object[0]);
                }
                if (this.l) {
                    throw ulb.p(this.c, i, "A @Url parameter must not come after a @QueryName.", new Object[0]);
                }
                if (this.m) {
                    throw ulb.p(this.c, i, "A @Url parameter must not come after a @QueryMap.", new Object[0]);
                }
                if (this.s != null) {
                    throw ulb.p(this.c, i, "@Url cannot be used with @%s URL", this.o);
                }
                this.n = true;
                if (type == HttpUrl.class || type == String.class || type == URI.class || ((type instanceof Class) && "android.net.Uri".equals(((Class) type).getName()))) {
                    return new iw7.p(this.c, i);
                }
                throw ulb.p(this.c, i, "@Url must be okhttp3.HttpUrl, String, java.net.URI, or android.net.Uri type.", new Object[0]);
            }
            if (annotation instanceof ay7) {
                j(i, type);
                if (this.k) {
                    throw ulb.p(this.c, i, "A @Path parameter must not come after a @Query.", new Object[0]);
                }
                if (this.l) {
                    throw ulb.p(this.c, i, "A @Path parameter must not come after a @QueryName.", new Object[0]);
                }
                if (this.m) {
                    throw ulb.p(this.c, i, "A @Path parameter must not come after a @QueryMap.", new Object[0]);
                }
                if (this.n) {
                    throw ulb.p(this.c, i, "@Path parameters may not be used with @Url.", new Object[0]);
                }
                if (this.s == null) {
                    throw ulb.p(this.c, i, "@Path can only be used with relative url on @%s", this.o);
                }
                this.j = true;
                ay7 ay7Var = (ay7) annotation;
                String strValue = ay7Var.value();
                i(i, strValue);
                return new iw7.k(this.c, i, strValue, this.a.i(type, annotationArr), ay7Var.encoded());
            }
            if (annotation instanceof wk8) {
                j(i, type);
                wk8 wk8Var = (wk8) annotation;
                String strValue2 = wk8Var.value();
                boolean zEncoded = wk8Var.encoded();
                Class clsH = ulb.h(type);
                this.k = true;
                if (!Iterable.class.isAssignableFrom(clsH)) {
                    if (!clsH.isArray()) {
                        return new iw7.l(strValue2, this.a.i(type, annotationArr), zEncoded);
                    }
                    return new iw7.l(strValue2, this.a.i(a(clsH.getComponentType()), annotationArr), zEncoded).b();
                }
                if (type instanceof ParameterizedType) {
                    return new iw7.l(strValue2, this.a.i(ulb.g(0, (ParameterizedType) type), annotationArr), zEncoded).c();
                }
                throw ulb.p(this.c, i, clsH.getSimpleName() + " must include generic type (e.g., " + clsH.getSimpleName() + "<String>)", new Object[0]);
            }
            if (annotation instanceof ul8) {
                j(i, type);
                boolean zEncoded2 = ((ul8) annotation).encoded();
                Class clsH2 = ulb.h(type);
                this.l = true;
                if (!Iterable.class.isAssignableFrom(clsH2)) {
                    if (!clsH2.isArray()) {
                        return new iw7.n(this.a.i(type, annotationArr), zEncoded2);
                    }
                    return new iw7.n(this.a.i(a(clsH2.getComponentType()), annotationArr), zEncoded2).b();
                }
                if (type instanceof ParameterizedType) {
                    return new iw7.n(this.a.i(ulb.g(0, (ParameterizedType) type), annotationArr), zEncoded2).c();
                }
                throw ulb.p(this.c, i, clsH2.getSimpleName() + " must include generic type (e.g., " + clsH2.getSimpleName() + "<String>)", new Object[0]);
            }
            if (annotation instanceof tl8) {
                j(i, type);
                Class clsH3 = ulb.h(type);
                this.m = true;
                if (!Map.class.isAssignableFrom(clsH3)) {
                    throw ulb.p(this.c, i, "@QueryMap parameter type must be Map.", new Object[0]);
                }
                Type typeI = ulb.i(type, clsH3, Map.class);
                if (!(typeI instanceof ParameterizedType)) {
                    throw ulb.p(this.c, i, "Map must include generic types (e.g., Map<String, String>)", new Object[0]);
                }
                ParameterizedType parameterizedType = (ParameterizedType) typeI;
                Type typeG = ulb.g(0, parameterizedType);
                if (String.class == typeG) {
                    return new iw7.m(this.c, i, this.a.i(ulb.g(1, parameterizedType), annotationArr), ((tl8) annotation).encoded());
                }
                throw ulb.p(this.c, i, "@QueryMap keys must be of type String: " + typeG, new Object[0]);
            }
            if (annotation instanceof oo4) {
                j(i, type);
                oo4 oo4Var = (oo4) annotation;
                String strValue3 = oo4Var.value();
                Class clsH4 = ulb.h(type);
                if (!Iterable.class.isAssignableFrom(clsH4)) {
                    if (!clsH4.isArray()) {
                        return new iw7.f(strValue3, this.a.i(type, annotationArr), oo4Var.allowUnsafeNonAsciiValues());
                    }
                    return new iw7.f(strValue3, this.a.i(a(clsH4.getComponentType()), annotationArr), oo4Var.allowUnsafeNonAsciiValues()).b();
                }
                if (type instanceof ParameterizedType) {
                    return new iw7.f(strValue3, this.a.i(ulb.g(0, (ParameterizedType) type), annotationArr), oo4Var.allowUnsafeNonAsciiValues()).c();
                }
                throw ulb.p(this.c, i, clsH4.getSimpleName() + " must include generic type (e.g., " + clsH4.getSimpleName() + "<String>)", new Object[0]);
            }
            if (annotation instanceof ro4) {
                if (type == Headers.class) {
                    return new iw7.h(this.c, i);
                }
                j(i, type);
                Class clsH5 = ulb.h(type);
                if (!Map.class.isAssignableFrom(clsH5)) {
                    throw ulb.p(this.c, i, "@HeaderMap parameter type must be Map or Headers.", new Object[0]);
                }
                Type typeI2 = ulb.i(type, clsH5, Map.class);
                if (!(typeI2 instanceof ParameterizedType)) {
                    throw ulb.p(this.c, i, "Map must include generic types (e.g., Map<String, String>)", new Object[0]);
                }
                ParameterizedType parameterizedType2 = (ParameterizedType) typeI2;
                Type typeG2 = ulb.g(0, parameterizedType2);
                if (String.class == typeG2) {
                    return new iw7.g(this.c, i, this.a.i(ulb.g(1, parameterizedType2), annotationArr), ((ro4) annotation).allowUnsafeNonAsciiValues());
                }
                throw ulb.p(this.c, i, "@HeaderMap keys must be of type String: " + typeG2, new Object[0]);
            }
            if (annotation instanceof up3) {
                j(i, type);
                if (!this.q) {
                    throw ulb.p(this.c, i, "@Field parameters can only be used with form encoding.", new Object[0]);
                }
                up3 up3Var = (up3) annotation;
                String strValue4 = up3Var.value();
                boolean zEncoded3 = up3Var.encoded();
                this.g = true;
                Class clsH6 = ulb.h(type);
                if (!Iterable.class.isAssignableFrom(clsH6)) {
                    if (!clsH6.isArray()) {
                        return new iw7.d(strValue4, this.a.i(type, annotationArr), zEncoded3);
                    }
                    return new iw7.d(strValue4, this.a.i(a(clsH6.getComponentType()), annotationArr), zEncoded3).b();
                }
                if (type instanceof ParameterizedType) {
                    return new iw7.d(strValue4, this.a.i(ulb.g(0, (ParameterizedType) type), annotationArr), zEncoded3).c();
                }
                throw ulb.p(this.c, i, clsH6.getSimpleName() + " must include generic type (e.g., " + clsH6.getSimpleName() + "<String>)", new Object[0]);
            }
            if (annotation instanceof zp3) {
                j(i, type);
                if (!this.q) {
                    throw ulb.p(this.c, i, "@FieldMap parameters can only be used with form encoding.", new Object[0]);
                }
                Class clsH7 = ulb.h(type);
                if (!Map.class.isAssignableFrom(clsH7)) {
                    throw ulb.p(this.c, i, "@FieldMap parameter type must be Map.", new Object[0]);
                }
                Type typeI3 = ulb.i(type, clsH7, Map.class);
                if (!(typeI3 instanceof ParameterizedType)) {
                    throw ulb.p(this.c, i, "Map must include generic types (e.g., Map<String, String>)", new Object[0]);
                }
                ParameterizedType parameterizedType3 = (ParameterizedType) typeI3;
                Type typeG3 = ulb.g(0, parameterizedType3);
                if (String.class == typeG3) {
                    si1 si1VarI = this.a.i(ulb.g(1, parameterizedType3), annotationArr);
                    this.g = true;
                    return new iw7.e(this.c, i, si1VarI, ((zp3) annotation).encoded());
                }
                throw ulb.p(this.c, i, "@FieldMap keys must be of type String: " + typeG3, new Object[0]);
            }
            if (!(annotation instanceof ox7)) {
                if (annotation instanceof px7) {
                    j(i, type);
                    if (!this.r) {
                        throw ulb.p(this.c, i, "@PartMap parameters can only be used with multipart encoding.", new Object[0]);
                    }
                    this.h = true;
                    Class clsH8 = ulb.h(type);
                    if (!Map.class.isAssignableFrom(clsH8)) {
                        throw ulb.p(this.c, i, "@PartMap parameter type must be Map.", new Object[0]);
                    }
                    Type typeI4 = ulb.i(type, clsH8, Map.class);
                    if (!(typeI4 instanceof ParameterizedType)) {
                        throw ulb.p(this.c, i, "Map must include generic types (e.g., Map<String, String>)", new Object[0]);
                    }
                    ParameterizedType parameterizedType4 = (ParameterizedType) typeI4;
                    Type typeG4 = ulb.g(0, parameterizedType4);
                    if (String.class == typeG4) {
                        Type typeG5 = ulb.g(1, parameterizedType4);
                        if (MultipartBody.Part.class.isAssignableFrom(ulb.h(typeG5))) {
                            throw ulb.p(this.c, i, "@PartMap values cannot be MultipartBody.Part. Use @Part List<Part> or a different value type instead.", new Object[0]);
                        }
                        return new iw7.j(this.c, i, this.a.g(typeG5, annotationArr, this.d), ((px7) annotation).encoding());
                    }
                    throw ulb.p(this.c, i, "@PartMap keys must be of type String: " + typeG4, new Object[0]);
                }
                if (annotation instanceof gg0) {
                    j(i, type);
                    if (this.q || this.r) {
                        throw ulb.p(this.c, i, "@Body parameters cannot be used with form or multi-part encoding.", new Object[0]);
                    }
                    if (this.i) {
                        throw ulb.p(this.c, i, "Multiple @Body method annotations found.", new Object[0]);
                    }
                    try {
                        si1 si1VarG = this.a.g(type, annotationArr, this.d);
                        this.i = true;
                        return new iw7.c(this.c, i, si1VarG);
                    } catch (RuntimeException e) {
                        throw ulb.q(this.c, e, i, "Unable to create @Body converter for %s", type);
                    }
                }
                if (!(annotation instanceof sda)) {
                    return null;
                }
                j(i, type);
                Class clsH9 = ulb.h(type);
                for (int i2 = i - 1; i2 >= 0; i2--) {
                    iw7 iw7Var = this.w[i2];
                    if ((iw7Var instanceof iw7.q) && ((iw7.q) iw7Var).a.equals(clsH9)) {
                        throw ulb.p(this.c, i, "@Tag type " + clsH9.getName() + " is duplicate of " + u18.b.a(this.c, i2) + " and would always overwrite its value.", new Object[0]);
                    }
                }
                return new iw7.q(clsH9);
            }
            j(i, type);
            if (!this.r) {
                throw ulb.p(this.c, i, "@Part parameters can only be used with multipart encoding.", new Object[0]);
            }
            ox7 ox7Var = (ox7) annotation;
            this.h = true;
            String strValue5 = ox7Var.value();
            Class clsH10 = ulb.h(type);
            if (strValue5.isEmpty()) {
                if (!Iterable.class.isAssignableFrom(clsH10)) {
                    if (clsH10.isArray()) {
                        if (MultipartBody.Part.class.isAssignableFrom(clsH10.getComponentType())) {
                            return iw7.o.a.b();
                        }
                        throw ulb.p(this.c, i, "@Part annotation must supply a name or use MultipartBody.Part parameter type.", new Object[0]);
                    }
                    if (MultipartBody.Part.class.isAssignableFrom(clsH10)) {
                        return iw7.o.a;
                    }
                    throw ulb.p(this.c, i, "@Part annotation must supply a name or use MultipartBody.Part parameter type.", new Object[0]);
                }
                if (type instanceof ParameterizedType) {
                    if (MultipartBody.Part.class.isAssignableFrom(ulb.h(ulb.g(0, (ParameterizedType) type)))) {
                        return iw7.o.a.c();
                    }
                    throw ulb.p(this.c, i, "@Part annotation must supply a name or use MultipartBody.Part parameter type.", new Object[0]);
                }
                throw ulb.p(this.c, i, clsH10.getSimpleName() + " must include generic type (e.g., " + clsH10.getSimpleName() + "<String>)", new Object[0]);
            }
            Headers headersOf = Headers.of(HttpHeaders.HEAD_KEY_CONTENT_DISPOSITION, "form-data; name=\"" + strValue5 + "\"", "Content-Transfer-Encoding", ox7Var.encoding());
            if (!Iterable.class.isAssignableFrom(clsH10)) {
                if (!clsH10.isArray()) {
                    if (MultipartBody.Part.class.isAssignableFrom(clsH10)) {
                        throw ulb.p(this.c, i, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation.", new Object[0]);
                    }
                    return new iw7.i(this.c, i, headersOf, this.a.g(type, annotationArr, this.d));
                }
                Class clsA = a(clsH10.getComponentType());
                if (MultipartBody.Part.class.isAssignableFrom(clsA)) {
                    throw ulb.p(this.c, i, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation.", new Object[0]);
                }
                return new iw7.i(this.c, i, headersOf, this.a.g(clsA, annotationArr, this.d)).b();
            }
            if (type instanceof ParameterizedType) {
                Type typeG6 = ulb.g(0, (ParameterizedType) type);
                if (MultipartBody.Part.class.isAssignableFrom(ulb.h(typeG6))) {
                    throw ulb.p(this.c, i, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation.", new Object[0]);
                }
                return new iw7.i(this.c, i, headersOf, this.a.g(typeG6, annotationArr, this.d)).c();
            }
            throw ulb.p(this.c, i, clsH10.getSimpleName() + " must include generic type (e.g., " + clsH10.getSimpleName() + "<String>)", new Object[0]);
        }

        public final void i(int i, String str) {
            if (!z.matcher(str).matches()) {
                throw ulb.p(this.c, i, "@Path parameter name must match %s. Found: %s", y.pattern(), str);
            }
            if (!this.v.contains(str)) {
                throw ulb.p(this.c, i, "URL \"%s\" does not contain \"{%s}\".", this.s, str);
            }
        }

        public final void j(int i, Type type) {
            if (ulb.j(type)) {
                throw ulb.p(this.c, i, "Parameter type must not include a type variable or wildcard: %s", type);
            }
        }
    }

    public et8(a aVar) {
        this.a = aVar.b;
        this.b = aVar.c;
        this.c = aVar.a.c;
        this.d = aVar.o;
        this.e = aVar.s;
        this.f = aVar.t;
        this.g = aVar.u;
        this.h = aVar.p;
        this.i = aVar.q;
        this.j = aVar.r;
        this.k = aVar.w;
        this.l = aVar.x;
    }

    public static et8 b(ru8 ru8Var, Class cls, Method method) {
        return new a(ru8Var, cls, method).b();
    }

    public Request a(Object obj, Object[] objArr) {
        iw7[] iw7VarArr = this.k;
        int length = objArr.length;
        if (length != iw7VarArr.length) {
            throw new IllegalArgumentException("Argument count (" + length + ") doesn't match expected count (" + iw7VarArr.length + ")");
        }
        at8 at8Var = new at8(this.d, this.c, this.e, this.f, this.g, this.h, this.i, this.j);
        if (this.l) {
            length--;
        }
        ArrayList arrayList = new ArrayList(length);
        for (int i = 0; i < length; i++) {
            arrayList.add(objArr[i]);
            iw7VarArr[i].a(at8Var, objArr[i]);
        }
        return at8Var.k().tag(i55.class, new i55(this.a, obj, this.b, arrayList)).build();
    }
}
