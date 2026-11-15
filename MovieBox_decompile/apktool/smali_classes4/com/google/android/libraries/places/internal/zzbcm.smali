.class public final Lcom/google/android/libraries/places/internal/zzbcm;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private zza:Ljava/lang/Integer;

.field private zzb:Lcom/google/android/libraries/places/internal/zzbde;

.field private zzc:Lcom/google/android/libraries/places/internal/zzbdw;

.field private zzd:Lcom/google/android/libraries/places/internal/zzbcu;

.field private zze:Ljava/util/concurrent/ScheduledExecutorService;

.field private zzf:Lcom/google/android/libraries/places/internal/zzaym;

.field private zzg:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/libraries/places/internal/zzaym;)Lcom/google/android/libraries/places/internal/zzbcm;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbcm;->zzf:Lcom/google/android/libraries/places/internal/zzaym;

    .line 5
    .line 6
    return-object p0
.end method

.method public final zzb(I)Lcom/google/android/libraries/places/internal/zzbcm;
    .locals 0

    .line 1
    const/16 p1, 0x1bb

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbcm;->zza:Ljava/lang/Integer;

    .line 8
    .line 9
    return-object p0
.end method

.method public final zzc(Ljava/util/concurrent/Executor;)Lcom/google/android/libraries/places/internal/zzbcm;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbcm;->zzg:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    return-object p0
.end method

.method public final zzd(Lcom/google/android/libraries/places/internal/zzbde;)Lcom/google/android/libraries/places/internal/zzbcm;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbcm;->zzb:Lcom/google/android/libraries/places/internal/zzbde;

    .line 5
    .line 6
    return-object p0
.end method

.method public final zze(Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/libraries/places/internal/zzbcm;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbcm;->zze:Ljava/util/concurrent/ScheduledExecutorService;

    .line 5
    .line 6
    return-object p0
.end method

.method public final zzf(Lcom/google/android/libraries/places/internal/zzbcu;)Lcom/google/android/libraries/places/internal/zzbcm;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbcm;->zzd:Lcom/google/android/libraries/places/internal/zzbcu;

    .line 2
    .line 3
    return-object p0
.end method

.method public final zzg(Lcom/google/android/libraries/places/internal/zzbdw;)Lcom/google/android/libraries/places/internal/zzbcm;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbcm;->zzc:Lcom/google/android/libraries/places/internal/zzbdw;

    .line 5
    .line 6
    return-object p0
.end method

.method public final zzh()Lcom/google/android/libraries/places/internal/zzbco;
    .locals 11

    .line 1
    new-instance v10, Lcom/google/android/libraries/places/internal/zzbco;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbcm;->zza:Ljava/lang/Integer;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbcm;->zzb:Lcom/google/android/libraries/places/internal/zzbde;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbcm;->zzc:Lcom/google/android/libraries/places/internal/zzbdw;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzbcm;->zzd:Lcom/google/android/libraries/places/internal/zzbcu;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/google/android/libraries/places/internal/zzbcm;->zze:Ljava/util/concurrent/ScheduledExecutorService;

    .line 12
    .line 13
    iget-object v6, p0, Lcom/google/android/libraries/places/internal/zzbcm;->zzf:Lcom/google/android/libraries/places/internal/zzaym;

    .line 14
    .line 15
    iget-object v7, p0, Lcom/google/android/libraries/places/internal/zzbcm;->zzg:Ljava/util/concurrent/Executor;

    .line 16
    .line 17
    const/4 v8, 0x0

    .line 18
    const/4 v9, 0x0

    .line 19
    move-object v0, v10

    .line 20
    invoke-direct/range {v0 .. v9}, Lcom/google/android/libraries/places/internal/zzbco;-><init>(Ljava/lang/Integer;Lcom/google/android/libraries/places/internal/zzbde;Lcom/google/android/libraries/places/internal/zzbdw;Lcom/google/android/libraries/places/internal/zzbcu;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/libraries/places/internal/zzaym;Ljava/util/concurrent/Executor;Ljava/lang/String;Lcom/google/android/libraries/places/internal/zzbcn;)V

    .line 21
    .line 22
    .line 23
    return-object v10
.end method
