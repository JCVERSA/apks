.class public final Lywg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzwg;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzebw;Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzebx;)Lfxg;
    .locals 2

    const-string p0, "Google"

    invoke-static {p0, p1}, Lwuh;->a(Ljava/lang/String;Ljava/lang/String;)Lwuh;

    move-result-object p0

    const-string p1, "javascript"

    invoke-static {p1}, Lywg;->o(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfkh;

    move-result-object p1

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzebw;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lywg;->m(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfka;

    move-result-object p2

    sget-object p7, Lcom/google/android/gms/internal/ads/zzfkh;->zzc:Lcom/google/android/gms/internal/ads/zzfkh;

    const/4 v0, 0x0

    if-ne p1, p7, :cond_0

    sget p0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p0, "Omid html session error; Unable to parse impression owner: javascript"

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    return-object v0

    :cond_0
    if-nez p2, :cond_1

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "Omid html session error; Unable to parse creative type: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    return-object v0

    :cond_1
    invoke-static {p4}, Lywg;->o(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfkh;

    move-result-object p3

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfka;->zzd:Lcom/google/android/gms/internal/ads/zzfka;

    if-ne p2, v1, :cond_2

    if-ne p3, p7, :cond_2

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "Omid html session error; Video events owner unknown for video creative: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    return-object v0

    :cond_2
    const-string p4, ""

    invoke-static {p0, p5, p6, p4}, Lruh;->b(Lwuh;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)Lruh;

    move-result-object p0

    invoke-virtual {p8}, Lcom/google/android/gms/internal/ads/zzebx;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lywg;->n(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfkd;

    move-result-object p4

    const/4 p5, 0x1

    invoke-static {p2, p4, p1, p3, p5}, Lquh;->a(Lcom/google/android/gms/internal/ads/zzfka;Lcom/google/android/gms/internal/ads/zzfkd;Lcom/google/android/gms/internal/ads/zzfkh;Lcom/google/android/gms/internal/ads/zzfkh;Z)Lquh;

    move-result-object p1

    invoke-static {p1, p0}, Lpuh;->a(Lquh;Lruh;)Lpuh;

    move-result-object p1

    new-instance p2, Lfxg;

    invoke-direct {p2, p1, p0}, Lfxg;-><init>(Lpuh;Lruh;)V

    return-object p2
.end method

.method public static synthetic l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzebw;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzebx;)Lfxg;
    .locals 2

    invoke-static {p0, p1}, Lwuh;->a(Ljava/lang/String;Ljava/lang/String;)Lwuh;

    move-result-object p0

    const-string p1, "javascript"

    invoke-static {p1}, Lywg;->o(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfkh;

    move-result-object p1

    invoke-static {p3}, Lywg;->o(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfkh;

    move-result-object p2

    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzebw;->toString()Ljava/lang/String;

    move-result-object p7

    invoke-static {p7}, Lywg;->m(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfka;

    move-result-object p7

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfkh;->zzc:Lcom/google/android/gms/internal/ads/zzfkh;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    sget p0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p0, "Omid js session error; Unable to parse impression owner: javascript"

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    return-object v1

    :cond_0
    if-nez p7, :cond_1

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "Omid js session error; Unable to parse creative type: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    return-object v1

    :cond_1
    sget-object p4, Lcom/google/android/gms/internal/ads/zzfka;->zzd:Lcom/google/android/gms/internal/ads/zzfka;

    if-ne p7, p4, :cond_2

    if-ne p2, v0, :cond_2

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "Omid js session error; Video events owner unknown for video creative: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    return-object v1

    :cond_2
    const-string p3, ""

    invoke-static {p0, p5, p6, p3}, Lruh;->c(Lwuh;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)Lruh;

    move-result-object p0

    invoke-virtual {p8}, Lcom/google/android/gms/internal/ads/zzebx;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lywg;->n(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfkd;

    move-result-object p3

    const/4 p4, 0x1

    invoke-static {p7, p3, p1, p2, p4}, Lquh;->a(Lcom/google/android/gms/internal/ads/zzfka;Lcom/google/android/gms/internal/ads/zzfkd;Lcom/google/android/gms/internal/ads/zzfkh;Lcom/google/android/gms/internal/ads/zzfkh;Z)Lquh;

    move-result-object p1

    invoke-static {p1, p0}, Lpuh;->a(Lquh;Lruh;)Lpuh;

    move-result-object p1

    new-instance p2, Lfxg;

    invoke-direct {p2, p1, p0}, Lfxg;-><init>(Lpuh;Lruh;)V

    return-object p2
.end method

.method public static m(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfka;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x16d03d69

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    const v1, 0x6b0147b

    if-eq v0, v1, :cond_1

    const v1, 0x2a9c68ab

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "nativeDisplay"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    move p0, v3

    goto :goto_1

    :cond_1
    const-string v0, "video"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    move p0, v2

    goto :goto_1

    :cond_2
    const-string v0, "htmlDisplay"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_6

    if-eq p0, v3, :cond_5

    if-eq p0, v2, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    sget-object p0, Lcom/google/android/gms/internal/ads/zzfka;->zzd:Lcom/google/android/gms/internal/ads/zzfka;

    return-object p0

    :cond_5
    sget-object p0, Lcom/google/android/gms/internal/ads/zzfka;->zzc:Lcom/google/android/gms/internal/ads/zzfka;

    return-object p0

    :cond_6
    sget-object p0, Lcom/google/android/gms/internal/ads/zzfka;->zzb:Lcom/google/android/gms/internal/ads/zzfka;

    return-object p0
.end method

.method public static n(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfkd;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x41cfa846

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v0, v1, :cond_2

    const v1, 0x4e906dcd

    if-eq v0, v1, :cond_1

    const v1, 0x768243c0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "onePixel"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    move p0, v3

    goto :goto_1

    :cond_1
    const-string v0, "definedByJavascript"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    move p0, v2

    goto :goto_1

    :cond_2
    const-string v0, "beginToRender"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_6

    if-eq p0, v2, :cond_5

    if-eq p0, v3, :cond_4

    sget-object p0, Lcom/google/android/gms/internal/ads/zzfkd;->zzb:Lcom/google/android/gms/internal/ads/zzfkd;

    return-object p0

    :cond_4
    sget-object p0, Lcom/google/android/gms/internal/ads/zzfkd;->zze:Lcom/google/android/gms/internal/ads/zzfkd;

    return-object p0

    :cond_5
    sget-object p0, Lcom/google/android/gms/internal/ads/zzfkd;->zza:Lcom/google/android/gms/internal/ads/zzfkd;

    return-object p0

    :cond_6
    sget-object p0, Lcom/google/android/gms/internal/ads/zzfkd;->zzd:Lcom/google/android/gms/internal/ads/zzfkd;

    return-object p0
.end method

.method public static o(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfkh;
    .locals 1

    const-string v0, "native"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/ads/zzfkh;->zza:Lcom/google/android/gms/internal/ads/zzfkh;

    return-object p0

    :cond_0
    const-string v0, "javascript"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/google/android/gms/internal/ads/zzfkh;->zzb:Lcom/google/android/gms/internal/ads/zzfkh;

    return-object p0

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/ads/zzfkh;->zzc:Lcom/google/android/gms/internal/ads/zzfkh;

    return-object p0
.end method

.method public static final p(Lxwg;)Ljava/lang/Object;
    .locals 2

    :try_start_0
    invoke-interface {p0}, Lxwg;->zza()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "omid exception"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lqef;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lqef;->w(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static final q(Ljava/lang/Runnable;)V
    .locals 2

    :try_start_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "omid exception"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lqef;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lqef;->w(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Z
    .locals 1

    sget-object p0, Lcye;->m5:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v0

    invoke-virtual {v0, p0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    sget p0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p0, "Omid flag is disabled"

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    return v0

    :cond_0
    new-instance p0, Luwg;

    invoke-direct {p0, p1}, Luwg;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Lywg;->p(Lxwg;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public final b(Lcom/google/android/gms/internal/ads/b6;Lojf;)V
    .locals 0

    new-instance p0, Lcom/google/android/gms/internal/ads/zzebq;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzebq;-><init>(Lcom/google/android/gms/internal/ads/b6;Lojf;)V

    invoke-static {p0}, Lywg;->q(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c(Lpuh;Landroid/view/View;)V
    .locals 0

    new-instance p0, Lcom/google/android/gms/internal/ads/zzebk;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzebk;-><init>(Lpuh;Landroid/view/View;)V

    invoke-static {p0}, Lywg;->q(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzebx;Lcom/google/android/gms/internal/ads/zzebw;Ljava/lang/String;)Lfxg;
    .locals 11

    sget-object v0, Lcye;->m5:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lnuh;->b()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lswg;

    const-string v4, "javascript"

    const-string v2, "Google"

    const-string v9, ""

    move-object v1, v0

    move-object v3, p1

    move-object/from16 v5, p7

    move-object/from16 v6, p5

    move-object v7, p2

    move-object/from16 v8, p8

    move-object/from16 v10, p6

    invoke-direct/range {v1 .. v10}, Lswg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzebw;Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzebx;)V

    invoke-static {v0}, Lywg;->p(Lxwg;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfxg;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final e(Lpuh;Landroid/view/View;)V
    .locals 0

    new-instance p0, Lcom/google/android/gms/internal/ads/zzebi;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzebi;-><init>(Lpuh;Landroid/view/View;)V

    invoke-static {p0}, Lywg;->q(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final f(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzebx;Lcom/google/android/gms/internal/ads/zzebw;Ljava/lang/String;)Lfxg;
    .locals 11

    sget-object v0, Lcye;->m5:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lnuh;->b()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ltwg;

    const-string v9, ""

    const-string v4, "javascript"

    move-object v1, v0

    move-object/from16 v2, p6

    move-object v3, p1

    move-object/from16 v5, p5

    move-object/from16 v6, p8

    move-object v7, p2

    move-object/from16 v8, p9

    move-object/from16 v10, p7

    invoke-direct/range {v1 .. v10}, Ltwg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzebw;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzebx;)V

    invoke-static {v0}, Lywg;->p(Lxwg;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfxg;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final g(Lcom/google/android/gms/internal/ads/b6;Landroid/view/View;)V
    .locals 0

    new-instance p0, Lcom/google/android/gms/internal/ads/zzebo;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzebo;-><init>(Lcom/google/android/gms/internal/ads/b6;Landroid/view/View;)V

    invoke-static {p0}, Lywg;->q(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final h(Lpuh;)V
    .locals 1

    sget-object p0, Lcye;->m5:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v0

    invoke-virtual {v0, p0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lnuh;->b()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/google/android/gms/internal/ads/zzebl;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzebl;-><init>(Lpuh;)V

    invoke-static {p0}, Lywg;->q(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final i(Lpuh;)V
    .locals 0

    new-instance p0, Lcom/google/android/gms/internal/ads/zzebs;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzebs;-><init>(Lpuh;)V

    invoke-static {p0}, Lywg;->q(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final j(Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Landroid/webkit/WebView;Z)Lcom/google/android/gms/internal/ads/b6;
    .locals 0

    new-instance p0, Lwwg;

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lwwg;-><init>(Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Landroid/webkit/WebView;Z)V

    invoke-static {p0}, Lywg;->p(Lxwg;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/b6;

    return-object p0
.end method

.method public final zzf(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    sget-object p0, Lcye;->m5:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object p1

    invoke-virtual {p1, p0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Lvwg;

    invoke-direct {p0}, Lvwg;-><init>()V

    invoke-static {p0}, Lywg;->p(Lxwg;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
