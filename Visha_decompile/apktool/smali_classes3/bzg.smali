.class public final Lbzg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkxg;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lujg;

.field public final c:Lyag;

.field public final d:Lenh;

.field public final e:Ljava/util/concurrent/Executor;

.field public final f:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field public final g:Lq3f;

.field public final h:Z

.field public final i:Lcom/google/android/gms/internal/ads/zzebe;

.field public final j:Llmg;

.field public final k:Lsmg;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lenh;Ljava/util/concurrent/Executor;Lyag;Lujg;Lq3f;Lcom/google/android/gms/internal/ads/zzebe;Llmg;Lsmg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbzg;->a:Landroid/content/Context;

    iput-object p3, p0, Lbzg;->d:Lenh;

    iput-object p5, p0, Lbzg;->c:Lyag;

    iput-object p4, p0, Lbzg;->e:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lbzg;->f:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p6, p0, Lbzg;->b:Lujg;

    iput-object p7, p0, Lbzg;->g:Lq3f;

    sget-object p1, Lcye;->Y8:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object p2

    invoke-virtual {p2, p1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lbzg;->h:Z

    iput-object p8, p0, Lbzg;->i:Lcom/google/android/gms/internal/ads/zzebe;

    iput-object p9, p0, Lbzg;->j:Llmg;

    iput-object p10, p0, Lbzg;->k:Lsmg;

    return-void
.end method

.method public static synthetic c(Lbzg;Lhmh;Lvmh;Lxjg;Ljava/lang/Object;)Lim5;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    move-object/from16 v1, p2

    sget-object v13, Lcye;->s2:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v13}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lbzg;->j:Llmg;

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
    iget-object v2, v0, Lbzg;->b:Lujg;

    iget-object v7, v0, Lbzg;->d:Lenh;

    iget-object v3, v1, Lvmh;->b:Lumh;

    iget-object v3, v3, Lumh;->b:Lkmh;

    iget-object v4, v7, Lenh;->e:Lcom/google/android/gms/ads/internal/client/zzr;

    invoke-virtual {v2, v4, v12, v3}, Lujg;->a(Lcom/google/android/gms/ads/internal/client/zzr;Lhmh;Lkmh;)Lejf;

    move-result-object v14

    iget-boolean v2, v12, Lhmh;->W:Z

    invoke-interface {v14, v2}, Lejf;->zzac(Z)V

    iget-object v2, v0, Lbzg;->a:Landroid/content/Context;

    invoke-interface {v14}, Lejf;->zzF()Landroid/view/View;

    move-result-object v3

    move-object/from16 v4, p3

    invoke-virtual {v4, v2, v3}, Lxjg;->a(Landroid/content/Context;Landroid/view/View;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v3

    invoke-virtual {v3, v13}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v0, Lbzg;->j:Llmg;

    invoke-virtual {v3}, Llmg;->a()Landroid/os/Bundle;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/ads/zzdqm;->zzv:Lcom/google/android/gms/internal/ads/zzdqm;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzdqm;->zza()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object v5

    invoke-interface {v5}, Lfy0;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_1
    new-instance v15, Leff;

    invoke-direct {v15}, Leff;-><init>()V

    iget-object v11, v0, Lbzg;->c:Lyag;

    new-instance v10, Lpuf;

    const/4 v9, 0x0

    invoke-direct {v10, v1, v12, v9}, Lpuf;-><init>(Lvmh;Lhmh;Ljava/lang/String;)V

    iget-object v3, v0, Lbzg;->f:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-boolean v8, v0, Lbzg;->h:Z

    iget-object v6, v0, Lbzg;->g:Lq3f;

    iget-object v5, v0, Lbzg;->i:Lcom/google/android/gms/internal/ads/zzebe;

    iget-object v4, v0, Lbzg;->k:Lsmg;

    new-instance v1, Lw9g;

    new-instance v12, Lazg;

    move-object v0, v1

    move-object v1, v12

    move-object/from16 v16, v4

    move-object v4, v15

    move-object/from16 v17, v5

    move-object/from16 v5, p1

    move-object/from16 v18, v6

    move-object v6, v14

    move/from16 p2, v8

    move-object/from16 v19, v9

    move-object/from16 v9, v18

    move-object/from16 p4, v13

    move-object v13, v10

    move-object/from16 v10, v17

    move-object/from16 p3, v15

    move-object v15, v11

    move-object/from16 v11, v16

    invoke-direct/range {v1 .. v11}, Lazg;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lim5;Lhmh;Lejf;Lenh;ZLq3f;Lcom/google/android/gms/internal/ads/zzebe;Lsmg;)V

    invoke-direct {v0, v12, v14}, Lw9g;-><init>(Lebg;Lejf;)V

    invoke-virtual {v15, v13, v0}, Lyag;->c(Lpuf;Lw9g;)Lt9g;

    move-result-object v0

    move-object/from16 v1, p3

    invoke-virtual {v1, v0}, Leff;->c(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    move-object/from16 v2, p4

    invoke-virtual {v1, v2}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v1, p0

    iget-object v2, v1, Lbzg;->j:Llmg;

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
    invoke-virtual {v0}, Lt9g;->b()Lb0g;

    move-result-object v2

    new-instance v3, Lyyg;

    invoke-direct {v3, v14}, Lyyg;-><init>(Lejf;)V

    sget-object v4, Lzef;->g:Lg8i;

    invoke-virtual {v2, v3, v4}, La6g;->C(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    move-object/from16 v2, p1

    iget-object v3, v2, Lhmh;->s:Llmh;

    iget-object v4, v3, Llmh;->a:Ljava/lang/String;

    sget-object v5, Lcye;->p5:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v6

    invoke-virtual {v6, v5}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    invoke-virtual {v0}, Lt9g;->l()Laxg;

    move-result-object v5

    invoke-virtual {v5, v6}, Laxg;->e(Z)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static/range {p1 .. p1}, Lyjf;->a(Lhmh;)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lyjf;->b(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_3
    invoke-virtual {v0}, Lt9g;->k()Ltjg;

    move-result-object v5

    move/from16 v7, p2

    if-eq v6, v7, :cond_4

    move-object/from16 v9, v19

    goto :goto_1

    :cond_4
    move-object/from16 v9, v18

    :goto_1
    iget-object v7, v1, Lbzg;->j:Llmg;

    invoke-virtual {v7}, Llmg;->a()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v5, v14, v6, v9, v8}, Ltjg;->i(Lejf;ZLq3f;Landroid/os/Bundle;)V

    invoke-virtual {v0}, Lt9g;->k()Ltjg;

    iget-object v3, v3, Llmh;->b:Ljava/lang/String;

    invoke-virtual {v7}, Llmg;->a()Landroid/os/Bundle;

    move-result-object v5

    invoke-static {v14, v3, v4, v5}, Ltjg;->j(Lejf;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lim5;

    move-result-object v3

    new-instance v4, Lzyg;

    invoke-direct {v4, v1, v14, v2, v0}, Lzyg;-><init>(Lbzg;Lejf;Lhmh;Lt9g;)V

    iget-object v0, v1, Lbzg;->e:Ljava/util/concurrent/Executor;

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

    new-instance v2, Lvyg;

    invoke-direct {v2, p0, p2, p1, v0}, Lvyg;-><init>(Lbzg;Lhmh;Lvmh;Lxjg;)V

    iget-object p0, p0, Lbzg;->e:Ljava/util/concurrent/Executor;

    invoke-static {v1, v2, p0}, Lcom/google/android/gms/internal/ads/j8;->n(Lim5;Lk7i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzedz;

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzedz;-><init>(Lxjg;)V

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
