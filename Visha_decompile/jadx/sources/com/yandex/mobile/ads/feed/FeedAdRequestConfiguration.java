package com.yandex.mobile.ads.feed;

import android.location.Location;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import defpackage.y45;
import java.util.List;
import java.util.Map;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010$\n\u0002\b\t\u0018\u00002\u00020\u0001:\u0001,B]\u0012\u0006\u0010\u000e\u001a\u00020\t\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u0017\u001a\u0004\u0018\u00010\t\u0012\u000e\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0018\u0012\b\u0010#\u001a\u0004\u0018\u00010\u001e\u0012\u0014\u0010)\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t\u0018\u00010$¢\u0006\u0004\b*\u0010+J\u001a\u0010\u0004\u001a\u00020\u00032\b\u0010\u0002\u001a\u0004\u0018\u00010\u0001H\u0096\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0007\u0010\bR\u0017\u0010\u000e\u001a\u00020\t8\u0006¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\rR\u0019\u0010\u0011\u001a\u0004\u0018\u00010\t8\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u000b\u001a\u0004\b\u0010\u0010\rR\u0019\u0010\u0014\u001a\u0004\u0018\u00010\t8\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u000b\u001a\u0004\b\u0013\u0010\rR\u0019\u0010\u0017\u001a\u0004\u0018\u00010\t8\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u000b\u001a\u0004\b\u0016\u0010\rR\u001f\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u00188\u0006¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001cR\u0019\u0010#\u001a\u0004\u0018\u00010\u001e8\u0006¢\u0006\f\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"R%\u0010)\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t\u0018\u00010$8\u0006¢\u0006\f\n\u0004\b%\u0010&\u001a\u0004\b'\u0010(¨\u0006-"}, d2 = {"Lcom/yandex/mobile/ads/feed/FeedAdRequestConfiguration;", "", "o", "", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "Ljava/lang/String;", "getAdUnitId", "()Ljava/lang/String;", "adUnitId", "b", "getAge", "age", "c", "getGender", "gender", "d", "getContextQuery", "contextQuery", "", "e", "Ljava/util/List;", "getContextTags", "()Ljava/util/List;", "contextTags", "Landroid/location/Location;", "f", "Landroid/location/Location;", "getLocation", "()Landroid/location/Location;", "location", "", GslbInterceptor.HEADER_KEY_GSLB, "Ljava/util/Map;", "getParameters", "()Ljava/util/Map;", "parameters", MethodDecl.initName, "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/location/Location;Ljava/util/Map;)V", "Builder", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0})
public final class FeedAdRequestConfiguration {

    private final String adUnitId;

    private final String age;

    private final String gender;

    private final String contextQuery;

    private final List<String> contextTags;

    private final Location location;

    private final Map<String, String> parameters;

    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0019\u001a\u00020\u0005¢\u0006\u0004\b\u001a\u0010\u001bJ\r\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\n\u001a\u00020\u00002\b\u0010\t\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\n\u0010\bJ\u001d\u0010\r\u001a\u00020\u00002\u000e\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u000b¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u0010\u001a\u00020\u00002\b\u0010\u000f\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0010\u0010\bJ\u0017\u0010\u0013\u001a\u00020\u00002\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011¢\u0006\u0004\b\u0013\u0010\u0014J#\u0010\u0017\u001a\u00020\u00002\u0014\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0015¢\u0006\u0004\b\u0017\u0010\u0018¨\u0006\u001c"}, d2 = {"Lcom/yandex/mobile/ads/feed/FeedAdRequestConfiguration$Builder;", "", "Lcom/yandex/mobile/ads/feed/FeedAdRequestConfiguration;", "build", "()Lcom/yandex/mobile/ads/feed/FeedAdRequestConfiguration;", "", "age", "setAge", "(Ljava/lang/String;)Lcom/yandex/mobile/ads/feed/FeedAdRequestConfiguration$Builder;", "contextQuery", "setContextQuery", "", "contextTags", "setContextTags", "(Ljava/util/List;)Lcom/yandex/mobile/ads/feed/FeedAdRequestConfiguration$Builder;", "gender", "setGender", "Landroid/location/Location;", "location", "setLocation", "(Landroid/location/Location;)Lcom/yandex/mobile/ads/feed/FeedAdRequestConfiguration$Builder;", "", "parameters", "setParameters", "(Ljava/util/Map;)Lcom/yandex/mobile/ads/feed/FeedAdRequestConfiguration$Builder;", "adUnitId", MethodDecl.initName, "(Ljava/lang/String;)V", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0})
    public static final class Builder {
        private final String a;
        private String b;
        private String c;
        private String d;
        private List<String> e;
        private Location f;
        private Map<String, String> g;

        public Builder(String str) {
            y45.j(str, "adUnitId");
            this.a = str;
        }

        public final FeedAdRequestConfiguration build() {
            return new FeedAdRequestConfiguration(this.a, this.b, this.c, this.d, this.e, this.f, this.g);
        }

        public final Builder setAge(String age) {
            this.b = age;
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
            this.c = gender;
            return this;
        }

        public final Builder setLocation(Location location) {
            this.f = location;
            return this;
        }

        public final Builder setParameters(Map<String, String> parameters) {
            this.g = parameters;
            return this;
        }
    }

    public FeedAdRequestConfiguration(String str, String str2, String str3, String str4, List<String> list, Location location, Map<String, String> map) {
        y45.j(str, "adUnitId");
        this.adUnitId = str;
        this.age = str2;
        this.gender = str3;
        this.contextQuery = str4;
        this.contextTags = list;
        this.location = location;
        this.parameters = map;
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || !y45.e(FeedAdRequestConfiguration.class, o.getClass())) {
            return false;
        }
        FeedAdRequestConfiguration feedAdRequestConfiguration = (FeedAdRequestConfiguration) o;
        return y45.e(this.adUnitId, feedAdRequestConfiguration.adUnitId) && y45.e(this.age, feedAdRequestConfiguration.age) && y45.e(this.gender, feedAdRequestConfiguration.gender) && y45.e(this.contextQuery, feedAdRequestConfiguration.contextQuery) && y45.e(this.contextTags, feedAdRequestConfiguration.contextTags) && y45.e(this.location, feedAdRequestConfiguration.location) && y45.e(this.parameters, feedAdRequestConfiguration.parameters);
    }

    public final String getAdUnitId() {
        return this.adUnitId;
    }

    public final String getAge() {
        return this.age;
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

    public int hashCode() {
        int iHashCode = this.adUnitId.hashCode() * 31;
        String str = this.age;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.gender;
        int iHashCode3 = (iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.contextQuery;
        int iHashCode4 = (iHashCode3 + (str3 != null ? str3.hashCode() : 0)) * 31;
        List<String> list = this.contextTags;
        int iHashCode5 = (iHashCode4 + (list != null ? list.hashCode() : 0)) * 31;
        Location location = this.location;
        int iHashCode6 = (iHashCode5 + (location != null ? location.hashCode() : 0)) * 31;
        Map<String, String> map = this.parameters;
        return iHashCode6 + (map != null ? map.hashCode() : 0);
    }
}
