.class public final synthetic Lcom/google/android/libraries/places/internal/zzha;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field public final synthetic zza:Lcom/google/android/libraries/places/internal/zzhc;

.field public final synthetic zzb:Lcom/google/android/libraries/places/api/net/SearchNearbyRequest;

.field public final synthetic zzc:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zzhc;Lcom/google/android/libraries/places/api/net/SearchNearbyRequest;JI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzha;->zza:Lcom/google/android/libraries/places/internal/zzhc;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzha;->zzb:Lcom/google/android/libraries/places/api/net/SearchNearbyRequest;

    .line 7
    .line 8
    iput-wide p3, p0, Lcom/google/android/libraries/places/internal/zzha;->zzc:J

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzha;->zza:Lcom/google/android/libraries/places/internal/zzhc;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzha;->zzb:Lcom/google/android/libraries/places/api/net/SearchNearbyRequest;

    .line 4
    .line 5
    iget-wide v2, p0, Lcom/google/android/libraries/places/internal/zzha;->zzc:J

    .line 6
    .line 7
    const/4 v4, 0x1

    .line 8
    move-object v5, p1

    .line 9
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzhc;->zzl(Lcom/google/android/libraries/places/api/net/SearchNearbyRequest;JILcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    .line 10
    .line 11
    .line 12
    return-object p1
.end method
