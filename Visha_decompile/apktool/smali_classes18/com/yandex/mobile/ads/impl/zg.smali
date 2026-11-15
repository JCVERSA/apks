.class public final Lcom/yandex/mobile/ads/impl/zg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/yandex/mobile/ads/impl/bv1;

.field private final c:Lcom/yandex/mobile/ads/impl/zb2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/zb2<",
            "Lcom/yandex/mobile/ads/impl/go0;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/yandex/mobile/ads/impl/gt;

.field private final e:Lcom/yandex/mobile/ads/impl/mg2;

.field private final f:Lcom/yandex/mobile/ads/impl/lo0;

.field private final g:Lcom/yandex/mobile/ads/impl/sj0;

.field private final h:Lcom/yandex/mobile/ads/impl/hn0;

.field private final i:Lcom/yandex/mobile/ads/impl/xo;

.field private final j:Lcom/yandex/mobile/ads/impl/no0;

.field private final k:Lcom/yandex/mobile/ads/impl/ng;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/zb2;Lcom/yandex/mobile/ads/impl/gt;Lcom/yandex/mobile/ads/impl/mg2;Lcom/yandex/mobile/ads/impl/nb2;Lcom/yandex/mobile/ads/impl/yk1;Lcom/yandex/mobile/ads/impl/hn0;)V
    .locals 12

    .line 1
    new-instance v9, Lcom/yandex/mobile/ads/impl/xo;

    invoke-direct {v9}, Lcom/yandex/mobile/ads/impl/xo;-><init>()V

    .line 2
    new-instance v10, Lcom/yandex/mobile/ads/impl/no0;

    invoke-direct {v10}, Lcom/yandex/mobile/ads/impl/no0;-><init>()V

    .line 3
    new-instance v11, Lcom/yandex/mobile/ads/impl/ng;

    invoke-direct {v11}, Lcom/yandex/mobile/ads/impl/ng;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 4
    invoke-direct/range {v0 .. v11}, Lcom/yandex/mobile/ads/impl/zg;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/zb2;Lcom/yandex/mobile/ads/impl/gt;Lcom/yandex/mobile/ads/impl/mg2;Lcom/yandex/mobile/ads/impl/nb2;Lcom/yandex/mobile/ads/impl/yk1;Lcom/yandex/mobile/ads/impl/hn0;Lcom/yandex/mobile/ads/impl/xo;Lcom/yandex/mobile/ads/impl/no0;Lcom/yandex/mobile/ads/impl/ng;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/zb2;Lcom/yandex/mobile/ads/impl/gt;Lcom/yandex/mobile/ads/impl/mg2;Lcom/yandex/mobile/ads/impl/nb2;Lcom/yandex/mobile/ads/impl/yk1;Lcom/yandex/mobile/ads/impl/hn0;Lcom/yandex/mobile/ads/impl/xo;Lcom/yandex/mobile/ads/impl/no0;Lcom/yandex/mobile/ads/impl/ng;)V
    .locals 1

    .line 5
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkEnvironmentModule"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoAdInfo"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adBreak"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoTracker"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playbackListener"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageProvider"

    invoke-static {p7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetsWrapper"

    invoke-static {p8, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickControlConfiguratorProvider"

    invoke-static {p9, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "instreamVideoClicksProvider"

    invoke-static {p10, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetClickConfiguratorProvider"

    invoke-static {p11, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/zg;->a:Landroid/content/Context;

    .line 8
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/zg;->b:Lcom/yandex/mobile/ads/impl/bv1;

    .line 9
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/zg;->c:Lcom/yandex/mobile/ads/impl/zb2;

    .line 10
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/zg;->d:Lcom/yandex/mobile/ads/impl/gt;

    .line 11
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/zg;->e:Lcom/yandex/mobile/ads/impl/mg2;

    .line 12
    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/zg;->f:Lcom/yandex/mobile/ads/impl/lo0;

    .line 13
    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/zg;->g:Lcom/yandex/mobile/ads/impl/sj0;

    .line 14
    iput-object p8, p0, Lcom/yandex/mobile/ads/impl/zg;->h:Lcom/yandex/mobile/ads/impl/hn0;

    .line 15
    iput-object p9, p0, Lcom/yandex/mobile/ads/impl/zg;->i:Lcom/yandex/mobile/ads/impl/xo;

    .line 16
    iput-object p10, p0, Lcom/yandex/mobile/ads/impl/zg;->j:Lcom/yandex/mobile/ads/impl/no0;

    .line 17
    iput-object p11, p0, Lcom/yandex/mobile/ads/impl/zg;->k:Lcom/yandex/mobile/ads/impl/ng;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/fn0;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/zg;->k:Lcom/yandex/mobile/ads/impl/ng;

    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/zg;->a:Landroid/content/Context;

    iget-object v4, v0, Lcom/yandex/mobile/ads/impl/zg;->b:Lcom/yandex/mobile/ads/impl/bv1;

    iget-object v5, v0, Lcom/yandex/mobile/ads/impl/zg;->c:Lcom/yandex/mobile/ads/impl/zb2;

    iget-object v6, v0, Lcom/yandex/mobile/ads/impl/zg;->d:Lcom/yandex/mobile/ads/impl/gt;

    iget-object v7, v0, Lcom/yandex/mobile/ads/impl/zg;->e:Lcom/yandex/mobile/ads/impl/mg2;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "context"

    invoke-static {v3, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "sdkEnvironmentModule"

    invoke-static {v4, v8}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "videoAdInfo"

    invoke-static {v5, v9}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "adBreak"

    invoke-static {v6, v10}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "videoTracker"

    invoke-static {v7, v11}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v12, Lcom/yandex/mobile/ads/impl/yn0;

    invoke-direct {v12, v3, v4, v6, v5}, Lcom/yandex/mobile/ads/impl/yn0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/gt;Lcom/yandex/mobile/ads/impl/zb2;)V

    invoke-virtual {v12}, Lcom/yandex/mobile/ads/impl/yn0;->a()Lcom/yandex/mobile/ads/impl/ff1;

    move-result-object v3

    new-instance v4, Lcom/yandex/mobile/ads/impl/mg;

    invoke-direct {v4, v5, v3, v7}, Lcom/yandex/mobile/ads/impl/mg;-><init>(Lcom/yandex/mobile/ads/impl/zb2;Lcom/yandex/mobile/ads/impl/ff1;Lcom/yandex/mobile/ads/impl/mg2;)V

    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/zg;->h:Lcom/yandex/mobile/ads/impl/hn0;

    const-string v5, "call_to_action"

    invoke-virtual {v3, v5}, Lcom/yandex/mobile/ads/impl/hn0;->a(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/ig;

    move-result-object v3

    iget-object v5, v0, Lcom/yandex/mobile/ads/impl/zg;->j:Lcom/yandex/mobile/ads/impl/no0;

    iget-object v6, v0, Lcom/yandex/mobile/ads/impl/zg;->c:Lcom/yandex/mobile/ads/impl/zb2;

    invoke-virtual {v6}, Lcom/yandex/mobile/ads/impl/zb2;->b()Lcom/yandex/mobile/ads/impl/uu;

    move-result-object v6

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/ig;->b()Ljava/lang/String;

    move-result-object v12

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    :goto_0
    invoke-virtual {v5, v6, v12}, Lcom/yandex/mobile/ads/impl/no0;->a(Lcom/yandex/mobile/ads/impl/uu;Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/he2;

    move-result-object v5

    iget-object v6, v0, Lcom/yandex/mobile/ads/impl/zg;->i:Lcom/yandex/mobile/ads/impl/xo;

    iget-object v12, v0, Lcom/yandex/mobile/ads/impl/zg;->c:Lcom/yandex/mobile/ads/impl/zb2;

    iget-object v15, v0, Lcom/yandex/mobile/ads/impl/zg;->a:Landroid/content/Context;

    iget-object v14, v0, Lcom/yandex/mobile/ads/impl/zg;->b:Lcom/yandex/mobile/ads/impl/bv1;

    iget-object v13, v0, Lcom/yandex/mobile/ads/impl/zg;->d:Lcom/yandex/mobile/ads/impl/gt;

    iget-object v7, v0, Lcom/yandex/mobile/ads/impl/zg;->e:Lcom/yandex/mobile/ads/impl/mg2;

    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/zg;->f:Lcom/yandex/mobile/ads/impl/lo0;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v12, v9}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v15, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v14, v8}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13, v10}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v11}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "playbackListener"

    invoke-static {v1, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "videoClicks"

    invoke-static {v5, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/yandex/mobile/ads/impl/wo;

    new-instance v21, Lcom/yandex/mobile/ads/impl/zm0;

    move-object v6, v13

    move-object/from16 v13, v21

    move-object v8, v14

    move-object v14, v15

    move-object v9, v15

    move-object v15, v8

    move-object/from16 v16, v6

    move-object/from16 v17, v12

    move-object/from16 v18, v7

    move-object/from16 v19, v1

    move-object/from16 v20, v5

    invoke-direct/range {v13 .. v20}, Lcom/yandex/mobile/ads/impl/zm0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/gt;Lcom/yandex/mobile/ads/impl/zb2;Lcom/yandex/mobile/ads/impl/mg2;Lcom/yandex/mobile/ads/impl/lo0;Lcom/yandex/mobile/ads/impl/he2;)V

    new-instance v22, Lcom/yandex/mobile/ads/impl/l10;

    invoke-direct/range {v22 .. v22}, Lcom/yandex/mobile/ads/impl/l10;-><init>()V

    move-object v13, v2

    move-object v14, v9

    invoke-direct/range {v13 .. v22}, Lcom/yandex/mobile/ads/impl/wo;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/gt;Lcom/yandex/mobile/ads/impl/zb2;Lcom/yandex/mobile/ads/impl/mg2;Lcom/yandex/mobile/ads/impl/lo0;Lcom/yandex/mobile/ads/impl/he2;Landroid/view/View$OnClickListener;Lcom/yandex/mobile/ads/impl/l10;)V

    new-instance v1, Lcom/yandex/mobile/ads/impl/tn;

    invoke-direct {v1, v3, v2}, Lcom/yandex/mobile/ads/impl/tn;-><init>(Lcom/yandex/mobile/ads/impl/ig;Lcom/yandex/mobile/ads/impl/wo;)V

    new-instance v2, Lcom/yandex/mobile/ads/impl/un;

    invoke-direct {v2}, Lcom/yandex/mobile/ads/impl/un;-><init>()V

    new-instance v3, Lcom/yandex/mobile/ads/impl/hc;

    iget-object v6, v0, Lcom/yandex/mobile/ads/impl/zg;->c:Lcom/yandex/mobile/ads/impl/zb2;

    new-instance v7, Lcom/yandex/mobile/ads/impl/ic;

    invoke-virtual {v6}, Lcom/yandex/mobile/ads/impl/zb2;->g()Lcom/yandex/mobile/ads/impl/mb2;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/yandex/mobile/ads/impl/ic;-><init>(Lcom/yandex/mobile/ads/impl/mb2;)V

    invoke-direct {v3, v6, v7}, Lcom/yandex/mobile/ads/impl/hc;-><init>(Lcom/yandex/mobile/ads/impl/zb2;Lcom/yandex/mobile/ads/impl/ic;)V

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/hc;->a()Lcom/yandex/mobile/ads/impl/gc;

    move-result-object v3

    iget-object v6, v0, Lcom/yandex/mobile/ads/impl/zg;->h:Lcom/yandex/mobile/ads/impl/hn0;

    const-string v7, "favicon"

    invoke-virtual {v6, v7}, Lcom/yandex/mobile/ads/impl/hn0;->a(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/ig;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/yandex/mobile/ads/impl/ig;->d()Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lcom/yandex/mobile/ads/impl/xj0;

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    new-instance v7, Lcom/yandex/mobile/ads/impl/jj0;

    iget-object v8, v0, Lcom/yandex/mobile/ads/impl/zg;->a:Landroid/content/Context;

    new-instance v9, Lcom/yandex/mobile/ads/impl/sn0;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcom/yandex/mobile/ads/impl/sn0;-><init>(Z)V

    iget-object v10, v0, Lcom/yandex/mobile/ads/impl/zg;->g:Lcom/yandex/mobile/ads/impl/sj0;

    invoke-direct {v7, v8, v9, v10}, Lcom/yandex/mobile/ads/impl/jj0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/jj0$a;Lcom/yandex/mobile/ads/impl/sj0;)V

    new-instance v8, Lcom/yandex/mobile/ads/impl/v80;

    invoke-direct {v8, v7, v6, v4}, Lcom/yandex/mobile/ads/impl/v80;-><init>(Lcom/yandex/mobile/ads/impl/jj0;Lcom/yandex/mobile/ads/impl/ig;Lcom/yandex/mobile/ads/impl/mg;)V

    iget-object v9, v0, Lcom/yandex/mobile/ads/impl/zg;->h:Lcom/yandex/mobile/ads/impl/hn0;

    const-string v10, "domain"

    invoke-virtual {v9, v10}, Lcom/yandex/mobile/ads/impl/hn0;->a(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/ig;

    move-result-object v9

    new-instance v10, Lcom/yandex/mobile/ads/impl/u30;

    invoke-direct {v10, v9, v4}, Lcom/yandex/mobile/ads/impl/u30;-><init>(Lcom/yandex/mobile/ads/impl/ig;Lcom/yandex/mobile/ads/impl/mg;)V

    iget-object v9, v0, Lcom/yandex/mobile/ads/impl/zg;->h:Lcom/yandex/mobile/ads/impl/hn0;

    const-string v11, "sponsored"

    invoke-virtual {v9, v11}, Lcom/yandex/mobile/ads/impl/hn0;->a(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/ig;

    move-result-object v9

    new-instance v11, Lcom/yandex/mobile/ads/impl/a22;

    iget-object v12, v0, Lcom/yandex/mobile/ads/impl/zg;->c:Lcom/yandex/mobile/ads/impl/zb2;

    invoke-virtual {v12}, Lcom/yandex/mobile/ads/impl/zb2;->a()Lcom/yandex/mobile/ads/impl/w9;

    move-result-object v12

    new-instance v13, Lcom/yandex/mobile/ads/impl/b22;

    invoke-direct {v13}, Lcom/yandex/mobile/ads/impl/b22;-><init>()V

    invoke-direct {v11, v9, v12, v4, v13}, Lcom/yandex/mobile/ads/impl/a22;-><init>(Lcom/yandex/mobile/ads/impl/ig;Lcom/yandex/mobile/ads/impl/w9;Lcom/yandex/mobile/ads/impl/mg;Lcom/yandex/mobile/ads/impl/b22;)V

    iget-object v9, v0, Lcom/yandex/mobile/ads/impl/zg;->c:Lcom/yandex/mobile/ads/impl/zb2;

    invoke-virtual {v9}, Lcom/yandex/mobile/ads/impl/zb2;->d()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/yandex/mobile/ads/impl/go0;

    invoke-virtual {v9}, Lcom/yandex/mobile/ads/impl/go0;->b()Lcom/yandex/mobile/ads/impl/zc2;

    move-result-object v9

    invoke-virtual {v9}, Lcom/yandex/mobile/ads/impl/zc2;->a()I

    move-result v9

    iget-object v12, v0, Lcom/yandex/mobile/ads/impl/zg;->c:Lcom/yandex/mobile/ads/impl/zb2;

    invoke-virtual {v12}, Lcom/yandex/mobile/ads/impl/zb2;->d()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/yandex/mobile/ads/impl/go0;

    invoke-virtual {v12}, Lcom/yandex/mobile/ads/impl/go0;->b()Lcom/yandex/mobile/ads/impl/zc2;

    move-result-object v12

    invoke-virtual {v12}, Lcom/yandex/mobile/ads/impl/zc2;->b()I

    move-result v12

    new-instance v15, Lcom/yandex/mobile/ads/impl/p6;

    invoke-direct {v15, v9, v12}, Lcom/yandex/mobile/ads/impl/p6;-><init>(II)V

    iget-object v9, v0, Lcom/yandex/mobile/ads/impl/zg;->h:Lcom/yandex/mobile/ads/impl/hn0;

    const-string v12, "trademark"

    invoke-virtual {v9, v12}, Lcom/yandex/mobile/ads/impl/hn0;->a(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/ig;

    move-result-object v9

    new-instance v14, Lcom/yandex/mobile/ads/impl/c72;

    invoke-direct {v14, v7, v9, v4}, Lcom/yandex/mobile/ads/impl/c72;-><init>(Lcom/yandex/mobile/ads/impl/jj0;Lcom/yandex/mobile/ads/impl/ig;Lcom/yandex/mobile/ads/impl/mg;)V

    new-instance v7, Lcom/yandex/mobile/ads/impl/bm0;

    invoke-direct {v7}, Lcom/yandex/mobile/ads/impl/bm0;-><init>()V

    new-instance v9, Lcom/yandex/mobile/ads/impl/yn0;

    iget-object v12, v0, Lcom/yandex/mobile/ads/impl/zg;->a:Landroid/content/Context;

    iget-object v13, v0, Lcom/yandex/mobile/ads/impl/zg;->b:Lcom/yandex/mobile/ads/impl/bv1;

    move-object/from16 v16, v14

    iget-object v14, v0, Lcom/yandex/mobile/ads/impl/zg;->d:Lcom/yandex/mobile/ads/impl/gt;

    move-object/from16 v17, v15

    iget-object v15, v0, Lcom/yandex/mobile/ads/impl/zg;->c:Lcom/yandex/mobile/ads/impl/zb2;

    invoke-direct {v9, v12, v13, v14, v15}, Lcom/yandex/mobile/ads/impl/yn0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/gt;Lcom/yandex/mobile/ads/impl/zb2;)V

    invoke-virtual {v9}, Lcom/yandex/mobile/ads/impl/yn0;->a()Lcom/yandex/mobile/ads/impl/ff1;

    move-result-object v9

    iget-object v12, v0, Lcom/yandex/mobile/ads/impl/zg;->h:Lcom/yandex/mobile/ads/impl/hn0;

    const-string v13, "feedback"

    invoke-virtual {v12, v13}, Lcom/yandex/mobile/ads/impl/hn0;->a(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/ig;

    move-result-object v13

    new-instance v15, Lcom/yandex/mobile/ads/impl/yb;

    new-instance v12, Lcom/yandex/mobile/ads/impl/k0;

    invoke-direct {v12}, Lcom/yandex/mobile/ads/impl/k0;-><init>()V

    invoke-direct {v15, v7, v9, v12}, Lcom/yandex/mobile/ads/impl/yb;-><init>(Lcom/yandex/mobile/ads/impl/x50;Lcom/yandex/mobile/ads/impl/ff1;Lcom/yandex/mobile/ads/impl/k0;)V

    new-instance v7, Lcom/yandex/mobile/ads/impl/r20;

    new-instance v9, Lcom/yandex/mobile/ads/impl/m10;

    invoke-direct {v9}, Lcom/yandex/mobile/ads/impl/m10;-><init>()V

    new-instance v12, Lcom/yandex/mobile/ads/impl/o20;

    invoke-direct {v12, v9}, Lcom/yandex/mobile/ads/impl/o20;-><init>(Lcom/yandex/mobile/ads/impl/m10;)V

    new-instance v14, Lcom/yandex/mobile/ads/impl/q20;

    move-object/from16 v18, v15

    new-instance v15, Lcom/yandex/mobile/ads/impl/n30;

    invoke-direct {v15}, Lcom/yandex/mobile/ads/impl/n30;-><init>()V

    invoke-direct {v14, v12, v15}, Lcom/yandex/mobile/ads/impl/q20;-><init>(Lcom/yandex/mobile/ads/impl/o20;Lcom/yandex/mobile/ads/impl/n30;)V

    invoke-direct {v7, v9, v12, v14}, Lcom/yandex/mobile/ads/impl/r20;-><init>(Lcom/yandex/mobile/ads/impl/m10;Lcom/yandex/mobile/ads/impl/o20;Lcom/yandex/mobile/ads/impl/q20;)V

    new-instance v9, Lcom/yandex/mobile/ads/impl/ua0;

    iget-object v15, v0, Lcom/yandex/mobile/ads/impl/zg;->e:Lcom/yandex/mobile/ads/impl/mg2;

    move-object v12, v9

    move-object/from16 v20, v16

    move-object v14, v4

    move-object/from16 v21, v17

    move-object/from16 v16, v18

    move-object/from16 v17, v7

    invoke-direct/range {v12 .. v17}, Lcom/yandex/mobile/ads/impl/ua0;-><init>(Lcom/yandex/mobile/ads/impl/ig;Lcom/yandex/mobile/ads/impl/mg;Lcom/yandex/mobile/ads/impl/mg2;Lcom/yandex/mobile/ads/impl/yb;Lcom/yandex/mobile/ads/impl/r20;)V

    iget-object v7, v0, Lcom/yandex/mobile/ads/impl/zg;->h:Lcom/yandex/mobile/ads/impl/hn0;

    const-string v12, "warning"

    invoke-virtual {v7, v12}, Lcom/yandex/mobile/ads/impl/hn0;->a(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/ig;

    move-result-object v7

    new-instance v12, Lcom/yandex/mobile/ads/impl/kj2;

    invoke-direct {v12, v7, v4}, Lcom/yandex/mobile/ads/impl/kj2;-><init>(Lcom/yandex/mobile/ads/impl/ig;Lcom/yandex/mobile/ads/impl/mg;)V

    new-instance v4, Lcom/yandex/mobile/ads/impl/dn1;

    iget-object v14, v0, Lcom/yandex/mobile/ads/impl/zg;->a:Landroid/content/Context;

    iget-object v15, v0, Lcom/yandex/mobile/ads/impl/zg;->g:Lcom/yandex/mobile/ads/impl/sj0;

    new-instance v0, Lcom/yandex/mobile/ads/impl/en1;

    invoke-direct {v0, v14, v15}, Lcom/yandex/mobile/ads/impl/en1;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/sj0;)V

    sget-object v7, Lcom/yandex/mobile/ads/impl/w80;->f:Lcom/yandex/mobile/ads/impl/w80;

    invoke-static {v14, v7}, Lcom/yandex/mobile/ads/impl/x80;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/w80;)Z

    move-result v19

    move-object v13, v4

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move-object/from16 v18, v0

    invoke-direct/range {v13 .. v19}, Lcom/yandex/mobile/ads/impl/dn1;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/sj0;Lcom/yandex/mobile/ads/impl/he2;Lcom/yandex/mobile/ads/impl/ig;Lcom/yandex/mobile/ads/impl/en1;Z)V

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/yandex/mobile/ads/impl/fn0;

    const/4 v5, 0x0

    aput-object v1, v0, v5

    const/4 v1, 0x1

    aput-object v3, v0, v1

    const/4 v1, 0x2

    aput-object v8, v0, v1

    const/4 v1, 0x3

    aput-object v10, v0, v1

    const/4 v1, 0x4

    aput-object v11, v0, v1

    const/4 v1, 0x5

    aput-object v21, v0, v1

    const/4 v1, 0x6

    aput-object v20, v0, v1

    const/4 v1, 0x7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    aput-object v9, v0, v1

    const/16 v1, 0x9

    aput-object v12, v0, v1

    const/16 v1, 0xa

    aput-object v4, v0, v1

    invoke-static {v0}, Ly71;->n([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
