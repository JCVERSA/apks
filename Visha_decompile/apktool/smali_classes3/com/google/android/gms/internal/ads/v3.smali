.class public final Lcom/google/android/gms/internal/ads/v3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static e:Lcom/google/android/gms/internal/ads/zzbyi;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/google/android/gms/ads/AdFormat;

.field public final c:Lcom/google/android/gms/ads/internal/client/zzeh;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdFormat;Lcom/google/android/gms/ads/internal/client/zzeh;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/v3;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/v3;->b:Lcom/google/android/gms/ads/AdFormat;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/v3;->c:Lcom/google/android/gms/ads/internal/client/zzeh;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/v3;->d:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzbyi;
    .locals 3

    const-class v0, Lcom/google/android/gms/internal/ads/v3;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/v3;->e:Lcom/google/android/gms/internal/ads/zzbyi;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zza()Lcom/google/android/gms/ads/internal/client/zzaz;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbou;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzbou;-><init>()V

    invoke-virtual {v1, p0, v2}, Lcom/google/android/gms/ads/internal/client/zzaz;->zzt(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzboy;)Lcom/google/android/gms/internal/ads/zzbyi;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/internal/ads/v3;->e:Lcom/google/android/gms/internal/ads/zzbyi;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/google/android/gms/internal/ads/v3;->e:Lcom/google/android/gms/internal/ads/zzbyi;

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final b(Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;)V
    .locals 12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/v3;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/v3;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzbyi;

    move-result-object v3

    if-nez v3, :cond_0

    const-string p0, "Internal Error, query info generator is null."

    invoke-virtual {p1, p0}, Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;->onFailure(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {v2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/v3;->c:Lcom/google/android/gms/ads/internal/client/zzeh;

    if-nez v5, :cond_1

    new-instance v2, Lcom/google/android/gms/ads/internal/client/zzn;

    invoke-direct {v2}, Lcom/google/android/gms/ads/internal/client/zzn;-><init>()V

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/ads/internal/client/zzn;->zzg(J)Lcom/google/android/gms/ads/internal/client/zzn;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/client/zzn;->zza()Lcom/google/android/gms/ads/internal/client/zzm;

    move-result-object v0

    :goto_0
    move-object v9, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v5, v0, v1}, Lcom/google/android/gms/ads/internal/client/zzeh;->zzo(J)V

    sget-object v0, Lcom/google/android/gms/ads/internal/client/zzq;->zza:Lcom/google/android/gms/ads/internal/client/zzq;

    invoke-virtual {v0, v2, v5}, Lcom/google/android/gms/ads/internal/client/zzq;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzeh;)Lcom/google/android/gms/ads/internal/client/zzm;

    move-result-object v0

    goto :goto_0

    :goto_1
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/v3;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/v3;->b:Lcom/google/android/gms/ads/AdFormat;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbym;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zzbym;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzr;Lcom/google/android/gms/ads/internal/client/zzm;ILjava/lang/String;)V

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbto;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzbto;-><init>(Lcom/google/android/gms/internal/ads/v3;Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;)V

    invoke-interface {v3, v4, v1, v0}, Lcom/google/android/gms/internal/ads/zzbyi;->zzf(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbym;Lcom/google/android/gms/internal/ads/zzbyf;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "Internal Error."

    invoke-virtual {p1, p0}, Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;->onFailure(Ljava/lang/String;)V

    return-void
.end method
