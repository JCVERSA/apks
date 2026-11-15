package com.yandex.mobile.ads.nativeads;

import android.location.Location;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import com.yandex.mobile.ads.common.AdTheme;
import defpackage.y45;
import java.util.List;
import java.util.Map;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010$\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0007\u0018\u00002\u00020\u0001:\u00012R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0019\u0010\n\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\b\u0010\u0004\u001a\u0004\b\t\u0010\u0006R\u0019\u0010\r\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u0004\u001a\u0004\b\f\u0010\u0006R\u0019\u0010\u0010\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u0004\u001a\u0004\b\u000f\u0010\u0006R\u001f\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00118\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u0019\u0010\u001c\u001a\u0004\u0018\u00010\u00178\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR%\u0010\"\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u001d8\u0006¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!R\u0019\u0010%\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b#\u0010\u0004\u001a\u0004\b$\u0010\u0006R\u0019\u0010+\u001a\u0004\u0018\u00010&8\u0006¢\u0006\f\n\u0004\b'\u0010(\u001a\u0004\b)\u0010*R\u0017\u00101\u001a\u00020,8\u0006¢\u0006\f\n\u0004\b-\u0010.\u001a\u0004\b/\u00100¨\u00063"}, d2 = {"Lcom/yandex/mobile/ads/nativeads/NativeAdRequestConfiguration;", "", "", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "Ljava/lang/String;", "getAdUnitId", "()Ljava/lang/String;", "adUnitId", "b", "getAge", "age", "c", "getGender", "gender", "d", "getContextQuery", "contextQuery", "", "e", "Ljava/util/List;", "getContextTags", "()Ljava/util/List;", "contextTags", "Landroid/location/Location;", "f", "Landroid/location/Location;", "getLocation", "()Landroid/location/Location;", "location", "", GslbInterceptor.HEADER_KEY_GSLB, "Ljava/util/Map;", "getParameters", "()Ljava/util/Map;", "parameters", CmcdData.STREAMING_FORMAT_HLS, "getBiddingData", "biddingData", "Lcom/yandex/mobile/ads/common/AdTheme;", CmcdData.OBJECT_TYPE_INIT_SEGMENT, "Lcom/yandex/mobile/ads/common/AdTheme;", "getPreferredTheme", "()Lcom/yandex/mobile/ads/common/AdTheme;", "preferredTheme", "", "j", "Z", "getShouldLoadImagesAutomatically", "()Z", "shouldLoadImagesAutomatically", "Builder", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0})
public final class NativeAdRequestConfiguration {

    private final String adUnitId;

    private final String age;

    private final String gender;

    private final String contextQuery;

    private final List<String> contextTags;

    private final Location location;

    private final Map<String, String> parameters;

    private final String biddingData;

    private final AdTheme preferredTheme;

    private final boolean shouldLoadImagesAutomatically;

    @Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010#\u001a\u00020\t¢\u0006\u0004\b$\u0010%J\r\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0015\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u0015\u0010\u000b\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fJ\u0015\u0010\u000e\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\t¢\u0006\u0004\b\u000e\u0010\fJ\u001b\u0010\u0011\u001a\u00020\u00002\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\t0\u000f¢\u0006\u0004\b\u0011\u0010\u0012J\u0015\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\t¢\u0006\u0004\b\u0014\u0010\fJ\u0015\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u0015¢\u0006\u0004\b\u0017\u0010\u0018J!\u0010\u001b\u001a\u00020\u00002\u0012\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\u0019¢\u0006\u0004\b\u001b\u0010\u001cJ\u0015\u0010\u001e\u001a\u00020\u00002\u0006\u0010\u001d\u001a\u00020\t¢\u0006\u0004\b\u001e\u0010\fJ\u0015\u0010!\u001a\u00020\u00002\u0006\u0010 \u001a\u00020\u001f¢\u0006\u0004\b!\u0010\"¨\u0006&"}, d2 = {"Lcom/yandex/mobile/ads/nativeads/NativeAdRequestConfiguration$Builder;", "", "Lcom/yandex/mobile/ads/nativeads/NativeAdRequestConfiguration;", "build", "()Lcom/yandex/mobile/ads/nativeads/NativeAdRequestConfiguration;", "", "shouldLoadImagesAutomatically", "setShouldLoadImagesAutomatically", "(Z)Lcom/yandex/mobile/ads/nativeads/NativeAdRequestConfiguration$Builder;", "", "age", "setAge", "(Ljava/lang/String;)Lcom/yandex/mobile/ads/nativeads/NativeAdRequestConfiguration$Builder;", "contextQuery", "setContextQuery", "", "contextTags", "setContextTags", "(Ljava/util/List;)Lcom/yandex/mobile/ads/nativeads/NativeAdRequestConfiguration$Builder;", "gender", "setGender", "Landroid/location/Location;", "location", "setLocation", "(Landroid/location/Location;)Lcom/yandex/mobile/ads/nativeads/NativeAdRequestConfiguration$Builder;", "", "parameters", "setParameters", "(Ljava/util/Map;)Lcom/yandex/mobile/ads/nativeads/NativeAdRequestConfiguration$Builder;", "biddingData", "setBiddingData", "Lcom/yandex/mobile/ads/common/AdTheme;", "preferredTheme", "setPreferredTheme", "(Lcom/yandex/mobile/ads/common/AdTheme;)Lcom/yandex/mobile/ads/nativeads/NativeAdRequestConfiguration$Builder;", "adUnitId", MethodDecl.initName, "(Ljava/lang/String;)V", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0})
    public static final class Builder {
        private final String a;
        private String b;
        private String c;
        private Location d;
        private String e;
        private List<String> f;
        private Map<String, String> g;
        private String h;
        private AdTheme i;
        private boolean j;

        public Builder(String str) {
            y45.j(str, "adUnitId");
            this.a = str;
            this.j = true;
        }

        public final NativeAdRequestConfiguration build() {
            return new NativeAdRequestConfiguration(this.a, this.b, this.c, this.e, this.f, this.d, this.g, this.h, this.i, this.j, null);
        }

        public final Builder setAge(String age) {
            y45.j(age, "age");
            this.b = age;
            return this;
        }

        public final Builder setBiddingData(String biddingData) {
            y45.j(biddingData, "biddingData");
            this.h = biddingData;
            return this;
        }

        public final Builder setContextQuery(String contextQuery) {
            y45.j(contextQuery, "contextQuery");
            this.e = contextQuery;
            return this;
        }

        public final Builder setContextTags(List<String> contextTags) {
            y45.j(contextTags, "contextTags");
            this.f = contextTags;
            return this;
        }

        public final Builder setGender(String gender) {
            y45.j(gender, "gender");
            this.c = gender;
            return this;
        }

        public final Builder setLocation(Location location) {
            y45.j(location, "location");
            this.d = location;
            return this;
        }

        public final Builder setParameters(Map<String, String> parameters) {
            y45.j(parameters, "parameters");
            this.g = parameters;
            return this;
        }

        public final Builder setPreferredTheme(AdTheme preferredTheme) {
            y45.j(preferredTheme, "preferredTheme");
            this.i = preferredTheme;
            return this;
        }

        public final Builder setShouldLoadImagesAutomatically(boolean shouldLoadImagesAutomatically) {
            this.j = shouldLoadImagesAutomatically;
            return this;
        }
    }

    public NativeAdRequestConfiguration(String str, String str2, String str3, String str4, List list, Location location, Map map, String str5, AdTheme adTheme, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, str4, list, location, map, str5, adTheme, z);
    }

    public final String getAdUnitId() {
        return this.adUnitId;
    }

    public final String getAge() {
        return this.age;
    }

    public final String getBiddingData() {
        return this.biddingData;
    }

    public final String getContextQuery() {
        return this.contextQuery;
    }

    public final List<String> getContextTags() {
        return this.contextTags;
    }

    public final String getGender() {
        return this.gender;
    }

    public final Location getLocation() {
        return this.location;
    }

    public final Map<String, String> getParameters() {
        return this.parameters;
    }

    public final AdTheme getPreferredTheme() {
        return this.preferredTheme;
    }

    public final boolean getShouldLoadImagesAutomatically() {
        return this.shouldLoadImagesAutomatically;
    }

    private NativeAdRequestConfiguration(String str, String str2, String str3, String str4, List<String> list, Location location, Map<String, String> map, String str5, AdTheme adTheme, boolean z) {
        this.adUnitId = str;
        this.age = str2;
        this.gender = str3;
        this.contextQuery = str4;
        this.contextTags = list;
        this.location = location;
        this.parameters = map;
        this.biddingData = str5;
        this.preferredTheme = adTheme;
        this.shouldLoadImagesAutomatically = z;
    }
}
