.class public final Lcom/yandex/mobile/ads/impl/v92;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/wc2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/wc2<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/mobile/ads/impl/sg2;

.field private final c:Lcom/yandex/mobile/ads/impl/zb2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/zb2<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/yandex/mobile/ads/impl/qd2;

.field private final e:Lcom/yandex/mobile/ads/impl/mg2;

.field private final f:Lcom/yandex/mobile/ads/impl/g5;

.field private final g:Lcom/yandex/mobile/ads/impl/jd2;

.field private final h:Lcom/yandex/mobile/ads/impl/gd2;

.field private final i:Lcom/yandex/mobile/ads/impl/oc2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/oc2<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/wc2;Lcom/yandex/mobile/ads/impl/sg2;Lcom/yandex/mobile/ads/impl/zb2;Lcom/yandex/mobile/ads/impl/uf2;Lcom/yandex/mobile/ads/impl/qd2;Lcom/yandex/mobile/ads/impl/ng2;Lcom/yandex/mobile/ads/impl/dd2;Lcom/yandex/mobile/ads/impl/pc2;Lcom/yandex/mobile/ads/impl/o8;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v10, p3

    move-object/from16 v9, p4

    move-object/from16 v8, p5

    move-object/from16 v7, p7

    move-object/from16 v6, p8

    move-object/from16 v5, p9

    const-string v1, "context"

    move-object/from16 v4, p1

    invoke-static {v4, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "adConfiguration"

    move-object/from16 v2, p2

    invoke-static {v2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "videoAdPlayer"

    invoke-static {v10, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "videoViewProvider"

    invoke-static {v9, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "videoAdInfo"

    invoke-static {v8, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "videoRenderValidator"

    move-object/from16 v3, p6

    invoke-static {v3, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "videoAdStatusController"

    invoke-static {v7, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "videoTracker"

    invoke-static {v6, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "progressEventsObservable"

    invoke-static {v5, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "playbackEventsListener"

    move-object/from16 v15, p10

    invoke-static {v15, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v10, v0, Lcom/yandex/mobile/ads/impl/v92;->a:Lcom/yandex/mobile/ads/impl/wc2;

    iput-object v9, v0, Lcom/yandex/mobile/ads/impl/v92;->b:Lcom/yandex/mobile/ads/impl/sg2;

    iput-object v8, v0, Lcom/yandex/mobile/ads/impl/v92;->c:Lcom/yandex/mobile/ads/impl/zb2;

    iput-object v7, v0, Lcom/yandex/mobile/ads/impl/v92;->d:Lcom/yandex/mobile/ads/impl/qd2;

    iput-object v6, v0, Lcom/yandex/mobile/ads/impl/v92;->e:Lcom/yandex/mobile/ads/impl/mg2;

    new-instance v1, Lcom/yandex/mobile/ads/impl/g5;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/g5;-><init>()V

    iput-object v1, v0, Lcom/yandex/mobile/ads/impl/v92;->f:Lcom/yandex/mobile/ads/impl/g5;

    new-instance v14, Lcom/yandex/mobile/ads/impl/jd2;

    move-object v11, v14

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object v2, v14

    move-object/from16 v14, p11

    move-object/from16 v15, p5

    move-object/from16 v16, v1

    move-object/from16 v17, p7

    move-object/from16 v18, p4

    move-object/from16 v19, p6

    move-object/from16 v20, p8

    invoke-direct/range {v11 .. v20}, Lcom/yandex/mobile/ads/impl/jd2;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/zb2;Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/qd2;Lcom/yandex/mobile/ads/impl/sg2;Lcom/yandex/mobile/ads/impl/uf2;Lcom/yandex/mobile/ads/impl/ng2;)V

    iput-object v2, v0, Lcom/yandex/mobile/ads/impl/v92;->g:Lcom/yandex/mobile/ads/impl/jd2;

    new-instance v11, Lcom/yandex/mobile/ads/impl/gd2;

    invoke-direct {v11, v10, v5}, Lcom/yandex/mobile/ads/impl/gd2;-><init>(Lcom/yandex/mobile/ads/impl/wc2;Lcom/yandex/mobile/ads/impl/dd2;)V

    iput-object v11, v0, Lcom/yandex/mobile/ads/impl/v92;->h:Lcom/yandex/mobile/ads/impl/gd2;

    new-instance v12, Lcom/yandex/mobile/ads/impl/oc2;

    move-object v13, v1

    move-object v1, v12

    move-object v14, v2

    move-object/from16 v2, p5

    move-object/from16 v3, p3

    move-object v4, v11

    move-object v11, v5

    move-object v5, v14

    move-object/from16 v6, p7

    move-object v7, v13

    move-object/from16 v8, p8

    move-object/from16 v9, p10

    invoke-direct/range {v1 .. v9}, Lcom/yandex/mobile/ads/impl/oc2;-><init>(Lcom/yandex/mobile/ads/impl/zb2;Lcom/yandex/mobile/ads/impl/wc2;Lcom/yandex/mobile/ads/impl/gd2;Lcom/yandex/mobile/ads/impl/jd2;Lcom/yandex/mobile/ads/impl/qd2;Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/ng2;Lcom/yandex/mobile/ads/impl/pc2;)V

    iput-object v12, v0, Lcom/yandex/mobile/ads/impl/v92;->i:Lcom/yandex/mobile/ads/impl/oc2;

    new-instance v8, Lcom/yandex/mobile/ads/impl/fd2;

    move-object v0, v8

    move-object/from16 v1, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move-object/from16 v6, p3

    move-object/from16 v7, p10

    invoke-direct/range {v0 .. v7}, Lcom/yandex/mobile/ads/impl/fd2;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/zb2;Lcom/yandex/mobile/ads/impl/sg2;Lcom/yandex/mobile/ads/impl/qd2;Lcom/yandex/mobile/ads/impl/ng2;Lcom/yandex/mobile/ads/impl/wc2;Lcom/yandex/mobile/ads/impl/pc2;)V

    invoke-virtual {v8, v11}, Lcom/yandex/mobile/ads/impl/fd2;->a(Lcom/yandex/mobile/ads/impl/dd2;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/v92;->h:Lcom/yandex/mobile/ads/impl/gd2;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/gd2;->b()V

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/v92;->a:Lcom/yandex/mobile/ads/impl/wc2;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/yandex/mobile/ads/impl/wc2;->a(Lcom/yandex/mobile/ads/impl/oc2;)V

    .line 3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/v92;->d:Lcom/yandex/mobile/ads/impl/qd2;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/qd2;->b()V

    .line 4
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/v92;->g:Lcom/yandex/mobile/ads/impl/jd2;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/jd2;->e()V

    .line 5
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/v92;->f:Lcom/yandex/mobile/ads/impl/g5;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/g5;->a()V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/ld2$a;)V
    .locals 1

    .line 8
    const-string v0, "reportParameterManager"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/v92;->g:Lcom/yandex/mobile/ads/impl/jd2;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/jd2;->a(Lcom/yandex/mobile/ads/impl/ld2$a;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/ld2$b;)V
    .locals 1

    .line 6
    const-string v0, "reportParameterManager"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/v92;->g:Lcom/yandex/mobile/ads/impl/jd2;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/jd2;->a(Lcom/yandex/mobile/ads/impl/ld2$b;)V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/v92;->h:Lcom/yandex/mobile/ads/impl/gd2;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/gd2;->b()V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/v92;->a:Lcom/yandex/mobile/ads/impl/wc2;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/wc2;->pauseAd()V

    return-void
.end method

.method public final c()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/v92;->a:Lcom/yandex/mobile/ads/impl/wc2;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/wc2;->c()V

    return-void
.end method

.method public final d()V
    .locals 4

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/v92;->a:Lcom/yandex/mobile/ads/impl/wc2;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/v92;->i:Lcom/yandex/mobile/ads/impl/oc2;

    invoke-interface {v0, v1}, Lcom/yandex/mobile/ads/impl/wc2;->a(Lcom/yandex/mobile/ads/impl/oc2;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/v92;->a:Lcom/yandex/mobile/ads/impl/wc2;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/v92;->c:Lcom/yandex/mobile/ads/impl/zb2;

    invoke-interface {v0, v1}, Lcom/yandex/mobile/ads/impl/wc2;->a(Lcom/yandex/mobile/ads/impl/zb2;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/v92;->f:Lcom/yandex/mobile/ads/impl/g5;

    sget-object v1, Lcom/yandex/mobile/ads/impl/f5;->x:Lcom/yandex/mobile/ads/impl/f5;

    const-string v2, "adLoadingPhaseType"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v1, v3}, Lcom/yandex/mobile/ads/impl/bk;->a(Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/f5;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/f5;Lcom/yandex/mobile/ads/impl/ha2;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/v92;->b:Lcom/yandex/mobile/ads/impl/sg2;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/sg2;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/v92;->b:Lcom/yandex/mobile/ads/impl/sg2;

    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/sg2;->a()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/v92;->e:Lcom/yandex/mobile/ads/impl/mg2;

    invoke-interface {v2, v0, v1}, Lcom/yandex/mobile/ads/impl/mg2;->a(Landroid/view/View;Ljava/util/List;)V

    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/v92;->g:Lcom/yandex/mobile/ads/impl/jd2;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/jd2;->f()V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/v92;->d:Lcom/yandex/mobile/ads/impl/qd2;

    sget-object v0, Lcom/yandex/mobile/ads/impl/pd2;->c:Lcom/yandex/mobile/ads/impl/pd2;

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/qd2;->b(Lcom/yandex/mobile/ads/impl/pd2;)V

    return-void
.end method

.method public final e()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/v92;->a:Lcom/yandex/mobile/ads/impl/wc2;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/wc2;->resumeAd()V

    return-void
.end method

.method public final f()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/v92;->a:Lcom/yandex/mobile/ads/impl/wc2;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/wc2;->a()V

    return-void
.end method
