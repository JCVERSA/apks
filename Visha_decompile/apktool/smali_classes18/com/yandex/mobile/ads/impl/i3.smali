.class public final Lcom/yandex/mobile/ads/impl/i3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/j3;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/bv1;

.field private final b:Lcom/yandex/mobile/ads/impl/o8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;"
        }
    .end annotation
.end field

.field private final c:Lcom/yandex/mobile/ads/impl/o3;

.field private final d:Lcom/yandex/mobile/ads/impl/p51;

.field private final e:Lcom/yandex/mobile/ads/impl/g42;

.field private final f:Lcom/yandex/mobile/ads/impl/v9;

.field private final g:Lcom/yandex/mobile/ads/impl/y41;

.field private final h:Lcom/yandex/mobile/ads/impl/y62;

.field private final i:Lcom/yandex/mobile/ads/impl/c5;

.field private j:Lcom/yandex/mobile/ads/impl/x71;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/p51;Lcom/yandex/mobile/ads/impl/g42;)V
    .locals 11

    move-object v1, p1

    move-object v4, p4

    .line 1
    new-instance v7, Lcom/yandex/mobile/ads/impl/v9;

    invoke-direct {v7, p1, p4}, Lcom/yandex/mobile/ads/impl/v9;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;)V

    .line 2
    new-instance v8, Lcom/yandex/mobile/ads/impl/y41;

    move-object v3, p3

    invoke-direct {v8, p1, p4, p3}, Lcom/yandex/mobile/ads/impl/y41;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/o8;)V

    .line 3
    new-instance v9, Lcom/yandex/mobile/ads/impl/y62;

    invoke-direct {v9, v7}, Lcom/yandex/mobile/ads/impl/y62;-><init>(Lcom/yandex/mobile/ads/impl/v9;)V

    .line 4
    new-instance v10, Lcom/yandex/mobile/ads/impl/c5;

    move-object/from16 v5, p5

    invoke-direct {v10, v5}, Lcom/yandex/mobile/ads/impl/c5;-><init>(Lcom/yandex/mobile/ads/impl/p51;)V

    move-object v0, p0

    move-object v2, p2

    move-object/from16 v6, p6

    .line 5
    invoke-direct/range {v0 .. v10}, Lcom/yandex/mobile/ads/impl/i3;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/p51;Lcom/yandex/mobile/ads/impl/g42;Lcom/yandex/mobile/ads/impl/v9;Lcom/yandex/mobile/ads/impl/y41;Lcom/yandex/mobile/ads/impl/y62;Lcom/yandex/mobile/ads/impl/c5;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/p51;Lcom/yandex/mobile/ads/impl/g42;Lcom/yandex/mobile/ads/impl/v9;Lcom/yandex/mobile/ads/impl/y41;Lcom/yandex/mobile/ads/impl/y62;Lcom/yandex/mobile/ads/impl/c5;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/mobile/ads/impl/bv1;",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;",
            "Lcom/yandex/mobile/ads/impl/o3;",
            "Lcom/yandex/mobile/ads/impl/p51;",
            "Lcom/yandex/mobile/ads/impl/g42;",
            "Lcom/yandex/mobile/ads/impl/v9;",
            "Lcom/yandex/mobile/ads/impl/y41;",
            "Lcom/yandex/mobile/ads/impl/y62;",
            "Lcom/yandex/mobile/ads/impl/c5;",
            ")V"
        }
    .end annotation

    .line 6
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "sdkEnvironmentModule"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adResponse"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adConfiguration"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "nativeAdEventController"

    invoke-static {p5, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "targetUrlHandlerProvider"

    invoke-static {p6, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adTracker"

    invoke-static {p7, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "clickReporterCreator"

    invoke-static {p8, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "trackingUrlHandler"

    invoke-static {p9, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adLinksHandlerReceiver"

    invoke-static {p10, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/i3;->a:Lcom/yandex/mobile/ads/impl/bv1;

    .line 9
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/i3;->b:Lcom/yandex/mobile/ads/impl/o8;

    .line 10
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/i3;->c:Lcom/yandex/mobile/ads/impl/o3;

    .line 11
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/i3;->d:Lcom/yandex/mobile/ads/impl/p51;

    .line 12
    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/i3;->e:Lcom/yandex/mobile/ads/impl/g42;

    .line 13
    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/i3;->f:Lcom/yandex/mobile/ads/impl/v9;

    .line 14
    iput-object p8, p0, Lcom/yandex/mobile/ads/impl/i3;->g:Lcom/yandex/mobile/ads/impl/y41;

    .line 15
    iput-object p9, p0, Lcom/yandex/mobile/ads/impl/i3;->h:Lcom/yandex/mobile/ads/impl/y62;

    .line 16
    iput-object p10, p0, Lcom/yandex/mobile/ads/impl/i3;->i:Lcom/yandex/mobile/ads/impl/c5;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Lcom/yandex/mobile/ads/impl/ig;Lcom/yandex/mobile/ads/impl/vr0;Lcom/yandex/mobile/ads/impl/g71;)Lcom/yandex/mobile/ads/impl/gf0;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/yandex/mobile/ads/impl/ig<",
            "*>;",
            "Lcom/yandex/mobile/ads/impl/vr0;",
            "Lcom/yandex/mobile/ads/impl/g71;",
            ")",
            "Lcom/yandex/mobile/ads/impl/gf0;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 1
    const-string v3, "view"

    invoke-static {v1, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "asset"

    move-object/from16 v4, p2

    invoke-static {v4, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "link"

    invoke-static {v2, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "nativeAdViewAdapter"

    move-object/from16 v12, p4

    invoke-static {v12, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/i3;->d:Lcom/yandex/mobile/ads/impl/p51;

    invoke-virtual {v3, v2}, Lcom/yandex/mobile/ads/impl/p51;->a(Lcom/yandex/mobile/ads/impl/vr0;)V

    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 4
    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/i3;->i:Lcom/yandex/mobile/ads/impl/c5;

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/c5;->a()Lcom/yandex/mobile/ads/impl/t8;

    move-result-object v9

    .line 5
    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/i3;->g:Lcom/yandex/mobile/ads/impl/y41;

    invoke-virtual/range {p2 .. p2}, Lcom/yandex/mobile/ads/impl/ig;->b()Ljava/lang/String;

    move-result-object v4

    const-string v6, "url"

    invoke-virtual {v3, v4, v6}, Lcom/yandex/mobile/ads/impl/y41;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/ep;

    move-result-object v3

    .line 6
    iget-object v4, v0, Lcom/yandex/mobile/ads/impl/i3;->e:Lcom/yandex/mobile/ads/impl/g42;

    .line 7
    invoke-static {v5}, Ly45;->g(Ljava/lang/Object;)V

    iget-object v6, v0, Lcom/yandex/mobile/ads/impl/i3;->a:Lcom/yandex/mobile/ads/impl/bv1;

    iget-object v7, v0, Lcom/yandex/mobile/ads/impl/i3;->c:Lcom/yandex/mobile/ads/impl/o3;

    iget-object v8, v0, Lcom/yandex/mobile/ads/impl/i3;->b:Lcom/yandex/mobile/ads/impl/o8;

    .line 8
    invoke-virtual/range {v4 .. v9}, Lcom/yandex/mobile/ads/impl/g42;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/t8;)Lcom/yandex/mobile/ads/impl/f42;

    move-result-object v4

    .line 9
    new-instance v13, Lcom/yandex/mobile/ads/impl/s91;

    iget-object v5, v0, Lcom/yandex/mobile/ads/impl/i3;->f:Lcom/yandex/mobile/ads/impl/v9;

    invoke-direct {v13, v5, v4}, Lcom/yandex/mobile/ads/impl/s91;-><init>(Lcom/yandex/mobile/ads/impl/v9;Lcom/yandex/mobile/ads/impl/f42;)V

    .line 10
    invoke-virtual {v13, v3}, Lcom/yandex/mobile/ads/impl/s91;->a(Lcom/yandex/mobile/ads/impl/tp1;)Lcom/yandex/mobile/ads/impl/r91;

    move-result-object v14

    .line 11
    new-instance v15, Lcom/yandex/mobile/ads/impl/f0;

    .line 12
    iget-object v11, v0, Lcom/yandex/mobile/ads/impl/i3;->c:Lcom/yandex/mobile/ads/impl/o3;

    iget-object v10, v0, Lcom/yandex/mobile/ads/impl/i3;->b:Lcom/yandex/mobile/ads/impl/o8;

    .line 13
    iget-object v9, v0, Lcom/yandex/mobile/ads/impl/i3;->d:Lcom/yandex/mobile/ads/impl/p51;

    iget-object v8, v0, Lcom/yandex/mobile/ads/impl/i3;->j:Lcom/yandex/mobile/ads/impl/x71;

    .line 14
    new-instance v16, Lcom/yandex/mobile/ads/impl/a0;

    move-object/from16 v4, v16

    move-object v5, v11

    move-object v6, v10

    move-object v7, v3

    move-object/from16 v17, v8

    move-object v8, v13

    move-object/from16 v18, v9

    move-object/from16 v9, p4

    move-object/from16 v19, v10

    move-object/from16 v10, v18

    move-object/from16 v20, v11

    move-object/from16 v11, v17

    invoke-direct/range {v4 .. v11}, Lcom/yandex/mobile/ads/impl/a0;-><init>(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/ep;Lcom/yandex/mobile/ads/impl/s91;Lcom/yandex/mobile/ads/impl/g71;Lcom/yandex/mobile/ads/impl/p51;Lcom/yandex/mobile/ads/impl/x71;)V

    move-object v4, v15

    move-object/from16 v5, v20

    move-object/from16 v6, v19

    move-object/from16 v11, v16

    .line 15
    invoke-direct/range {v4 .. v11}, Lcom/yandex/mobile/ads/impl/f0;-><init>(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/ep;Lcom/yandex/mobile/ads/impl/s91;Lcom/yandex/mobile/ads/impl/g71;Lcom/yandex/mobile/ads/impl/p51;Lcom/yandex/mobile/ads/impl/a0;)V

    .line 16
    invoke-virtual/range {p3 .. p3}, Lcom/yandex/mobile/ads/impl/vr0;->a()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v15, v1, v3}, Lcom/yandex/mobile/ads/impl/f0;->a(Landroid/view/View;Ljava/util/List;)Lcom/yandex/mobile/ads/impl/gf0;

    move-result-object v1

    .line 17
    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/i3;->h:Lcom/yandex/mobile/ads/impl/y62;

    invoke-virtual/range {p3 .. p3}, Lcom/yandex/mobile/ads/impl/vr0;->d()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/yandex/mobile/ads/impl/y62;->a(Ljava/util/List;)V

    .line 18
    invoke-virtual/range {p3 .. p3}, Lcom/yandex/mobile/ads/impl/vr0;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 20
    invoke-virtual {v14, v0}, Lcom/yandex/mobile/ads/impl/r91;->a(Ljava/lang/String;)V

    :cond_0
    return-object v1
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/x71;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/i3;->j:Lcom/yandex/mobile/ads/impl/x71;

    .line 22
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/i3;->g:Lcom/yandex/mobile/ads/impl/y41;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/y41;->a(Lcom/yandex/mobile/ads/impl/x71;)V

    return-void
.end method
