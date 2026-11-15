.class public final Lcom/google/android/gms/internal/ads/c5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpxg;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lirf;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lirf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/c5;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/c5;->b:Lirf;

    return-void
.end method


# virtual methods
.method public final a(Lvmh;Lhmh;Lnxg;)V
    .locals 8

    :try_start_0
    iget-object v0, p3, Lnxg;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbqx;

    iget-object v0, p2, Lhmh;->Z:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzbqx;->zzq(Ljava/lang/String;)V

    iget-object v2, p2, Lhmh;->U:Ljava/lang/String;

    iget-object p2, p2, Lhmh;->v:Lorg/json/JSONObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p1, Lvmh;->a:Lsmh;

    iget-object p1, p1, Lsmh;->a:Lenh;

    iget-object v4, p1, Lenh;->d:Lcom/google/android/gms/ads/internal/client/zzm;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/c5;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v5

    new-instance v6, Lcom/google/android/gms/internal/ads/zzecw;

    const/4 p0, 0x0

    invoke-direct {v6, p3, p0}, Lcom/google/android/gms/internal/ads/zzecw;-><init>(Lnxg;Lzxg;)V

    iget-object p0, p3, Lnxg;->c:Lx0g;

    move-object v7, p0

    check-cast v7, Lcom/google/android/gms/internal/ads/zzbpe;

    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzbqx;->zzi(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzm;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbqi;Lcom/google/android/gms/internal/ads/zzbpe;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Remote exception loading an app open RTB ad"

    invoke-static {p1, p0}, Lcom/google/android/gms/ads/internal/util/zze;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfbw;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzfbw;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final bridge synthetic b(Lvmh;Lhmh;Lnxg;)Ljava/lang/Object;
    .locals 3

    new-instance v0, Ldzg;

    iget-object v1, p3, Lnxg;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbqx;

    sget-object v2, Lcom/google/android/gms/ads/AdFormat;->APP_OPEN_AD:Lcom/google/android/gms/ads/AdFormat;

    invoke-direct {v0, p2, v1, v2}, Ldzg;-><init>(Lhmh;Lcom/google/android/gms/internal/ads/zzbqx;Lcom/google/android/gms/ads/AdFormat;)V

    new-instance v1, Lpuf;

    iget-object v2, p3, Lnxg;->a:Ljava/lang/String;

    invoke-direct {v1, p1, p2, v2}, Lpuf;-><init>(Lvmh;Lhmh;Ljava/lang/String;)V

    new-instance p1, Lw9g;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v2}, Lw9g;-><init>(Lebg;Lejf;)V

    new-instance v2, Lgrf;

    iget p2, p2, Lhmh;->a0:I

    invoke-direct {v2, p2}, Lgrf;-><init>(I)V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/c5;->b:Lirf;

    invoke-virtual {p0, v1, p1, v2}, Lirf;->a(Lpuf;Lw9g;Lgrf;)Lfrf;

    move-result-object p0

    invoke-virtual {p0}, Lcuf;->b()Lb0g;

    move-result-object p1

    invoke-virtual {v0, p1}, Ldzg;->b(Lb0g;)V

    iget-object p1, p3, Lnxg;->c:Lx0g;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzedw;

    invoke-virtual {p0}, Lcuf;->f()Lcom/google/android/gms/internal/ads/zzehi;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzedw;->zzc(Lcom/google/android/gms/internal/ads/zzbpe;)V

    invoke-virtual {p0}, Lfrf;->h()Lnrf;

    move-result-object p0

    return-object p0
.end method
