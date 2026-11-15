.class public final Ltjg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lizf;

.field public final b:Lr8g;

.field public final c:Lu0g;

.field public final d:Lh1g;

.field public final e:Lw1g;

.field public final f:Lr4g;

.field public final g:Ljava/util/concurrent/Executor;

.field public final h:Lk8g;

.field public final i:Loqf;

.field public final j:Lcom/google/android/gms/ads/internal/zzb;

.field public final k:Lddf;

.field public final l:Lfre;

.field public final m:Li4g;

.field public final n:Ldwg;

.field public final o:Lwth;

.field public final p:Lsmg;

.field public final q:Lwpf;

.field public final r:Lyjg;


# direct methods
.method public constructor <init>(Lizf;Lu0g;Lh1g;Lw1g;Lr4g;Ljava/util/concurrent/Executor;Lk8g;Loqf;Lcom/google/android/gms/ads/internal/zzb;Lddf;Lfre;Li4g;Ldwg;Lwth;Lsmg;Lr8g;Lwpf;Lyjg;)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Ltjg;->a:Lizf;

    move-object v1, p2

    iput-object v1, v0, Ltjg;->c:Lu0g;

    move-object v1, p3

    iput-object v1, v0, Ltjg;->d:Lh1g;

    move-object v1, p4

    iput-object v1, v0, Ltjg;->e:Lw1g;

    move-object v1, p5

    iput-object v1, v0, Ltjg;->f:Lr4g;

    move-object v1, p6

    iput-object v1, v0, Ltjg;->g:Ljava/util/concurrent/Executor;

    move-object v1, p7

    iput-object v1, v0, Ltjg;->h:Lk8g;

    move-object v1, p8

    iput-object v1, v0, Ltjg;->i:Loqf;

    move-object v1, p9

    iput-object v1, v0, Ltjg;->j:Lcom/google/android/gms/ads/internal/zzb;

    move-object v1, p10

    iput-object v1, v0, Ltjg;->k:Lddf;

    move-object v1, p11

    iput-object v1, v0, Ltjg;->l:Lfre;

    move-object v1, p12

    iput-object v1, v0, Ltjg;->m:Li4g;

    move-object v1, p13

    iput-object v1, v0, Ltjg;->n:Ldwg;

    move-object/from16 v1, p14

    iput-object v1, v0, Ltjg;->o:Lwth;

    move-object/from16 v1, p15

    iput-object v1, v0, Ltjg;->p:Lsmg;

    move-object/from16 v1, p16

    iput-object v1, v0, Ltjg;->b:Lr8g;

    move-object/from16 v1, p17

    iput-object v1, v0, Ltjg;->q:Lwpf;

    move-object/from16 v1, p18

    iput-object v1, v0, Ltjg;->r:Lyjg;

    return-void
.end method

.method public static bridge synthetic a(Ltjg;)Lu0g;
    .locals 0

    iget-object p0, p0, Ltjg;->c:Lu0g;

    return-object p0
.end method

.method public static bridge synthetic b(Ltjg;)Li4g;
    .locals 0

    iget-object p0, p0, Ltjg;->m:Li4g;

    return-object p0
.end method

.method public static synthetic c(Ltjg;)V
    .locals 0

    iget-object p0, p0, Ltjg;->a:Lizf;

    invoke-virtual {p0}, Lizf;->onAdClicked()V

    return-void
.end method

.method public static synthetic d(Ltjg;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Ltjg;->f:Lr4g;

    invoke-virtual {p0, p1, p2}, Lr4g;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic e(Ltjg;Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Ltjg;->j:Lcom/google/android/gms/ads/internal/zzb;

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzb;->zza()V

    return-void
.end method

.method public static synthetic f(Ltjg;Lejf;Lejf;Ljava/util/Map;)V
    .locals 0

    iget-object p0, p0, Ltjg;->i:Loqf;

    invoke-virtual {p0, p1}, Loqf;->c(Lejf;)V

    return-void
.end method

.method public static synthetic g(Ltjg;)V
    .locals 0

    iget-object p0, p0, Ltjg;->c:Lu0g;

    invoke-virtual {p0}, Lu0g;->zzb()V

    return-void
.end method

.method public static synthetic h(Ltjg;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    sget-object v0, Lcye;->ga:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ltjg;->r:Lyjg;

    invoke-virtual {v0, p2}, Lyjg;->b(Landroid/view/InputEvent;)V

    :cond_0
    iget-object p0, p0, Ltjg;->j:Lcom/google/android/gms/ads/internal/zzb;

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzb;->zza()V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static final j(Lejf;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lim5;
    .locals 3

    sget-object v0, Lcye;->s2:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdqm;->zzz:Lcom/google/android/gms/internal/ads/zzdqm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdqm;->zza()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object v1

    invoke-interface {v1}, Lfy0;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p3, v0, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_0
    new-instance v0, Leff;

    invoke-direct {v0}, Leff;-><init>()V

    invoke-interface {p0}, Lejf;->zzN()Likf;

    move-result-object v1

    new-instance v2, Lhjg;

    invoke-direct {v2, p3, v0}, Lhjg;-><init>(Landroid/os/Bundle;Leff;)V

    invoke-interface {v1, v2}, Likf;->v(Lgkf;)V

    const/4 p3, 0x0

    invoke-interface {p0, p1, p2, p3}, Lejf;->zzae(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final i(Lejf;ZLq3f;Landroid/os/Bundle;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    sget-object v3, Lcye;->s2:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v4

    invoke-virtual {v4, v3}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/google/android/gms/internal/ads/zzdqm;->zzx:Lcom/google/android/gms/internal/ads/zzdqm;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzdqm;->zza()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object v5

    invoke-interface {v5}, Lfy0;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_0
    invoke-interface/range {p1 .. p1}, Lejf;->zzN()Likf;

    move-result-object v7

    new-instance v4, Lijg;

    move-object v8, v4

    invoke-direct {v4, v0}, Lijg;-><init>(Ltjg;)V

    iget-object v9, v0, Ltjg;->d:Lh1g;

    iget-object v10, v0, Ltjg;->e:Lw1g;

    new-instance v4, Ljjg;

    move-object v11, v4

    invoke-direct {v4, v0}, Ljjg;-><init>(Ltjg;)V

    new-instance v4, Lkjg;

    move-object v12, v4

    invoke-direct {v4, v0}, Lkjg;-><init>(Ltjg;)V

    iget-object v15, v0, Ltjg;->j:Lcom/google/android/gms/ads/internal/zzb;

    new-instance v4, Lsjg;

    move-object/from16 v16, v4

    invoke-direct {v4, v0}, Lsjg;-><init>(Ltjg;)V

    iget-object v4, v0, Ltjg;->k:Lddf;

    move-object/from16 v17, v4

    iget-object v4, v0, Ltjg;->n:Ldwg;

    move-object/from16 v18, v4

    iget-object v4, v0, Ltjg;->o:Lwth;

    move-object/from16 v19, v4

    iget-object v4, v0, Ltjg;->p:Lsmg;

    move-object/from16 v20, v4

    iget-object v4, v0, Ltjg;->b:Lr8g;

    move-object/from16 v22, v4

    const/16 v25, 0x0

    iget-object v4, v0, Ltjg;->q:Lwpf;

    move-object/from16 v26, v4

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move/from16 v13, p2

    move-object/from16 v14, p3

    invoke-interface/range {v7 .. v26}, Likf;->d(Lcom/google/android/gms/ads/internal/client/zza;Lr1f;Lcom/google/android/gms/ads/internal/overlay/zzr;Lz1f;Lcom/google/android/gms/ads/internal/overlay/zzac;ZLq3f;Lcom/google/android/gms/ads/internal/zzb;Lbaf;Lddf;Ldwg;Lwth;Lsmg;Lo4f;Lt8g;Ln4f;La4f;Lo3f;Lwpf;)V

    new-instance v4, Lljg;

    invoke-direct {v4, v0}, Lljg;-><init>(Ltjg;)V

    invoke-interface {v1, v4}, Lejf;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v4, Lmjg;

    invoke-direct {v4, v0}, Lmjg;-><init>(Ltjg;)V

    invoke-interface {v1, v4}, Lejf;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v4, Lcye;->Q2:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v5

    invoke-virtual {v5, v4}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v0, Ltjg;->l:Lfre;

    invoke-virtual {v4}, Lfre;->c()Lare;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface/range {p1 .. p1}, Lejf;->zzF()Landroid/view/View;

    move-result-object v5

    invoke-interface {v4, v5}, Lare;->zzo(Landroid/view/View;)V

    :cond_1
    iget-object v4, v0, Ltjg;->h:Lk8g;

    iget-object v5, v0, Ltjg;->g:Ljava/util/concurrent/Executor;

    invoke-virtual {v4, v1, v5}, La6g;->C(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    new-instance v6, Lqjg;

    invoke-direct {v6, v1}, Lqjg;-><init>(Lejf;)V

    invoke-virtual {v4, v6, v5}, La6g;->C(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    invoke-interface/range {p1 .. p1}, Lejf;->zzF()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Lk8g;->F(Landroid/view/View;)V

    new-instance v4, Lrjg;

    invoke-direct {v4, v0, v1}, Lrjg;-><init>(Ltjg;Lejf;)V

    const-string v5, "/trackActiveViewUnit"

    invoke-interface {v1, v5, v4}, Lejf;->zzag(Ljava/lang/String;Ln3f;)V

    iget-object v0, v0, Ltjg;->i:Loqf;

    invoke-virtual {v0, v1}, Loqf;->d(Ljava/lang/Object;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v0

    invoke-virtual {v0, v3}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdqm;->zzy:Lcom/google/android/gms/internal/ads/zzdqm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdqm;->zza()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object v1

    invoke-interface {v1}, Lfy0;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_2
    return-void
.end method
