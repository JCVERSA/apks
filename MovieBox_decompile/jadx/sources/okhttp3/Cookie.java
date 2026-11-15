package okhttp3;

import androidx.collection.s;
import androidx.compose.foundation.e;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import okhttp3.internal.HostnamesKt;
import okhttp3.internal.Util;
import okhttp3.internal.http.DatesKt;
import okhttp3.internal.publicsuffix.PublicSuffixDatabase;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;

@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\f\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u0000 &2\u00020\u0001:\u0002%&BO\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\f\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\n¢\u0006\u0002\u0010\u000eJ\r\u0010\u0007\u001a\u00020\u0003H\u0007¢\u0006\u0002\b\u0012J\u0013\u0010\u0013\u001a\u00020\n2\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\r\u0010\u0005\u001a\u00020\u0006H\u0007¢\u0006\u0002\b\u0015J\b\u0010\u0016\u001a\u00020\u0017H\u0017J\r\u0010\r\u001a\u00020\nH\u0007¢\u0006\u0002\b\u0018J\r\u0010\u000b\u001a\u00020\nH\u0007¢\u0006\u0002\b\u0019J\u000e\u0010\u001a\u001a\u00020\n2\u0006\u0010\u001b\u001a\u00020\u001cJ\r\u0010\u0002\u001a\u00020\u0003H\u0007¢\u0006\u0002\b\u001dJ\r\u0010\b\u001a\u00020\u0003H\u0007¢\u0006\u0002\b\u001eJ\r\u0010\f\u001a\u00020\nH\u0007¢\u0006\u0002\b\u001fJ\r\u0010\t\u001a\u00020\nH\u0007¢\u0006\u0002\b J\b\u0010!\u001a\u00020\u0003H\u0016J\u0015\u0010!\u001a\u00020\u00032\u0006\u0010\"\u001a\u00020\nH\u0000¢\u0006\u0002\b#J\r\u0010\u0004\u001a\u00020\u0003H\u0007¢\u0006\u0002\b$R\u0013\u0010\u0007\u001a\u00020\u00038\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\u000fR\u0013\u0010\u0005\u001a\u00020\u00068\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0010R\u0013\u0010\r\u001a\u00020\n8\u0007¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u0011R\u0013\u0010\u000b\u001a\u00020\n8\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\u0011R\u0013\u0010\u0002\u001a\u00020\u00038\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u000fR\u0013\u0010\b\u001a\u00020\u00038\u0007¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u000fR\u0013\u0010\f\u001a\u00020\n8\u0007¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u0011R\u0013\u0010\t\u001a\u00020\n8\u0007¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\u0011R\u0013\u0010\u0004\u001a\u00020\u00038\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0004\u0010\u000f¨\u0006'"}, d2 = {"Lokhttp3/Cookie;", "", "name", "", AppMeasurementSdk.ConditionalUserProperty.VALUE, "expiresAt", "", "domain", "path", "secure", "", "httpOnly", "persistent", "hostOnly", "(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZ)V", "()Ljava/lang/String;", "()J", "()Z", "-deprecated_domain", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "-deprecated_expiresAt", "hashCode", "", "-deprecated_hostOnly", "-deprecated_httpOnly", "matches", "url", "Lokhttp3/HttpUrl;", "-deprecated_name", "-deprecated_path", "-deprecated_persistent", "-deprecated_secure", "toString", "forObsoleteRfc2965", "toString$okhttp", "-deprecated_value", "Builder", "Companion", "okhttp"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class Cookie {
    private final String domain;
    private final long expiresAt;
    private final boolean hostOnly;
    private final boolean httpOnly;
    private final String name;
    private final String path;
    private final boolean persistent;
    private final boolean secure;
    private final String value;

    public static final Companion INSTANCE = new Companion(null);
    private static final Pattern YEAR_PATTERN = Pattern.compile("(\\d{2,4})[^\\d]*");
    private static final Pattern MONTH_PATTERN = Pattern.compile("(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*");
    private static final Pattern DAY_OF_MONTH_PATTERN = Pattern.compile("(\\d{1,2})[^\\d]*");
    private static final Pattern TIME_PATTERN = Pattern.compile("(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*");

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u000f\u001a\u00020\u0010J\u000e\u0010\u0003\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0004J\u0018\u0010\u0003\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\bH\u0002J\u000e\u0010\u0005\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0004J\u0006\u0010\t\u001a\u00020\u0000J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0004J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0004J\u0006\u0010\r\u001a\u00020\u0000J\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u0004R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lokhttp3/Cookie$Builder;", "", "()V", "domain", "", "expiresAt", "", "hostOnly", "", "httpOnly", "name", "path", "persistent", "secure", AppMeasurementSdk.ConditionalUserProperty.VALUE, "build", "Lokhttp3/Cookie;", "hostOnlyDomain", "okhttp"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    @SourceDebugExtension
    public static final class Builder {
        private String domain;
        private boolean hostOnly;
        private boolean httpOnly;
        private String name;
        private boolean persistent;
        private boolean secure;
        private String value;
        private long expiresAt = DatesKt.MAX_DATE;
        private String path = "/";

        public final Cookie build() {
            String str = this.name;
            if (str == null) {
                throw new NullPointerException("builder.name == null");
            }
            String str2 = this.value;
            if (str2 == null) {
                throw new NullPointerException("builder.value == null");
            }
            long j10 = this.expiresAt;
            String str3 = this.domain;
            if (str3 != null) {
                return new Cookie(str, str2, j10, str3, this.path, this.secure, this.httpOnly, this.persistent, this.hostOnly, null);
            }
            throw new NullPointerException("builder.domain == null");
        }

        public final Builder domain(String domain) {
            Intrinsics.h(domain, "domain");
            return domain(domain, false);
        }

        public final Builder expiresAt(long expiresAt) {
            if (expiresAt <= 0) {
                expiresAt = Long.MIN_VALUE;
            }
            if (expiresAt > DatesKt.MAX_DATE) {
                expiresAt = 253402300799999L;
            }
            this.expiresAt = expiresAt;
            this.persistent = true;
            return this;
        }

        public final Builder hostOnlyDomain(String domain) {
            Intrinsics.h(domain, "domain");
            return domain(domain, true);
        }

        public final Builder httpOnly() {
            this.httpOnly = true;
            return this;
        }

        public final Builder name(String name) {
            Intrinsics.h(name, "name");
            if (!Intrinsics.c(StringsKt.n1(name).toString(), name)) {
                throw new IllegalArgumentException("name is not trimmed");
            }
            this.name = name;
            return this;
        }

        public final Builder path(String path) {
            Intrinsics.h(path, "path");
            if (!StringsKt.W(path, "/", false, 2, null)) {
                throw new IllegalArgumentException("path must start with '/'");
            }
            this.path = path;
            return this;
        }

        public final Builder secure() {
            this.secure = true;
            return this;
        }

        public final Builder value(String value) {
            Intrinsics.h(value, "value");
            if (!Intrinsics.c(StringsKt.n1(value).toString(), value)) {
                throw new IllegalArgumentException("value is not trimmed");
            }
            this.value = value;
            return this;
        }

        private final Builder domain(String domain, boolean hostOnly) {
            String canonicalHost = HostnamesKt.toCanonicalHost(domain);
            if (canonicalHost != null) {
                this.domain = canonicalHost;
                this.hostOnly = hostOnly;
                return this;
            }
            throw new IllegalArgumentException("unexpected domain: " + domain);
        }
    }

    @Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J(\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u0018\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\fH\u0002J'\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\fH\u0000¢\u0006\u0002\b\u001bJ\u001a\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\fH\u0007J\u001e\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00150\u001d2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001e\u001a\u00020\u001fH\u0007J\u0010\u0010 \u001a\u00020\f2\u0006\u0010!\u001a\u00020\fH\u0002J \u0010\"\u001a\u00020\u00172\u0006\u0010!\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\nH\u0002J\u0010\u0010#\u001a\u00020\u00172\u0006\u0010!\u001a\u00020\fH\u0002J\u0018\u0010$\u001a\u00020\u00102\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010%\u001a\u00020\fH\u0002R\u0016\u0010\u0003\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0007\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\b\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006&"}, d2 = {"Lokhttp3/Cookie$Companion;", "", "()V", "DAY_OF_MONTH_PATTERN", "Ljava/util/regex/Pattern;", "kotlin.jvm.PlatformType", "MONTH_PATTERN", "TIME_PATTERN", "YEAR_PATTERN", "dateCharacterOffset", "", "input", "", "pos", "limit", "invert", "", "domainMatch", "urlHost", "domain", "parse", "Lokhttp3/Cookie;", "currentTimeMillis", "", "url", "Lokhttp3/HttpUrl;", "setCookie", "parse$okhttp", "parseAll", "", "headers", "Lokhttp3/Headers;", "parseDomain", "s", "parseExpires", "parseMaxAge", "pathMatch", "path", "okhttp"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final int dateCharacterOffset(String input, int pos, int limit, boolean invert) {
            while (pos < limit) {
                char cCharAt = input.charAt(pos);
                if (((cCharAt < ' ' && cCharAt != '\t') || cCharAt >= 127 || ('0' <= cCharAt && cCharAt < ':') || (('a' <= cCharAt && cCharAt < '{') || (('A' <= cCharAt && cCharAt < '[') || cCharAt == ':'))) == (!invert)) {
                    return pos;
                }
                pos++;
            }
            return limit;
        }

        public final boolean domainMatch(String urlHost, String domain) {
            if (Intrinsics.c(urlHost, domain)) {
                return true;
            }
            return StringsKt.G(urlHost, domain, false, 2, null) && urlHost.charAt((urlHost.length() - domain.length()) - 1) == '.' && !Util.canParseAsIpAddress(urlHost);
        }

        private final String parseDomain(String s10) {
            if (StringsKt.G(s10, ".", false, 2, null)) {
                throw new IllegalArgumentException("Failed requirement.");
            }
            String canonicalHost = HostnamesKt.toCanonicalHost(StringsKt.I0(s10, "."));
            if (canonicalHost != null) {
                return canonicalHost;
            }
            throw new IllegalArgumentException();
        }

        private final long parseExpires(String s10, int pos, int limit) {
            int iDateCharacterOffset = dateCharacterOffset(s10, pos, limit, false);
            Matcher matcher = Cookie.TIME_PATTERN.matcher(s10);
            int i10 = -1;
            int i11 = -1;
            int i12 = -1;
            int iO0 = -1;
            int i13 = -1;
            int i14 = -1;
            while (iDateCharacterOffset < limit) {
                int iDateCharacterOffset2 = dateCharacterOffset(s10, iDateCharacterOffset + 1, limit, true);
                matcher.region(iDateCharacterOffset, iDateCharacterOffset2);
                if (i11 == -1 && matcher.usePattern(Cookie.TIME_PATTERN).matches()) {
                    String strGroup = matcher.group(1);
                    Intrinsics.g(strGroup, "matcher.group(1)");
                    i11 = Integer.parseInt(strGroup);
                    String strGroup2 = matcher.group(2);
                    Intrinsics.g(strGroup2, "matcher.group(2)");
                    i13 = Integer.parseInt(strGroup2);
                    String strGroup3 = matcher.group(3);
                    Intrinsics.g(strGroup3, "matcher.group(3)");
                    i14 = Integer.parseInt(strGroup3);
                } else if (i12 == -1 && matcher.usePattern(Cookie.DAY_OF_MONTH_PATTERN).matches()) {
                    String strGroup4 = matcher.group(1);
                    Intrinsics.g(strGroup4, "matcher.group(1)");
                    i12 = Integer.parseInt(strGroup4);
                } else if (iO0 == -1 && matcher.usePattern(Cookie.MONTH_PATTERN).matches()) {
                    String strGroup5 = matcher.group(1);
                    Intrinsics.g(strGroup5, "matcher.group(1)");
                    Locale US = Locale.US;
                    Intrinsics.g(US, "US");
                    String lowerCase = strGroup5.toLowerCase(US);
                    Intrinsics.g(lowerCase, "this as java.lang.String).toLowerCase(locale)");
                    String strPattern = Cookie.MONTH_PATTERN.pattern();
                    Intrinsics.g(strPattern, "MONTH_PATTERN.pattern()");
                    iO0 = StringsKt.o0(strPattern, lowerCase, 0, false, 6, null) / 4;
                } else if (i10 == -1 && matcher.usePattern(Cookie.YEAR_PATTERN).matches()) {
                    String strGroup6 = matcher.group(1);
                    Intrinsics.g(strGroup6, "matcher.group(1)");
                    i10 = Integer.parseInt(strGroup6);
                }
                iDateCharacterOffset = dateCharacterOffset(s10, iDateCharacterOffset2 + 1, limit, false);
            }
            if (70 <= i10 && i10 < 100) {
                i10 += 1900;
            }
            if (i10 >= 0 && i10 < 70) {
                i10 += 2000;
            }
            if (i10 < 1601) {
                throw new IllegalArgumentException("Failed requirement.");
            }
            if (iO0 == -1) {
                throw new IllegalArgumentException("Failed requirement.");
            }
            if (1 > i12 || i12 >= 32) {
                throw new IllegalArgumentException("Failed requirement.");
            }
            if (i11 < 0 || i11 >= 24) {
                throw new IllegalArgumentException("Failed requirement.");
            }
            if (i13 < 0 || i13 >= 60) {
                throw new IllegalArgumentException("Failed requirement.");
            }
            if (i14 < 0 || i14 >= 60) {
                throw new IllegalArgumentException("Failed requirement.");
            }
            GregorianCalendar gregorianCalendar = new GregorianCalendar(Util.UTC);
            gregorianCalendar.setLenient(false);
            gregorianCalendar.set(1, i10);
            gregorianCalendar.set(2, iO0 - 1);
            gregorianCalendar.set(5, i12);
            gregorianCalendar.set(11, i11);
            gregorianCalendar.set(12, i13);
            gregorianCalendar.set(13, i14);
            gregorianCalendar.set(14, 0);
            return gregorianCalendar.getTimeInMillis();
        }

        private final long parseMaxAge(String s10) {
            try {
                long j10 = Long.parseLong(s10);
                if (j10 <= 0) {
                    return Long.MIN_VALUE;
                }
                return j10;
            } catch (NumberFormatException e10) {
                if (new Regex("-?\\d+").matches(s10)) {
                    return StringsKt.W(s10, "-", false, 2, null) ? Long.MIN_VALUE : Long.MAX_VALUE;
                }
                throw e10;
            }
        }

        public final boolean pathMatch(HttpUrl url, String path) {
            String strEncodedPath = url.encodedPath();
            if (Intrinsics.c(strEncodedPath, path)) {
                return true;
            }
            return StringsKt.W(strEncodedPath, path, false, 2, null) && (StringsKt.G(path, "/", false, 2, null) || strEncodedPath.charAt(path.length()) == '/');
        }

        @JvmStatic
        public final Cookie parse(HttpUrl url, String setCookie) {
            Intrinsics.h(url, "url");
            Intrinsics.h(setCookie, "setCookie");
            return parse$okhttp(System.currentTimeMillis(), url, setCookie);
        }

        public final Cookie parse$okhttp(long currentTimeMillis, HttpUrl url, String setCookie) {
            long j10;
            Cookie cookie;
            String str;
            String str2;
            Intrinsics.h(url, "url");
            Intrinsics.h(setCookie, "setCookie");
            int iDelimiterOffset$default = Util.delimiterOffset$default(setCookie, ';', 0, 0, 6, (Object) null);
            int iDelimiterOffset$default2 = Util.delimiterOffset$default(setCookie, '=', 0, iDelimiterOffset$default, 2, (Object) null);
            if (iDelimiterOffset$default2 == iDelimiterOffset$default) {
                return null;
            }
            String strTrimSubstring$default = Util.trimSubstring$default(setCookie, 0, iDelimiterOffset$default2, 1, null);
            if (strTrimSubstring$default.length() == 0 || Util.indexOfControlOrNonAscii(strTrimSubstring$default) != -1) {
                return null;
            }
            String strTrimSubstring = Util.trimSubstring(setCookie, iDelimiterOffset$default2 + 1, iDelimiterOffset$default);
            if (Util.indexOfControlOrNonAscii(strTrimSubstring) != -1) {
                return null;
            }
            int i10 = iDelimiterOffset$default + 1;
            int length = setCookie.length();
            String domain = null;
            String str3 = null;
            boolean z10 = false;
            boolean z11 = false;
            boolean z12 = false;
            boolean z13 = true;
            long maxAge = -1;
            long expires = DatesKt.MAX_DATE;
            while (i10 < length) {
                int iDelimiterOffset = Util.delimiterOffset(setCookie, ';', i10, length);
                int iDelimiterOffset2 = Util.delimiterOffset(setCookie, '=', i10, iDelimiterOffset);
                String strTrimSubstring2 = Util.trimSubstring(setCookie, i10, iDelimiterOffset2);
                String strTrimSubstring3 = iDelimiterOffset2 < iDelimiterOffset ? Util.trimSubstring(setCookie, iDelimiterOffset2 + 1, iDelimiterOffset) : "";
                if (StringsKt.H(strTrimSubstring2, "expires", true)) {
                    try {
                        expires = parseExpires(strTrimSubstring3, 0, strTrimSubstring3.length());
                        z12 = true;
                    } catch (NumberFormatException | IllegalArgumentException unused) {
                    }
                } else if (StringsKt.H(strTrimSubstring2, "max-age", true)) {
                    maxAge = parseMaxAge(strTrimSubstring3);
                    z12 = true;
                } else if (StringsKt.H(strTrimSubstring2, "domain", true)) {
                    domain = parseDomain(strTrimSubstring3);
                    z13 = false;
                } else if (StringsKt.H(strTrimSubstring2, "path", true)) {
                    str3 = strTrimSubstring3;
                } else if (StringsKt.H(strTrimSubstring2, "secure", true)) {
                    z10 = true;
                } else if (StringsKt.H(strTrimSubstring2, "httponly", true)) {
                    z11 = true;
                }
                i10 = iDelimiterOffset + 1;
            }
            long j11 = Long.MIN_VALUE;
            if (maxAge == Long.MIN_VALUE) {
                j10 = j11;
            } else if (maxAge != -1) {
                long j12 = currentTimeMillis + (maxAge <= 9223372036854775L ? maxAge * ((long) 1000) : Long.MAX_VALUE);
                if (j12 >= currentTimeMillis) {
                    j11 = DatesKt.MAX_DATE;
                    if (j12 <= DatesKt.MAX_DATE) {
                        j10 = j12;
                    }
                } else {
                    j11 = DatesKt.MAX_DATE;
                }
                j10 = j11;
            } else {
                j10 = expires;
            }
            String strHost = url.host();
            if (domain == null) {
                str = strHost;
                cookie = null;
            } else {
                if (!domainMatch(strHost, domain)) {
                    return null;
                }
                cookie = null;
                str = domain;
            }
            if (strHost.length() != str.length() && PublicSuffixDatabase.INSTANCE.get().getEffectiveTldPlusOne(str) == null) {
                return cookie;
            }
            String strSubstring = "/";
            String str4 = str3;
            if (str4 == null || !StringsKt.W(str4, "/", false, 2, cookie)) {
                String strEncodedPath = url.encodedPath();
                int iU0 = StringsKt.u0(strEncodedPath, '/', 0, false, 6, null);
                if (iU0 != 0) {
                    strSubstring = strEncodedPath.substring(0, iU0);
                    Intrinsics.g(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
                }
                str2 = strSubstring;
            } else {
                str2 = str4;
            }
            return new Cookie(strTrimSubstring$default, strTrimSubstring, j10, str, str2, z10, z11, z12, z13, null);
        }

        @JvmStatic
        public final List<Cookie> parseAll(HttpUrl url, Headers headers) {
            Intrinsics.h(url, "url");
            Intrinsics.h(headers, "headers");
            List<String> listValues = headers.values("Set-Cookie");
            int size = listValues.size();
            ArrayList arrayList = null;
            for (int i10 = 0; i10 < size; i10++) {
                Cookie cookie = parse(url, listValues.get(i10));
                if (cookie != null) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(cookie);
                }
            }
            if (arrayList == null) {
                return CollectionsKt.l();
            }
            List<Cookie> listUnmodifiableList = Collections.unmodifiableList(arrayList);
            Intrinsics.g(listUnmodifiableList, "{\n        Collections.un…ableList(cookies)\n      }");
            return listUnmodifiableList;
        }

        private Companion() {
        }
    }

    public Cookie(String str, String str2, long j10, String str3, String str4, boolean z10, boolean z11, boolean z12, boolean z13, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, j10, str3, str4, z10, z11, z12, z13);
    }

    @JvmStatic
    public static final Cookie parse(HttpUrl httpUrl, String str) {
        return INSTANCE.parse(httpUrl, str);
    }

    @JvmStatic
    public static final List<Cookie> parseAll(HttpUrl httpUrl, Headers headers) {
        return INSTANCE.parseAll(httpUrl, headers);
    }

    @Deprecated
    @JvmName
    public final String getDomain() {
        return this.domain;
    }

    @Deprecated
    @JvmName
    public final long getExpiresAt() {
        return this.expiresAt;
    }

    @Deprecated
    @JvmName
    public final boolean getHostOnly() {
        return this.hostOnly;
    }

    @Deprecated
    @JvmName
    public final boolean getHttpOnly() {
        return this.httpOnly;
    }

    @Deprecated
    @JvmName
    public final String getName() {
        return this.name;
    }

    @Deprecated
    @JvmName
    public final String getPath() {
        return this.path;
    }

    @Deprecated
    @JvmName
    public final boolean getPersistent() {
        return this.persistent;
    }

    @Deprecated
    @JvmName
    public final boolean getSecure() {
        return this.secure;
    }

    @Deprecated
    @JvmName
    public final String getValue() {
        return this.value;
    }

    @JvmName
    public final String domain() {
        return this.domain;
    }

    public boolean equals(Object other) {
        if (other instanceof Cookie) {
            Cookie cookie = (Cookie) other;
            if (Intrinsics.c(cookie.name, this.name) && Intrinsics.c(cookie.value, this.value) && cookie.expiresAt == this.expiresAt && Intrinsics.c(cookie.domain, this.domain) && Intrinsics.c(cookie.path, this.path) && cookie.secure == this.secure && cookie.httpOnly == this.httpOnly && cookie.persistent == this.persistent && cookie.hostOnly == this.hostOnly) {
                return true;
            }
        }
        return false;
    }

    @JvmName
    public final long expiresAt() {
        return this.expiresAt;
    }

    @IgnoreJRERequirement
    public int hashCode() {
        return ((((((((((((((((527 + this.name.hashCode()) * 31) + this.value.hashCode()) * 31) + s.a(this.expiresAt)) * 31) + this.domain.hashCode()) * 31) + this.path.hashCode()) * 31) + e.a(this.secure)) * 31) + e.a(this.httpOnly)) * 31) + e.a(this.persistent)) * 31) + e.a(this.hostOnly);
    }

    @JvmName
    public final boolean hostOnly() {
        return this.hostOnly;
    }

    @JvmName
    public final boolean httpOnly() {
        return this.httpOnly;
    }

    public final boolean matches(HttpUrl url) {
        Intrinsics.h(url, "url");
        if ((this.hostOnly ? Intrinsics.c(url.host(), this.domain) : INSTANCE.domainMatch(url.host(), this.domain)) && INSTANCE.pathMatch(url, this.path)) {
            return !this.secure || url.getIsHttps();
        }
        return false;
    }

    @JvmName
    public final String name() {
        return this.name;
    }

    @JvmName
    public final String path() {
        return this.path;
    }

    @JvmName
    public final boolean persistent() {
        return this.persistent;
    }

    @JvmName
    public final boolean secure() {
        return this.secure;
    }

    public String toString() {
        return toString$okhttp(false);
    }

    public final String toString$okhttp(boolean forObsoleteRfc2965) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.name);
        sb2.append('=');
        sb2.append(this.value);
        if (this.persistent) {
            if (this.expiresAt == Long.MIN_VALUE) {
                sb2.append("; max-age=0");
            } else {
                sb2.append("; expires=");
                sb2.append(DatesKt.toHttpDateString(new Date(this.expiresAt)));
            }
        }
        if (!this.hostOnly) {
            sb2.append("; domain=");
            if (forObsoleteRfc2965) {
                sb2.append(".");
            }
            sb2.append(this.domain);
        }
        sb2.append("; path=");
        sb2.append(this.path);
        if (this.secure) {
            sb2.append("; secure");
        }
        if (this.httpOnly) {
            sb2.append("; httponly");
        }
        String string = sb2.toString();
        Intrinsics.g(string, "toString()");
        return string;
    }

    @JvmName
    public final String value() {
        return this.value;
    }

    private Cookie(String str, String str2, long j10, String str3, String str4, boolean z10, boolean z11, boolean z12, boolean z13) {
        this.name = str;
        this.value = str2;
        this.expiresAt = j10;
        this.domain = str3;
        this.path = str4;
        this.secure = z10;
        this.httpOnly = z11;
        this.persistent = z12;
        this.hostOnly = z13;
    }
}
