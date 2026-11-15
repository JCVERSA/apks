package com.google.android.libraries.places.internal;

import com.google.android.gms.tasks.Task;
import com.google.android.libraries.places.api.net.FetchPhotoRequest;
import com.google.android.libraries.places.api.net.FetchPlaceRequest;
import com.google.android.libraries.places.api.net.FetchResolvedPhotoUriRequest;
import com.google.android.libraries.places.api.net.FindAutocompletePredictionsRequest;
import com.google.android.libraries.places.api.net.FindCurrentPlaceRequest;
import com.google.android.libraries.places.api.net.SearchByTextRequest;
import com.google.android.libraries.places.api.net.SearchNearbyRequest;

public interface zzjr {
    void zza(FetchPhotoRequest fetchPhotoRequest, int i10);

    void zzb(Task task, long j10, long j11, int i10);

    void zzc(FetchResolvedPhotoUriRequest fetchResolvedPhotoUriRequest, int i10);

    void zzd(Task task, long j10, long j11, int i10);

    void zze(FindCurrentPlaceRequest findCurrentPlaceRequest, Task task, long j10, long j11, int i10);

    void zzf(Task task, long j10, long j11, int i10);

    void zzg(SearchByTextRequest searchByTextRequest, int i10);

    void zzh(SearchByTextRequest searchByTextRequest, Task task, long j10, long j11, int i10);

    void zzi(SearchNearbyRequest searchNearbyRequest, int i10);

    void zzj(SearchNearbyRequest searchNearbyRequest, Task task, long j10, long j11, int i10);

    void zzk(FetchPlaceRequest fetchPlaceRequest, int i10, int i11);

    void zzl(Task task, long j10, long j11, int i10, int i11);

    void zzm(FindAutocompletePredictionsRequest findAutocompletePredictionsRequest, int i10, int i11);

    void zzn(Task task, long j10, long j11, int i10, int i11);

    void zzo(FetchPlaceRequest fetchPlaceRequest, int i10, int i11);
}
