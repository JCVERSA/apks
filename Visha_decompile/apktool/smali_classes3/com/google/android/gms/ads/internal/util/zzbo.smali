.class public final Lcom/google/android/gms/ads/internal/util/zzbo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lhme;

.field public static final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/util/zzbo;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_0
    sget-object p0, Lcom/google/android/gms/ads/internal/util/zzbo;->b:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzbo;->a:Lhme;

    if-nez v0, :cond_2

    invoke-static {p1}, Lcye;->a(Landroid/content/Context;)V

    invoke-static {}, Lyx0;->a()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcye;->D4:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzaz;->zzb(Landroid/content/Context;)Lhme;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lkne;->a(Landroid/content/Context;Lpme;)Lhme;

    move-result-object p1

    :goto_0
    sput-object p1, Lcom/google/android/gms/ads/internal/util/zzbo;->a:Lhme;

    :cond_2
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Lim5;
    .locals 3

    new-instance p0, Leff;

    invoke-direct {p0}, Leff;-><init>()V

    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzbo;->a:Lhme;

    new-instance v1, Lcom/google/android/gms/ads/internal/util/zzbm;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, p0}, Lcom/google/android/gms/ads/internal/util/zzbm;-><init>(Ljava/lang/String;Ljava/util/Map;Leff;)V

    invoke-virtual {v0, v1}, Lhme;->a(Lcom/google/android/gms/internal/ads/c;)Lcom/google/android/gms/internal/ads/c;

    return-object p0
.end method

.method public final zzb(ILjava/lang/String;Ljava/util/Map;[B)Lim5;
    .locals 13
    .param p3    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p2

    new-instance v10, Lk4f;

    const/4 v1, 0x0

    invoke-direct {v10, v1}, Lk4f;-><init>(Lcom/google/android/gms/ads/internal/util/zzbn;)V

    new-instance v6, Lx1f;

    move-object v2, p0

    invoke-direct {v6, p0, p2, v10}, Lx1f;-><init>(Lcom/google/android/gms/ads/internal/util/zzbo;Ljava/lang/String;Lk4f;)V

    new-instance v11, Lcom/google/android/gms/ads/internal/util/client/zzl;

    invoke-direct {v11, v1}, Lcom/google/android/gms/ads/internal/util/client/zzl;-><init>(Ljava/lang/String;)V

    new-instance v12, Ld3f;

    move-object v1, v12

    move v3, p1

    move-object v4, p2

    move-object v5, v10

    move-object/from16 v7, p4

    move-object/from16 v8, p3

    move-object v9, v11

    invoke-direct/range {v1 .. v9}, Ld3f;-><init>(Lcom/google/android/gms/ads/internal/util/zzbo;ILjava/lang/String;Ljme;Lime;[BLjava/util/Map;Lcom/google/android/gms/ads/internal/util/client/zzl;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/util/client/zzl;->zzk()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "GET"

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/c;->zzl()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/c;->zzx()[B

    move-result-object v3

    invoke-virtual {v11, p2, v1, v2, v3}, Lcom/google/android/gms/ads/internal/util/client/zzl;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzaor; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    :cond_0
    :goto_0
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzbo;->a:Lhme;

    invoke-virtual {v0, v12}, Lhme;->a(Lcom/google/android/gms/internal/ads/c;)Lcom/google/android/gms/internal/ads/c;

    return-object v10
.end method
