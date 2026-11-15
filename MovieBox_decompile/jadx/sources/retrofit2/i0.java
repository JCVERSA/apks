package retrofit2;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
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
import kotlin.coroutines.Continuation;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.Request;
import retrofit2.http.Body;
import retrofit2.http.DELETE;
import retrofit2.http.Field;
import retrofit2.http.FieldMap;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.GET;
import retrofit2.http.HEAD;
import retrofit2.http.HTTP;
import retrofit2.http.Header;
import retrofit2.http.HeaderMap;
import retrofit2.http.Multipart;
import retrofit2.http.OPTIONS;
import retrofit2.http.PATCH;
import retrofit2.http.POST;
import retrofit2.http.PUT;
import retrofit2.http.Part;
import retrofit2.http.PartMap;
import retrofit2.http.Path;
import retrofit2.http.Query;
import retrofit2.http.QueryMap;
import retrofit2.http.QueryName;
import retrofit2.http.Tag;
import retrofit2.http.Url;

final class i0 {

    private final Class f71056a;

    private final Method f71057b;

    private final HttpUrl f71058c;

    final String f71059d;

    private final String f71060e;

    private final Headers f71061f;

    private final MediaType f71062g;

    private final boolean f71063h;

    private final boolean f71064i;

    private final boolean f71065j;

    private final a0[] f71066k;

    final boolean f71067l;

    static final class a {

        private static final Pattern f71068y = Pattern.compile("\\{([a-zA-Z][a-zA-Z0-9_-]*)\\}");

        private static final Pattern f71069z = Pattern.compile("[a-zA-Z][a-zA-Z0-9_-]*");

        final k0 f71070a;

        final Class f71071b;

        final Method f71072c;

        final Annotation[] f71073d;

        final Annotation[][] f71074e;

        final Type[] f71075f;

        boolean f71076g;

        boolean f71077h;

        boolean f71078i;

        boolean f71079j;

        boolean f71080k;

        boolean f71081l;

        boolean f71082m;

        boolean f71083n;

        String f71084o;

        boolean f71085p;

        boolean f71086q;

        boolean f71087r;

        String f71088s;

        Headers f71089t;

        MediaType f71090u;

        Set f71091v;

        a0[] f71092w;

        boolean f71093x;

        a(k0 k0Var, Class cls, Method method) {
            this.f71070a = k0Var;
            this.f71071b = cls;
            this.f71072c = method;
            this.f71073d = method.getAnnotations();
            this.f71075f = method.getGenericParameterTypes();
            this.f71074e = method.getParameterAnnotations();
        }

        private static Class a(Class cls) {
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

        private Headers c(String[] strArr, boolean z10) {
            Headers.Builder builder = new Headers.Builder();
            for (String str : strArr) {
                int iIndexOf = str.indexOf(58);
                if (iIndexOf == -1 || iIndexOf == 0 || iIndexOf == str.length() - 1) {
                    throw o0.n(this.f71072c, "@Headers value must be in the form \"Name: Value\". Found: \"%s\"", str);
                }
                String strSubstring = str.substring(0, iIndexOf);
                String strTrim = str.substring(iIndexOf + 1).trim();
                if (HttpHeaders.CONTENT_TYPE.equalsIgnoreCase(strSubstring)) {
                    try {
                        this.f71090u = MediaType.get(strTrim);
                    } catch (IllegalArgumentException e10) {
                        throw o0.o(this.f71072c, e10, "Malformed content type: %s", strTrim);
                    }
                } else if (z10) {
                    builder.addUnsafeNonAscii(strSubstring, strTrim);
                } else {
                    builder.add(strSubstring, strTrim);
                }
            }
            return builder.build();
        }

        private void d(String str, String str2, boolean z10) {
            String str3 = this.f71084o;
            if (str3 != null) {
                throw o0.n(this.f71072c, "Only one HTTP method is allowed. Found: %s and %s.", str3, str);
            }
            this.f71084o = str;
            this.f71085p = z10;
            if (str2.isEmpty()) {
                return;
            }
            int iIndexOf = str2.indexOf(63);
            if (iIndexOf != -1 && iIndexOf < str2.length() - 1) {
                String strSubstring = str2.substring(iIndexOf + 1);
                if (f71068y.matcher(strSubstring).find()) {
                    throw o0.n(this.f71072c, "URL query string \"%s\" must not have replace block. For dynamic query parameters use @Query.", strSubstring);
                }
            }
            this.f71088s = str2;
            this.f71091v = h(str2);
        }

        private void e(Annotation annotation) {
            if (annotation instanceof DELETE) {
                d("DELETE", ((DELETE) annotation).value(), false);
                return;
            }
            if (annotation instanceof GET) {
                d("GET", ((GET) annotation).value(), false);
                return;
            }
            if (annotation instanceof HEAD) {
                d("HEAD", ((HEAD) annotation).value(), false);
                return;
            }
            if (annotation instanceof PATCH) {
                d("PATCH", ((PATCH) annotation).value(), true);
                return;
            }
            if (annotation instanceof POST) {
                d("POST", ((POST) annotation).value(), true);
                return;
            }
            if (annotation instanceof PUT) {
                d("PUT", ((PUT) annotation).value(), true);
                return;
            }
            if (annotation instanceof OPTIONS) {
                d("OPTIONS", ((OPTIONS) annotation).value(), false);
                return;
            }
            if (annotation instanceof HTTP) {
                HTTP http = (HTTP) annotation;
                d(http.method(), http.path(), http.hasBody());
                return;
            }
            if (annotation instanceof retrofit2.http.Headers) {
                retrofit2.http.Headers headers = (retrofit2.http.Headers) annotation;
                String[] strArrValue = headers.value();
                if (strArrValue.length == 0) {
                    throw o0.n(this.f71072c, "@Headers annotation is empty.", new Object[0]);
                }
                this.f71089t = c(strArrValue, headers.allowUnsafeNonAsciiValues());
                return;
            }
            if (annotation instanceof Multipart) {
                if (this.f71086q) {
                    throw o0.n(this.f71072c, "Only one encoding annotation is allowed.", new Object[0]);
                }
                this.f71087r = true;
            } else if (annotation instanceof FormUrlEncoded) {
                if (this.f71087r) {
                    throw o0.n(this.f71072c, "Only one encoding annotation is allowed.", new Object[0]);
                }
                this.f71086q = true;
            }
        }

        private a0 f(int i10, Type type, Annotation[] annotationArr, boolean z10) {
            a0 a0Var;
            if (annotationArr != null) {
                a0Var = null;
                for (Annotation annotation : annotationArr) {
                    a0 a0VarG = g(i10, type, annotationArr, annotation);
                    if (a0VarG != null) {
                        if (a0Var != null) {
                            throw o0.p(this.f71072c, i10, "Multiple Retrofit annotations found, only one allowed.", new Object[0]);
                        }
                        a0Var = a0VarG;
                    }
                }
            } else {
                a0Var = null;
            }
            if (a0Var != null) {
                return a0Var;
            }
            if (z10) {
                try {
                    if (o0.h(type) == Continuation.class) {
                        this.f71093x = true;
                        return null;
                    }
                } catch (NoClassDefFoundError unused) {
                }
            }
            throw o0.p(this.f71072c, i10, "No Retrofit annotation found.", new Object[0]);
        }

        private a0 g(int i10, Type type, Annotation[] annotationArr, Annotation annotation) {
            if (annotation instanceof Url) {
                j(i10, type);
                if (this.f71083n) {
                    throw o0.p(this.f71072c, i10, "Multiple @Url method annotations found.", new Object[0]);
                }
                if (this.f71079j) {
                    throw o0.p(this.f71072c, i10, "@Path parameters may not be used with @Url.", new Object[0]);
                }
                if (this.f71080k) {
                    throw o0.p(this.f71072c, i10, "A @Url parameter must not come after a @Query.", new Object[0]);
                }
                if (this.f71081l) {
                    throw o0.p(this.f71072c, i10, "A @Url parameter must not come after a @QueryName.", new Object[0]);
                }
                if (this.f71082m) {
                    throw o0.p(this.f71072c, i10, "A @Url parameter must not come after a @QueryMap.", new Object[0]);
                }
                if (this.f71088s != null) {
                    throw o0.p(this.f71072c, i10, "@Url cannot be used with @%s URL", this.f71084o);
                }
                this.f71083n = true;
                if (type == HttpUrl.class || type == String.class || type == URI.class || ((type instanceof Class) && "android.net.Uri".equals(((Class) type).getName()))) {
                    return new a0.p(this.f71072c, i10);
                }
                throw o0.p(this.f71072c, i10, "@Url must be okhttp3.HttpUrl, String, java.net.URI, or android.net.Uri type.", new Object[0]);
            }
            if (annotation instanceof Path) {
                j(i10, type);
                if (this.f71080k) {
                    throw o0.p(this.f71072c, i10, "A @Path parameter must not come after a @Query.", new Object[0]);
                }
                if (this.f71081l) {
                    throw o0.p(this.f71072c, i10, "A @Path parameter must not come after a @QueryName.", new Object[0]);
                }
                if (this.f71082m) {
                    throw o0.p(this.f71072c, i10, "A @Path parameter must not come after a @QueryMap.", new Object[0]);
                }
                if (this.f71083n) {
                    throw o0.p(this.f71072c, i10, "@Path parameters may not be used with @Url.", new Object[0]);
                }
                if (this.f71088s == null) {
                    throw o0.p(this.f71072c, i10, "@Path can only be used with relative url on @%s", this.f71084o);
                }
                this.f71079j = true;
                Path path = (Path) annotation;
                String strValue = path.value();
                i(i10, strValue);
                return new a0.k(this.f71072c, i10, strValue, this.f71070a.i(type, annotationArr), path.encoded());
            }
            if (annotation instanceof Query) {
                j(i10, type);
                Query query = (Query) annotation;
                String strValue2 = query.value();
                boolean zEncoded = query.encoded();
                Class clsH = o0.h(type);
                this.f71080k = true;
                if (!Iterable.class.isAssignableFrom(clsH)) {
                    return clsH.isArray() ? new a0.l(strValue2, this.f71070a.i(a(clsH.getComponentType()), annotationArr), zEncoded).b() : new a0.l(strValue2, this.f71070a.i(type, annotationArr), zEncoded);
                }
                if (type instanceof ParameterizedType) {
                    return new a0.l(strValue2, this.f71070a.i(o0.g(0, (ParameterizedType) type), annotationArr), zEncoded).c();
                }
                throw o0.p(this.f71072c, i10, clsH.getSimpleName() + " must include generic type (e.g., " + clsH.getSimpleName() + "<String>)", new Object[0]);
            }
            if (annotation instanceof QueryName) {
                j(i10, type);
                boolean zEncoded2 = ((QueryName) annotation).encoded();
                Class clsH2 = o0.h(type);
                this.f71081l = true;
                if (!Iterable.class.isAssignableFrom(clsH2)) {
                    return clsH2.isArray() ? new a0.n(this.f71070a.i(a(clsH2.getComponentType()), annotationArr), zEncoded2).b() : new a0.n(this.f71070a.i(type, annotationArr), zEncoded2);
                }
                if (type instanceof ParameterizedType) {
                    return new a0.n(this.f71070a.i(o0.g(0, (ParameterizedType) type), annotationArr), zEncoded2).c();
                }
                throw o0.p(this.f71072c, i10, clsH2.getSimpleName() + " must include generic type (e.g., " + clsH2.getSimpleName() + "<String>)", new Object[0]);
            }
            if (annotation instanceof QueryMap) {
                j(i10, type);
                Class clsH3 = o0.h(type);
                this.f71082m = true;
                if (!Map.class.isAssignableFrom(clsH3)) {
                    throw o0.p(this.f71072c, i10, "@QueryMap parameter type must be Map.", new Object[0]);
                }
                Type typeI = o0.i(type, clsH3, Map.class);
                if (!(typeI instanceof ParameterizedType)) {
                    throw o0.p(this.f71072c, i10, "Map must include generic types (e.g., Map<String, String>)", new Object[0]);
                }
                ParameterizedType parameterizedType = (ParameterizedType) typeI;
                Type typeG = o0.g(0, parameterizedType);
                if (String.class == typeG) {
                    return new a0.m(this.f71072c, i10, this.f71070a.i(o0.g(1, parameterizedType), annotationArr), ((QueryMap) annotation).encoded());
                }
                throw o0.p(this.f71072c, i10, "@QueryMap keys must be of type String: " + typeG, new Object[0]);
            }
            if (annotation instanceof Header) {
                j(i10, type);
                Header header = (Header) annotation;
                String strValue3 = header.value();
                Class clsH4 = o0.h(type);
                if (!Iterable.class.isAssignableFrom(clsH4)) {
                    return clsH4.isArray() ? new a0.f(strValue3, this.f71070a.i(a(clsH4.getComponentType()), annotationArr), header.allowUnsafeNonAsciiValues()).b() : new a0.f(strValue3, this.f71070a.i(type, annotationArr), header.allowUnsafeNonAsciiValues());
                }
                if (type instanceof ParameterizedType) {
                    return new a0.f(strValue3, this.f71070a.i(o0.g(0, (ParameterizedType) type), annotationArr), header.allowUnsafeNonAsciiValues()).c();
                }
                throw o0.p(this.f71072c, i10, clsH4.getSimpleName() + " must include generic type (e.g., " + clsH4.getSimpleName() + "<String>)", new Object[0]);
            }
            if (annotation instanceof HeaderMap) {
                if (type == Headers.class) {
                    return new a0.h(this.f71072c, i10);
                }
                j(i10, type);
                Class clsH5 = o0.h(type);
                if (!Map.class.isAssignableFrom(clsH5)) {
                    throw o0.p(this.f71072c, i10, "@HeaderMap parameter type must be Map or Headers.", new Object[0]);
                }
                Type typeI2 = o0.i(type, clsH5, Map.class);
                if (!(typeI2 instanceof ParameterizedType)) {
                    throw o0.p(this.f71072c, i10, "Map must include generic types (e.g., Map<String, String>)", new Object[0]);
                }
                ParameterizedType parameterizedType2 = (ParameterizedType) typeI2;
                Type typeG2 = o0.g(0, parameterizedType2);
                if (String.class == typeG2) {
                    return new a0.g(this.f71072c, i10, this.f71070a.i(o0.g(1, parameterizedType2), annotationArr), ((HeaderMap) annotation).allowUnsafeNonAsciiValues());
                }
                throw o0.p(this.f71072c, i10, "@HeaderMap keys must be of type String: " + typeG2, new Object[0]);
            }
            if (annotation instanceof Field) {
                j(i10, type);
                if (!this.f71086q) {
                    throw o0.p(this.f71072c, i10, "@Field parameters can only be used with form encoding.", new Object[0]);
                }
                Field field = (Field) annotation;
                String strValue4 = field.value();
                boolean zEncoded3 = field.encoded();
                this.f71076g = true;
                Class clsH6 = o0.h(type);
                if (!Iterable.class.isAssignableFrom(clsH6)) {
                    return clsH6.isArray() ? new a0.d(strValue4, this.f71070a.i(a(clsH6.getComponentType()), annotationArr), zEncoded3).b() : new a0.d(strValue4, this.f71070a.i(type, annotationArr), zEncoded3);
                }
                if (type instanceof ParameterizedType) {
                    return new a0.d(strValue4, this.f71070a.i(o0.g(0, (ParameterizedType) type), annotationArr), zEncoded3).c();
                }
                throw o0.p(this.f71072c, i10, clsH6.getSimpleName() + " must include generic type (e.g., " + clsH6.getSimpleName() + "<String>)", new Object[0]);
            }
            if (annotation instanceof FieldMap) {
                j(i10, type);
                if (!this.f71086q) {
                    throw o0.p(this.f71072c, i10, "@FieldMap parameters can only be used with form encoding.", new Object[0]);
                }
                Class clsH7 = o0.h(type);
                if (!Map.class.isAssignableFrom(clsH7)) {
                    throw o0.p(this.f71072c, i10, "@FieldMap parameter type must be Map.", new Object[0]);
                }
                Type typeI3 = o0.i(type, clsH7, Map.class);
                if (!(typeI3 instanceof ParameterizedType)) {
                    throw o0.p(this.f71072c, i10, "Map must include generic types (e.g., Map<String, String>)", new Object[0]);
                }
                ParameterizedType parameterizedType3 = (ParameterizedType) typeI3;
                Type typeG3 = o0.g(0, parameterizedType3);
                if (String.class == typeG3) {
                    k kVarI = this.f71070a.i(o0.g(1, parameterizedType3), annotationArr);
                    this.f71076g = true;
                    return new a0.e(this.f71072c, i10, kVarI, ((FieldMap) annotation).encoded());
                }
                throw o0.p(this.f71072c, i10, "@FieldMap keys must be of type String: " + typeG3, new Object[0]);
            }
            if (annotation instanceof Part) {
                j(i10, type);
                if (!this.f71087r) {
                    throw o0.p(this.f71072c, i10, "@Part parameters can only be used with multipart encoding.", new Object[0]);
                }
                Part part = (Part) annotation;
                this.f71077h = true;
                String strValue5 = part.value();
                Class clsH8 = o0.h(type);
                if (strValue5.isEmpty()) {
                    if (!Iterable.class.isAssignableFrom(clsH8)) {
                        if (clsH8.isArray()) {
                            if (MultipartBody.Part.class.isAssignableFrom(clsH8.getComponentType())) {
                                return a0.o.f71028a.b();
                            }
                            throw o0.p(this.f71072c, i10, "@Part annotation must supply a name or use MultipartBody.Part parameter type.", new Object[0]);
                        }
                        if (MultipartBody.Part.class.isAssignableFrom(clsH8)) {
                            return a0.o.f71028a;
                        }
                        throw o0.p(this.f71072c, i10, "@Part annotation must supply a name or use MultipartBody.Part parameter type.", new Object[0]);
                    }
                    if (type instanceof ParameterizedType) {
                        if (MultipartBody.Part.class.isAssignableFrom(o0.h(o0.g(0, (ParameterizedType) type)))) {
                            return a0.o.f71028a.c();
                        }
                        throw o0.p(this.f71072c, i10, "@Part annotation must supply a name or use MultipartBody.Part parameter type.", new Object[0]);
                    }
                    throw o0.p(this.f71072c, i10, clsH8.getSimpleName() + " must include generic type (e.g., " + clsH8.getSimpleName() + "<String>)", new Object[0]);
                }
                Headers headersOf = Headers.of(HttpHeaders.CONTENT_DISPOSITION, "form-data; name=\"" + strValue5 + "\"", "Content-Transfer-Encoding", part.encoding());
                if (!Iterable.class.isAssignableFrom(clsH8)) {
                    if (!clsH8.isArray()) {
                        if (MultipartBody.Part.class.isAssignableFrom(clsH8)) {
                            throw o0.p(this.f71072c, i10, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation.", new Object[0]);
                        }
                        return new a0.i(this.f71072c, i10, headersOf, this.f71070a.g(type, annotationArr, this.f71073d));
                    }
                    Class clsA = a(clsH8.getComponentType());
                    if (MultipartBody.Part.class.isAssignableFrom(clsA)) {
                        throw o0.p(this.f71072c, i10, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation.", new Object[0]);
                    }
                    return new a0.i(this.f71072c, i10, headersOf, this.f71070a.g(clsA, annotationArr, this.f71073d)).b();
                }
                if (type instanceof ParameterizedType) {
                    Type typeG4 = o0.g(0, (ParameterizedType) type);
                    if (MultipartBody.Part.class.isAssignableFrom(o0.h(typeG4))) {
                        throw o0.p(this.f71072c, i10, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation.", new Object[0]);
                    }
                    return new a0.i(this.f71072c, i10, headersOf, this.f71070a.g(typeG4, annotationArr, this.f71073d)).c();
                }
                throw o0.p(this.f71072c, i10, clsH8.getSimpleName() + " must include generic type (e.g., " + clsH8.getSimpleName() + "<String>)", new Object[0]);
            }
            if (annotation instanceof PartMap) {
                j(i10, type);
                if (!this.f71087r) {
                    throw o0.p(this.f71072c, i10, "@PartMap parameters can only be used with multipart encoding.", new Object[0]);
                }
                this.f71077h = true;
                Class clsH9 = o0.h(type);
                if (!Map.class.isAssignableFrom(clsH9)) {
                    throw o0.p(this.f71072c, i10, "@PartMap parameter type must be Map.", new Object[0]);
                }
                Type typeI4 = o0.i(type, clsH9, Map.class);
                if (!(typeI4 instanceof ParameterizedType)) {
                    throw o0.p(this.f71072c, i10, "Map must include generic types (e.g., Map<String, String>)", new Object[0]);
                }
                ParameterizedType parameterizedType4 = (ParameterizedType) typeI4;
                Type typeG5 = o0.g(0, parameterizedType4);
                if (String.class == typeG5) {
                    Type typeG6 = o0.g(1, parameterizedType4);
                    if (MultipartBody.Part.class.isAssignableFrom(o0.h(typeG6))) {
                        throw o0.p(this.f71072c, i10, "@PartMap values cannot be MultipartBody.Part. Use @Part List<Part> or a different value type instead.", new Object[0]);
                    }
                    return new a0.j(this.f71072c, i10, this.f71070a.g(typeG6, annotationArr, this.f71073d), ((PartMap) annotation).encoding());
                }
                throw o0.p(this.f71072c, i10, "@PartMap keys must be of type String: " + typeG5, new Object[0]);
            }
            if (annotation instanceof Body) {
                j(i10, type);
                if (this.f71086q || this.f71087r) {
                    throw o0.p(this.f71072c, i10, "@Body parameters cannot be used with form or multi-part encoding.", new Object[0]);
                }
                if (this.f71078i) {
                    throw o0.p(this.f71072c, i10, "Multiple @Body method annotations found.", new Object[0]);
                }
                try {
                    k kVarG = this.f71070a.g(type, annotationArr, this.f71073d);
                    this.f71078i = true;
                    return new a0.c(this.f71072c, i10, kVarG);
                } catch (RuntimeException e10) {
                    throw o0.q(this.f71072c, e10, i10, "Unable to create @Body converter for %s", type);
                }
            }
            if (!(annotation instanceof Tag)) {
                return null;
            }
            j(i10, type);
            Class clsH10 = o0.h(type);
            for (int i11 = i10 - 1; i11 >= 0; i11--) {
                a0 a0Var = this.f71092w[i11];
                if ((a0Var instanceof a0.q) && ((a0.q) a0Var).f71031a.equals(clsH10)) {
                    throw o0.p(this.f71072c, i10, "@Tag type " + clsH10.getName() + " is duplicate of " + b0.f71039b.a(this.f71072c, i11) + " and would always overwrite its value.", new Object[0]);
                }
            }
            return new a0.q(clsH10);
        }

        static Set h(String str) {
            Matcher matcher = f71068y.matcher(str);
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            while (matcher.find()) {
                linkedHashSet.add(matcher.group(1));
            }
            return linkedHashSet;
        }

        private void i(int i10, String str) {
            if (!f71069z.matcher(str).matches()) {
                throw o0.p(this.f71072c, i10, "@Path parameter name must match %s. Found: %s", f71068y.pattern(), str);
            }
            if (!this.f71091v.contains(str)) {
                throw o0.p(this.f71072c, i10, "URL \"%s\" does not contain \"{%s}\".", this.f71088s, str);
            }
        }

        private void j(int i10, Type type) {
            if (o0.j(type)) {
                throw o0.p(this.f71072c, i10, "Parameter type must not include a type variable or wildcard: %s", type);
            }
        }

        i0 b() {
            for (Annotation annotation : this.f71073d) {
                e(annotation);
            }
            if (this.f71084o == null) {
                throw o0.n(this.f71072c, "HTTP method annotation is required (e.g., @GET, @POST, etc.).", new Object[0]);
            }
            if (!this.f71085p) {
                if (this.f71087r) {
                    throw o0.n(this.f71072c, "Multipart can only be specified on HTTP methods with request body (e.g., @POST).", new Object[0]);
                }
                if (this.f71086q) {
                    throw o0.n(this.f71072c, "FormUrlEncoded can only be specified on HTTP methods with request body (e.g., @POST).", new Object[0]);
                }
            }
            int length = this.f71074e.length;
            this.f71092w = new a0[length];
            int i10 = length - 1;
            int i11 = 0;
            while (i11 < length) {
                this.f71092w[i11] = f(i11, this.f71075f[i11], this.f71074e[i11], i11 == i10);
                i11++;
            }
            if (this.f71088s == null && !this.f71083n) {
                throw o0.n(this.f71072c, "Missing either @%s URL or @Url parameter.", this.f71084o);
            }
            boolean z10 = this.f71086q;
            if (!z10 && !this.f71087r && !this.f71085p && this.f71078i) {
                throw o0.n(this.f71072c, "Non-body HTTP method cannot contain @Body.", new Object[0]);
            }
            if (z10 && !this.f71076g) {
                throw o0.n(this.f71072c, "Form-encoded method must contain at least one @Field.", new Object[0]);
            }
            if (!this.f71087r || this.f71077h) {
                return new i0(this);
            }
            throw o0.n(this.f71072c, "Multipart method must contain at least one @Part.", new Object[0]);
        }
    }

    i0(a aVar) {
        this.f71056a = aVar.f71071b;
        this.f71057b = aVar.f71072c;
        this.f71058c = aVar.f71070a.f71106c;
        this.f71059d = aVar.f71084o;
        this.f71060e = aVar.f71088s;
        this.f71061f = aVar.f71089t;
        this.f71062g = aVar.f71090u;
        this.f71063h = aVar.f71085p;
        this.f71064i = aVar.f71086q;
        this.f71065j = aVar.f71087r;
        this.f71066k = aVar.f71092w;
        this.f71067l = aVar.f71093x;
    }

    static i0 b(k0 k0Var, Class cls, Method method) {
        return new a(k0Var, cls, method).b();
    }

    Request a(Object obj, Object[] objArr) {
        a0[] a0VarArr = this.f71066k;
        int length = objArr.length;
        if (length != a0VarArr.length) {
            throw new IllegalArgumentException("Argument count (" + length + ") doesn't match expected count (" + a0VarArr.length + ")");
        }
        h0 h0Var = new h0(this.f71059d, this.f71058c, this.f71060e, this.f71061f, this.f71062g, this.f71063h, this.f71064i, this.f71065j);
        if (this.f71067l) {
            length--;
        }
        ArrayList arrayList = new ArrayList(length);
        for (int i10 = 0; i10 < length; i10++) {
            arrayList.add(objArr[i10]);
            a0VarArr[i10].a(h0Var, objArr[i10]);
        }
        return h0Var.k().tag(v.class, new v(this.f71056a, obj, this.f71057b, arrayList)).build();
    }
}
