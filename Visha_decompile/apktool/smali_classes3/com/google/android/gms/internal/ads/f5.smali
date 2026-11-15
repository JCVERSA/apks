.class public final Lcom/google/android/gms/internal/ads/f5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpxg;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lubg;

.field public c:Lcom/google/android/gms/internal/ads/zzbpn;

.field public final d:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lubg;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/f5;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/f5;->b:Lubg;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/f5;->d:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    return-void
.end method

.method public static bridge synthetic c(Lcom/google/android/gms/internal/ads/f5;Lcom/google/android/gms/internal/ads/zzbpn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/f5;->c:Lcom/google/android/gms/internal/ads/zzbpn;

    return-void
.end method


# virtual methods
.method public final a(Lvmh;Lhmh;Lnxg;)V
    .locals 9

    :try_start_0
    iget-object v0, p3, Lnxg;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbqx;

    iget-object v0, p2, Lhmh;->Z:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzbqx;->zzq(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f5;->d:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->clientJarVersion:I

    sget-object v2, Lcye;->T1:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v3

    invoke-virtual {v3, v2}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    if-ge v0, v2, :cond_0

    iget-object v2, p2, Lhmh;->U:Ljava/lang/String;

    iget-object p2, p2, Lhmh;->v:Lorg/json/JSONObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p1, p1, Lvmh;->a:Lsmh;

    iget-object p1, p1, Lsmh;->a:Lenh;

    iget-object v4, p1, Lenh;->d:Lcom/google/android/gms/ads/internal/client/zzm;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/f5;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v5

    new-instance v6, Lcom/google/android/gms/internal/ads/zzeey;

    invoke-direct {v6, p0, p3, v3}, Lcom/google/android/gms/internal/ads/zzeey;-><init>(Lcom/google/android/gms/internal/ads/f5;Lnxg;Luzg;)V

    iget-object p0, p3, Lnxg;->c:Lx0g;

    move-object v7, p0

    check-cast v7, Lcom/google/android/gms/internal/ads/zzbpe;

    move-object v3, p2

    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzbqx;->zzm(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzm;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbqr;Lcom/google/android/gms/internal/ads/zzbpe;)V

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object v2, p2, Lhmh;->U:Ljava/lang/String;

    iget-object p2, p2, Lhmh;->v:Lorg/json/JSONObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p1, p1, Lvmh;->a:Lsmh;

    iget-object p1, p1, Lsmh;->a:Lenh;

    iget-object v4, p1, Lenh;->d:Lcom/google/android/gms/ads/internal/client/zzm;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f5;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v5

    new-instance v6, Lcom/google/android/gms/internal/ads/zzeey;

    invoke-direct {v6, p0, p3, v3}, Lcom/google/android/gms/internal/ads/zzeey;-><init>(Lcom/google/android/gms/internal/ads/f5;Lnxg;Luzg;)V

    iget-object p0, p3, Lnxg;->c:Lx0g;

    move-object v7, p0

    check-cast v7, Lcom/google/android/gms/internal/ads/zzbpe;

    iget-object v8, p1, Lenh;->i:Lcom/google/android/gms/internal/ads/zzbfi;

    move-object v3, p2

    invoke-interface/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzbqx;->zzn(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzm;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbqr;Lcom/google/android/gms/internal/ads/zzbpe;Lcom/google/android/gms/internal/ads/zzbfi;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzfbw;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzfbw;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final bridge synthetic b(Lvmh;Lhmh;Lnxg;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p1, Lvmh;->a:Lsmh;

    iget-object v0, v0, Lsmh;->a:Lenh;

    iget-object v0, v0, Lenh;->g:Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/f5;->c:Lcom/google/android/gms/internal/ads/zzbpn;

    invoke-static {v1}, Lddg;->g0(Lcom/google/android/gms/internal/ads/zzbpn;)Lddg;

    move-result-object v1

    invoke-virtual {v1}, Lddg;->P()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f5;->b:Lubg;

    iget-object v2, p3, Lnxg;->a:Ljava/lang/String;

    new-instance v3, Lpuf;

    invoke-direct {v3, p1, p2, v2}, Lpuf;-><init>(Lvmh;Lhmh;Ljava/lang/String;)V

    new-instance p1, Ltdg;

    invoke-direct {p1, v1}, Ltdg;-><init>(Lddg;)V

    new-instance p2, Ljfg;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/f5;->c:Lcom/google/android/gms/internal/ads/zzbpn;

    const/4 v1, 0x0

    invoke-direct {p2, v1, v1, p0}, Ljfg;-><init>(Lcom/google/android/gms/internal/ads/zzbpk;Lcom/google/android/gms/internal/ads/zzbpj;Lcom/google/android/gms/internal/ads/zzbpn;)V

    invoke-virtual {v0, v3, p1, p2}, Lubg;->d(Lpuf;Ltdg;Ljfg;)Lfdg;

    move-result-object p0

    iget-object p1, p3, Lnxg;->c:Lx0g;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzedw;

    invoke-virtual {p0}, Lcuf;->f()Lcom/google/android/gms/internal/ads/zzehi;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzedw;->zzc(Lcom/google/android/gms/internal/ads/zzbpe;)V

    invoke-virtual {p0}, Lgdg;->h()Lzcg;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/ads/zzefy;

    const/4 p1, 0x1

    const-string p2, "No corresponding native ad listener"

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzefy;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/ads/zzefy;

    const/4 p1, 0x2

    const-string p2, "Unified must be used for RTB."

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzefy;-><init>(ILjava/lang/String;)V

    throw p0
.end method
