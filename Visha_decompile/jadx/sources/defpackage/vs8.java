package defpackage;

import androidx.browser.trusted.sharing.ShareTarget;
import com.lzy.okgo.model.HttpHeaders;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import org.schabi.newpipe.extractor.localization.Localization;

public class vs8 {
    public final String a;
    public final String b;
    public final Map c;
    public final byte[] d;
    public final Localization e;

    public static final class a {
        public String a;
        public String b;
        public byte[] d;
        public Localization e;
        public final Map c = new LinkedHashMap();
        public boolean f = true;

        public vs8 g() {
            return new vs8(this);
        }

        public a h(String str) {
            this.a = ShareTarget.METHOD_GET;
            this.b = str;
            return this;
        }

        public a i(String str) {
            this.a = "HEAD";
            this.b = str;
            return this;
        }

        public a j(Map map) {
            this.c.clear();
            if (map != null) {
                this.c.putAll(map);
            }
            return this;
        }

        public a k(Localization localization) {
            this.e = localization;
            return this;
        }

        public a l(String str, byte[] bArr) {
            this.a = "POST";
            this.b = str;
            this.d = bArr;
            return this;
        }
    }

    public static Map b(Localization localization) {
        if (localization == null) {
            return Collections.emptyMap();
        }
        String languageCode = localization.getLanguageCode();
        if (!localization.getCountryCode().isEmpty()) {
            languageCode = localization.getLocalizationCode() + ", " + languageCode + ";q=0.9";
        }
        return Collections.singletonMap(HttpHeaders.HEAD_KEY_ACCEPT_LANGUAGE, Collections.singletonList(languageCode));
    }

    public static a e() {
        return new a();
    }

    public byte[] a() {
        return this.d;
    }

    public Map c() {
        return this.c;
    }

    public String d() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        vs8 vs8Var = (vs8) obj;
        return this.a.equals(vs8Var.a) && this.b.equals(vs8Var.b) && this.c.equals(vs8Var.c) && Arrays.equals(this.d, vs8Var.d) && Objects.equals(this.e, vs8Var.e);
    }

    public String f() {
        return this.b;
    }

    public int hashCode() {
        return (Objects.hash(this.a, this.b, this.c, this.e) * 31) + Arrays.hashCode(this.d);
    }

    public vs8(String str, String str2, Map map, byte[] bArr, Localization localization, boolean z) {
        Objects.requireNonNull(str, "Request's httpMethod is null");
        this.a = str;
        Objects.requireNonNull(str2, "Request's url is null");
        this.b = str2;
        this.d = bArr;
        this.e = localization;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (map != null) {
            linkedHashMap.putAll(map);
        }
        if (z && localization != null) {
            linkedHashMap.putAll(b(localization));
        }
        this.c = Collections.unmodifiableMap(linkedHashMap);
    }

    public vs8(a aVar) {
        this(aVar.a, aVar.b, aVar.c, aVar.d, aVar.e, aVar.f);
    }
}
