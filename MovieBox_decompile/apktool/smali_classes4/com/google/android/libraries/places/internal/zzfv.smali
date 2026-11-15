.class public final synthetic Lcom/google/android/libraries/places/internal/zzfv;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field public final synthetic zza:Lcom/google/android/libraries/places/internal/zzga;

.field public final synthetic zzb:Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;

.field public final synthetic zzc:Lcom/google/android/libraries/places/internal/zzej;

.field public final synthetic zzd:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zzga;Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;ILcom/google/android/libraries/places/internal/zzej;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzfv;->zza:Lcom/google/android/libraries/places/internal/zzga;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzfv;->zzb:Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;

    .line 7
    .line 8
    iput p3, p0, Lcom/google/android/libraries/places/internal/zzfv;->zzd:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/libraries/places/internal/zzfv;->zzc:Lcom/google/android/libraries/places/internal/zzej;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzfv;->zza:Lcom/google/android/libraries/places/internal/zzga;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzfv;->zzb:Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;

    .line 4
    .line 5
    iget v2, p0, Lcom/google/android/libraries/places/internal/zzfv;->zzd:I

    .line 6
    .line 7
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzfv;->zzc:Lcom/google/android/libraries/places/internal/zzej;

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/libraries/places/internal/zzga;->zzl(Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;ILcom/google/android/libraries/places/internal/zzej;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/libraries/places/api/net/FetchPlaceResponse;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
