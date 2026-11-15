.class public final Lr1h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkxg;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lujg;

.field public final c:Lbjg;

.field public final d:Lenh;

.field public final e:Ljava/util/concurrent/Executor;

.field public final f:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field public final g:Lq3f;

.field public final h:Z

.field public final i:Lcom/google/android/gms/internal/ads/zzebe;

.field public final j:Llmg;

.field public final k:Lsmg;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lenh;Ljava/util/concurrent/Executor;Lbjg;Lujg;Lq3f;Lcom/google/android/gms/internal/ads/zzebe;Llmg;Lsmg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr1h;->a:Landroid/content/Context;

    iput-object p3, p0, Lr1h;->d:Lenh;

    iput-object p5, p0, Lr1h;->c:Lbjg;

    iput-object p4, p0, Lr1h;->e:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lr1h;->f:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p6, p0, Lr1h;->b:Lujg;

    iput-object p7, p0, Lr1h;->g:Lq3f;

    sget-object p1, Lcye;->Y8:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object p2

    invoke-virtual {p2, p1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lr1h;->h:Z

    iput-object p8, p0, Lr1h;->i:Lcom/google/android/gms/internal/ads/zzebe;

    iput-object p9, p0, Lr1h;->j:Llmg;

    iput-object p10, p0, Lr1h;->k:Lsmg;

    return-void
.end method

.method public static synthetic c(Lr1h;Lhmh;Lvmh;Lxjg;Ljava/lang/Object;)Lim5;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v14, p1

    move-object/from16 v1, p2

    sget-object v15, Lcye;->s2:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v15}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lr1h;->j:Llmg;

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
    iget-object v3, v0, Lr1h;->b:Lujg;

    iget-object v4, v0, Lr1h;->d:Lenh;

    iget-object v2, v1, Lvmh;->b:Lumh;

    iget-object v2, v2, Lumh;->b:Lkmh;

    iget-object v5, v4, Lenh;->e:Lcom/google/android/gms/ads/internal/client/zzr;

    invoke-virtual {v3, v5, v14, v2}, Lujg;->a(Lcom/google/android/gms/ads/internal/client/zzr;Lhmh;Lkmh;)Lejf;

    move-result-object v13

    iget-boolean v2, v14, Lhmh;->W:Z

    invoke-interface {v13, v2}, Lejf;->zzac(Z)V

    iget-object v2, v0, Lr1h;->a:Landroid/content/Context;

    invoke-interface {v13}, Lejf;->zzF()Landroid/view/View;

    move-result-object v5

    move-object/from16 v6, p3

    invoke-virtual {v6, v2, v5}, Lxjg;->a(Landroid/content/Context;Landroid/view/View;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v5

    invoke-virtual {v5, v15}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v0, Lr1h;->j:Llmg;

    invoke-virtual {v5}, Llmg;->a()Landroid/os/Bundle;

    move-result-object v5

    sget-object v6, Lcom/google/android/gms/internal/ads/zzdqm;->zzv:Lcom/google/android/gms/internal/ads/zzdqm;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzdqm;->zza()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object v7

    invoke-interface {v7}, Lfy0;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_1
    new-instance v12, Leff;

    invoke-direct {v12}, Leff;-><init>()V

    iget-object v11, v0, Lr1h;->c:Lbjg;

    new-instance v10, Lpuf;

    const/4 v9, 0x0

    invoke-direct {v10, v1, v14, v9}, Lpuf;-><init>(Lvmh;Lhmh;Ljava/lang/String;)V

    iget-object v5, v0, Lr1h;->f:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v8, v0, Lr1h;->g:Lq3f;

    iget-boolean v7, v0, Lr1h;->h:Z

    iget-object v6, v0, Lr1h;->i:Lcom/google/android/gms/internal/ads/zzebe;

    iget-object v1, v0, Lr1h;->j:Llmg;

    iget-object v14, v0, Lr1h;->k:Lsmg;

    new-instance v0, Lyig;

    move-object/from16 p4, v15

    new-instance v15, Lq1h;

    move-object/from16 v16, v1

    move-object v1, v15

    move-object/from16 v17, v6

    move-object/from16 v6, p1

    move/from16 p2, v7

    move-object v7, v12

    move-object/from16 v18, v8

    move-object v8, v13

    move-object/from16 v19, v9

    move-object/from16 v9, v18

    move-object/from16 v20, v10

    move/from16 v10, p2

    move-object/from16 v21, v11

    move-object/from16 v11, v17

    move-object/from16 v22, v12

    move-object/from16 v12, v16

    move-object/from16 v23, v13

    move-object v13, v14

    invoke-direct/range {v1 .. v13}, Lq1h;-><init>(Landroid/content/Context;Lujg;Lenh;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lhmh;Lim5;Lejf;Lq3f;ZLcom/google/android/gms/internal/ads/zzebe;Llmg;Lsmg;)V

    move-object/from16 v1, v23

    invoke-direct {v0, v15, v1}, Lyig;-><init>(Lebg;Lejf;)V

    move-object/from16 v3, v20

    move-object/from16 v2, v21

    invoke-virtual {v2, v3, v0}, Lbjg;->b(Lpuf;Lyig;)Lxig;

    move-result-object v0

    move-object/from16 v2, v22

    invoke-virtual {v2, v0}, Leff;->c(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    move-object/from16 v3, p4

    invoke-virtual {v2, v3}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual/range {v16 .. v16}, Llmg;->a()Landroid/os/Bundle;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/ads/zzdqm;->zzw:Lcom/google/android/gms/internal/ads/zzdqm;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdqm;->zza()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object v4

    invoke-interface {v4}, Lfy0;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_2
    invoke-virtual {v0}, Lxig;->i()Lc9g;

    move-result-object v2

    invoke-static {v1, v2}, Lm4f;->b(Lejf;Ll4f;)V

    invoke-virtual {v0}, Lcuf;->b()Lb0g;

    move-result-object v2

    new-instance v3, Ll1h;

    invoke-direct {v3, v1}, Ll1h;-><init>(Lejf;)V

    sget-object v4, Lzef;->g:Lg8i;

    invoke-virtual {v2, v3, v4}, La6g;->C(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0}, Lxig;->l()Ltjg;

    move-result-object v2

    const/4 v3, 0x1

    move/from16 v4, p2

    if-eq v3, v4, :cond_3

    move-object/from16 v9, v19

    goto :goto_0

    :cond_3
    move-object/from16 v9, v18

    :goto_0
    invoke-virtual/range {v16 .. v16}, Llmg;->a()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v2, v1, v3, v9, v4}, Ltjg;->i(Lejf;ZLq3f;Landroid/os/Bundle;)V

    move-object/from16 v2, p1

    iget-object v4, v2, Lhmh;->s:Llmh;

    iget-object v5, v4, Llmh;->a:Ljava/lang/String;

    sget-object v6, Lcye;->p5:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v7

    invoke-virtual {v7, v6}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v0}, Lxig;->m()Laxg;

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
    invoke-virtual {v0}, Lxig;->l()Ltjg;

    iget-object v3, v4, Llmh;->b:Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Llmg;->a()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v1, v3, v5, v4}, Ltjg;->j(Lejf;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lim5;

    move-result-object v3

    new-instance v4, Lm1h;

    move-object/from16 v5, p0

    invoke-direct {v4, v5, v1, v2, v0}, Lm1h;-><init>(Lr1h;Lejf;Lhmh;Lxig;)V

    iget-object v0, v5, Lr1h;->e:Ljava/util/concurrent/Executor;

    invoke-static {v3, v4, v0}, Lcom/google/android/gms/internal/ads/j8;->m(Lim5;Lm2i;Ljava/util/concurrent/Executor;)Lim5;

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

    new-instance v2, Ln1h;

    invoke-direct {v2, p0, p2, p1, v0}, Ln1h;-><init>(Lr1h;Lhmh;Lvmh;Lxjg;)V

    iget-object p0, p0, Lr1h;->e:Ljava/util/concurrent/Executor;

    invoke-static {v1, v2, p0}, Lcom/google/android/gms/internal/ads/j8;->n(Lim5;Lk7i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzegt;

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzegt;-><init>(Lxjg;)V

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
