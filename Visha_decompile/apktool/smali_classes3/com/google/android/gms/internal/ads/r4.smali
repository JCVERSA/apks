.class public final Lcom/google/android/gms/internal/ads/r4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltng;


# instance fields
.field public final a:J

.field public final b:Lcom/google/android/gms/internal/ads/zzejz;


# direct methods
.method public constructor <init>(JLandroid/content/Context;Lyng;Llkf;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/r4;->a:J

    invoke-virtual {p5}, Llkf;->y()Lfkh;

    move-result-object p1

    invoke-interface {p1, p3}, Lfkh;->b(Landroid/content/Context;)Lfkh;

    new-instance p2, Lcom/google/android/gms/ads/internal/client/zzr;

    invoke-direct {p2}, Lcom/google/android/gms/ads/internal/client/zzr;-><init>()V

    invoke-interface {p1, p2}, Lfkh;->a(Lcom/google/android/gms/ads/internal/client/zzr;)Lfkh;

    invoke-interface {p1, p6}, Lfkh;->zzb(Ljava/lang/String;)Lfkh;

    invoke-interface {p1}, Lfkh;->zzd()Lkkh;

    move-result-object p1

    invoke-interface {p1}, Lkkh;->zza()Lcom/google/android/gms/internal/ads/zzejz;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/r4;->b:Lcom/google/android/gms/internal/ads/zzejz;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzdsq;

    invoke-direct {p2, p0, p4}, Lcom/google/android/gms/internal/ads/zzdsq;-><init>(Lcom/google/android/gms/internal/ads/r4;Lyng;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzejz;->zzD(Lcom/google/android/gms/ads/internal/client/zzbk;)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/google/android/gms/internal/ads/r4;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/r4;->a:J

    return-wide v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/ads/internal/client/zzm;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/r4;->b:Lcom/google/android/gms/internal/ads/zzejz;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzejz;->zzab(Lcom/google/android/gms/ads/internal/client/zzm;)Z

    return-void
.end method

.method public final zza()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/r4;->b:Lcom/google/android/gms/internal/ads/zzejz;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzejz;->zzx()V

    return-void
.end method

.method public final zzc()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/r4;->b:Lcom/google/android/gms/internal/ads/zzejz;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzejz;->zzW(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    return-void
.end method
