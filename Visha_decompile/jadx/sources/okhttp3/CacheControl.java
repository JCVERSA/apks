package okhttp3;

import com.lzy.okgo.model.HttpHeaders;
import defpackage.g1a;
import defpackage.j1a;
import defpackage.y45;
import io.appmetrica.analytics.BuildConfig;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.internal.Util;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\u000e\n\u0002\b\u0011\u0018\u0000 !2\u00020\u0001:\u0002 !Bq\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0006\u0012\u0006\u0010\f\u001a\u00020\u0006\u0012\u0006\u0010\r\u001a\u00020\u0003\u0012\u0006\u0010\u000e\u001a\u00020\u0003\u0012\u0006\u0010\u000f\u001a\u00020\u0003\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011¢\u0006\u0002\u0010\u0012J\r\u0010\u000f\u001a\u00020\u0003H\u0007¢\u0006\u0002\b\u0015J\r\u0010\u0005\u001a\u00020\u0006H\u0007¢\u0006\u0002\b\u0016J\r\u0010\u000b\u001a\u00020\u0006H\u0007¢\u0006\u0002\b\u0017J\r\u0010\f\u001a\u00020\u0006H\u0007¢\u0006\u0002\b\u0018J\r\u0010\n\u001a\u00020\u0003H\u0007¢\u0006\u0002\b\u0019J\r\u0010\u0002\u001a\u00020\u0003H\u0007¢\u0006\u0002\b\u001aJ\r\u0010\u0004\u001a\u00020\u0003H\u0007¢\u0006\u0002\b\u001bJ\r\u0010\u000e\u001a\u00020\u0003H\u0007¢\u0006\u0002\b\u001cJ\r\u0010\r\u001a\u00020\u0003H\u0007¢\u0006\u0002\b\u001dJ\r\u0010\u0007\u001a\u00020\u0006H\u0007¢\u0006\u0002\b\u001eJ\b\u0010\u001f\u001a\u00020\u0011H\u0016R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u0013\u0010\u000f\u001a\u00020\u00038\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0013R\u0011\u0010\b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0013R\u0011\u0010\t\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\u0013R\u0013\u0010\u0005\u001a\u00020\u00068\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0014R\u0013\u0010\u000b\u001a\u00020\u00068\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\u0014R\u0013\u0010\f\u001a\u00020\u00068\u0007¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u0014R\u0013\u0010\n\u001a\u00020\u00038\u0007¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u0013R\u0013\u0010\u0002\u001a\u00020\u00038\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0013R\u0013\u0010\u0004\u001a\u00020\u00038\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0004\u0010\u0013R\u0013\u0010\u000e\u001a\u00020\u00038\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u0013R\u0013\u0010\r\u001a\u00020\u00038\u0007¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u0013R\u0013\u0010\u0007\u001a\u00020\u00068\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\u0014¨\u0006\""}, d2 = {"Lokhttp3/CacheControl;", "", "noCache", "", "noStore", "maxAgeSeconds", "", "sMaxAgeSeconds", "isPrivate", "isPublic", "mustRevalidate", "maxStaleSeconds", "minFreshSeconds", "onlyIfCached", "noTransform", "immutable", "headerValue", "", "(ZZIIZZZIIZZZLjava/lang/String;)V", "()Z", "()I", "-deprecated_immutable", "-deprecated_maxAgeSeconds", "-deprecated_maxStaleSeconds", "-deprecated_minFreshSeconds", "-deprecated_mustRevalidate", "-deprecated_noCache", "-deprecated_noStore", "-deprecated_noTransform", "-deprecated_onlyIfCached", "-deprecated_sMaxAgeSeconds", "toString", "Builder", "Companion", "okhttp"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class CacheControl {
    private String headerValue;
    private final boolean immutable;
    private final boolean isPrivate;
    private final boolean isPublic;
    private final int maxAgeSeconds;
    private final int maxStaleSeconds;
    private final int minFreshSeconds;
    private final boolean mustRevalidate;
    private final boolean noCache;
    private final boolean noStore;
    private final boolean noTransform;
    private final boolean onlyIfCached;
    private final int sMaxAgeSeconds;

    public static final Companion INSTANCE = new Companion(null);
    public static final CacheControl FORCE_NETWORK = new Builder().noCache().build();
    public static final CacheControl FORCE_CACHE = new Builder().onlyIfCached().maxStale(Integer.MAX_VALUE, TimeUnit.SECONDS).build();

    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\r\u001a\u00020\u000eJ\u0006\u0010\u0003\u001a\u00020\u0000J\u0016\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0011J\u0016\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0011J\u0016\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0011J\u0006\u0010\t\u001a\u00020\u0000J\u0006\u0010\n\u001a\u00020\u0000J\u0006\u0010\u000b\u001a\u00020\u0000J\u0006\u0010\f\u001a\u00020\u0000J\f\u0010\u0014\u001a\u00020\u0006*\u00020\u0015H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lokhttp3/CacheControl$Builder;", "", "()V", "immutable", "", "maxAgeSeconds", "", "maxStaleSeconds", "minFreshSeconds", "noCache", "noStore", "noTransform", "onlyIfCached", "build", "Lokhttp3/CacheControl;", "maxAge", "timeUnit", "Ljava/util/concurrent/TimeUnit;", "maxStale", "minFresh", "clampToInt", "", "okhttp"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Builder {
        private boolean immutable;
        private int maxAgeSeconds = -1;
        private int maxStaleSeconds = -1;
        private int minFreshSeconds = -1;
        private boolean noCache;
        private boolean noStore;
        private boolean noTransform;
        private boolean onlyIfCached;

        private final int clampToInt(long j) {
            if (j > 2147483647L) {
                return Integer.MAX_VALUE;
            }
            return (int) j;
        }

        public final CacheControl build() {
            return new CacheControl(this.noCache, this.noStore, this.maxAgeSeconds, -1, false, false, false, this.maxStaleSeconds, this.minFreshSeconds, this.onlyIfCached, this.noTransform, this.immutable, null, null);
        }

        public final Builder immutable() {
            this.immutable = true;
            return this;
        }

        public final Builder maxAge(int maxAge, TimeUnit timeUnit) {
            y45.j(timeUnit, "timeUnit");
            if (maxAge >= 0) {
                this.maxAgeSeconds = clampToInt(timeUnit.toSeconds(maxAge));
                return this;
            }
            throw new IllegalArgumentException(("maxAge < 0: " + maxAge).toString());
        }

        public final Builder maxStale(int maxStale, TimeUnit timeUnit) {
            y45.j(timeUnit, "timeUnit");
            if (maxStale >= 0) {
                this.maxStaleSeconds = clampToInt(timeUnit.toSeconds(maxStale));
                return this;
            }
            throw new IllegalArgumentException(("maxStale < 0: " + maxStale).toString());
        }

        public final Builder minFresh(int minFresh, TimeUnit timeUnit) {
            y45.j(timeUnit, "timeUnit");
            if (minFresh >= 0) {
                this.minFreshSeconds = clampToInt(timeUnit.toSeconds(minFresh));
                return this;
            }
            throw new IllegalArgumentException(("minFresh < 0: " + minFresh).toString());
        }

        public final Builder noCache() {
            this.noCache = true;
            return this;
        }

        public final Builder noStore() {
            this.noStore = true;
            return this;
        }

        public final Builder noTransform() {
            this.noTransform = true;
            return this;
        }

        public final Builder onlyIfCached() {
            this.onlyIfCached = true;
            return this;
        }
    }

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\bH\u0007J\u001e\u0010\t\u001a\u00020\n*\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000b2\b\b\u0002\u0010\r\u001a\u00020\nH\u0002R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lokhttp3/CacheControl$Companion;", "", "()V", "FORCE_CACHE", "Lokhttp3/CacheControl;", "FORCE_NETWORK", "parse", "headers", "Lokhttp3/Headers;", "indexOfElement", "", "", "characters", "startIndex", "okhttp"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final int indexOfElement(String str, String str2, int i) {
            int length = str.length();
            while (i < length) {
                if (j1a.W(str2, str.charAt(i), false, 2, null)) {
                    return i;
                }
                i++;
            }
            return str.length();
        }

        public static int indexOfElement$default(Companion companion, String str, String str2, int i, int i2, Object obj) {
            if ((i2 & 2) != 0) {
                i = 0;
            }
            return companion.indexOfElement(str, str2, i);
        }

        /* JADX WARN: Code duplicated, block: B:15:0x004b  */
        /* JADX WARN: Code duplicated, block: B:17:0x0068  */
        /* JADX WARN: Code duplicated, block: B:28:0x00c1  */
        /* JADX WARN: Code duplicated, block: B:32:0x00d0  */
        /* JADX WARN: Code duplicated, block: B:34:0x00d8  */
        /* JADX WARN: Code duplicated, block: B:36:0x00e0  */
        /* JADX WARN: Code duplicated, block: B:37:0x00e5  */
        /* JADX WARN: Code duplicated, block: B:39:0x00ed  */
        /* JADX WARN: Code duplicated, block: B:41:0x00f6  */
        /* JADX WARN: Code duplicated, block: B:43:0x00fe  */
        /* JADX WARN: Code duplicated, block: B:44:0x0104  */
        /* JADX WARN: Code duplicated, block: B:46:0x010c  */
        /* JADX WARN: Code duplicated, block: B:47:0x0111  */
        /* JADX WARN: Code duplicated, block: B:49:0x0119  */
        /* JADX WARN: Code duplicated, block: B:50:0x011e  */
        /* JADX WARN: Code duplicated, block: B:52:0x0126  */
        /* JADX WARN: Code duplicated, block: B:53:0x012c  */
        /* JADX WARN: Code duplicated, block: B:55:0x0134  */
        /* JADX WARN: Code duplicated, block: B:56:0x013c  */
        /* JADX WARN: Code duplicated, block: B:58:0x0144  */
        /* JADX WARN: Code duplicated, block: B:59:0x014a  */
        /* JADX WARN: Code duplicated, block: B:61:0x0153  */
        /* JADX WARN: Code duplicated, block: B:62:0x015a  */
        /* JADX WARN: Code duplicated, block: B:64:0x0162  */
        /* JADX WARN: Code duplicated, block: B:65:0x0169  */
        /* JADX WARN: Code duplicated, block: B:67:0x0171  */
        public final CacheControl parse(Headers headers) {
            int iIndexOfElement;
            int iIndexOfElement2;
            String string;
            int i;
            String string2;
            Headers headers2 = headers;
            y45.j(headers2, "headers");
            int size = headers.size();
            boolean z = true;
            boolean z2 = true;
            int i2 = 0;
            String str = null;
            boolean z3 = false;
            boolean z4 = false;
            int nonNegativeInt = -1;
            int nonNegativeInt2 = -1;
            boolean z5 = false;
            boolean z6 = false;
            boolean z7 = false;
            int nonNegativeInt3 = -1;
            int nonNegativeInt4 = -1;
            boolean z8 = false;
            boolean z9 = false;
            boolean z10 = false;
            while (i2 < size) {
                String strName = headers2.name(i2);
                String strValue = headers2.value(i2);
                if (g1a.E(strName, "Cache-Control", z)) {
                    if (str == null) {
                        str = strValue;
                    }
                    iIndexOfElement = 0;
                    while (iIndexOfElement < strValue.length()) {
                        iIndexOfElement2 = indexOfElement(strValue, "=,;", iIndexOfElement);
                        String strSubstring = strValue.substring(iIndexOfElement, iIndexOfElement2);
                        y45.i(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
                        string = j1a.i1(strSubstring).toString();
                        if (iIndexOfElement2 != strValue.length()) {
                            i = size;
                            if (strValue.charAt(iIndexOfElement2) == ',' && strValue.charAt(iIndexOfElement2) != ';') {
                                int iIndexOfNonWhitespace = Util.indexOfNonWhitespace(strValue, iIndexOfElement2 + 1);
                                if (iIndexOfNonWhitespace >= strValue.length() || strValue.charAt(iIndexOfNonWhitespace) != '\"') {
                                    iIndexOfElement = indexOfElement(strValue, ",;", iIndexOfNonWhitespace);
                                    String strSubstring2 = strValue.substring(iIndexOfNonWhitespace, iIndexOfElement);
                                    y45.i(strSubstring2, "this as java.lang.String…ing(startIndex, endIndex)");
                                    string2 = j1a.i1(strSubstring2).toString();
                                } else {
                                    int i3 = iIndexOfNonWhitespace + 1;
                                    int iL0 = j1a.l0(strValue, '\"', i3, false, 4, null);
                                    string2 = strValue.substring(i3, iL0);
                                    y45.i(string2, "this as java.lang.String…ing(startIndex, endIndex)");
                                    iIndexOfElement = iL0 + 1;
                                }
                            }
                            z = true;
                            if (g1a.E("no-cache", string, true)) {
                                z3 = true;
                            } else if (g1a.E("no-store", string, true)) {
                                z4 = true;
                            } else if (g1a.E("max-age", string, true)) {
                                nonNegativeInt = Util.toNonNegativeInt(string2, -1);
                            } else if (g1a.E("s-maxage", string, true)) {
                                nonNegativeInt2 = Util.toNonNegativeInt(string2, -1);
                            } else if (g1a.E("private", string, true)) {
                                z5 = true;
                            } else if (g1a.E(BuildConfig.SDK_BUILD_FLAVOR, string, true)) {
                                z6 = true;
                            } else if (g1a.E("must-revalidate", string, true)) {
                                z7 = true;
                            } else if (g1a.E("max-stale", string, true)) {
                                nonNegativeInt3 = Util.toNonNegativeInt(string2, Integer.MAX_VALUE);
                            } else if (g1a.E("min-fresh", string, true)) {
                                nonNegativeInt4 = Util.toNonNegativeInt(string2, -1);
                            } else if (g1a.E("only-if-cached", string, true)) {
                                z8 = true;
                            } else if (g1a.E("no-transform", string, true)) {
                                z9 = true;
                            } else if (g1a.E("immutable", string, true)) {
                                z10 = true;
                            }
                            size = i;
                        } else {
                            i = size;
                        }
                        iIndexOfElement = iIndexOfElement2 + 1;
                        string2 = null;
                        z = true;
                        if (g1a.E("no-cache", string, true)) {
                            z3 = true;
                        } else if (g1a.E("no-store", string, true)) {
                            z4 = true;
                        } else if (g1a.E("max-age", string, true)) {
                            nonNegativeInt = Util.toNonNegativeInt(string2, -1);
                        } else if (g1a.E("s-maxage", string, true)) {
                            nonNegativeInt2 = Util.toNonNegativeInt(string2, -1);
                        } else if (g1a.E("private", string, true)) {
                            z5 = true;
                        } else if (g1a.E(BuildConfig.SDK_BUILD_FLAVOR, string, true)) {
                            z6 = true;
                        } else if (g1a.E("must-revalidate", string, true)) {
                            z7 = true;
                        } else if (g1a.E("max-stale", string, true)) {
                            nonNegativeInt3 = Util.toNonNegativeInt(string2, Integer.MAX_VALUE);
                        } else if (g1a.E("min-fresh", string, true)) {
                            nonNegativeInt4 = Util.toNonNegativeInt(string2, -1);
                        } else if (g1a.E("only-if-cached", string, true)) {
                            z8 = true;
                        } else if (g1a.E("no-transform", string, true)) {
                            z9 = true;
                        } else if (g1a.E("immutable", string, true)) {
                            z10 = true;
                        }
                        size = i;
                    }
                    i2++;
                    headers2 = headers;
                    size = size;
                } else {
                    if (g1a.E(strName, HttpHeaders.HEAD_KEY_PRAGMA, z)) {
                    }
                    i2++;
                    headers2 = headers;
                    size = size;
                }
                z2 = false;
                iIndexOfElement = 0;
                while (iIndexOfElement < strValue.length()) {
                    iIndexOfElement2 = indexOfElement(strValue, "=,;", iIndexOfElement);
                    String strSubstring3 = strValue.substring(iIndexOfElement, iIndexOfElement2);
                    y45.i(strSubstring3, "this as java.lang.String…ing(startIndex, endIndex)");
                    string = j1a.i1(strSubstring3).toString();
                    if (iIndexOfElement2 != strValue.length()) {
                        i = size;
                        if (strValue.charAt(iIndexOfElement2) == ',') {
                        }
                        z = true;
                        if (g1a.E("no-cache", string, true)) {
                            z3 = true;
                        } else if (g1a.E("no-store", string, true)) {
                            z4 = true;
                        } else if (g1a.E("max-age", string, true)) {
                            nonNegativeInt = Util.toNonNegativeInt(string2, -1);
                        } else if (g1a.E("s-maxage", string, true)) {
                            nonNegativeInt2 = Util.toNonNegativeInt(string2, -1);
                        } else if (g1a.E("private", string, true)) {
                            z5 = true;
                        } else if (g1a.E(BuildConfig.SDK_BUILD_FLAVOR, string, true)) {
                            z6 = true;
                        } else if (g1a.E("must-revalidate", string, true)) {
                            z7 = true;
                        } else if (g1a.E("max-stale", string, true)) {
                            nonNegativeInt3 = Util.toNonNegativeInt(string2, Integer.MAX_VALUE);
                        } else if (g1a.E("min-fresh", string, true)) {
                            nonNegativeInt4 = Util.toNonNegativeInt(string2, -1);
                        } else if (g1a.E("only-if-cached", string, true)) {
                            z8 = true;
                        } else if (g1a.E("no-transform", string, true)) {
                            z9 = true;
                        } else if (g1a.E("immutable", string, true)) {
                            z10 = true;
                        }
                        size = i;
                    } else {
                        i = size;
                    }
                    iIndexOfElement = iIndexOfElement2 + 1;
                    string2 = null;
                    z = true;
                    if (g1a.E("no-cache", string, true)) {
                        z3 = true;
                    } else if (g1a.E("no-store", string, true)) {
                        z4 = true;
                    } else if (g1a.E("max-age", string, true)) {
                        nonNegativeInt = Util.toNonNegativeInt(string2, -1);
                    } else if (g1a.E("s-maxage", string, true)) {
                        nonNegativeInt2 = Util.toNonNegativeInt(string2, -1);
                    } else if (g1a.E("private", string, true)) {
                        z5 = true;
                    } else if (g1a.E(BuildConfig.SDK_BUILD_FLAVOR, string, true)) {
                        z6 = true;
                    } else if (g1a.E("must-revalidate", string, true)) {
                        z7 = true;
                    } else if (g1a.E("max-stale", string, true)) {
                        nonNegativeInt3 = Util.toNonNegativeInt(string2, Integer.MAX_VALUE);
                    } else if (g1a.E("min-fresh", string, true)) {
                        nonNegativeInt4 = Util.toNonNegativeInt(string2, -1);
                    } else if (g1a.E("only-if-cached", string, true)) {
                        z8 = true;
                    } else if (g1a.E("no-transform", string, true)) {
                        z9 = true;
                    } else if (g1a.E("immutable", string, true)) {
                        z10 = true;
                    }
                    size = i;
                }
                i2++;
                headers2 = headers;
                size = size;
            }
            return new CacheControl(z3, z4, nonNegativeInt, nonNegativeInt2, z5, z6, z7, nonNegativeInt3, nonNegativeInt4, z8, z9, z10, !z2 ? null : str, null);
        }

        private Companion() {
        }
    }

    public CacheControl(boolean z, boolean z2, int i, int i2, boolean z3, boolean z4, boolean z5, int i3, int i4, boolean z6, boolean z7, boolean z8, String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(z, z2, i, i2, z3, z4, z5, i3, i4, z6, z7, z8, str);
    }

    public static final CacheControl parse(Headers headers) {
        return INSTANCE.parse(headers);
    }

    public final boolean getImmutable() {
        return this.immutable;
    }

    public final int getMaxAgeSeconds() {
        return this.maxAgeSeconds;
    }

    public final int getMaxStaleSeconds() {
        return this.maxStaleSeconds;
    }

    public final int getMinFreshSeconds() {
        return this.minFreshSeconds;
    }

    public final boolean getMustRevalidate() {
        return this.mustRevalidate;
    }

    public final boolean getNoCache() {
        return this.noCache;
    }

    public final boolean getNoStore() {
        return this.noStore;
    }

    public final boolean getNoTransform() {
        return this.noTransform;
    }

    public final boolean getOnlyIfCached() {
        return this.onlyIfCached;
    }

    public final int getSMaxAgeSeconds() {
        return this.sMaxAgeSeconds;
    }

    public final boolean immutable() {
        return this.immutable;
    }

    public final boolean getIsPrivate() {
        return this.isPrivate;
    }

    public final boolean getIsPublic() {
        return this.isPublic;
    }

    public final int maxAgeSeconds() {
        return this.maxAgeSeconds;
    }

    public final int maxStaleSeconds() {
        return this.maxStaleSeconds;
    }

    public final int minFreshSeconds() {
        return this.minFreshSeconds;
    }

    public final boolean mustRevalidate() {
        return this.mustRevalidate;
    }

    public final boolean noCache() {
        return this.noCache;
    }

    public final boolean noStore() {
        return this.noStore;
    }

    public final boolean noTransform() {
        return this.noTransform;
    }

    public final boolean onlyIfCached() {
        return this.onlyIfCached;
    }

    public final int sMaxAgeSeconds() {
        return this.sMaxAgeSeconds;
    }

    public String toString() {
        String str = this.headerValue;
        if (str != null) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        if (this.noCache) {
            sb.append("no-cache, ");
        }
        if (this.noStore) {
            sb.append("no-store, ");
        }
        if (this.maxAgeSeconds != -1) {
            sb.append("max-age=");
            sb.append(this.maxAgeSeconds);
            sb.append(", ");
        }
        if (this.sMaxAgeSeconds != -1) {
            sb.append("s-maxage=");
            sb.append(this.sMaxAgeSeconds);
            sb.append(", ");
        }
        if (this.isPrivate) {
            sb.append("private, ");
        }
        if (this.isPublic) {
            sb.append("public, ");
        }
        if (this.mustRevalidate) {
            sb.append("must-revalidate, ");
        }
        if (this.maxStaleSeconds != -1) {
            sb.append("max-stale=");
            sb.append(this.maxStaleSeconds);
            sb.append(", ");
        }
        if (this.minFreshSeconds != -1) {
            sb.append("min-fresh=");
            sb.append(this.minFreshSeconds);
            sb.append(", ");
        }
        if (this.onlyIfCached) {
            sb.append("only-if-cached, ");
        }
        if (this.noTransform) {
            sb.append("no-transform, ");
        }
        if (this.immutable) {
            sb.append("immutable, ");
        }
        if (sb.length() == 0) {
            return "";
        }
        sb.delete(sb.length() - 2, sb.length());
        String string = sb.toString();
        y45.i(string, "StringBuilder().apply(builderAction).toString()");
        this.headerValue = string;
        return string;
    }

    private CacheControl(boolean z, boolean z2, int i, int i2, boolean z3, boolean z4, boolean z5, int i3, int i4, boolean z6, boolean z7, boolean z8, String str) {
        this.noCache = z;
        this.noStore = z2;
        this.maxAgeSeconds = i;
        this.sMaxAgeSeconds = i2;
        this.isPrivate = z3;
        this.isPublic = z4;
        this.mustRevalidate = z5;
        this.maxStaleSeconds = i3;
        this.minFreshSeconds = i4;
        this.onlyIfCached = z6;
        this.noTransform = z7;
        this.immutable = z8;
        this.headerValue = str;
    }
}
