package com.google.android.gms.ads;

import androidx.annotation.NonNull;
import com.google.android.gms.ads.internal.util.client.zzo;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class RequestConfiguration {

    @NonNull
    public static final String MAX_AD_CONTENT_RATING_T = "T";

    @NonNull
    public static final String MAX_AD_CONTENT_RATING_UNSPECIFIED = "";
    public static final int TAG_FOR_CHILD_DIRECTED_TREATMENT_FALSE = 0;
    public static final int TAG_FOR_CHILD_DIRECTED_TREATMENT_TRUE = 1;
    public static final int TAG_FOR_CHILD_DIRECTED_TREATMENT_UNSPECIFIED = -1;
    public static final int TAG_FOR_UNDER_AGE_OF_CONSENT_FALSE = 0;
    public static final int TAG_FOR_UNDER_AGE_OF_CONSENT_TRUE = 1;
    public static final int TAG_FOR_UNDER_AGE_OF_CONSENT_UNSPECIFIED = -1;
    public final int a;
    public final int b;
    public final String c;
    public final List d;
    public final PublisherPrivacyPersonalizationState e;

    @NonNull
    public static final String MAX_AD_CONTENT_RATING_MA = "MA";

    @NonNull
    public static final String MAX_AD_CONTENT_RATING_PG = "PG";

    @NonNull
    public static final String MAX_AD_CONTENT_RATING_G = "G";

    @NonNull
    public static final List zza = Arrays.asList(MAX_AD_CONTENT_RATING_MA, "T", MAX_AD_CONTENT_RATING_PG, MAX_AD_CONTENT_RATING_G);

    public static class Builder {
        public int a = -1;
        public int b = -1;
        public String c = null;
        public final List d = new ArrayList();
        public PublisherPrivacyPersonalizationState e = PublisherPrivacyPersonalizationState.DEFAULT;

        @NonNull
        public RequestConfiguration build() {
            return new RequestConfiguration(this.a, this.b, this.c, this.d, this.e, null);
        }

        @NonNull
        public Builder setMaxAdContentRating(String str) {
            if (str == null || "".equals(str)) {
                this.c = null;
            } else if (RequestConfiguration.MAX_AD_CONTENT_RATING_G.equals(str) || RequestConfiguration.MAX_AD_CONTENT_RATING_PG.equals(str) || "T".equals(str) || RequestConfiguration.MAX_AD_CONTENT_RATING_MA.equals(str)) {
                this.c = str;
            } else {
                zzo.zzj("Invalid value passed to setMaxAdContentRating: ".concat(str));
            }
            return this;
        }

        @NonNull
        public Builder setPublisherPrivacyPersonalizationState(@NonNull PublisherPrivacyPersonalizationState publisherPrivacyPersonalizationState) {
            this.e = publisherPrivacyPersonalizationState;
            return this;
        }

        @NonNull
        public Builder setTagForChildDirectedTreatment(int i) {
            if (i == -1 || i == 0 || i == 1) {
                this.a = i;
            } else {
                zzo.zzj("Invalid value passed to setTagForChildDirectedTreatment: " + i);
            }
            return this;
        }

        @NonNull
        public Builder setTagForUnderAgeOfConsent(int i) {
            if (i == -1 || i == 0 || i == 1) {
                this.b = i;
            } else {
                zzo.zzj("Invalid value passed to setTagForUnderAgeOfConsent: " + i);
            }
            return this;
        }

        @NonNull
        public Builder setTestDeviceIds(List<String> list) {
            List list2 = this.d;
            list2.clear();
            if (list != null) {
                list2.addAll(list);
            }
            return this;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface MaxAdContentRating {
    }

    public enum PublisherPrivacyPersonalizationState {
        DEFAULT(0),
        ENABLED(1),
        DISABLED(2);

        private final int zzb;

        PublisherPrivacyPersonalizationState(int i) {
            this.zzb = i;
        }

        public int getValue() {
            return this.zzb;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface TagForChildDirectedTreatment {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface TagForUnderAgeOfConsent {
    }

    public RequestConfiguration(int i, int i2, String str, List list, PublisherPrivacyPersonalizationState publisherPrivacyPersonalizationState, zzi zziVar) {
        this.a = i;
        this.b = i2;
        this.c = str;
        this.d = list;
        this.e = publisherPrivacyPersonalizationState;
    }

    @NonNull
    public String getMaxAdContentRating() {
        String str = this.c;
        return str == null ? "" : str;
    }

    @NonNull
    public PublisherPrivacyPersonalizationState getPublisherPrivacyPersonalizationState() {
        return this.e;
    }

    public int getTagForChildDirectedTreatment() {
        return this.a;
    }

    public int getTagForUnderAgeOfConsent() {
        return this.b;
    }

    @NonNull
    public List<String> getTestDeviceIds() {
        return new ArrayList(this.d);
    }

    @NonNull
    public Builder toBuilder() {
        Builder builder = new Builder();
        builder.setTagForChildDirectedTreatment(this.a);
        builder.setTagForUnderAgeOfConsent(this.b);
        builder.setMaxAdContentRating(this.c);
        builder.setTestDeviceIds(this.d);
        return builder;
    }
}
