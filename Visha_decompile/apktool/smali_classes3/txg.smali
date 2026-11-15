.class public final Ltxg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkxg;


# instance fields
.field public final a:Lirf;

.field public final b:Landroid/content/Context;

.field public final c:Lujg;

.field public final d:Lenh;

.field public final e:Ljava/util/concurrent/Executor;

.field public final f:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field public final g:Lq3f;

.field public final h:Z

.field public final i:Lcom/google/android/gms/internal/ads/zzebe;

.field public final j:Llmg;

.field public final k:Lsmg;


# direct methods
.method public constructor <init>(Lirf;Landroid/content/Context;Ljava/util/concurrent/Executor;Lujg;Lenh;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lq3f;Lcom/google/android/gms/internal/ads/zzebe;Llmg;Lsmg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ltxg;->b:Landroid/content/Context;

    iput-object p1, p0, Ltxg;->a:Lirf;

    iput-object p3, p0, Ltxg;->e:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Ltxg;->c:Lujg;

    iput-object p5, p0, Ltxg;->d:Lenh;

    iput-object p6, p0, Ltxg;->f:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p7, p0, Ltxg;->g:Lq3f;

    sget-object p1, Lcye;->Y8:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object p2

    invoke-virtual {p2, p1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Ltxg;->h:Z

    iput-object p8, p0, Ltxg;->i:Lcom/google/android/gms/internal/ads/zzebe;

    iput-object p9, p0, Ltxg;->j:Llmg;

    iput-object p10, p0, Ltxg;->k:Lsmg;

    return-void
.end method

.method public static synthetic c(Ltxg;Lhmh;Lvmh;Lxjg;Ljava/lang/Object;)Lim5;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move-object/from16 v1, p2

    sget-object v12, Lcye;->s2:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v12}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Ltxg;->j:Llmg;

    invoke-virtual {v2}, Llmg;->a()Landroid/os/Bundle;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/ads/zzdqm;->zzu:Lcom/google/android/gms/internal/ads/zzdqm;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdqm;->zza()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object v4

    invoke-interface {v4}, Lfy0;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_0
    iget-object v2, v0, Ltxg;->c:Lujg;

    iget-object v6, v0, Ltxg;->d:Lenh;

    iget-object v3, v1, Lvmh;->b:Lumh;

    iget-object v3, v3, Lumh;->b:Lkmh;

    iget-object v4, v6, Lenh;->e:Lcom/google/android/gms/ads/internal/client/zzr;

    invoke-virtual {v2, v4, v11, v3}, Lujg;->a(Lcom/google/android/gms/ads/internal/client/zzr;Lhmh;Lkmh;)Lejf;

    move-result-object v13

    iget-boolean v2, v11, Lhmh;->W:Z

    invoke-interface {v13, v2}, Lejf;->zzac(Z)V

    iget-object v2, v0, Ltxg;->b:Landroid/content/Context;

    invoke-interface {v13}, Lejf;->zzF()Landroid/view/View;

    move-result-object v3

    move-object/from16 v4, p3

    invoke-virtual {v4, v2, v3}, Lxjg;->a(Landroid/content/Context;Landroid/view/View;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v12}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Ltxg;->j:Llmg;

    invoke-virtual {v2}, Llmg;->a()Landroid/os/Bundle;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/ads/zzdqm;->zzv:Lcom/google/android/gms/internal/ads/zzdqm;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdqm;->zza()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object v4

    invoke-interface {v4}, Lfy0;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_1
    new-instance v14, Leff;

    invoke-direct {v14}, Leff;-><init>()V

    iget-object v15, v0, Ltxg;->a:Lirf;

    new-instance v10, Lpuf;

    const/4 v9, 0x0

    invoke-direct {v10, v1, v11, v9}, Lpuf;-><init>(Lvmh;Lhmh;Ljava/lang/String;)V

    iget-object v2, v0, Ltxg;->f:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-boolean v8, v0, Ltxg;->h:Z

    iget-object v7, v0, Ltxg;->g:Lq3f;

    iget-object v5, v0, Ltxg;->i:Lcom/google/android/gms/internal/ads/zzebe;

    iget-object v4, v0, Ltxg;->k:Lsmg;

    new-instance v3, Lw9g;

    new-instance v1, Lvxg;

    move-object/from16 p2, v1

    move-object v0, v3

    move-object v3, v14

    move-object/from16 v16, v4

    move-object/from16 v4, p1

    move-object/from16 v17, v5

    move-object v5, v13

    move-object/from16 v18, v7

    move v7, v8

    move-object/from16 p3, v14

    move v14, v8

    move-object/from16 v8, v18

    move-object/from16 v19, v9

    move-object/from16 v9, v17

    move/from16 v17, v14

    move-object v14, v10

    move-object/from16 v10, v16

    invoke-direct/range {v1 .. v10}, Lvxg;-><init>(Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lim5;Lhmh;Lejf;Lenh;ZLq3f;Lcom/google/android/gms/internal/ads/zzebe;Lsmg;)V

    invoke-direct {v0, v1, v13}, Lw9g;-><init>(Lebg;Lejf;)V

    new-instance v1, Lgrf;

    iget v2, v11, Lhmh;->a0:I

    invoke-direct {v1, v2}, Lgrf;-><init>(I)V

    invoke-virtual {v15, v14, v0, v1}, Lirf;->a(Lpuf;Lw9g;Lgrf;)Lfrf;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v12}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v1, p0

    iget-object v2, v1, Ltxg;->j:Llmg;

    invoke-virtual {v2}, Llmg;->a()Landroid/os/Bundle;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/ads/zzdqm;->zzw:Lcom/google/android/gms/internal/ads/zzdqm;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdqm;->zza()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object v4

    invoke-interface {v4}, Lfy0;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    :cond_2
    move-object/from16 v1, p0

    :goto_0
    invoke-virtual {v0}, Lfrf;->j()Ltjg;

    move-result-object v2

    const/4 v3, 0x1

    move/from16 v4, v17

    if-eq v3, v4, :cond_3

    move-object/from16 v9, v19

    goto :goto_1

    :cond_3
    move-object/from16 v9, v18

    :goto_1
    iget-object v4, v1, Ltxg;->j:Llmg;

    invoke-virtual {v4}, Llmg;->a()Landroid/os/Bundle;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v13, v6, v9, v5}, Ltjg;->i(Lejf;ZLq3f;Landroid/os/Bundle;)V

    move-object/from16 v2, p3

    invoke-virtual {v2, v0}, Leff;->c(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcuf;->b()Lb0g;

    move-result-object v2

    new-instance v5, Lrxg;

    invoke-direct {v5, v13}, Lrxg;-><init>(Lejf;)V

    sget-object v6, Lzef;->g:Lg8i;

    invoke-virtual {v2, v5, v6}, La6g;->C(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    iget-object v2, v11, Lhmh;->s:Llmh;

    iget-object v5, v2, Llmh;->a:Ljava/lang/String;

    sget-object v6, Lcye;->p5:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v7

    invoke-virtual {v7, v6}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v0}, Lfrf;->k()Laxg;

    move-result-object v6

    invoke-virtual {v6, v3}, Laxg;->e(Z)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static/range {p1 .. p1}, Lyjf;->a(Lhmh;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lyjf;->b(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_4
    invoke-virtual {v0}, Lfrf;->j()Ltjg;

    iget-object v2, v2, Llmh;->b:Ljava/lang/String;

    invoke-virtual {v4}, Llmg;->a()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v13, v2, v5, v3}, Ltjg;->j(Lejf;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lim5;

    move-result-object v2

    new-instance v3, Lsxg;

    invoke-direct {v3, v1, v13, v11, v0}, Lsxg;-><init>(Ltxg;Lejf;Lhmh;Lfrf;)V

    iget-object v0, v1, Ltxg;->e:Ljava/util/concurrent/Executor;

    invoke-static {v2, v3, v0}, Lcom/google/android/gms/internal/ads/j8;->m(Lim5;Lm2i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lvmh;Lhmh;)Lim5;
    .locals 3

    new-instance v0, Lxjg;

    invoke-direct {v0}, Lxjg;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object v1

    new-instance v2, Lqxg;

    invoke-direct {v2, p0, p2, p1, v0}, Lqxg;-><init>(Ltxg;Lhmh;Lvmh;Lxjg;)V

    iget-object p0, p0, Ltxg;->e:Ljava/util/concurrent/Executor;

    invoke-static {v1, v2, p0}, Lcom/google/android/gms/internal/ads/j8;->n(Lim5;Lk7i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzecn;

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzecn;-><init>(Lxjg;)V

    invoke-interface {p1, p2, p0}, Lim5;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object p1
.end method

.method public final b(Lvmh;Lhmh;)Z
    .locals 0

    iget-object p0, p2, Lhmh;->s:Llmh;

    if-eqz p0, :cond_0

    iget-object p0, p0, Llmh;->a:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
