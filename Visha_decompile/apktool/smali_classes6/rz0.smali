.class public final Lrz0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lqe;

.field public final c:Ljpa;

.field public final d:Lyfb;

.field public e:Lqhb;

.field public f:Ls03;

.field public final g:Lmq3;

.field public final h:Leu9;


# direct methods
.method public constructor <init>(Loz0;)V
    .locals 2

    const-string v0, "builder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Loz0;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lrz0;->a:Ljava/lang/String;

    invoke-virtual {p1}, Loz0;->e()Lqe;

    move-result-object v0

    iput-object v0, p0, Lrz0;->b:Lqe;

    invoke-virtual {p1}, Loz0;->b()Ljpa;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object v0, p0, Lrz0;->c:Ljpa;

    invoke-virtual {p1}, Loz0;->K()Lyfb;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lrz0;->d:Lyfb;

    new-instance v0, Lrp5;

    invoke-direct {v0}, Lrp5;-><init>()V

    invoke-virtual {p1}, Loz0;->w()Z

    move-result v1

    invoke-virtual {v0, v1}, Lrp5;->g(Z)V

    invoke-virtual {p1}, Loz0;->t()I

    move-result v1

    invoke-virtual {v0, v1}, Lrp5;->e(I)V

    invoke-virtual {p1}, Loz0;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrp5;->h(Ljava/lang/String;)V

    invoke-virtual {p1}, Loz0;->u()Lwp5;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrp5;->f(Lwp5;)V

    sget-object v1, Loq5;->a:Loq5;

    invoke-virtual {v1, v0}, Loq5;->i(Lrp5;)V

    invoke-virtual {p0, p1}, Lrz0;->f(Loz0;)V

    invoke-static {}, Lb05;->a()Lmq3;

    move-result-object v0

    iput-object v0, p0, Lrz0;->g:Lmq3;

    invoke-static {}, Lb05;->b()Leu9;

    move-result-object v0

    iput-object v0, p0, Lrz0;->h:Leu9;

    invoke-virtual {p0, p1}, Lrz0;->h(Loz0;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "UniqueIdFetcher must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "AccessTokenFetcher must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lrz0;->g(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final g(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Loq5;->a:Loq5;

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p0, p1, p2}, Loq5;->e(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final b()Ls03;
    .locals 0

    iget-object p0, p0, Lrz0;->f:Ls03;

    if-nez p0, :cond_0

    const-string p0, "downloadManager"

    invoke-static {p0}, Ly45;->B(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public final c()Lmq3;
    .locals 0

    iget-object p0, p0, Lrz0;->g:Lmq3;

    return-object p0
.end method

.method public final d()Leu9;
    .locals 0

    iget-object p0, p0, Lrz0;->h:Leu9;

    return-object p0
.end method

.method public final e()Lqhb;
    .locals 0

    iget-object p0, p0, Lrz0;->e:Lqhb;

    if-nez p0, :cond_0

    const-string p0, "uploadManager"

    invoke-static {p0}, Ly45;->B(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public final f(Loz0;)V
    .locals 25

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Loz0;->e()Lqe;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/transsion/clouddrive/sdk/DefaultAppInfoProvider;

    invoke-virtual/range {p1 .. p1}, Loz0;->g()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Loz0;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/transsion/clouddrive/sdk/DefaultAppInfoProvider;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    move-object v5, v1

    sget-object v1, Lpr8;->a:Lpr8;

    invoke-virtual/range {p1 .. p1}, Loz0;->g()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "getApplicationContext(...)"

    invoke-static {v2, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Llr8;

    new-instance v4, Lpz0;

    move-object/from16 v14, p1

    invoke-direct {v4, v14}, Lpz0;-><init>(Loz0;)V

    invoke-virtual/range {p1 .. p1}, Loz0;->J()Z

    move-result v6

    new-instance v7, Lqz0;

    invoke-direct {v7}, Lqz0;-><init>()V

    invoke-direct {v3, v4, v6, v7}, Llr8;-><init>(Llpa;ZLvp5;)V

    invoke-virtual {v1, v2, v3}, Lpr8;->c(Landroid/content/Context;Llr8;)V

    new-instance v1, Lqz6;

    move-object v4, v1

    invoke-virtual/range {p1 .. p1}, Loz0;->f()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Loz0;->I()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Loz0;->P()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Loz0;->H()Z

    move-result v9

    invoke-virtual/range {p1 .. p1}, Loz0;->r()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Loz0;->s()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Loz0;->n()Z

    move-result v12

    invoke-virtual/range {p1 .. p1}, Loz0;->A()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Loz0;->G()J

    move-result-wide v2

    move-wide v14, v2

    iget-object v2, v0, Lrz0;->c:Ljpa;

    move-object/from16 v16, v2

    invoke-virtual/range {p1 .. p1}, Loz0;->c()Lnpa;

    move-result-object v17

    iget-object v2, v0, Lrz0;->d:Lyfb;

    move-object/from16 v18, v2

    invoke-virtual/range {p1 .. p1}, Loz0;->h()Ljava/util/List;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Loz0;->i()Lhe7;

    invoke-virtual/range {p1 .. p1}, Loz0;->J()Z

    move-result v21

    invoke-virtual/range {p1 .. p1}, Loz0;->O()Z

    move-result v22

    invoke-virtual/range {p1 .. p1}, Loz0;->o()Z

    move-result v23

    invoke-virtual/range {p1 .. p1}, Loz0;->q()Lyj4;

    move-result-object v24

    const/16 v20, 0x0

    invoke-direct/range {v4 .. v24}, Lqz6;-><init>(Lqe;IIIZLjava/lang/String;IZIJLjpa;Lnpa;Lyfb;Ljava/util/List;Lhe7;ZZZLyj4;)V

    sget-object v2, Lcom/transsion/cloud_drive/base/network/RetrofitInstance;->a:Lcom/transsion/cloud_drive/base/network/RetrofitInstance;

    iget-object v0, v0, Lrz0;->a:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcom/transsion/cloud_drive/base/network/RetrofitInstance;->i(Ljava/lang/String;Lqz6;)V

    return-void
.end method

.method public final h(Loz0;)V
    .locals 12

    new-instance v11, Ljhb;

    invoke-virtual {p1}, Loz0;->F()I

    move-result v1

    invoke-virtual {p1}, Loz0;->C()I

    move-result v2

    invoke-virtual {p1}, Loz0;->E()J

    move-result-wide v3

    invoke-virtual {p1}, Loz0;->D()I

    move-result v5

    invoke-virtual {p1}, Loz0;->p()Z

    move-result v6

    invoke-virtual {p1}, Loz0;->L()I

    move-result v7

    invoke-virtual {p1}, Loz0;->M()J

    move-result-wide v8

    invoke-virtual {p1}, Loz0;->N()Lgea;

    move-result-object v10

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Ljhb;-><init>(IIJIZIJLgea;)V

    invoke-static {v11}, La05;->b(Ljhb;)Lqhb;

    move-result-object v0

    iput-object v0, p0, Lrz0;->e:Lqhb;

    new-instance v0, Lny2;

    invoke-virtual {p1}, Loz0;->z()I

    move-result v2

    invoke-virtual {p1}, Loz0;->B()I

    move-result v3

    invoke-virtual {p1}, Loz0;->y()J

    move-result-wide v4

    invoke-virtual {p1}, Loz0;->x()I

    move-result v6

    invoke-virtual {p1}, Loz0;->k()I

    move-result v7

    invoke-virtual {p1}, Loz0;->l()J

    move-result-wide v8

    invoke-virtual {p1}, Loz0;->m()Lgea;

    move-result-object v10

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lny2;-><init>(IIJIIJLgea;)V

    invoke-static {v0}, La05;->a(Lny2;)Ls03;

    move-result-object p1

    iput-object p1, p0, Lrz0;->f:Ls03;

    return-void
.end method
