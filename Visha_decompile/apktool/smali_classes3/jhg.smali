.class public final Ljhg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lenh;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Lujg;

.field public final d:Lnig;

.field public final e:Landroid/content/Context;

.field public final f:Lsmg;

.field public final g:Lwth;

.field public final h:Ldwg;


# direct methods
.method public constructor <init>(Lenh;Ljava/util/concurrent/Executor;Lujg;Landroid/content/Context;Lsmg;Lwth;Ldwg;Lnig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljhg;->a:Lenh;

    iput-object p2, p0, Ljhg;->b:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Ljhg;->c:Lujg;

    iput-object p4, p0, Ljhg;->e:Landroid/content/Context;

    iput-object p5, p0, Ljhg;->f:Lsmg;

    iput-object p6, p0, Ljhg;->g:Lwth;

    iput-object p7, p0, Ljhg;->h:Ldwg;

    iput-object p8, p0, Ljhg;->d:Lnig;

    return-void
.end method

.method public static synthetic a(Ljhg;Lcom/google/android/gms/ads/internal/client/zzr;Lhmh;Lkmh;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lim5;
    .locals 25

    move-object/from16 v0, p0

    iget-object v1, v0, Ljhg;->c:Lujg;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-virtual {v1, v2, v3, v4}, Lujg;->a(Lcom/google/android/gms/ads/internal/client/zzr;Lhmh;Lkmh;)Lejf;

    move-result-object v1

    invoke-static {v1}, Ldff;->e(Ljava/lang/Object;)Ldff;

    move-result-object v2

    iget-object v3, v0, Ljhg;->a:Lenh;

    iget-object v3, v3, Lenh;->b:Lcom/google/android/gms/internal/ads/zzblt;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v0, v1}, Ljhg;->h(Lejf;)V

    invoke-static {}, Lkkf;->d()Lkkf;

    move-result-object v3

    invoke-interface {v1, v3}, Lejf;->zzaj(Lkkf;)V

    goto :goto_0

    :cond_0
    iget-object v3, v0, Ljhg;->d:Lnig;

    invoke-virtual {v3}, Lnig;->b()Lkig;

    move-result-object v10

    move-object v6, v10

    move-object v8, v10

    move-object/from16 v20, v10

    move-object v9, v10

    move-object v7, v10

    invoke-interface {v1}, Lejf;->zzN()Likf;

    move-result-object v5

    iget-object v3, v0, Ljhg;->e:Landroid/content/Context;

    new-instance v11, Lcom/google/android/gms/ads/internal/zzb;

    move-object v13, v11

    invoke-direct {v11, v3, v4, v4}, Lcom/google/android/gms/ads/internal/zzb;-><init>(Landroid/content/Context;Lddf;Lcom/google/android/gms/internal/ads/zzbug;)V

    iget-object v3, v0, Ljhg;->h:Ldwg;

    move-object/from16 v16, v3

    iget-object v3, v0, Ljhg;->g:Lwth;

    move-object/from16 v17, v3

    iget-object v3, v0, Ljhg;->f:Lsmg;

    move-object/from16 v18, v3

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-interface/range {v5 .. v24}, Likf;->d(Lcom/google/android/gms/ads/internal/client/zza;Lr1f;Lcom/google/android/gms/ads/internal/overlay/zzr;Lz1f;Lcom/google/android/gms/ads/internal/overlay/zzac;ZLq3f;Lcom/google/android/gms/ads/internal/zzb;Lbaf;Lddf;Ldwg;Lwth;Lsmg;Lo4f;Lt8g;Ln4f;La4f;Lo3f;Lwpf;)V

    invoke-static {v1}, Ljhg;->j(Lejf;)V

    :goto_0
    invoke-interface {v1}, Lejf;->zzN()Likf;

    move-result-object v3

    new-instance v5, Ldhg;

    invoke-direct {v5, v0, v1, v2}, Ldhg;-><init>(Ljhg;Lejf;Ldff;)V

    invoke-interface {v3, v5}, Likf;->v(Lgkf;)V

    move-object/from16 v0, p4

    move-object/from16 v3, p5

    invoke-interface {v1, v0, v3, v4}, Lejf;->zzae(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public static synthetic b(Ljhg;Ljava/lang/Object;)Lim5;
    .locals 2

    iget-object p1, p0, Ljhg;->c:Lujg;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzr;->zzc()Lcom/google/android/gms/ads/internal/client/zzr;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lujg;->a(Lcom/google/android/gms/ads/internal/client/zzr;Lhmh;Lkmh;)Lejf;

    move-result-object p1

    invoke-static {p1}, Ldff;->e(Ljava/lang/Object;)Ldff;

    move-result-object v0

    invoke-virtual {p0, p1}, Ljhg;->h(Lejf;)V

    invoke-interface {p1}, Lejf;->zzN()Likf;

    move-result-object p0

    new-instance v1, Lbhg;

    invoke-direct {v1, v0}, Lbhg;-><init>(Ldff;)V

    invoke-interface {p0, v1}, Likf;->r(Lhkf;)V

    sget-object p0, Lcye;->Y3:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, p0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-interface {p1, p0}, Lejf;->loadUrl(Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic c(Ljhg;Lorg/json/JSONObject;Lejf;)Lim5;
    .locals 3

    iget-object v0, p0, Ljhg;->a:Lenh;

    iget-object v0, v0, Lenh;->b:Lcom/google/android/gms/internal/ads/zzblt;

    invoke-static {p2}, Ldff;->e(Ljava/lang/Object;)Ldff;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-static {}, Lkkf;->d()Lkkf;

    move-result-object v0

    invoke-interface {p2, v0}, Lejf;->zzaj(Lkkf;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lkkf;->e()Lkkf;

    move-result-object v0

    invoke-interface {p2, v0}, Lejf;->zzaj(Lkkf;)V

    :goto_0
    invoke-interface {p2}, Lejf;->zzN()Likf;

    move-result-object v0

    new-instance v2, Lchg;

    invoke-direct {v2, p0, p2, v1}, Lchg;-><init>(Ljhg;Lejf;Ldff;)V

    invoke-interface {v0, v2}, Likf;->v(Lgkf;)V

    const-string p0, "google.afma.nativeAds.renderVideo"

    invoke-interface {p2, p0, p1}, Lx5f;->zzp(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object v1
.end method

.method public static synthetic f(Ljhg;Lejf;Ldff;ZILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p3, :cond_1

    iget-object p0, p0, Ljhg;->a:Lenh;

    iget-object p0, p0, Lenh;->a:Lcom/google/android/gms/ads/internal/client/zzfw;

    if-eqz p0, :cond_0

    invoke-interface {p1}, Lejf;->zzq()Lcom/google/android/gms/internal/ads/zzcfn;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Lejf;->zzq()Lcom/google/android/gms/internal/ads/zzcfn;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzcfn;->zzs(Lcom/google/android/gms/ads/internal/client/zzfw;)V

    :cond_0
    invoke-virtual {p2}, Ldff;->f()V

    return-void

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/ads/zzefy;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Html video Web View failed to load. Error code: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", Description: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", Failing URL: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    invoke-direct {p0, p3, p1}, Lcom/google/android/gms/internal/ads/zzefy;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, p0}, Leff;->d(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public static synthetic g(Ljhg;Lejf;Ldff;ZILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcye;->g4:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1, p2}, Ljhg;->i(Lejf;Ldff;)V

    return-void

    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/ads/zzefy;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Native Video WebView failed to load. Error code: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", Description: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", Failing URL: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    invoke-direct {p0, p3, p1}, Lcom/google/android/gms/internal/ads/zzefy;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, p0}, Leff;->d(Ljava/lang/Throwable;)Z

    return-void

    :cond_1
    invoke-virtual {p0, p1, p2}, Ljhg;->i(Lejf;Ldff;)V

    return-void
.end method

.method public static final j(Lejf;)V
    .locals 2

    const-string v0, "/videoClicked"

    sget-object v1, Lm3f;->h:Ln3f;

    invoke-interface {p0, v0, v1}, Lejf;->zzag(Ljava/lang/String;Ln3f;)V

    invoke-interface {p0}, Lejf;->zzN()Likf;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Likf;->m(Z)V

    const-string v0, "/getNativeAdViewSignals"

    sget-object v1, Lm3f;->s:Ln3f;

    invoke-interface {p0, v0, v1}, Lejf;->zzag(Ljava/lang/String;Ln3f;)V

    const-string v0, "/getNativeClickMeta"

    sget-object v1, Lm3f;->t:Ln3f;

    invoke-interface {p0, v0, v1}, Lejf;->zzag(Ljava/lang/String;Ln3f;)V

    return-void
.end method


# virtual methods
.method public final d(Lorg/json/JSONObject;)Lim5;
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object v0

    new-instance v1, Lahg;

    invoke-direct {v1, p0}, Lahg;-><init>(Ljhg;)V

    iget-object v2, p0, Ljhg;->b:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/j8;->n(Lim5;Lk7i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object v0

    new-instance v1, Lzgg;

    invoke-direct {v1, p0, p1}, Lzgg;-><init>(Ljhg;Lorg/json/JSONObject;)V

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/j8;->n(Lim5;Lk7i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object p0

    return-object p0
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;Lhmh;Lkmh;Lcom/google/android/gms/ads/internal/client/zzr;)Lim5;
    .locals 9

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object v0

    new-instance v8, Lygg;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p5

    move-object v4, p3

    move-object v5, p4

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lygg;-><init>(Ljhg;Lcom/google/android/gms/ads/internal/client/zzr;Lhmh;Lkmh;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Ljhg;->b:Ljava/util/concurrent/Executor;

    invoke-static {v0, v8, p0}, Lcom/google/android/gms/internal/ads/j8;->n(Lim5;Lk7i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object p0

    return-object p0
.end method

.method public final h(Lejf;)V
    .locals 7

    invoke-static {p1}, Ljhg;->j(Lejf;)V

    const-string v0, "/video"

    sget-object v1, Lm3f;->l:Ln3f;

    invoke-interface {p1, v0, v1}, Lejf;->zzag(Ljava/lang/String;Ln3f;)V

    const-string v0, "/videoMeta"

    sget-object v1, Lm3f;->m:Ln3f;

    invoke-interface {p1, v0, v1}, Lejf;->zzag(Ljava/lang/String;Ln3f;)V

    new-instance v0, Lthf;

    invoke-direct {v0}, Lthf;-><init>()V

    const-string v1, "/precache"

    invoke-interface {p1, v1, v0}, Lejf;->zzag(Ljava/lang/String;Ln3f;)V

    const-string v0, "/delayPageLoaded"

    sget-object v1, Lm3f;->p:Ln3f;

    invoke-interface {p1, v0, v1}, Lejf;->zzag(Ljava/lang/String;Ln3f;)V

    const-string v0, "/instrument"

    sget-object v1, Lm3f;->n:Ln3f;

    invoke-interface {p1, v0, v1}, Lejf;->zzag(Ljava/lang/String;Ln3f;)V

    const-string v0, "/log"

    sget-object v1, Lm3f;->g:Ln3f;

    invoke-interface {p1, v0, v1}, Lejf;->zzag(Ljava/lang/String;Ln3f;)V

    new-instance v0, Lf2f;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lf2f;-><init>(Lt8g;Lwpf;)V

    const-string v1, "/click"

    invoke-interface {p1, v1, v0}, Lejf;->zzag(Ljava/lang/String;Ln3f;)V

    iget-object p0, p0, Ljhg;->a:Lenh;

    iget-object p0, p0, Lenh;->b:Lcom/google/android/gms/internal/ads/zzblt;

    if-eqz p0, :cond_0

    invoke-interface {p1}, Lejf;->zzN()Likf;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Likf;->zzG(Z)V

    new-instance p0, Lz3f;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lz3f;-><init>(Lcom/google/android/gms/ads/internal/zzb;Lq9f;Ldwg;Lsmg;Lwpf;)V

    const-string v0, "/open"

    invoke-interface {p1, v0, p0}, Lejf;->zzag(Ljava/lang/String;Ln3f;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lejf;->zzN()Likf;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Likf;->zzG(Z)V

    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzo()Lrdf;

    move-result-object p0

    invoke-interface {p1}, Lejf;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrdf;->p(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Lejf;->zzD()Lhmh;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lejf;->zzD()Lhmh;

    move-result-object p0

    iget-object p0, p0, Lhmh;->w0:Ljava/util/Map;

    :cond_1
    new-instance v0, Lt3f;

    invoke-interface {p1}, Lejf;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lt3f;-><init>(Landroid/content/Context;Ljava/util/Map;)V

    const-string p0, "/logScionEvent"

    invoke-interface {p1, p0, v0}, Lejf;->zzag(Ljava/lang/String;Ln3f;)V

    :cond_2
    return-void
.end method

.method public final i(Lejf;Ldff;)V
    .locals 1

    iget-object p0, p0, Ljhg;->a:Lenh;

    iget-object p0, p0, Lenh;->a:Lcom/google/android/gms/ads/internal/client/zzfw;

    if-eqz p0, :cond_0

    invoke-interface {p1}, Lejf;->zzq()Lcom/google/android/gms/internal/ads/zzcfn;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lejf;->zzq()Lcom/google/android/gms/internal/ads/zzcfn;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzcfn;->zzs(Lcom/google/android/gms/ads/internal/client/zzfw;)V

    :cond_0
    invoke-virtual {p2}, Ldff;->f()V

    return-void
.end method
