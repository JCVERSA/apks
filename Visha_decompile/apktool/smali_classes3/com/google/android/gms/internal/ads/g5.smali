.class public final Lcom/google/android/gms/internal/ads/g5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpxg;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lbjg;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lbjg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/g5;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/g5;->b:Lbjg;

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

    iget-object p1, p1, Lvmh;->a:Lsmh;

    iget-object p1, p1, Lsmh;->a:Lenh;

    iget-object v0, p1, Lenh;->o:Lrmh;

    iget v0, v0, Lrmh;->a:I

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    iget-object v2, p2, Lhmh;->U:Ljava/lang/String;

    iget-object p2, p2, Lhmh;->v:Lorg/json/JSONObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v4, p1, Lenh;->d:Lcom/google/android/gms/ads/internal/client/zzm;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/g5;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v5

    new-instance v6, Lcom/google/android/gms/internal/ads/zzegj;

    invoke-direct {v6, p0, p3, v3}, Lcom/google/android/gms/internal/ads/zzegj;-><init>(Lcom/google/android/gms/internal/ads/g5;Lnxg;Lh1h;)V

    iget-object p0, p3, Lnxg;->c:Lx0g;

    move-object v7, p0

    check-cast v7, Lcom/google/android/gms/internal/ads/zzbpe;

    move-object v3, p2

    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzbqx;->zzo(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzm;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbqu;Lcom/google/android/gms/internal/ads/zzbpe;)V

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object v2, p2, Lhmh;->U:Ljava/lang/String;

    iget-object p2, p2, Lhmh;->v:Lorg/json/JSONObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v4, p1, Lenh;->d:Lcom/google/android/gms/ads/internal/client/zzm;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/g5;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v5

    new-instance v6, Lcom/google/android/gms/internal/ads/zzegj;

    invoke-direct {v6, p0, p3, v3}, Lcom/google/android/gms/internal/ads/zzegj;-><init>(Lcom/google/android/gms/internal/ads/g5;Lnxg;Lh1h;)V

    iget-object p0, p3, Lnxg;->c:Lx0g;

    move-object v7, p0

    check-cast v7, Lcom/google/android/gms/internal/ads/zzbpe;

    move-object v3, p2

    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzbqx;->zzp(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzm;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbqu;Lcom/google/android/gms/internal/ads/zzbpe;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_0
    const-string p1, "Remote exception loading a rewarded RTB ad"

    invoke-static {p1, p0}, Lcom/google/android/gms/ads/internal/util/zze;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final bridge synthetic b(Lvmh;Lhmh;Lnxg;)Ljava/lang/Object;
    .locals 3

    new-instance v0, Ldzg;

    iget-object v1, p3, Lnxg;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbqx;

    sget-object v2, Lcom/google/android/gms/ads/AdFormat;->REWARDED:Lcom/google/android/gms/ads/AdFormat;

    invoke-direct {v0, p2, v1, v2}, Ldzg;-><init>(Lhmh;Lcom/google/android/gms/internal/ads/zzbqx;Lcom/google/android/gms/ads/AdFormat;)V

    new-instance v1, Lpuf;

    iget-object v2, p3, Lnxg;->a:Ljava/lang/String;

    invoke-direct {v1, p1, p2, v2}, Lpuf;-><init>(Lvmh;Lhmh;Ljava/lang/String;)V

    new-instance p1, Lyig;

    invoke-direct {p1, v0}, Lyig;-><init>(Lebg;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/g5;->b:Lbjg;

    invoke-virtual {p0, v1, p1}, Lbjg;->b(Lpuf;Lyig;)Lxig;

    move-result-object p0

    invoke-virtual {p0}, Lcuf;->b()Lb0g;

    move-result-object p1

    invoke-virtual {v0, p1}, Ldzg;->b(Lb0g;)V

    iget-object p1, p3, Lnxg;->c:Lx0g;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzedw;

    invoke-virtual {p0}, Lxig;->o()Lcom/google/android/gms/internal/ads/zzehh;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzedw;->zzc(Lcom/google/android/gms/internal/ads/zzbpe;)V

    invoke-virtual {p0}, Lxig;->k()Lwig;

    move-result-object p0

    return-object p0
.end method
