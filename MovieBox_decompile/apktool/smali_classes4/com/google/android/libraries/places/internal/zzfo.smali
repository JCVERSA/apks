.class public final synthetic Lcom/google/android/libraries/places/internal/zzfo;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field public final synthetic zza:Lcom/google/android/libraries/places/internal/zzga;

.field public final synthetic zzb:Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;

.field public final synthetic zzc:J

.field public final synthetic zzd:Lcom/google/android/libraries/places/internal/zzej;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zzga;Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;JILcom/google/android/libraries/places/internal/zzej;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzfo;->zza:Lcom/google/android/libraries/places/internal/zzga;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzfo;->zzb:Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;

    .line 7
    .line 8
    iput-wide p3, p0, Lcom/google/android/libraries/places/internal/zzfo;->zzc:J

    .line 9
    .line 10
    iput-object p6, p0, Lcom/google/android/libraries/places/internal/zzfo;->zzd:Lcom/google/android/libraries/places/internal/zzej;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzfo;->zza:Lcom/google/android/libraries/places/internal/zzga;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzfo;->zzb:Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;

    .line 4
    .line 5
    iget-wide v2, p0, Lcom/google/android/libraries/places/internal/zzfo;->zzc:J

    .line 6
    .line 7
    const/4 v4, 0x1

    .line 8
    iget-object v5, p0, Lcom/google/android/libraries/places/internal/zzfo;->zzd:Lcom/google/android/libraries/places/internal/zzej;

    .line 9
    .line 10
    move-object v6, p1

    .line 11
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/libraries/places/internal/zzga;->zzr(Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;JILcom/google/android/libraries/places/internal/zzej;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/libraries/places/api/net/FindCurrentPlaceResponse;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
