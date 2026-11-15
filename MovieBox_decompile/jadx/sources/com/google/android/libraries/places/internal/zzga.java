package com.google.android.libraries.places.internal;

import android.location.Location;
import androidx.annotation.Nullable;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.libraries.places.api.model.OpeningHours;
import com.google.android.libraries.places.api.model.Place;
import com.google.android.libraries.places.api.net.FetchPhotoRequest;
import com.google.android.libraries.places.api.net.FetchPhotoResponse;
import com.google.android.libraries.places.api.net.FetchPlaceRequest;
import com.google.android.libraries.places.api.net.FetchPlaceResponse;
import com.google.android.libraries.places.api.net.FetchResolvedPhotoUriRequest;
import com.google.android.libraries.places.api.net.FetchResolvedPhotoUriResponse;
import com.google.android.libraries.places.api.net.FindAutocompletePredictionsRequest;
import com.google.android.libraries.places.api.net.FindAutocompletePredictionsResponse;
import com.google.android.libraries.places.api.net.FindCurrentPlaceRequest;
import com.google.android.libraries.places.api.net.FindCurrentPlaceResponse;
import com.google.android.libraries.places.api.net.IsOpenRequest;
import com.google.android.libraries.places.api.net.IsOpenResponse;
import com.google.android.libraries.places.api.net.PlacesClient;
import com.google.android.libraries.places.api.net.SearchByTextRequest;
import com.google.android.libraries.places.api.net.SearchByTextResponse;
import com.google.android.libraries.places.api.net.SearchNearbyRequest;
import com.google.android.libraries.places.api.net.SearchNearbyResponse;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public final class zzga implements PlacesClient {
    private final zzev zza;
    private final zzel zzb;
    private final zzeq zzc;
    private final zzjr zzd;
    private final zzdv zze;
    private final zzhc zzf;
    private final zzjs zzg;

    zzga(zzjs zzjsVar, zzev zzevVar, zzel zzelVar, zzeq zzeqVar, zzjr zzjrVar, zzdv zzdvVar, zzhc zzhcVar) {
        this.zzg = zzjsVar;
        this.zza = zzevVar;
        this.zzb = zzelVar;
        this.zzc = zzeqVar;
        this.zzd = zzjrVar;
        this.zze = zzdvVar;
        this.zzf = zzhcVar;
    }

    private static void zzu(zzef zzefVar, @Nullable zzej zzejVar) {
        zzef.zza(zzefVar, zzef.zzb("Duration"));
        zzea.zza();
        zzea.zza();
        zzef.zza(zzefVar, zzef.zzb("Battery"));
        zzea.zza();
    }

    @Override
    public final Task<FetchPhotoResponse> fetchPhoto(FetchPhotoRequest fetchPhotoRequest) {
        return zza(fetchPhotoRequest, 1);
    }

    @Override
    public final Task<FetchPlaceResponse> fetchPlace(FetchPlaceRequest fetchPlaceRequest) {
        return zzb(fetchPlaceRequest, 1);
    }

    @Override
    public final Task<FetchResolvedPhotoUriResponse> fetchResolvedPhotoUri(FetchResolvedPhotoUriRequest fetchResolvedPhotoUriRequest) {
        return zzc(fetchResolvedPhotoUriRequest, 1);
    }

    @Override
    public final Task<FindAutocompletePredictionsResponse> findAutocompletePredictions(FindAutocompletePredictionsRequest findAutocompletePredictionsRequest) {
        return zzd(findAutocompletePredictionsRequest, 1);
    }

    @Override
    public final Task<FindCurrentPlaceResponse> findCurrentPlace(FindCurrentPlaceRequest findCurrentPlaceRequest) {
        return zze(findCurrentPlaceRequest, null, 1);
    }

    @Override
    public final Task<IsOpenResponse> isOpen(IsOpenRequest isOpenRequest) {
        return zzf(isOpenRequest, 1);
    }

    @Override
    public final Task<SearchByTextResponse> searchByText(SearchByTextRequest searchByTextRequest) {
        return zzh(searchByTextRequest, 1);
    }

    @Override
    public final Task<SearchNearbyResponse> searchNearby(SearchNearbyRequest searchNearbyRequest) {
        return zzi(searchNearbyRequest, 1);
    }

    public final Task zza(final FetchPhotoRequest fetchPhotoRequest, int i10) {
        try {
            zzmt.zzc(fetchPhotoRequest, "Request must not be null.");
            zzea.zza();
            final zzej zzejVarZza = zzej.zza();
            final int i11 = 1;
            return this.zza.zza(fetchPhotoRequest, 1).continueWith(new Continuation(fetchPhotoRequest, i11, zzejVarZza) {
                public final FetchPhotoRequest zzb;
                public final zzej zzc;

                {
                    this.zzc = zzejVarZza;
                }

                @Override
                public final Object then(Task task) {
                    return this.zza.zzj(this.zzb, 1, this.zzc, task);
                }
            }).continueWithTask(new zzfr());
        } catch (Error | RuntimeException e10) {
            zzkd.zzb(e10);
            throw e10;
        }
    }

    @Override
    public final Task zzb(final FetchPlaceRequest fetchPlaceRequest, final int i10) throws Throwable {
        try {
            zzmt.zzc(fetchPlaceRequest, "Request must not be null.");
            zzea.zza();
            final zzej zzejVarZza = zzej.zza();
            if (!this.zzg.zzh() || i10 == 2) {
                return this.zza.zzb(fetchPlaceRequest, i10).continueWith(new Continuation() {
                    @Override
                    public final Object then(Task task) {
                        return this.zza.zzl(fetchPlaceRequest, i10, zzejVarZza, task);
                    }
                }).continueWithTask(new zzfr());
            }
            final int i11 = 1;
            return this.zzf.zzg(fetchPlaceRequest, 1).continueWith(new Continuation(fetchPlaceRequest, i11, zzejVarZza) {
                public final FetchPlaceRequest zzb;
                public final zzej zzc;

                {
                    this.zzc = zzejVarZza;
                }

                @Override
                public final Object then(Task task) {
                    return this.zza.zzk(this.zzb, 1, this.zzc, task);
                }
            }).continueWithTask(new zzfr());
        } catch (Error e10) {
            e = e10;
            zzkd.zzb(e);
            throw e;
        } catch (RuntimeException e11) {
            e = e11;
            zzkd.zzb(e);
            throw e;
        }
    }

    public final Task zzc(final FetchResolvedPhotoUriRequest fetchResolvedPhotoUriRequest, int i10) {
        try {
            zzmt.zzc(fetchResolvedPhotoUriRequest, "Request must not be null.");
            zzea.zza();
            final zzej zzejVarZza = zzej.zza();
            final int i11 = 1;
            return this.zzf.zzf(fetchResolvedPhotoUriRequest, 1).continueWith(new Continuation(fetchResolvedPhotoUriRequest, i11, zzejVarZza) {
                public final FetchResolvedPhotoUriRequest zzb;
                public final zzej zzc;

                {
                    this.zzc = zzejVarZza;
                }

                @Override
                public final Object then(Task task) {
                    return this.zza.zzo(this.zzb, 1, this.zzc, task);
                }
            }).continueWithTask(new zzfr());
        } catch (Error | RuntimeException e10) {
            zzkd.zzb(e10);
            throw e10;
        }
    }

    @Override
    public final Task zzd(final FindAutocompletePredictionsRequest findAutocompletePredictionsRequest, final int i10) throws Throwable {
        try {
            zzmt.zzc(findAutocompletePredictionsRequest, "Request must not be null.");
            zzea.zza();
            final zzej zzejVarZza = zzej.zza();
            if (!this.zzg.zzh() || i10 == 2) {
                return this.zza.zzc(findAutocompletePredictionsRequest, i10).continueWith(new Continuation() {
                    @Override
                    public final Object then(Task task) {
                        return this.zza.zzq(findAutocompletePredictionsRequest, i10, zzejVarZza, task);
                    }
                }).continueWithTask(new zzfr());
            }
            final int i11 = 1;
            return this.zzf.zze(findAutocompletePredictionsRequest, 1).continueWith(new Continuation(findAutocompletePredictionsRequest, i11, zzejVarZza) {
                public final FindAutocompletePredictionsRequest zzb;
                public final zzej zzc;

                {
                    this.zzc = zzejVarZza;
                }

                @Override
                public final Object then(Task task) {
                    return this.zza.zzp(this.zzb, 1, this.zzc, task);
                }
            }).continueWithTask(new zzfr());
        } catch (Error e10) {
            e = e10;
            zzkd.zzb(e);
            throw e;
        } catch (RuntimeException e11) {
            e = e11;
            zzkd.zzb(e);
            throw e;
        }
    }

    public final Task zze(final FindCurrentPlaceRequest findCurrentPlaceRequest, @Nullable String str, int i10) {
        try {
            zzmt.zzc(findCurrentPlaceRequest, "Request must not be null.");
            final long jZza = this.zze.zza();
            zzea.zza();
            final zzej zzejVarZza = zzej.zza();
            final String str2 = null;
            final int i11 = 1;
            final int i12 = 1;
            return this.zzb.zza(findCurrentPlaceRequest.getCancellationToken()).onSuccessTask(new SuccessContinuation(findCurrentPlaceRequest, str2, i11) {
                public final FindCurrentPlaceRequest zzb;

                @Override
                public final Task then(Object obj) {
                    return this.zza.zzg(this.zzb, null, 1, (Location) obj);
                }
            }).continueWith(new Continuation(findCurrentPlaceRequest, jZza, i12, zzejVarZza) {
                public final FindCurrentPlaceRequest zzb;
                public final long zzc;
                public final zzej zzd;

                {
                    this.zzd = zzejVarZza;
                }

                @Override
                public final Object then(Task task) {
                    return this.zza.zzr(this.zzb, this.zzc, 1, this.zzd, task);
                }
            }).continueWithTask(new zzfr());
        } catch (Error | RuntimeException e10) {
            zzkd.zzb(e10);
            throw e10;
        }
    }

    public final Task zzf(IsOpenRequest isOpenRequest, int i10) throws Throwable {
        List arrayList;
        final int i11 = 1;
        try {
            zzmt.zzc(isOpenRequest, "Request must not be null.");
            final Place place = isOpenRequest.getPlace();
            String placeId = isOpenRequest.getPlaceId();
            final long utcTimeMillis = isOpenRequest.getUtcTimeMillis();
            final TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
            if (place == null) {
                int i12 = com.google.android.libraries.places.api.model.zzce.zza;
                arrayList = Arrays.asList(Place.Field.BUSINESS_STATUS, Place.Field.CURRENT_OPENING_HOURS, Place.Field.OPENING_HOURS, Place.Field.UTC_OFFSET);
            } else {
                arrayList = new ArrayList();
                Place.BusinessStatus businessStatus = place.getBusinessStatus();
                if (businessStatus == null || businessStatus == Place.BusinessStatus.OPERATIONAL) {
                    if (businessStatus == null) {
                        arrayList.add(Place.Field.BUSINESS_STATUS);
                    }
                    if (place.getCurrentOpeningHours() == null) {
                        arrayList.add(Place.Field.CURRENT_OPENING_HOURS);
                    }
                    if (place.getOpeningHours() == null) {
                        arrayList.add(Place.Field.OPENING_HOURS);
                    }
                    if (place.getUtcOffsetMinutes() == null) {
                        arrayList.add(Place.Field.UTC_OFFSET);
                    }
                }
            }
            if (arrayList.isEmpty()) {
                if (place == null) {
                    throw null;
                }
                taskCompletionSource.setResult(IsOpenResponse.newInstance(com.google.android.libraries.places.api.model.zzce.zza(place, utcTimeMillis)));
                return taskCompletionSource.getTask();
            }
            if (place != null) {
                placeId = place.getId();
            }
            if (placeId == null) {
                throw null;
            }
            FetchPlaceRequest.Builder builder = FetchPlaceRequest.builder(placeId, arrayList);
            builder.setCancellationToken(isOpenRequest.getCancellationToken());
            final FetchPlaceRequest fetchPlaceRequestBuild = builder.build();
            zzea.zza();
            final zzej zzejVarZza = zzej.zza();
            return this.zzg.zzh() ? this.zzf.zzg(fetchPlaceRequestBuild, 1).continueWith(new Continuation(fetchPlaceRequestBuild, i11, zzejVarZza) {
                public final FetchPlaceRequest zzb;
                public final zzej zzc;

                {
                    this.zzc = zzejVarZza;
                }

                @Override
                public final Object then(Task task) {
                    return this.zza.zzn(this.zzb, 1, this.zzc, task);
                }
            }).onSuccessTask(new SuccessContinuation() {
                @Override
                public final Task then(Object obj) {
                    Place place2 = ((FetchPlaceResponse) obj).getPlace();
                    Place.BusinessStatus businessStatus2 = place2.getBusinessStatus();
                    OpeningHours currentOpeningHours = place2.getCurrentOpeningHours();
                    OpeningHours openingHours = place2.getOpeningHours();
                    Integer utcOffsetMinutes = place2.getUtcOffsetMinutes();
                    Place place3 = place;
                    if (place3 != null) {
                        if (utcOffsetMinutes == null) {
                            utcOffsetMinutes = place3.getUtcOffsetMinutes();
                        }
                        if (businessStatus2 == null) {
                            businessStatus2 = place3.getBusinessStatus();
                        }
                        if (currentOpeningHours == null) {
                            currentOpeningHours = place3.getCurrentOpeningHours();
                        }
                        if (openingHours == null) {
                            openingHours = place3.getOpeningHours();
                        }
                    }
                    TaskCompletionSource taskCompletionSource2 = taskCompletionSource;
                    long j10 = utcTimeMillis;
                    Place.Builder builder2 = Place.builder();
                    builder2.setBusinessStatus(businessStatus2);
                    builder2.setCurrentOpeningHours(currentOpeningHours);
                    builder2.setOpeningHours(openingHours);
                    builder2.setUtcOffsetMinutes(utcOffsetMinutes);
                    taskCompletionSource2.setResult(IsOpenResponse.newInstance(com.google.android.libraries.places.api.model.zzce.zza(builder2.build(), j10)));
                    return taskCompletionSource2.getTask();
                }
            }).continueWithTask(new zzfr()) : this.zza.zzb(fetchPlaceRequestBuild, 1).continueWith(new Continuation(fetchPlaceRequestBuild, i11, zzejVarZza) {
                public final FetchPlaceRequest zzb;
                public final zzej zzc;

                {
                    this.zzc = zzejVarZza;
                }

                @Override
                public final Object then(Task task) {
                    return this.zza.zzm(this.zzb, 1, this.zzc, task);
                }
            }).onSuccessTask(new SuccessContinuation() {
                @Override
                public final Task then(Object obj) {
                    Place place2 = ((FetchPlaceResponse) obj).getPlace();
                    Place.BusinessStatus businessStatus2 = place2.getBusinessStatus();
                    OpeningHours currentOpeningHours = place2.getCurrentOpeningHours();
                    OpeningHours openingHours = place2.getOpeningHours();
                    Integer utcOffsetMinutes = place2.getUtcOffsetMinutes();
                    Place place3 = place;
                    if (place3 != null) {
                        if (utcOffsetMinutes == null) {
                            utcOffsetMinutes = place3.getUtcOffsetMinutes();
                        }
                        if (businessStatus2 == null) {
                            businessStatus2 = place3.getBusinessStatus();
                        }
                        if (currentOpeningHours == null) {
                            currentOpeningHours = place3.getCurrentOpeningHours();
                        }
                        if (openingHours == null) {
                            openingHours = place3.getOpeningHours();
                        }
                    }
                    TaskCompletionSource taskCompletionSource2 = taskCompletionSource;
                    long j10 = utcTimeMillis;
                    Place.Builder builder2 = Place.builder();
                    builder2.setBusinessStatus(businessStatus2);
                    builder2.setCurrentOpeningHours(currentOpeningHours);
                    builder2.setOpeningHours(openingHours);
                    builder2.setUtcOffsetMinutes(utcOffsetMinutes);
                    taskCompletionSource2.setResult(IsOpenResponse.newInstance(com.google.android.libraries.places.api.model.zzce.zza(builder2.build(), j10)));
                    return taskCompletionSource2.getTask();
                }
            }).continueWithTask(new zzfr());
        } catch (Error e10) {
            e = e10;
            zzkd.zzb(e);
            throw e;
        } catch (RuntimeException e11) {
            e = e11;
            zzkd.zzb(e);
            throw e;
        }
    }

    final Task zzg(FindCurrentPlaceRequest findCurrentPlaceRequest, String str, int i10, Location location) throws Exception {
        zzmt.zzc(location, "Location must not be null.");
        return this.zza.zzd(findCurrentPlaceRequest, location, this.zzc.zza(null), 1);
    }

    public final Task zzh(final SearchByTextRequest searchByTextRequest, int i10) {
        try {
            zzmt.zzc(searchByTextRequest, "Request must not be null.");
            zzea.zza();
            final zzej zzejVarZza = zzej.zza();
            final int i11 = 1;
            return this.zzf.zzm(searchByTextRequest, 1).continueWith(new Continuation(searchByTextRequest, i11, zzejVarZza) {
                public final SearchByTextRequest zzb;
                public final zzej zzc;

                {
                    this.zzc = zzejVarZza;
                }

                @Override
                public final Object then(Task task) {
                    return this.zza.zzs(this.zzb, 1, this.zzc, task);
                }
            }).continueWithTask(new zzfr());
        } catch (Error | RuntimeException e10) {
            zzkd.zzb(e10);
            throw e10;
        }
    }

    public final Task zzi(final SearchNearbyRequest searchNearbyRequest, int i10) {
        try {
            zzmt.zzc(searchNearbyRequest, "Request must not be null.");
            zzea.zza();
            final zzej zzejVarZza = zzej.zza();
            final int i11 = 1;
            return this.zzf.zzn(searchNearbyRequest, 1).continueWith(new Continuation(searchNearbyRequest, i11, zzejVarZza) {
                public final SearchNearbyRequest zzb;
                public final zzej zzc;

                {
                    this.zzc = zzejVarZza;
                }

                @Override
                public final Object then(Task task) {
                    return this.zza.zzt(this.zzb, 1, this.zzc, task);
                }
            }).continueWithTask(new zzfr());
        } catch (Error | RuntimeException e10) {
            zzkd.zzb(e10);
            throw e10;
        }
    }

    final FetchPhotoResponse zzj(FetchPhotoRequest fetchPhotoRequest, int i10, zzej zzejVar, Task task) throws Exception {
        this.zzd.zza(fetchPhotoRequest, 1);
        zzu(zzef.zzb("FetchPhoto"), zzejVar);
        return (FetchPhotoResponse) task.getResult();
    }

    final FetchPlaceResponse zzk(FetchPlaceRequest fetchPlaceRequest, int i10, zzej zzejVar, Task task) throws Exception {
        this.zzd.zzk(fetchPlaceRequest, 3, 1);
        zzu(zzef.zzb("GetPlace"), zzejVar);
        return (FetchPlaceResponse) task.getResult();
    }

    final FetchPlaceResponse zzl(FetchPlaceRequest fetchPlaceRequest, int i10, zzej zzejVar, Task task) throws Exception {
        this.zzd.zzk(fetchPlaceRequest, 2, i10);
        zzu(zzef.zzb("FetchPlace"), zzejVar);
        return (FetchPlaceResponse) task.getResult();
    }

    final FetchPlaceResponse zzm(FetchPlaceRequest fetchPlaceRequest, int i10, zzej zzejVar, Task task) throws Exception {
        this.zzd.zzo(fetchPlaceRequest, 2, 1);
        zzu(zzef.zzb("IsOpenFetchPlace"), zzejVar);
        return (FetchPlaceResponse) task.getResult();
    }

    final FetchPlaceResponse zzn(FetchPlaceRequest fetchPlaceRequest, int i10, zzej zzejVar, Task task) throws Exception {
        this.zzd.zzo(fetchPlaceRequest, 3, 1);
        zzu(zzef.zzb("IsOpenGetPlace"), zzejVar);
        return (FetchPlaceResponse) task.getResult();
    }

    final FetchResolvedPhotoUriResponse zzo(FetchResolvedPhotoUriRequest fetchResolvedPhotoUriRequest, int i10, zzej zzejVar, Task task) throws Exception {
        this.zzd.zzc(fetchResolvedPhotoUriRequest, 1);
        zzu(zzef.zzb("GetPhotoMedia"), zzejVar);
        return (FetchResolvedPhotoUriResponse) task.getResult();
    }

    final FindAutocompletePredictionsResponse zzp(FindAutocompletePredictionsRequest findAutocompletePredictionsRequest, int i10, zzej zzejVar, Task task) throws Exception {
        this.zzd.zzm(findAutocompletePredictionsRequest, 3, 1);
        zzu(zzef.zzb("FindAutocompletePredictionsOnePlatform"), zzejVar);
        return (FindAutocompletePredictionsResponse) task.getResult();
    }

    final FindAutocompletePredictionsResponse zzq(FindAutocompletePredictionsRequest findAutocompletePredictionsRequest, int i10, zzej zzejVar, Task task) throws Exception {
        this.zzd.zzm(findAutocompletePredictionsRequest, 2, i10);
        zzu(zzef.zzb("FindAutocompletePredictions"), zzejVar);
        return (FindAutocompletePredictionsResponse) task.getResult();
    }

    final FindCurrentPlaceResponse zzr(FindCurrentPlaceRequest findCurrentPlaceRequest, long j10, int i10, zzej zzejVar, Task task) throws Exception {
        this.zzd.zze(findCurrentPlaceRequest, task, j10, this.zze.zza(), 1);
        zzu(zzef.zzb("FindCurrentPlace"), zzejVar);
        return (FindCurrentPlaceResponse) task.getResult();
    }

    final SearchByTextResponse zzs(SearchByTextRequest searchByTextRequest, int i10, zzej zzejVar, Task task) throws Exception {
        this.zzd.zzg(searchByTextRequest, 1);
        zzu(zzef.zzb("SearchByText"), zzejVar);
        return (SearchByTextResponse) task.getResult();
    }

    final SearchNearbyResponse zzt(SearchNearbyRequest searchNearbyRequest, int i10, zzej zzejVar, Task task) throws Exception {
        this.zzd.zzi(searchNearbyRequest, 1);
        zzu(zzef.zzb("SearchNearby"), zzejVar);
        return (SearchNearbyResponse) task.getResult();
    }
}
