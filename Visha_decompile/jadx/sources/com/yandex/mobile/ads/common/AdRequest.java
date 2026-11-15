package com.yandex.mobile.ads.common;

import android.location.Location;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import defpackage.y45;
import java.util.List;
import java.util.Map;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0010$\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001:\u00010J\u001a\u0010\u0004\u001a\u00020\u00032\b\u0010\u0002\u001a\u0004\u0018\u00010\u0001H\u0096\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u000e\u001a\u0004\u0018\u00010\t8\u0006¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\rR\u0019\u0010\u0011\u001a\u0004\u0018\u00010\t8\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u000b\u001a\u0004\b\u0010\u0010\rR\u0019\u0010\u0017\u001a\u0004\u0018\u00010\u00128\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\u0019\u0010\u001a\u001a\u0004\u0018\u00010\t8\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u000b\u001a\u0004\b\u0019\u0010\rR\u001f\u0010 \u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u001b8\u0006¢\u0006\f\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001fR%\u0010&\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t\u0018\u00010!8\u0006¢\u0006\f\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%R\u0019\u0010)\u001a\u0004\u0018\u00010\t8\u0006¢\u0006\f\n\u0004\b'\u0010\u000b\u001a\u0004\b(\u0010\rR\u0019\u0010/\u001a\u0004\u0018\u00010*8\u0006¢\u0006\f\n\u0004\b+\u0010,\u001a\u0004\b-\u0010.¨\u00061"}, d2 = {"Lcom/yandex/mobile/ads/common/AdRequest;", "", "o", "", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "Ljava/lang/String;", "getAge", "()Ljava/lang/String;", "age", "b", "getGender", "gender", "Landroid/location/Location;", "c", "Landroid/location/Location;", "getLocation", "()Landroid/location/Location;", "location", "d", "getContextQuery", "contextQuery", "", "e", "Ljava/util/List;", "getContextTags", "()Ljava/util/List;", "contextTags", "", "f", "Ljava/util/Map;", "getParameters", "()Ljava/util/Map;", "parameters", GslbInterceptor.HEADER_KEY_GSLB, "getBiddingData", "biddingData", "Lcom/yandex/mobile/ads/common/AdTheme;", CmcdData.STREAMING_FORMAT_HLS, "Lcom/yandex/mobile/ads/common/AdTheme;", "getPreferredTheme", "()Lcom/yandex/mobile/ads/common/AdTheme;", "preferredTheme", "Builder", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0})
public final class AdRequest {

    private final String age;

    private final String gender;

    private final Location location;

    private final String contextQuery;

    private final List<String> contextTags;

    private final Map<String, String> parameters;

    private final String biddingData;

    private final AdTheme preferredTheme;

    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u001f\u0010 J\r\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\n\u001a\u00020\u00002\b\u0010\t\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\n\u0010\bJ\u001d\u0010\r\u001a\u00020\u00002\u000e\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u000b¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u0010\u001a\u00020\u00002\b\u0010\u000f\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0010\u0010\bJ\u0017\u0010\u0013\u001a\u00020\u00002\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011¢\u0006\u0004\b\u0013\u0010\u0014J#\u0010\u0017\u001a\u00020\u00002\u0014\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0015¢\u0006\u0004\b\u0017\u0010\u0018J\u0017\u0010\u001a\u001a\u00020\u00002\b\u0010\u0019\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u001a\u0010\bJ\u0017\u0010\u001d\u001a\u00020\u00002\b\u0010\u001c\u001a\u0004\u0018\u00010\u001b¢\u0006\u0004\b\u001d\u0010\u001e¨\u0006!"}, d2 = {"Lcom/yandex/mobile/ads/common/AdRequest$Builder;", "", "Lcom/yandex/mobile/ads/common/AdRequest;", "build", "()Lcom/yandex/mobile/ads/common/AdRequest;", "", "age", "setAge", "(Ljava/lang/String;)Lcom/yandex/mobile/ads/common/AdRequest$Builder;", "contextQuery", "setContextQuery", "", "contextTags", "setContextTags", "(Ljava/util/List;)Lcom/yandex/mobile/ads/common/AdRequest$Builder;", "gender", "setGender", "Landroid/location/Location;", "location", "setLocation", "(Landroid/location/Location;)Lcom/yandex/mobile/ads/common/AdRequest$Builder;", "", "parameters", "setParameters", "(Ljava/util/Map;)Lcom/yandex/mobile/ads/common/AdRequest$Builder;", "biddingData", "setBiddingData", "Lcom/yandex/mobile/ads/common/AdTheme;", "preferredTheme", "setPreferredTheme", "(Lcom/yandex/mobile/ads/common/AdTheme;)Lcom/yandex/mobile/ads/common/AdRequest$Builder;", MethodDecl.initName, "()V", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0})
    public static final class Builder {
        private String a;
        private String b;
        private Location c;
        private String d;
        private List<String> e;
        private Map<String, String> f;
        private String g;
        private AdTheme h;

        public final AdRequest build() {
            return new AdRequest(this.a, this.b, this.c, this.d, this.e, this.f, this.g, this.h, null);
        }

        public final Builder setAge(String age) {
            this.a = age;
            return this;
        }

        public final Builder setBiddingData(String biddingData) {
            this.g = biddingData;
            return this;
        }

        public final Builder setContextQuery(String contextQuery) {
            this.d = contextQuery;
            return this;
        }

        public final Builder setContextTags(List<String> contextTags) {
            this.e = contextTags;
            return this;
        }

        public final Builder setGender(String gender) {
            this.b = gender;
            return this;
        }

        public final Builder setLocation(Location location) {
            this.c = location;
            return this;
        }

        public final Builder setParameters(Map<String, String> parameters) {
            this.f = parameters;
            return this;
        }

        public final Builder setPreferredTheme(AdTheme preferredTheme) {
            this.h = preferredTheme;
            return this;
        }
    }

    public AdRequest(String str, String str2, Location location, String str3, List list, Map map, String str4, AdTheme adTheme, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, location, str3, list, map, str4, adTheme);
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || !y45.e(AdRequest.class, o.getClass())) {
            return false;
        }
        AdRequest adRequest = (AdRequest) o;
        if (y45.e(this.age, adRequest.age) && y45.e(this.gender, adRequest.gender) && y45.e(this.contextQuery, adRequest.contextQuery) && y45.e(this.contextTags, adRequest.contextTags) && y45.e(this.location, adRequest.location) && y45.e(this.parameters, adRequest.parameters)) {
            return y45.e(this.biddingData, adRequest.biddingData) && this.preferredTheme == adRequest.preferredTheme;
        }
        return false;
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

    public int hashCode() {
        String str = this.age;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.gender;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.contextQuery;
        int iHashCode3 = (iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        List<String> list = this.contextTags;
        int iHashCode4 = (iHashCode3 + (list != null ? list.hashCode() : 0)) * 31;
        Location location = this.location;
        int iHashCode5 = (iHashCode4 + (location != null ? location.hashCode() : 0)) * 31;
        Map<String, String> map = this.parameters;
        int iHashCode6 = (iHashCode5 + (map != null ? map.hashCode() : 0)) * 31;
        String str4 = this.biddingData;
        int iHashCode7 = (iHashCode6 + (str4 != null ? str4.hashCode() : 0)) * 31;
        AdTheme adTheme = this.preferredTheme;
        return iHashCode7 + (adTheme != null ? adTheme.hashCode() : 0);
    }

    private AdRequest(String str, String str2, Location location, String str3, List<String> list, Map<String, String> map, String str4, AdTheme adTheme) {
        this.age = str;
        this.gender = str2;
        this.location = location;
        this.contextQuery = str3;
        this.contextTags = list;
        this.parameters = map;
        this.biddingData = str4;
        this.preferredTheme = adTheme;
    }
}
