.class public abstract Lvjf;
.super Lijf;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lejf;Lcom/google/android/gms/internal/ads/o0;ZLcom/google/android/gms/internal/ads/zzebe;)V
    .locals 7

    new-instance v4, Lz9f;

    invoke-interface {p1}, Lejf;->zzE()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lhxe;

    invoke-interface {p1}, Lejf;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lhxe;-><init>(Landroid/content/Context;)V

    invoke-direct {v4, p1, v0, v1}, Lz9f;-><init>(Lejf;Landroid/content/Context;Lhxe;)V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lijf;-><init>(Lejf;Lcom/google/android/gms/internal/ads/o0;ZLz9f;Lq9f;Lcom/google/android/gms/internal/ads/zzebe;)V

    return-void
.end method


# virtual methods
.method public final R(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;
    .locals 2

    instance-of v0, p1, Lejf;

    if-nez v0, :cond_0

    sget p0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p0, "Tried to intercept request from a WebView that wasn\'t an AdWebView."

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    check-cast p1, Lejf;

    iget-object v0, p0, Lijf;->z:Lddf;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-interface {v0, p2, p3, v1}, Lddf;->b(Ljava/lang/String;Ljava/util/Map;I)V

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lqyh;->a()Lsyh;

    sget-object v1, Lwyh;->a:Lwyh;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mraid.js"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p3, :cond_2

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p3

    :cond_2
    invoke-super {p0, p2, p3}, Lijf;->D(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-interface {p1}, Lejf;->zzN()Likf;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-interface {p1}, Lejf;->zzN()Likf;

    move-result-object p0

    invoke-interface {p0}, Likf;->zzH()V

    :cond_4
    invoke-interface {p1}, Lejf;->zzO()Lkkf;

    move-result-object p0

    invoke-virtual {p0}, Lkkf;->i()Z

    move-result p0

    if-eqz p0, :cond_5

    sget-object p0, Lcye;->d0:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object p2

    invoke-virtual {p2, p0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_5
    invoke-interface {p1}, Lejf;->zzaF()Z

    move-result p0

    if-eqz p0, :cond_6

    sget-object p0, Lcye;->c0:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object p2

    invoke-virtual {p2, p0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_6
    sget-object p0, Lcye;->b0:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object p2

    invoke-virtual {p2, p0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-interface {p1}, Lejf;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-interface {p1}, Lejf;->zzm()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    invoke-static {p2, p1, p0}, Lcom/google/android/gms/ads/internal/util/zzs;->zzy(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p0

    return-object p0
.end method
