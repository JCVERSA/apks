.class public final Lsth;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lq0h;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Landroid/content/Context;

.field public final f:Lwmh;

.field public final g:Lxmh;

.field public final h:Lfy0;

.field public final i:Lfre;


# direct methods
.method public constructor <init>(Lq0h;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lwmh;Lxmh;Lfy0;Lfre;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsth;->a:Lq0h;

    iget-object p1, p2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    iput-object p1, p0, Lsth;->b:Ljava/lang/String;

    iput-object p3, p0, Lsth;->c:Ljava/lang/String;

    iput-object p4, p0, Lsth;->d:Ljava/lang/String;

    iput-object p5, p0, Lsth;->e:Landroid/content/Context;

    iput-object p6, p0, Lsth;->f:Lwmh;

    iput-object p7, p0, Lsth;->g:Lxmh;

    iput-object p8, p0, Lsth;->h:Lfy0;

    iput-object p9, p0, Lsth;->i:Lfre;

    return-void
.end method

.method public static synthetic a(Lwmh;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lwmh;->a:Ljava/lang/String;

    invoke-static {p0}, Lsth;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lwmh;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lwmh;->b:Ljava/lang/String;

    invoke-static {p0}, Lsth;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-ne v0, v1, :cond_0

    const-string p2, ""

    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/client/zzl;->zzk()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "fakeForAdDebugLog"

    :cond_1
    return-object p0
.end method


# virtual methods
.method public final d(Lvmh;Lhmh;Ljava/util/List;)Ljava/util/List;
    .locals 7

    const-string v4, ""

    const-string v5, ""

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lsth;->e(Lvmh;Lhmh;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final e(Lvmh;Lhmh;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p6

    :goto_0
    invoke-interface {p6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "1"

    const-string v2, "0"

    const/4 v3, 0x1

    if-eq v3, p3, :cond_0

    move-object v4, v2

    goto :goto_1

    :cond_0
    move-object v4, v1

    :goto_1
    invoke-interface {p6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p1, Lvmh;->a:Lsmh;

    iget-object v6, v6, Lsmh;->a:Lenh;

    const-string v7, "@gw_adlocid@"

    iget-object v6, v6, Lenh;->f:Ljava/lang/String;

    invoke-static {v5, v7, v6}, Lsth;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "@gw_adnetrefresh@"

    invoke-static {v5, v6, v4}, Lsth;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lsth;->b:Ljava/lang/String;

    const-string v6, "@gw_sdkver@"

    invoke-static {v4, v6, v5}, Lsth;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz p2, :cond_2

    const-string v5, "@gw_qdata@"

    iget-object v6, p2, Lhmh;->y:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lsth;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "@gw_adnetid@"

    iget-object v6, p2, Lhmh;->x:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lsth;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "@gw_allocid@"

    iget-object v6, p2, Lhmh;->w:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lsth;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lsth;->e:Landroid/content/Context;

    iget-object v6, p2, Lhmh;->w0:Ljava/util/Map;

    iget-boolean v7, p2, Lhmh;->W:Z

    invoke-static {v4, v5, v7, v6}, Ltdf;->c(Ljava/lang/String;Landroid/content/Context;ZLjava/util/Map;)Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcye;->qd:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v7

    invoke-virtual {v7, v6}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_2

    iget v6, p2, Lhmh;->e:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {v5}, Lcom/google/android/gms/ads/internal/util/zzs;->zzH(Landroid/content/Context;)Z

    move-result v5

    if-eq v3, v5, :cond_1

    move-object v1, v2

    :cond_1
    const-string v2, "@gw_aps@"

    invoke-static {v4, v2, v1}, Lsth;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_2
    iget-object v1, p0, Lsth;->a:Lq0h;

    invoke-virtual {v1}, Lq0h;->g()Ljava/lang/String;

    move-result-object v2

    const-string v5, "@gw_adnetstatus@"

    invoke-static {v4, v5, v2}, Lsth;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lq0h;->a()J

    move-result-wide v4

    const/16 v1, 0xa

    invoke-static {v4, v5, v1}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v1

    const-string v4, "@gw_ttr@"

    invoke-static {v2, v4, v1}, Lsth;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lsth;->c:Ljava/lang/String;

    const-string v4, "@gw_seqnum@"

    invoke-static {v1, v4, v2}, Lsth;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lsth;->d:Ljava/lang/String;

    const-string v4, "@gw_sessid@"

    invoke-static {v1, v4, v2}, Lsth;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcye;->L3:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v4

    invoke-virtual {v4, v2}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    move v4, v3

    :cond_3
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v5, v2, 0x1

    if-nez v4, :cond_4

    if-nez v2, :cond_7

    goto :goto_2

    :cond_4
    move v3, v5

    :goto_2
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v5, p0, Lsth;->i:Lfre;

    invoke-virtual {v5, v2}, Lfre;->f(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    if-eqz v4, :cond_5

    const-string v2, "ms"

    invoke-virtual {v1, v2, p4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    :cond_5
    if-eqz v3, :cond_6

    const-string v2, "attok"

    invoke-virtual {v1, v2, p5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    :cond_6
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_7
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_8
    return-object v0
.end method

.method public final f(Lhmh;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzbvk;)Ljava/util/List;
    .locals 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lsth;->h:Lfy0;

    invoke-interface {v1}, Lfy0;->currentTimeMillis()J

    move-result-wide v1

    :try_start_0
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzbvk;->zzc()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzbvk;->zzb()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v4, Lcye;->M3:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v5

    invoke-virtual {v5, v4}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lsth;->g:Lxmh;

    if-nez v4, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzftu;->zzc()Lcom/google/android/gms/internal/ads/zzftu;

    move-result-object v4

    goto :goto_1

    :cond_0
    iget-object v4, v4, Lxmh;->a:Lwmh;

    :goto_0
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzftu;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzftu;

    move-result-object v4

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lsth;->f:Lwmh;

    goto :goto_0

    :goto_1
    new-instance v5, Lqth;

    invoke-direct {v5}, Lqth;-><init>()V

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzftu;->zza(Lm2i;)Lcom/google/android/gms/internal/ads/zzftu;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzftu;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v7, Lrth;

    invoke-direct {v7}, Lrth;-><init>()V

    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/ads/zzftu;->zza(Lm2i;)Lcom/google/android/gms/internal/ads/zzftu;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/ads/zzftu;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "@gw_rwd_userid@"

    invoke-static {v6, v8, v7}, Lsth;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "@gw_rwd_custom_data@"

    invoke-static {v6, v8, v7}, Lsth;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    const-string v8, "@gw_tmstmp@"

    invoke-static {v6, v8, v7}, Lsth;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "@gw_rwd_itm@"

    invoke-static {v6, v8, v7}, Lsth;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "@gw_rwd_amt@"

    invoke-static {v6, v7, p3}, Lsth;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lsth;->b:Ljava/lang/String;

    const-string v8, "@gw_sdkver@"

    invoke-static {v6, v8, v7}, Lsth;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lsth;->e:Landroid/content/Context;

    iget-boolean v8, p1, Lhmh;->W:Z

    iget-object v9, p1, Lhmh;->w0:Ljava/util/Map;

    invoke-static {v6, v7, v8, v9}, Ltdf;->c(Ljava/lang/String;Landroid/content/Context;ZLjava/util/Map;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    return-object v0

    :catch_0
    move-exception p0

    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "Unable to determine award type and amount."

    invoke-static {p1, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method
