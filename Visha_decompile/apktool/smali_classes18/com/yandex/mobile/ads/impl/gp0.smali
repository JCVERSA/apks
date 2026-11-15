.class final Lcom/yandex/mobile/ads/impl/gp0;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Ls74;"
    }
.end annotation

.annotation runtime Lnt1;
    c = "com.yandex.mobile.ads.features.debugpanel.ui.viewmodel.IntegrationInspectorViewModel$updateData$1"
    f = "IntegrationInspectorViewModel.kt"
    l = {
        0x6c,
        0x6d,
        0x6f,
        0x73
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field b:Lcom/yandex/mobile/ads/impl/fx;

.field c:Ljava/lang/Object;

.field d:I

.field final synthetic e:Lcom/yandex/mobile/ads/impl/fp0;

.field final synthetic f:Z


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/fp0;ZLwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/fp0;",
            "Z",
            "Lwh1<",
            "-",
            "Lcom/yandex/mobile/ads/impl/gp0;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/gp0;->e:Lcom/yandex/mobile/ads/impl/fp0;

    iput-boolean p2, p0, Lcom/yandex/mobile/ads/impl/gp0;->f:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILwh1;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lwh1;)Lwh1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lwh1<",
            "*>;)",
            "Lwh1<",
            "Lzfb;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/yandex/mobile/ads/impl/gp0;

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/gp0;->e:Lcom/yandex/mobile/ads/impl/fp0;

    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/gp0;->f:Z

    invoke-direct {p1, v0, p0, p2}, Lcom/yandex/mobile/ads/impl/gp0;-><init>(Lcom/yandex/mobile/ads/impl/fp0;ZLwh1;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    new-instance p1, Lcom/yandex/mobile/ads/impl/gp0;

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/gp0;->e:Lcom/yandex/mobile/ads/impl/fp0;

    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/gp0;->f:Z

    invoke-direct {p1, v0, p0, p2}, Lcom/yandex/mobile/ads/impl/gp0;-><init>(Lcom/yandex/mobile/ads/impl/fp0;ZLwh1;)V

    sget-object p0, Lzfb;->a:Lzfb;

    invoke-virtual {p1, p0}, Lcom/yandex/mobile/ads/impl/gp0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/yandex/mobile/ads/impl/gp0;->d:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/gp0;->b:Lcom/yandex/mobile/ads/impl/fx;

    invoke-static/range {p1 .. p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    move-object/from16 v3, p1

    goto/16 :goto_a

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/gp0;->b:Lcom/yandex/mobile/ads/impl/fx;

    invoke-static/range {p1 .. p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    move-object/from16 v3, p1

    goto/16 :goto_3

    :cond_2
    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/gp0;->c:Ljava/lang/Object;

    check-cast v1, Lcom/yandex/mobile/ads/impl/la;

    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/gp0;->b:Lcom/yandex/mobile/ads/impl/fx;

    invoke-static/range {p1 .. p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    move-object/from16 v4, p1

    goto/16 :goto_1

    :cond_3
    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/gp0;->c:Ljava/lang/Object;

    check-cast v1, Lcom/yandex/mobile/ads/impl/kx;

    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/gp0;->b:Lcom/yandex/mobile/ads/impl/fx;

    invoke-static/range {p1 .. p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    move-object/from16 v4, p1

    goto :goto_0

    :cond_4
    invoke-static/range {p1 .. p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/gp0;->e:Lcom/yandex/mobile/ads/impl/fp0;

    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/fp0;->l(Lcom/yandex/mobile/ads/impl/fp0;)Lmw6;

    move-result-object v2

    invoke-interface {v2}, Lmw6;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/mobile/ads/impl/gy;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/gy;->a()Lcom/yandex/mobile/ads/impl/fx;

    move-result-object v2

    iget-object v8, v0, Lcom/yandex/mobile/ads/impl/gp0;->e:Lcom/yandex/mobile/ads/impl/fp0;

    invoke-static {v8}, Lcom/yandex/mobile/ads/impl/fp0;->l(Lcom/yandex/mobile/ads/impl/fp0;)Lmw6;

    move-result-object v8

    invoke-interface {v8}, Lmw6;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/yandex/mobile/ads/impl/gy;

    invoke-virtual {v8}, Lcom/yandex/mobile/ads/impl/gy;->c()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    iget-boolean v8, v0, Lcom/yandex/mobile/ads/impl/gp0;->f:Z

    if-eqz v8, :cond_6

    :cond_5
    iget-object v8, v0, Lcom/yandex/mobile/ads/impl/gp0;->e:Lcom/yandex/mobile/ads/impl/fp0;

    invoke-static {v8}, Lcom/yandex/mobile/ads/impl/fp0;->l(Lcom/yandex/mobile/ads/impl/fp0;)Lmw6;

    move-result-object v9

    invoke-interface {v9}, Lmw6;->getValue()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Lcom/yandex/mobile/ads/impl/gy;

    const/4 v14, 0x0

    const/16 v15, 0xb

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-static/range {v10 .. v15}, Lcom/yandex/mobile/ads/impl/gy;->a(Lcom/yandex/mobile/ads/impl/gy;Lcom/yandex/mobile/ads/impl/gy;Lcom/yandex/mobile/ads/impl/fx;ZLjava/util/List;I)Lcom/yandex/mobile/ads/impl/gy;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/yandex/mobile/ads/impl/fp0;->a(Lcom/yandex/mobile/ads/impl/fp0;Lcom/yandex/mobile/ads/impl/gy;)V

    :cond_6
    instance-of v8, v2, Lcom/yandex/mobile/ads/impl/fx$d;

    if-eqz v8, :cond_8

    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/gp0;->e:Lcom/yandex/mobile/ads/impl/fp0;

    invoke-static {v3}, Lcom/yandex/mobile/ads/impl/fp0;->d(Lcom/yandex/mobile/ads/impl/fp0;)Lcom/yandex/mobile/ads/impl/kx;

    move-result-object v3

    iget-object v4, v0, Lcom/yandex/mobile/ads/impl/gp0;->e:Lcom/yandex/mobile/ads/impl/fp0;

    invoke-static {v4}, Lcom/yandex/mobile/ads/impl/fp0;->g(Lcom/yandex/mobile/ads/impl/fp0;)Lcom/yandex/mobile/ads/impl/me0;

    move-result-object v4

    iget-boolean v5, v0, Lcom/yandex/mobile/ads/impl/gp0;->f:Z

    iput-object v2, v0, Lcom/yandex/mobile/ads/impl/gp0;->b:Lcom/yandex/mobile/ads/impl/fx;

    iput-object v3, v0, Lcom/yandex/mobile/ads/impl/gp0;->c:Ljava/lang/Object;

    iput v6, v0, Lcom/yandex/mobile/ads/impl/gp0;->d:I

    invoke-virtual {v4, v5, v0}, Lcom/yandex/mobile/ads/impl/me0;->a(ZLwh1;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_7

    return-object v1

    :cond_7
    move-object v1, v3

    :goto_0
    check-cast v4, Lcom/yandex/mobile/ads/impl/ix;

    invoke-virtual {v1, v4}, Lcom/yandex/mobile/ads/impl/kx;->a(Lcom/yandex/mobile/ads/impl/ix;)Ljava/util/List;

    move-result-object v7

    goto/16 :goto_b

    :cond_8
    instance-of v6, v2, Lcom/yandex/mobile/ads/impl/fx$c;

    if-eqz v6, :cond_a

    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/gp0;->e:Lcom/yandex/mobile/ads/impl/fp0;

    invoke-static {v3}, Lcom/yandex/mobile/ads/impl/fp0;->c(Lcom/yandex/mobile/ads/impl/fp0;)Lcom/yandex/mobile/ads/impl/la;

    move-result-object v3

    iget-object v4, v0, Lcom/yandex/mobile/ads/impl/gp0;->e:Lcom/yandex/mobile/ads/impl/fp0;

    invoke-static {v4}, Lcom/yandex/mobile/ads/impl/fp0;->f(Lcom/yandex/mobile/ads/impl/fp0;)Lcom/yandex/mobile/ads/impl/le0;

    move-result-object v4

    iget-boolean v6, v0, Lcom/yandex/mobile/ads/impl/gp0;->f:Z

    iput-object v2, v0, Lcom/yandex/mobile/ads/impl/gp0;->b:Lcom/yandex/mobile/ads/impl/fx;

    iput-object v3, v0, Lcom/yandex/mobile/ads/impl/gp0;->c:Ljava/lang/Object;

    iput v5, v0, Lcom/yandex/mobile/ads/impl/gp0;->d:I

    invoke-virtual {v4, v6, v0}, Lcom/yandex/mobile/ads/impl/le0;->a(ZLwh1;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_9

    return-object v1

    :cond_9
    move-object v1, v3

    :goto_1
    check-cast v4, Lcom/yandex/mobile/ads/impl/pw;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "adUnits"

    invoke-static {v4, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/pw;->a()Ljava/util/List;

    move-result-object v1

    new-instance v7, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v7, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yandex/mobile/ads/impl/jw;

    new-instance v4, Lcom/yandex/mobile/ads/impl/iy$a;

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/jw;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/jw;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/jw;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v6, v3}, Lcom/yandex/mobile/ads/impl/iy$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_a
    instance-of v5, v2, Lcom/yandex/mobile/ads/impl/fx$b;

    if-eqz v5, :cond_b

    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/gp0;->e:Lcom/yandex/mobile/ads/impl/fp0;

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/fp0;->a(Lcom/yandex/mobile/ads/impl/fp0;)Lcom/yandex/mobile/ads/impl/fa;

    move-result-object v1

    move-object v3, v2

    check-cast v3, Lcom/yandex/mobile/ads/impl/fx$b;

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/fx$b;->b()Lcom/yandex/mobile/ads/impl/iy$g;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/yandex/mobile/ads/impl/fa;->a(Lcom/yandex/mobile/ads/impl/iy$g;)Ljava/util/List;

    move-result-object v7

    goto/16 :goto_b

    :cond_b
    instance-of v5, v2, Lcom/yandex/mobile/ads/impl/fx$a;

    if-eqz v5, :cond_13

    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/gp0;->e:Lcom/yandex/mobile/ads/impl/fp0;

    invoke-static {v3}, Lcom/yandex/mobile/ads/impl/fp0;->e(Lcom/yandex/mobile/ads/impl/fp0;)Lcom/yandex/mobile/ads/impl/ke0;

    move-result-object v3

    move-object v5, v2

    check-cast v5, Lcom/yandex/mobile/ads/impl/fx$a;

    invoke-virtual {v5}, Lcom/yandex/mobile/ads/impl/fx$a;->b()Ljava/lang/String;

    move-result-object v5

    iget-boolean v6, v0, Lcom/yandex/mobile/ads/impl/gp0;->f:Z

    iput-object v2, v0, Lcom/yandex/mobile/ads/impl/gp0;->b:Lcom/yandex/mobile/ads/impl/fx;

    iput v4, v0, Lcom/yandex/mobile/ads/impl/gp0;->d:I

    invoke-virtual {v3, v5, v6, v0}, Lcom/yandex/mobile/ads/impl/ke0;->a(Ljava/lang/String;ZLwh1;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_c

    return-object v1

    :cond_c
    move-object v1, v2

    :goto_3
    check-cast v3, Lcom/yandex/mobile/ads/impl/kw;

    if-eqz v3, :cond_12

    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/gp0;->e:Lcom/yandex/mobile/ads/impl/fp0;

    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/fp0;->b(Lcom/yandex/mobile/ads/impl/fp0;)Lcom/yandex/mobile/ads/impl/ia;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "adUnit"

    invoke-static {v3, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lx71;->c()Ljava/util/List;

    move-result-object v2

    sget-object v4, Lcom/yandex/mobile/ads/impl/iy$d;->a:Lcom/yandex/mobile/ads/impl/iy$d;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/yandex/mobile/ads/impl/iy$e;

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/kw;->d()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/yandex/mobile/ads/impl/iy$e;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/yandex/mobile/ads/impl/iy$f;

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/kw;->b()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Format"

    invoke-direct {v4, v6, v5}, Lcom/yandex/mobile/ads/impl/iy$f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/yandex/mobile/ads/impl/iy$f;

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/kw;->a()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ID"

    invoke-direct {v4, v6, v5}, Lcom/yandex/mobile/ads/impl/iy$f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/kw;->c()Lcom/yandex/mobile/ads/impl/nw;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/nw;->a()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/mobile/ads/impl/mw;

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/mw;->f()Lcom/yandex/mobile/ads/impl/mw$a;

    move-result-object v5

    instance-of v6, v5, Lcom/yandex/mobile/ads/impl/mw$a$a;

    if-eqz v6, :cond_d

    sget-object v5, Lcom/yandex/mobile/ads/impl/sw;->c:Lcom/yandex/mobile/ads/impl/sw;

    :goto_5
    move-object/from16 v18, v5

    goto :goto_6

    :cond_d
    instance-of v5, v5, Lcom/yandex/mobile/ads/impl/mw$a$b;

    if-eqz v5, :cond_10

    sget-object v5, Lcom/yandex/mobile/ads/impl/sw;->d:Lcom/yandex/mobile/ads/impl/sw;

    goto :goto_5

    :goto_6
    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/mw;->f()Lcom/yandex/mobile/ads/impl/mw$a;

    move-result-object v5

    instance-of v6, v5, Lcom/yandex/mobile/ads/impl/mw$a$b;

    if-eqz v6, :cond_e

    check-cast v5, Lcom/yandex/mobile/ads/impl/mw$a$b;

    goto :goto_7

    :cond_e
    move-object v5, v7

    :goto_7
    if-eqz v5, :cond_f

    invoke-virtual {v5}, Lcom/yandex/mobile/ads/impl/mw$a$b;->a()Ljava/util/List;

    move-result-object v5

    move-object/from16 v17, v5

    goto :goto_8

    :cond_f
    move-object/from16 v17, v7

    :goto_8
    new-instance v5, Lcom/yandex/mobile/ads/impl/iy$g;

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/mw;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/mw;->c()Ljava/lang/String;

    move-result-object v10

    new-instance v6, Lcom/yandex/mobile/ads/impl/cy;

    sget v13, Lcom/yandex/mobile/ads/R$attr;->debug_panel_label_secondary:I

    sget v15, Lcom/yandex/mobile/ads/R$style;->DebugPanelText_Body2:I

    const/4 v14, 0x0

    const/16 v16, 0x4

    const-string v12, "Mediation"

    move-object v11, v6

    invoke-direct/range {v11 .. v16}, Lcom/yandex/mobile/ads/impl/cy;-><init>(Ljava/lang/String;ILjava/lang/Integer;II)V

    new-instance v12, Lcom/yandex/mobile/ads/impl/zw;

    invoke-virtual/range {v18 .. v18}, Lcom/yandex/mobile/ads/impl/sw;->a()Ljava/lang/String;

    move-result-object v8

    sget v11, Lcom/yandex/mobile/ads/R$attr;->debug_panel_label_primary:I

    sget v13, Lcom/yandex/mobile/ads/R$style;->DebugPanelText_Body1:I

    invoke-direct {v12, v11, v13, v8}, Lcom/yandex/mobile/ads/impl/zw;-><init>(IILjava/lang/String;)V

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/mw;->a()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/mw;->d()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/mw;->e()Ljava/util/List;

    move-result-object v16

    const/16 v19, 0x0

    const/16 v20, 0x400

    const/4 v13, 0x0

    move-object v8, v5

    move-object v11, v6

    invoke-direct/range {v8 .. v20}, Lcom/yandex/mobile/ads/impl/iy$g;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/cy;Lcom/yandex/mobile/ads/impl/zw;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/yandex/mobile/ads/impl/sw;Ljava/lang/String;I)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_10
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_11
    invoke-static {v2}, Lx71;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    :cond_12
    :goto_9
    move-object v2, v1

    goto :goto_b

    :cond_13
    instance-of v4, v2, Lcom/yandex/mobile/ads/impl/fx$e;

    if-eqz v4, :cond_1a

    iget-object v4, v0, Lcom/yandex/mobile/ads/impl/gp0;->e:Lcom/yandex/mobile/ads/impl/fp0;

    invoke-static {v4}, Lcom/yandex/mobile/ads/impl/fp0;->i(Lcom/yandex/mobile/ads/impl/fp0;)Lcom/yandex/mobile/ads/impl/oe0;

    move-result-object v4

    move-object v5, v2

    check-cast v5, Lcom/yandex/mobile/ads/impl/fx$e;

    invoke-virtual {v5}, Lcom/yandex/mobile/ads/impl/fx$e;->b()Ljava/lang/String;

    move-result-object v5

    iget-boolean v6, v0, Lcom/yandex/mobile/ads/impl/gp0;->f:Z

    iput-object v2, v0, Lcom/yandex/mobile/ads/impl/gp0;->b:Lcom/yandex/mobile/ads/impl/fx;

    iput v3, v0, Lcom/yandex/mobile/ads/impl/gp0;->d:I

    invoke-virtual {v4, v5, v6, v0}, Lcom/yandex/mobile/ads/impl/oe0;->a(Ljava/lang/String;ZLwh1;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_14

    return-object v1

    :cond_14
    move-object v1, v2

    :goto_a
    check-cast v3, Lcom/yandex/mobile/ads/impl/rw;

    if-eqz v3, :cond_12

    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/gp0;->e:Lcom/yandex/mobile/ads/impl/fp0;

    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/fp0;->j(Lcom/yandex/mobile/ads/impl/fp0;)Lcom/yandex/mobile/ads/impl/xz0;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "mediationNetworkData"

    invoke-static {v3, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lx71;->c()Ljava/util/List;

    move-result-object v2

    sget-object v4, Lcom/yandex/mobile/ads/impl/iy$d;->a:Lcom/yandex/mobile/ads/impl/iy$d;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/yandex/mobile/ads/impl/iy$e;

    const-string v5, "Integration"

    invoke-direct {v4, v5}, Lcom/yandex/mobile/ads/impl/iy$e;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/rw;->b()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_15

    new-instance v5, Lcom/yandex/mobile/ads/impl/iy$f;

    const-string v6, "Adapter Version"

    invoke-direct {v5, v6, v4}, Lcom/yandex/mobile/ads/impl/iy$f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_15
    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/rw;->c()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_16

    new-instance v4, Lcom/yandex/mobile/ads/impl/iy$f;

    const-string v5, "Latest Adapter Version"

    invoke-direct {v4, v5, v3}, Lcom/yandex/mobile/ads/impl/iy$f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_16
    new-instance v3, Lcom/yandex/mobile/ads/impl/iy$c;

    sget-object v4, Lcom/yandex/mobile/ads/impl/iy$c$a;->b:Lcom/yandex/mobile/ads/impl/iy$c$a;

    invoke-direct {v3}, Lcom/yandex/mobile/ads/impl/iy$c;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Lx71;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    goto :goto_9

    :cond_17
    :goto_b
    if-nez v7, :cond_18

    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/gp0;->e:Lcom/yandex/mobile/ads/impl/fp0;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/fp0;->m(Lcom/yandex/mobile/ads/impl/fp0;)V

    goto :goto_c

    :cond_18
    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/gp0;->e:Lcom/yandex/mobile/ads/impl/fp0;

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/fp0;->l(Lcom/yandex/mobile/ads/impl/fp0;)Lmw6;

    move-result-object v1

    invoke-interface {v1}, Lmw6;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/mobile/ads/impl/gy;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/gy;->a()Lcom/yandex/mobile/ads/impl/fx;

    move-result-object v1

    invoke-static {v2, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/gp0;->e:Lcom/yandex/mobile/ads/impl/fp0;

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/fp0;->l(Lcom/yandex/mobile/ads/impl/fp0;)Lmw6;

    move-result-object v1

    invoke-interface {v1}, Lmw6;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/yandex/mobile/ads/impl/gy;

    const/4 v6, 0x0

    const/4 v8, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lcom/yandex/mobile/ads/impl/gy;->a(Lcom/yandex/mobile/ads/impl/gy;Lcom/yandex/mobile/ads/impl/gy;Lcom/yandex/mobile/ads/impl/fx;ZLjava/util/List;I)Lcom/yandex/mobile/ads/impl/gy;

    move-result-object v1

    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/gp0;->e:Lcom/yandex/mobile/ads/impl/fp0;

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/impl/fp0;->a(Lcom/yandex/mobile/ads/impl/fp0;Lcom/yandex/mobile/ads/impl/gy;)V

    :cond_19
    :goto_c
    sget-object v0, Lzfb;->a:Lzfb;

    return-object v0

    :cond_1a
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method
