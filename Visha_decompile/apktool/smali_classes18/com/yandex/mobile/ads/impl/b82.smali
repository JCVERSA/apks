.class public final Lcom/yandex/mobile/ads/impl/b82;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/bv1;

.field private final b:Lcom/yandex/mobile/ads/impl/am0;

.field private final c:Lcom/yandex/mobile/ads/impl/ao0;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/am0;)V
    .locals 1

    .line 1
    sget v0, Lcom/yandex/mobile/ads/impl/ao0;->g:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/ao0$a;->a()Lcom/yandex/mobile/ads/impl/ao0;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/yandex/mobile/ads/impl/b82;-><init>(Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/am0;Lcom/yandex/mobile/ads/impl/ao0;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/am0;Lcom/yandex/mobile/ads/impl/ao0;)V
    .locals 1

    .line 3
    const-string v0, "sdkEnvironmentModule"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customUiElementsHolder"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "instreamSettings"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/b82;->a:Lcom/yandex/mobile/ads/impl/bv1;

    .line 6
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/b82;->b:Lcom/yandex/mobile/ads/impl/am0;

    .line 7
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/b82;->c:Lcom/yandex/mobile/ads/impl/ao0;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/gt;Lcom/yandex/mobile/ads/impl/zb2;Lcom/yandex/mobile/ads/impl/co0;Lcom/yandex/mobile/ads/impl/mg2;Lcom/yandex/mobile/ads/impl/yk1;Lcom/yandex/mobile/ads/impl/nb2;)Lcom/yandex/mobile/ads/impl/a82;
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v15, p3

    move-object/from16 v13, p4

    const-string v1, "context"

    invoke-static {v10, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "coreInstreamAdBreak"

    move-object/from16 v14, p2

    invoke-static {v14, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "videoAdInfo"

    invoke-static {v15, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "instreamVastAdPlayer"

    invoke-static {v13, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "videoTracker"

    move-object/from16 v8, p5

    invoke-static {v8, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "imageProvider"

    move-object/from16 v7, p6

    invoke-static {v7, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "playbackListener"

    move-object/from16 v12, p7

    invoke-static {v12, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/b82;->c:Lcom/yandex/mobile/ads/impl/ao0;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/ao0;->e()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v16, Lcom/yandex/mobile/ads/impl/so;

    iget-object v9, v0, Lcom/yandex/mobile/ads/impl/b82;->a:Lcom/yandex/mobile/ads/impl/bv1;

    new-instance v11, Lcom/yandex/mobile/ads/impl/vu;

    invoke-direct {v11}, Lcom/yandex/mobile/ads/impl/vu;-><init>()V

    new-instance v7, Lcom/yandex/mobile/ads/impl/no0;

    invoke-direct {v7, v11}, Lcom/yandex/mobile/ads/impl/no0;-><init>(Lcom/yandex/mobile/ads/impl/vu;)V

    invoke-virtual/range {p3 .. p3}, Lcom/yandex/mobile/ads/impl/zb2;->b()Lcom/yandex/mobile/ads/impl/uu;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Lcom/yandex/mobile/ads/impl/no0;->a(Lcom/yandex/mobile/ads/impl/uu;Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/he2;

    move-result-object v17

    new-instance v18, Lcom/yandex/mobile/ads/impl/zm0;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object v2, v9

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p7

    move-object/from16 v19, v7

    move-object/from16 v7, v17

    invoke-direct/range {v0 .. v7}, Lcom/yandex/mobile/ads/impl/zm0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/gt;Lcom/yandex/mobile/ads/impl/zb2;Lcom/yandex/mobile/ads/impl/mg2;Lcom/yandex/mobile/ads/impl/lo0;Lcom/yandex/mobile/ads/impl/he2;)V

    new-instance v7, Lcom/yandex/mobile/ads/impl/f6;

    invoke-direct {v7, v13}, Lcom/yandex/mobile/ads/impl/f6;-><init>(Lcom/yandex/mobile/ads/impl/co0;)V

    move-object/from16 v0, v16

    move-object/from16 v4, p4

    move-object/from16 v5, p3

    move-object/from16 v6, p5

    move-object v13, v7

    move-object/from16 v7, p7

    move-object v8, v11

    move-object/from16 v9, v19

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    move-object v12, v13

    invoke-direct/range {v0 .. v12}, Lcom/yandex/mobile/ads/impl/so;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/gt;Lcom/yandex/mobile/ads/impl/co0;Lcom/yandex/mobile/ads/impl/zb2;Lcom/yandex/mobile/ads/impl/mg2;Lcom/yandex/mobile/ads/impl/nb2;Lcom/yandex/mobile/ads/impl/vu;Lcom/yandex/mobile/ads/impl/no0;Lcom/yandex/mobile/ads/impl/he2;Lcom/yandex/mobile/ads/impl/zm0;Lcom/yandex/mobile/ads/impl/f6;)V

    goto/16 :goto_0

    :cond_0
    new-instance v29, Lcom/yandex/mobile/ads/impl/ms;

    move-object/from16 v9, v29

    iget-object v6, v0, Lcom/yandex/mobile/ads/impl/b82;->a:Lcom/yandex/mobile/ads/impl/bv1;

    move-object v11, v6

    iget-object v5, v0, Lcom/yandex/mobile/ads/impl/b82;->b:Lcom/yandex/mobile/ads/impl/am0;

    move-object v12, v5

    new-instance v0, Lcom/yandex/mobile/ads/impl/ns;

    move-object/from16 v19, v0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v13, v5

    move-object/from16 v5, p5

    move-object/from16 v16, v6

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/yandex/mobile/ads/impl/ns;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/co0;Lcom/yandex/mobile/ads/impl/gt;Lcom/yandex/mobile/ads/impl/zb2;Lcom/yandex/mobile/ads/impl/mg2;Lcom/yandex/mobile/ads/impl/nb2;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/in0;

    move-object/from16 v20, v0

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/in0;-><init>()V

    invoke-static {v10, v15}, Lcom/yandex/mobile/ads/impl/in0;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/zb2;)Lcom/yandex/mobile/ads/impl/hn0;

    move-result-object v17

    move-object/from16 v21, v17

    new-instance v18, Lcom/yandex/mobile/ads/impl/zg;

    move-object/from16 v22, v18

    move-object/from16 v0, v18

    move-object/from16 v2, v16

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object/from16 v7, p6

    move-object/from16 v8, v17

    invoke-direct/range {v0 .. v8}, Lcom/yandex/mobile/ads/impl/zg;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/zb2;Lcom/yandex/mobile/ads/impl/gt;Lcom/yandex/mobile/ads/impl/mg2;Lcom/yandex/mobile/ads/impl/nb2;Lcom/yandex/mobile/ads/impl/yk1;Lcom/yandex/mobile/ads/impl/hn0;)V

    invoke-virtual/range {v18 .. v18}, Lcom/yandex/mobile/ads/impl/zg;->a()Ljava/util/List;

    move-result-object v0

    move-object/from16 v23, v0

    new-instance v1, Lcom/yandex/mobile/ads/impl/gh;

    move-object/from16 v24, v1

    invoke-direct {v1, v0}, Lcom/yandex/mobile/ads/impl/gh;-><init>(Ljava/util/List;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/an0;

    move-object/from16 v25, v0

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/an0;-><init>()V

    new-instance v0, Lcom/yandex/mobile/ads/impl/qn0;

    move-object/from16 v26, v0

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/qn0;-><init>()V

    sget v0, Lcom/yandex/mobile/ads/impl/pw1;->l:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/pw1$a;->a()Lcom/yandex/mobile/ads/impl/pw1;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/yandex/mobile/ads/impl/pw1;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/ju1;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/qn0;->a(Lcom/yandex/mobile/ads/impl/ju1;)Lcom/yandex/mobile/ads/impl/pn0;

    move-result-object v0

    move-object/from16 v27, v0

    new-instance v1, Lcom/yandex/mobile/ads/impl/xm0;

    move-object/from16 v28, v1

    invoke-direct {v1, v13, v0}, Lcom/yandex/mobile/ads/impl/xm0;-><init>(Lcom/yandex/mobile/ads/impl/am0;Lcom/yandex/mobile/ads/impl/pn0;)V

    move-object/from16 v10, p1

    move-object/from16 v13, p4

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v16, p5

    move-object/from16 v17, p6

    move-object/from16 v18, p7

    invoke-direct/range {v9 .. v28}, Lcom/yandex/mobile/ads/impl/ms;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/am0;Lcom/yandex/mobile/ads/impl/co0;Lcom/yandex/mobile/ads/impl/gt;Lcom/yandex/mobile/ads/impl/zb2;Lcom/yandex/mobile/ads/impl/mg2;Lcom/yandex/mobile/ads/impl/yk1;Lcom/yandex/mobile/ads/impl/nb2;Lcom/yandex/mobile/ads/impl/ns;Lcom/yandex/mobile/ads/impl/in0;Lcom/yandex/mobile/ads/impl/hn0;Lcom/yandex/mobile/ads/impl/zg;Ljava/util/List;Lcom/yandex/mobile/ads/impl/gh;Lcom/yandex/mobile/ads/impl/an0;Lcom/yandex/mobile/ads/impl/qn0;Lcom/yandex/mobile/ads/impl/pn0;Lcom/yandex/mobile/ads/impl/xm0;)V

    move-object/from16 v16, v29

    :goto_0
    return-object v16
.end method
