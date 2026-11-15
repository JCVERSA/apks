.class public final Logg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lvfg;

.field public final c:Lfre;

.field public final d:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field public final e:Lcom/google/android/gms/ads/internal/zza;

.field public final f:Lcom/google/android/gms/internal/ads/o0;

.field public final g:Ljava/util/concurrent/Executor;

.field public final h:Lcom/google/android/gms/internal/ads/zzbfi;

.field public final i:Ljhg;

.field public final j:Lujg;

.field public final k:Ljava/util/concurrent/ScheduledExecutorService;

.field public final l:Lnig;

.field public final m:Lsmg;

.field public final n:Lwth;

.field public final o:Ldwg;

.field public final p:Lcom/google/android/gms/internal/ads/zzebe;

.field public final q:Linh;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lvfg;Lfre;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/o0;Ljava/util/concurrent/Executor;Lenh;Ljhg;Lujg;Ljava/util/concurrent/ScheduledExecutorService;Lsmg;Lwth;Ldwg;Lnig;Lcom/google/android/gms/internal/ads/zzebe;Linh;)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Logg;->a:Landroid/content/Context;

    move-object v1, p2

    iput-object v1, v0, Logg;->b:Lvfg;

    move-object v1, p3

    iput-object v1, v0, Logg;->c:Lfre;

    move-object v1, p4

    iput-object v1, v0, Logg;->d:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-object v1, p5

    iput-object v1, v0, Logg;->e:Lcom/google/android/gms/ads/internal/zza;

    move-object v1, p6

    iput-object v1, v0, Logg;->f:Lcom/google/android/gms/internal/ads/o0;

    move-object v1, p7

    iput-object v1, v0, Logg;->g:Ljava/util/concurrent/Executor;

    move-object v1, p8

    iget-object v1, v1, Lenh;->i:Lcom/google/android/gms/internal/ads/zzbfi;

    iput-object v1, v0, Logg;->h:Lcom/google/android/gms/internal/ads/zzbfi;

    move-object v1, p9

    iput-object v1, v0, Logg;->i:Ljhg;

    move-object v1, p10

    iput-object v1, v0, Logg;->j:Lujg;

    move-object v1, p11

    iput-object v1, v0, Logg;->k:Ljava/util/concurrent/ScheduledExecutorService;

    move-object v1, p12

    iput-object v1, v0, Logg;->m:Lsmg;

    move-object v1, p13

    iput-object v1, v0, Logg;->n:Lwth;

    move-object/from16 v1, p14

    iput-object v1, v0, Logg;->o:Ldwg;

    move-object/from16 v1, p15

    iput-object v1, v0, Logg;->l:Lnig;

    move-object/from16 v1, p16

    iput-object v1, v0, Logg;->p:Lcom/google/android/gms/internal/ads/zzebe;

    move-object/from16 v1, p17

    iput-object v1, v0, Logg;->q:Linh;

    return-void
.end method

.method public static synthetic a(Logg;Lorg/json/JSONObject;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzbfd;
    .locals 12

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "text"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "bg_color"

    invoke-static {p1, v1}, Logg;->q(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    const-string v1, "text_color"

    invoke-static {p1, v1}, Logg;->q(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    const-string v1, "text_size"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "allow_pub_rendering"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v10

    const-string v2, "animation_ms"

    const/16 v4, 0x3e8

    invoke-virtual {p1, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const-string v4, "presentation_ms"

    const/16 v7, 0xfa0

    invoke-virtual {p1, v4, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    new-instance v11, Lcom/google/android/gms/internal/ads/zzbfd;

    if-lez v1, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_1
    move-object v7, v0

    add-int v8, p1, v2

    iget-object p0, p0, Logg;->h:Lcom/google/android/gms/internal/ads/zzbfi;

    iget v9, p0, Lcom/google/android/gms/internal/ads/zzbfi;->zze:I

    move-object v2, v11

    move-object v4, p2

    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/internal/ads/zzbfd;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;IIZ)V

    move-object v0, v11

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static synthetic b(Logg;Lcom/google/android/gms/ads/internal/client/zzr;Lhmh;Lkmh;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lim5;
    .locals 24

    move-object/from16 v0, p0

    iget-object v1, v0, Logg;->j:Lujg;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-virtual {v1, v2, v3, v4}, Lujg;->a(Lcom/google/android/gms/ads/internal/client/zzr;Lhmh;Lkmh;)Lejf;

    move-result-object v1

    invoke-static {v1}, Ldff;->e(Ljava/lang/Object;)Ldff;

    move-result-object v2

    iget-object v3, v0, Logg;->l:Lnig;

    invoke-virtual {v3}, Lnig;->b()Lkig;

    move-result-object v9

    move-object v5, v9

    move-object v7, v9

    move-object/from16 v19, v9

    move-object v8, v9

    move-object v6, v9

    invoke-interface {v1}, Lejf;->zzN()Likf;

    move-result-object v4

    new-instance v3, Lcom/google/android/gms/ads/internal/zzb;

    move-object v12, v3

    iget-object v10, v0, Logg;->a:Landroid/content/Context;

    const/4 v14, 0x0

    invoke-direct {v3, v10, v14, v14}, Lcom/google/android/gms/ads/internal/zzb;-><init>(Landroid/content/Context;Lddf;Lcom/google/android/gms/internal/ads/zzbug;)V

    iget-object v15, v0, Logg;->o:Ldwg;

    iget-object v3, v0, Logg;->n:Lwth;

    move-object/from16 v16, v3

    iget-object v0, v0, Logg;->m:Lsmg;

    move-object/from16 v17, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v0, 0x0

    move-object v3, v14

    move-object v14, v0

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-interface/range {v4 .. v23}, Likf;->d(Lcom/google/android/gms/ads/internal/client/zza;Lr1f;Lcom/google/android/gms/ads/internal/overlay/zzr;Lz1f;Lcom/google/android/gms/ads/internal/overlay/zzac;ZLq3f;Lcom/google/android/gms/ads/internal/zzb;Lbaf;Lddf;Ldwg;Lwth;Lsmg;Lo4f;Lt8g;Ln4f;La4f;Lo3f;Lwpf;)V

    const-string v0, "/getNativeAdViewSignals"

    sget-object v4, Lm3f;->s:Ln3f;

    invoke-interface {v1, v0, v4}, Lejf;->zzag(Ljava/lang/String;Ln3f;)V

    const-string v0, "/getNativeClickMeta"

    sget-object v4, Lm3f;->t:Ln3f;

    invoke-interface {v1, v0, v4}, Lejf;->zzag(Ljava/lang/String;Ln3f;)V

    invoke-interface {v1}, Lejf;->zzN()Likf;

    move-result-object v0

    const/4 v4, 0x1

    invoke-interface {v0, v4}, Likf;->c(Z)V

    invoke-interface {v1}, Lejf;->zzN()Likf;

    move-result-object v0

    new-instance v4, Llgg;

    invoke-direct {v4, v2}, Llgg;-><init>(Ldff;)V

    invoke-interface {v0, v4}, Likf;->v(Lgkf;)V

    move-object/from16 v0, p4

    move-object/from16 v4, p5

    invoke-interface {v1, v0, v4, v3}, Lejf;->zzae(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public static synthetic c(Logg;Ljava/lang/String;Ljava/lang/Object;)Lim5;
    .locals 18

    move-object/from16 v0, p0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzA()Lmjf;

    iget-object v11, v0, Logg;->e:Lcom/google/android/gms/ads/internal/zza;

    iget-object v12, v0, Logg;->f:Lcom/google/android/gms/internal/ads/o0;

    iget-object v1, v0, Logg;->a:Landroid/content/Context;

    invoke-static {}, Lkkf;->a()Lkkf;

    move-result-object v2

    iget-object v15, v0, Logg;->p:Lcom/google/android/gms/internal/ads/zzebe;

    iget-object v3, v0, Logg;->q:Linh;

    move-object/from16 v16, v3

    iget-object v3, v0, Logg;->m:Lsmg;

    move-object/from16 v17, v3

    iget-object v8, v0, Logg;->d:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v6, v0, Logg;->c:Lfre;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v3, "native-omid"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v1 .. v17}, Lmjf;->a(Landroid/content/Context;Lkkf;Ljava/lang/String;ZZLfre;Lbze;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lqye;Lcom/google/android/gms/ads/internal/zzn;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/o0;Lhmh;Lkmh;Lcom/google/android/gms/internal/ads/zzebe;Linh;Lsmg;)Lejf;

    move-result-object v0

    invoke-static {v0}, Ldff;->e(Ljava/lang/Object;)Ldff;

    move-result-object v1

    invoke-interface {v0}, Lejf;->zzN()Likf;

    move-result-object v2

    new-instance v3, Lbgg;

    invoke-direct {v3, v1}, Lbgg;-><init>(Ldff;)V

    invoke-interface {v2, v3}, Likf;->v(Lgkf;)V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "base64"

    invoke-interface {v0, v2, v3, v4}, Lejf;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static final i(Lorg/json/JSONObject;)Lcom/google/android/gms/ads/internal/client/zzev;
    .locals 1

    const-string v0, "mute"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "default_reason"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p0}, Logg;->r(Lorg/json/JSONObject;)Lcom/google/android/gms/ads/internal/client/zzev;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final j(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 3

    const-string v0, "mute"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfww;->zzn()Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "reasons"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Logg;->r(Lorg/json/JSONObject;)Lcom/google/android/gms/ads/internal/client/zzev;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfww;->zzl(Ljava/util/Collection;)Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfww;->zzn()Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object p0

    return-object p0
.end method

.method public static l(Lim5;Ljava/lang/Object;)Lim5;
    .locals 2

    new-instance p1, Ljgg;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljgg;-><init>(Ljava/lang/Object;)V

    sget-object v0, Lzef;->g:Lg8i;

    const-class v1, Ljava/lang/Exception;

    invoke-static {p0, v1, p1, v0}, Lcom/google/android/gms/internal/ads/j8;->f(Lim5;Ljava/lang/Class;Lk7i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object p0

    return-object p0
.end method

.method public static m(ZLim5;Ljava/lang/Object;)Lim5;
    .locals 0

    if-eqz p0, :cond_0

    new-instance p0, Lkgg;

    invoke-direct {p0, p1}, Lkgg;-><init>(Lim5;)V

    sget-object p2, Lzef;->g:Lg8i;

    invoke-static {p1, p0, p2}, Lcom/google/android/gms/internal/ads/j8;->n(Lim5;Lk7i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    invoke-static {p1, p0}, Logg;->l(Lim5;Ljava/lang/Object;)Lim5;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static q(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "r"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v0, "g"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "b"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p1, v0, p0}, Landroid/graphics/Color;->rgb(III)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final r(Lorg/json/JSONObject;)Lcom/google/android/gms/ads/internal/client/zzev;
    .locals 2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "reason"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ping_url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/google/android/gms/ads/internal/client/zzev;

    invoke-direct {v1, v0, p0}, Lcom/google/android/gms/ads/internal/client/zzev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final d(Lorg/json/JSONObject;Ljava/lang/String;)Lim5;
    .locals 3

    const-string p2, "attribution"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "images"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const-string v1, "image"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Logg;->o(Lorg/json/JSONArray;ZZ)Lim5;

    move-result-object v0

    new-instance v1, Ligg;

    invoke-direct {v1, p0, p1}, Ligg;-><init>(Logg;Lorg/json/JSONObject;)V

    iget-object p0, p0, Logg;->g:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p0}, Lcom/google/android/gms/internal/ads/j8;->m(Lim5;Lm2i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object p0

    const-string v0, "require"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1, p0, p2}, Logg;->m(ZLim5;Ljava/lang/Object;)Lim5;

    move-result-object p0

    return-object p0
.end method

.method public final e(Lorg/json/JSONObject;Ljava/lang/String;)Lim5;
    .locals 1

    iget-object v0, p0, Logg;->h:Lcom/google/android/gms/internal/ads/zzbfi;

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iget-boolean p2, v0, Lcom/google/android/gms/internal/ads/zzbfi;->zzb:Z

    invoke-virtual {p0, p1, p2}, Logg;->n(Lorg/json/JSONObject;Z)Lim5;

    move-result-object p0

    return-object p0
.end method

.method public final f(Lorg/json/JSONObject;Ljava/lang/String;)Lim5;
    .locals 1

    iget-object p2, p0, Logg;->h:Lcom/google/android/gms/internal/ads/zzbfi;

    const-string v0, "images"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    iget-boolean v0, p2, Lcom/google/android/gms/internal/ads/zzbfi;->zzb:Z

    iget-boolean p2, p2, Lcom/google/android/gms/internal/ads/zzbfi;->zzd:Z

    invoke-virtual {p0, p1, v0, p2}, Logg;->o(Lorg/json/JSONArray;ZZ)Lim5;

    move-result-object p0

    return-object p0
.end method

.method public final g(Lorg/json/JSONObject;Ljava/lang/String;Lhmh;Lkmh;)Lim5;
    .locals 9

    sget-object p2, Lcye;->fa:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v0

    invoke-virtual {v0, p2}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p2, "images"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-gtz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object p0

    return-object p0

    :cond_2
    const-string v1, "base_url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "html"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v1, "width"

    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "height"

    invoke-virtual {p1, v2, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0, v1, p1}, Logg;->k(II)Lcom/google/android/gms/ads/internal/client/zzr;

    move-result-object v4

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object p1

    new-instance p2, Lfgg;

    move-object v2, p2

    move-object v3, p0

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v2 .. v8}, Lfgg;-><init>(Logg;Lcom/google/android/gms/ads/internal/client/zzr;Lhmh;Lkmh;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lzef;->f:Lg8i;

    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/ads/j8;->n(Lim5;Lk7i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object p0

    new-instance p1, Lggg;

    invoke-direct {p1, p0}, Lggg;-><init>(Lim5;)V

    sget-object p2, Lzef;->g:Lg8i;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/j8;->n(Lim5;Lk7i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object p0

    return-object p0
.end method

.method public final h(Lorg/json/JSONObject;Lhmh;Lkmh;)Lim5;
    .locals 4

    const-string v0, "html_containers"

    const-string v1, "instream"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/ads/internal/util/zzbs;->zzh(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, "video"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object p0

    goto :goto_1

    :cond_0
    const-string v1, "vast_xml"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcye;->ea:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v3

    invoke-virtual {v3, v2}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const-string v2, "html"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v3, :cond_3

    sget p0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p0, "Required field \'vast_xml\' or \'html\' is missing"

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object p0

    goto :goto_1

    :cond_2
    if-nez v3, :cond_3

    iget-object p2, p0, Logg;->i:Ljhg;

    invoke-virtual {p2, p1}, Ljhg;->d(Lorg/json/JSONObject;)Lim5;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Logg;->p(Lorg/json/JSONObject;Lhmh;Lkmh;)Lim5;

    move-result-object p1

    :goto_0
    sget-object p2, Lcye;->Z3:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object p3

    invoke-virtual {p3, p2}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-long p2, p2

    iget-object p0, p0, Logg;->k:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, p2, p3, v1, p0}, Lcom/google/android/gms/internal/ads/j8;->o(Lim5;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lim5;

    move-result-object p0

    invoke-static {p0, v0}, Logg;->l(Lim5;Ljava/lang/Object;)Lim5;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_4
    invoke-virtual {p0, v0, p2, p3}, Logg;->p(Lorg/json/JSONObject;Lhmh;Lkmh;)Lim5;

    move-result-object p0

    return-object p0
.end method

.method public final k(II)Lcom/google/android/gms/ads/internal/client/zzr;
    .locals 2

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzr;->zzc()Lcom/google/android/gms/ads/internal/client/zzr;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    iget-object p0, p0, Logg;->a:Landroid/content/Context;

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzr;

    new-instance v1, Lcom/google/android/gms/ads/AdSize;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/internal/client/zzr;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)V

    return-object v0
.end method

.method public final n(Lorg/json/JSONObject;Z)Lim5;
    .locals 13

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v1, "url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v1, "scale"

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1, v1, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    const-string v1, "is_transparent"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "width"

    const/4 v4, -0x1

    invoke-virtual {p1, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    const-string v2, "height"

    invoke-virtual {p1, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    if-eqz p2, :cond_2

    new-instance p0, Lcom/google/android/gms/internal/ads/zzbfg;

    const/4 v7, 0x0

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    move-object v6, p0

    invoke-direct/range {v6 .. v12}, Lcom/google/android/gms/internal/ads/zzbfg;-><init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;DII)V

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object p2, p0, Logg;->b:Lvfg;

    invoke-virtual {p2, v3, v9, v10, v1}, Lvfg;->b(Ljava/lang/String;DZ)Lim5;

    move-result-object p2

    new-instance v1, Lcgg;

    move-object v2, v1

    move-wide v4, v9

    move v6, v11

    move v7, v12

    invoke-direct/range {v2 .. v7}, Lcgg;-><init>(Ljava/lang/String;DII)V

    iget-object p0, p0, Logg;->g:Ljava/util/concurrent/Executor;

    invoke-static {p2, v1, p0}, Lcom/google/android/gms/internal/ads/j8;->m(Lim5;Lm2i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object p0

    const-string p2, "require"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1, p0, v0}, Logg;->m(ZLim5;Ljava/lang/Object;)Lim5;

    move-result-object p0

    return-object p0
.end method

.method public final o(Lorg/json/JSONArray;ZZ)Lim5;
    .locals 3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p3

    goto :goto_0

    :cond_1
    const/4 p3, 0x1

    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, p3, :cond_2

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Logg;->n(Lorg/json/JSONObject;Z)Lim5;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/j8;->d(Ljava/lang/Iterable;)Lim5;

    move-result-object p1

    new-instance p2, Lhgg;

    invoke-direct {p2}, Lhgg;-><init>()V

    iget-object p0, p0, Logg;->g:Ljava/util/concurrent/Executor;

    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/ads/j8;->m(Lim5;Lm2i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object p0

    return-object p0
.end method

.method public final p(Lorg/json/JSONObject;Lhmh;Lkmh;)Lim5;
    .locals 7

    const-string v0, "base_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "html"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "width"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const-string v4, "height"

    invoke-virtual {p1, v4, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Logg;->k(II)Lcom/google/android/gms/ads/internal/client/zzr;

    move-result-object v6

    iget-object v1, p0, Logg;->i:Ljhg;

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Ljhg;->e(Ljava/lang/String;Ljava/lang/String;Lhmh;Lkmh;Lcom/google/android/gms/ads/internal/client/zzr;)Lim5;

    move-result-object p0

    new-instance p1, Legg;

    invoke-direct {p1, p0}, Legg;-><init>(Lim5;)V

    sget-object p2, Lzef;->g:Lg8i;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/j8;->n(Lim5;Lk7i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object p0

    return-object p0
.end method
