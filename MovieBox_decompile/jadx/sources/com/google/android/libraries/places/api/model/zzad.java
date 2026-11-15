package com.google.android.libraries.places.api.model;

import androidx.annotation.Nullable;

final class zzad extends Review.Builder {
    private String zza;
    private String zzb;
    private String zzc;
    private String zzd;
    private String zze;
    private Double zzf;
    private AuthorAttribution zzg;
    private String zzh;
    private String zzi;

    zzad() {
    }

    @Override
    @Nullable
    public final String getOriginalText() {
        return this.zzd;
    }

    @Override
    @Nullable
    public final String getOriginalTextLanguageCode() {
        return this.zze;
    }

    @Override
    @Nullable
    public final String getPublishTime() {
        return this.zzi;
    }

    @Override
    @Nullable
    public final String getRelativePublishTimeDescription() {
        return this.zza;
    }

    @Override
    @Nullable
    public final String getText() {
        return this.zzb;
    }

    @Override
    @Nullable
    public final String getTextLanguageCode() {
        return this.zzc;
    }

    @Override
    public final Review.Builder setOriginalText(@Nullable String str) {
        this.zzd = str;
        return this;
    }

    @Override
    public final Review.Builder setOriginalTextLanguageCode(@Nullable String str) {
        this.zze = str;
        return this;
    }

    @Override
    public final Review.Builder setPublishTime(@Nullable String str) {
        this.zzi = str;
        return this;
    }

    @Override
    public final Review.Builder setRelativePublishTimeDescription(@Nullable String str) {
        this.zza = str;
        return this;
    }

    @Override
    public final Review.Builder setText(@Nullable String str) {
        this.zzb = str;
        return this;
    }

    @Override
    public final Review.Builder setTextLanguageCode(@Nullable String str) {
        this.zzc = str;
        return this;
    }

    @Override
    final Review.Builder zza(String str) {
        this.zzh = str;
        return this;
    }

    @Override
    final Review.Builder zzb(AuthorAttribution authorAttribution) {
        if (authorAttribution == null) {
            throw new NullPointerException("Null authorAttribution");
        }
        this.zzg = authorAttribution;
        return this;
    }

    final Review.Builder zzc(Double d10) {
        if (d10 == null) {
            throw new NullPointerException("Null rating");
        }
        this.zzf = d10;
        return this;
    }

    @Override
    final Review zzd() {
        AuthorAttribution authorAttribution;
        String str;
        Double d10 = this.zzf;
        if (d10 != null && (authorAttribution = this.zzg) != null && (str = this.zzh) != null) {
            return new zzbs(this.zza, this.zzb, this.zzc, this.zzd, this.zze, d10, authorAttribution, str, this.zzi);
        }
        StringBuilder sb2 = new StringBuilder();
        if (this.zzf == null) {
            sb2.append(" rating");
        }
        if (this.zzg == null) {
            sb2.append(" authorAttribution");
        }
        if (this.zzh == null) {
            sb2.append(" attribution");
        }
        throw new IllegalStateException("Missing required properties:".concat(sb2.toString()));
    }
}
