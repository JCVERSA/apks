package com.transsion.subtitle.bean;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Keep
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0016\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B;\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\n\u0010\u000bJ\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\bHÆ\u0003J\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0014JN\u0010\u001c\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010\u001dJ\u0013\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010!\u001a\u00020\u0003HÖ\u0001J\t\u0010\"\u001a\u00020\bHÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\rR\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\rR\u0016\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\rR\u0018\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u001a\u0010\t\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0015\u001a\u0004\b\u0013\u0010\u0014¨\u0006#"}, d2 = {"Lcom/transsion/subtitle/bean/OpenSubtitleFeatureDetails;", "", "featureId", "", "year", "se", "ep", "movieName", "", "imdbId", "<init>", "(IIIILjava/lang/String;Ljava/lang/Integer;)V", "getFeatureId", "()I", "getYear", "getSe", "getEp", "getMovieName", "()Ljava/lang/String;", "getImdbId", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "(IIIILjava/lang/String;Ljava/lang/Integer;)Lcom/transsion/subtitle/bean/OpenSubtitleFeatureDetails;", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "toString", "VideoSubtitle_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class OpenSubtitleFeatureDetails {

    @SerializedName("episode_number")
    private final int ep;

    @SerializedName("feature_id")
    private final int featureId;

    @SerializedName("imdb_id")
    private final Integer imdbId;

    @SerializedName("movie_name")
    private final String movieName;

    @SerializedName("season_number")
    private final int se;
    private final int year;

    public OpenSubtitleFeatureDetails(int i10, int i11, int i12, int i13, String str, Integer num) {
        this.featureId = i10;
        this.year = i11;
        this.se = i12;
        this.ep = i13;
        this.movieName = str;
        this.imdbId = num;
    }

    public static OpenSubtitleFeatureDetails copy$default(OpenSubtitleFeatureDetails openSubtitleFeatureDetails, int i10, int i11, int i12, int i13, String str, Integer num, int i14, Object obj) {
        if ((i14 & 1) != 0) {
            i10 = openSubtitleFeatureDetails.featureId;
        }
        if ((i14 & 2) != 0) {
            i11 = openSubtitleFeatureDetails.year;
        }
        int i15 = i11;
        if ((i14 & 4) != 0) {
            i12 = openSubtitleFeatureDetails.se;
        }
        int i16 = i12;
        if ((i14 & 8) != 0) {
            i13 = openSubtitleFeatureDetails.ep;
        }
        int i17 = i13;
        if ((i14 & 16) != 0) {
            str = openSubtitleFeatureDetails.movieName;
        }
        String str2 = str;
        if ((i14 & 32) != 0) {
            num = openSubtitleFeatureDetails.imdbId;
        }
        return openSubtitleFeatureDetails.copy(i10, i15, i16, i17, str2, num);
    }

    public final int getFeatureId() {
        return this.featureId;
    }

    public final int getYear() {
        return this.year;
    }

    public final int getSe() {
        return this.se;
    }

    public final int getEp() {
        return this.ep;
    }

    public final String getMovieName() {
        return this.movieName;
    }

    public final Integer getImdbId() {
        return this.imdbId;
    }

    public final OpenSubtitleFeatureDetails copy(int featureId, int year, int se2, int ep2, String movieName, Integer imdbId) {
        return new OpenSubtitleFeatureDetails(featureId, year, se2, ep2, movieName, imdbId);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof OpenSubtitleFeatureDetails)) {
            return false;
        }
        OpenSubtitleFeatureDetails openSubtitleFeatureDetails = (OpenSubtitleFeatureDetails) other;
        return this.featureId == openSubtitleFeatureDetails.featureId && this.year == openSubtitleFeatureDetails.year && this.se == openSubtitleFeatureDetails.se && this.ep == openSubtitleFeatureDetails.ep && Intrinsics.c(this.movieName, openSubtitleFeatureDetails.movieName) && Intrinsics.c(this.imdbId, openSubtitleFeatureDetails.imdbId);
    }

    public final int getEp() {
        return this.ep;
    }

    public final int getFeatureId() {
        return this.featureId;
    }

    public final Integer getImdbId() {
        return this.imdbId;
    }

    public final String getMovieName() {
        return this.movieName;
    }

    public final int getSe() {
        return this.se;
    }

    public final int getYear() {
        return this.year;
    }

    public int hashCode() {
        int i10 = ((((((this.featureId * 31) + this.year) * 31) + this.se) * 31) + this.ep) * 31;
        String str = this.movieName;
        int iHashCode = (i10 + (str == null ? 0 : str.hashCode())) * 31;
        Integer num = this.imdbId;
        return iHashCode + (num != null ? num.hashCode() : 0);
    }

    public String toString() {
        return "OpenSubtitleFeatureDetails(featureId=" + this.featureId + ", year=" + this.year + ", se=" + this.se + ", ep=" + this.ep + ", movieName=" + this.movieName + ", imdbId=" + this.imdbId + ")";
    }
}
