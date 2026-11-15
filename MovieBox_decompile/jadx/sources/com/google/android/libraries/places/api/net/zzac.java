package com.google.android.libraries.places.api.net;

import androidx.annotation.Nullable;
import com.google.android.gms.tasks.CancellationToken;
import com.google.android.libraries.places.api.model.LocationRestriction;
import com.google.android.libraries.places.api.model.Place;
import java.util.List;

final class zzac extends SearchNearbyRequest.Builder {
    private String zza;
    private List zzb;
    private List zzc;
    private List zzd;
    private List zze;
    private Integer zzf;
    private LocationRestriction zzg;
    private List zzh;
    private CancellationToken zzi;
    private SearchNearbyRequest.RankPreference zzj;

    zzac() {
    }

    @Override
    @Nullable
    public final CancellationToken getCancellationToken() {
        return this.zzi;
    }

    @Override
    @Nullable
    public final List<String> getExcludedPrimaryTypes() {
        return this.zze;
    }

    @Override
    @Nullable
    public final List<String> getExcludedTypes() {
        return this.zzc;
    }

    @Override
    @Nullable
    public final List<String> getIncludedPrimaryTypes() {
        return this.zzd;
    }

    @Override
    @Nullable
    public final List<String> getIncludedTypes() {
        return this.zzb;
    }

    @Override
    public final LocationRestriction getLocationRestriction() {
        LocationRestriction locationRestriction = this.zzg;
        if (locationRestriction != null) {
            return locationRestriction;
        }
        throw new IllegalStateException("Property \"locationRestriction\" has not been set");
    }

    @Override
    @Nullable
    public final Integer getMaxResultCount() {
        return this.zzf;
    }

    @Override
    public final List<Place.Field> getPlaceFields() {
        List<Place.Field> list = this.zzh;
        if (list != null) {
            return list;
        }
        throw new IllegalStateException("Property \"placeFields\" has not been set");
    }

    @Override
    @Nullable
    public final SearchNearbyRequest.RankPreference getRankPreference() {
        return this.zzj;
    }

    @Override
    @Nullable
    public final String getRegionCode() {
        return this.zza;
    }

    @Override
    public final SearchNearbyRequest.Builder setCancellationToken(@Nullable CancellationToken cancellationToken) {
        this.zzi = cancellationToken;
        return this;
    }

    @Override
    public final SearchNearbyRequest.Builder setExcludedPrimaryTypes(@Nullable List<String> list) {
        this.zze = list;
        return this;
    }

    @Override
    public final SearchNearbyRequest.Builder setExcludedTypes(@Nullable List<String> list) {
        this.zzc = list;
        return this;
    }

    @Override
    public final SearchNearbyRequest.Builder setIncludedPrimaryTypes(@Nullable List<String> list) {
        this.zzd = list;
        return this;
    }

    @Override
    public final SearchNearbyRequest.Builder setIncludedTypes(@Nullable List<String> list) {
        this.zzb = list;
        return this;
    }

    @Override
    public final SearchNearbyRequest.Builder setLocationRestriction(LocationRestriction locationRestriction) {
        if (locationRestriction == null) {
            throw new NullPointerException("Null locationRestriction");
        }
        this.zzg = locationRestriction;
        return this;
    }

    @Override
    public final SearchNearbyRequest.Builder setMaxResultCount(@Nullable Integer num) {
        this.zzf = num;
        return this;
    }

    @Override
    public final SearchNearbyRequest.Builder setPlaceFields(List<Place.Field> list) {
        if (list == null) {
            throw new NullPointerException("Null placeFields");
        }
        this.zzh = list;
        return this;
    }

    @Override
    public final SearchNearbyRequest.Builder setRankPreference(@Nullable SearchNearbyRequest.RankPreference rankPreference) {
        this.zzj = rankPreference;
        return this;
    }

    @Override
    public final SearchNearbyRequest.Builder setRegionCode(@Nullable String str) {
        this.zza = str;
        return this;
    }

    @Override
    final SearchNearbyRequest zza() {
        List list;
        LocationRestriction locationRestriction = this.zzg;
        if (locationRestriction != null && (list = this.zzh) != null) {
            return new zzae(this.zza, this.zzb, this.zzc, this.zzd, this.zze, this.zzf, locationRestriction, list, this.zzi, this.zzj, null);
        }
        StringBuilder sb2 = new StringBuilder();
        if (this.zzg == null) {
            sb2.append(" locationRestriction");
        }
        if (this.zzh == null) {
            sb2.append(" placeFields");
        }
        throw new IllegalStateException("Missing required properties:".concat(sb2.toString()));
    }
}
