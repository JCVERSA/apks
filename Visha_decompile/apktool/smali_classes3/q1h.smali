.class public final Lq1h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lebg;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lujg;

.field public final c:Lenh;

.field public final d:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field public final e:Lhmh;

.field public final f:Lim5;

.field public final g:Lejf;

.field public final h:Lq3f;

.field public final i:Z

.field public final j:Lcom/google/android/gms/internal/ads/zzebe;

.field public final k:Llmg;

.field public final l:Lsmg;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lujg;Lenh;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lhmh;Lim5;Lejf;Lq3f;ZLcom/google/android/gms/internal/ads/zzebe;Llmg;Lsmg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq1h;->a:Landroid/content/Context;

    iput-object p2, p0, Lq1h;->b:Lujg;

    iput-object p3, p0, Lq1h;->c:Lenh;

    iput-object p4, p0, Lq1h;->d:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p5, p0, Lq1h;->e:Lhmh;

    iput-object p6, p0, Lq1h;->f:Lim5;

    iput-object p7, p0, Lq1h;->g:Lejf;

    iput-object p8, p0, Lq1h;->h:Lq3f;

    iput-boolean p9, p0, Lq1h;->i:Z

    iput-object p10, p0, Lq1h;->j:Lcom/google/android/gms/internal/ads/zzebe;

    iput-object p11, p0, Lq1h;->k:Llmg;

    iput-object p12, p0, Lq1h;->l:Lsmg;

    return-void
.end method


# virtual methods
.method public final a(ZLandroid/content/Context;Lwzf;)V
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lq1h;->f:Lim5;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/j8;->q(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lxig;

    :try_start_0
    iget-object v2, v0, Lq1h;->e:Lhmh;

    iget-object v3, v0, Lq1h;->g:Lejf;

    invoke-interface {v3}, Lejf;->zzaG()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    sget-object v4, Lcye;->b1:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v7

    invoke-virtual {v7, v4}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v3, v0, Lq1h;->b:Lujg;

    iget-object v4, v0, Lq1h;->c:Lenh;

    iget-object v4, v4, Lenh;->e:Lcom/google/android/gms/ads/internal/client/zzr;

    invoke-virtual {v3, v4, v6, v6}, Lujg;->a(Lcom/google/android/gms/ads/internal/client/zzr;Lhmh;Lkmh;)Lejf;

    move-result-object v3

    invoke-virtual {v1}, Lxig;->i()Lc9g;

    move-result-object v4

    invoke-static {v3, v4}, Lm4f;->b(Lejf;Ll4f;)V

    new-instance v4, Lxjg;

    invoke-direct {v4}, Lxjg;-><init>()V

    iget-object v7, v0, Lq1h;->a:Landroid/content/Context;

    invoke-interface {v3}, Lejf;->zzF()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lxjg;->a(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v1}, Lxig;->l()Ltjg;

    move-result-object v7

    iget-boolean v8, v0, Lq1h;->i:Z

    if-eqz v8, :cond_1

    iget-object v8, v0, Lq1h;->h:Lq3f;

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_5

    :cond_1
    move-object v8, v6

    :goto_0
    iget-object v9, v0, Lq1h;->k:Llmg;

    invoke-virtual {v9}, Llmg;->a()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v7, v3, v5, v8, v9}, Ltjg;->i(Lejf;ZLq3f;Landroid/os/Bundle;)V

    invoke-interface {v3}, Lejf;->zzN()Likf;

    move-result-object v7

    new-instance v8, Lo1h;

    invoke-direct {v8, v4, v3}, Lo1h;-><init>(Lxjg;Lejf;)V

    invoke-interface {v7, v8}, Likf;->v(Lgkf;)V

    invoke-interface {v3}, Lejf;->zzN()Likf;

    move-result-object v4

    new-instance v7, Lp1h;

    invoke-direct {v7, v3}, Lp1h;-><init>(Lejf;)V

    invoke-interface {v4, v7}, Likf;->r(Lhkf;)V

    iget-object v2, v2, Lhmh;->s:Llmh;

    iget-object v4, v2, Llmh;->b:Ljava/lang/String;

    iget-object v2, v2, Llmh;->a:Ljava/lang/String;

    invoke-interface {v3, v4, v2, v6}, Lejf;->zzae(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzcex; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    move-object v11, v3

    invoke-interface {v11, v5}, Lejf;->zzaq(Z)V

    iget-boolean v2, v0, Lq1h;->i:Z

    new-instance v3, Lcom/google/android/gms/ads/internal/zzl;

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    iget-object v7, v0, Lq1h;->h:Lq3f;

    invoke-virtual {v7, v4}, Lq3f;->e(Z)Z

    move-result v7

    move v13, v7

    goto :goto_2

    :cond_3
    move v13, v4

    :goto_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v7, v0, Lq1h;->a:Landroid/content/Context;

    invoke-static {v7}, Lcom/google/android/gms/ads/internal/util/zzs;->zzJ(Landroid/content/Context;)Z

    move-result v14

    if-eqz v2, :cond_4

    iget-object v4, v0, Lq1h;->h:Lq3f;

    invoke-virtual {v4}, Lq3f;->d()Z

    move-result v4

    :cond_4
    move v15, v4

    if-eqz v2, :cond_5

    iget-object v2, v0, Lq1h;->h:Lq3f;

    invoke-virtual {v2}, Lq3f;->a()F

    move-result v2

    :goto_3
    move/from16 v16, v2

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    goto :goto_3

    :goto_4
    iget-object v2, v0, Lq1h;->e:Lhmh;

    iget-boolean v4, v2, Lhmh;->O:Z

    iget-boolean v7, v2, Lhmh;->P:Z

    const/16 v17, -0x1

    move-object v12, v3

    move/from16 v18, p1

    move/from16 v19, v4

    move/from16 v20, v7

    invoke-direct/range {v12 .. v20}, Lcom/google/android/gms/ads/internal/zzl;-><init>(ZZZFIZZZ)V

    if-eqz p3, :cond_6

    invoke-virtual/range {p3 .. p3}, Lwzf;->zzf()V

    :cond_6
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzj()Lcom/google/android/gms/ads/internal/overlay/zzn;

    new-instance v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    invoke-virtual {v1}, Lxig;->j()Lvag;

    move-result-object v9

    iget v12, v2, Lhmh;->Q:I

    iget-object v13, v0, Lq1h;->d:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v14, v2, Lhmh;->B:Ljava/lang/String;

    iget-object v1, v2, Lhmh;->s:Llmh;

    iget-object v15, v1, Llmh;->b:Ljava/lang/String;

    iget-object v1, v1, Llmh;->a:Ljava/lang/String;

    iget-object v7, v0, Lq1h;->c:Lenh;

    invoke-virtual {v2}, Lhmh;->b()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v6, v0, Lq1h;->j:Lcom/google/android/gms/internal/ads/zzebe;

    :cond_7
    move-object/from16 v20, v6

    iget-object v2, v7, Lenh;->f:Ljava/lang/String;

    invoke-interface {v11}, Lchf;->zzr()Ljava/lang/String;

    move-result-object v21

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v7, v4

    move-object v6, v15

    move-object v15, v3

    move-object/from16 v16, v6

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    move-object/from16 v19, p3

    invoke-direct/range {v7 .. v21}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/client/zza;Lcom/google/android/gms/ads/internal/overlay/zzr;Lcom/google/android/gms/ads/internal/overlay/zzac;Lejf;ILcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lcom/google/android/gms/ads/internal/zzl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lwzf;Lcom/google/android/gms/internal/ads/zzbsr;Ljava/lang/String;)V

    iget-object v0, v0, Lq1h;->l:Lsmg;

    move-object/from16 v1, p2

    invoke-static {v1, v4, v5, v0}, Lcom/google/android/gms/ads/internal/overlay/zzn;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;ZLsmg;)V

    return-void

    :goto_5
    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zza()Lhmh;
    .locals 0

    iget-object p0, p0, Lq1h;->e:Lhmh;

    return-object p0
.end method
