.class final Lcom/google/android/gms/internal/measurement/zzeu;
.super Lcom/google/android/gms/internal/measurement/zzdy$zza;
.source "source.java"


# instance fields
.field private final synthetic zzc:I

.field private final synthetic zzd:Ljava/lang/String;

.field private final synthetic zze:Ljava/lang/Object;

.field private final synthetic zzf:Ljava/lang/Object;

.field private final synthetic zzg:Ljava/lang/Object;

.field private final synthetic zzh:Lcom/google/android/gms/internal/measurement/zzdy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzdy;ZILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    const/4 p2, 0x5

    .line 2
    iput p2, p0, Lcom/google/android/gms/internal/measurement/zzeu;->zzc:I

    .line 3
    .line 4
    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/zzeu;->zzd:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/measurement/zzeu;->zze:Ljava/lang/Object;

    .line 7
    .line 8
    const/4 p2, 0x0

    .line 9
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzeu;->zzf:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzeu;->zzg:Ljava/lang/Object;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzeu;->zzh:Lcom/google/android/gms/internal/measurement/zzdy;

    .line 14
    .line 15
    const/4 p2, 0x0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzdy$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzdy;Z)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method final zza()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzeu;->zzh:Lcom/google/android/gms/internal/measurement/zzdy;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzdy;->zza(Lcom/google/android/gms/internal/measurement/zzdy;)Lcom/google/android/gms/internal/measurement/zzdj;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    move-object v1, v0

    .line 12
    check-cast v1, Lcom/google/android/gms/internal/measurement/zzdj;

    .line 13
    .line 14
    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzeu;->zzc:I

    .line 15
    .line 16
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzeu;->zzd:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzeu;->zze:Ljava/lang/Object;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/zzdj;->logHealthData(ILjava/lang/String;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
