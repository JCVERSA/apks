.class public final Lcom/yandex/mobile/ads/impl/de0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/o8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;"
        }
    .end annotation
.end field

.field private final b:Landroid/view/ViewGroup;

.field private final c:Lcom/yandex/mobile/ads/impl/zr;

.field private final d:Lcom/yandex/mobile/ads/impl/o3;

.field private final e:Lcom/yandex/mobile/ads/impl/st;

.field private final f:Lcom/yandex/mobile/ads/impl/lr0;

.field private final g:Lcom/yandex/mobile/ads/impl/l3;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Landroid/widget/RelativeLayout;Lcom/yandex/mobile/ads/impl/zr;Lcom/yandex/mobile/ads/impl/e1;ILcom/yandex/mobile/ads/impl/v1;Lcom/yandex/mobile/ads/impl/o3;)V
    .locals 13

    move-object/from16 v8, p7

    .line 1
    new-instance v9, Lcom/yandex/mobile/ads/impl/u81;

    .line 2
    new-instance v0, Lcom/yandex/mobile/ads/impl/vd0;

    .line 3
    sget v1, Lcom/yandex/mobile/ads/impl/pw1;->l:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/pw1$a;->a()Lcom/yandex/mobile/ads/impl/pw1;

    move-result-object v1

    move-object v10, p1

    invoke-virtual {v1, p1}, Lcom/yandex/mobile/ads/impl/pw1;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/ju1;

    move-result-object v1

    .line 4
    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/impl/vd0;-><init>(Lcom/yandex/mobile/ads/impl/ju1;)V

    .line 5
    invoke-direct {v9, v8, v0}, Lcom/yandex/mobile/ads/impl/u81;-><init>(Lcom/yandex/mobile/ads/impl/v1;Lcom/yandex/mobile/ads/impl/vd0;)V

    .line 6
    new-instance v11, Lcom/yandex/mobile/ads/impl/lr0;

    move-object v0, v11

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/yandex/mobile/ads/impl/lr0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/zr;Lcom/yandex/mobile/ads/impl/e1;ILcom/yandex/mobile/ads/impl/v1;Lcom/yandex/mobile/ads/impl/o3;)V

    .line 7
    new-instance v12, Lcom/yandex/mobile/ads/impl/l3;

    invoke-direct {v12, v8}, Lcom/yandex/mobile/ads/impl/l3;-><init>(Lcom/yandex/mobile/ads/impl/v1;)V

    move-object v0, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v8, v9

    move-object v9, v11

    move-object v10, v12

    .line 8
    invoke-direct/range {v0 .. v10}, Lcom/yandex/mobile/ads/impl/de0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Landroid/widget/RelativeLayout;Lcom/yandex/mobile/ads/impl/zr;Lcom/yandex/mobile/ads/impl/e1;Lcom/yandex/mobile/ads/impl/v1;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/st;Lcom/yandex/mobile/ads/impl/lr0;Lcom/yandex/mobile/ads/impl/l3;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Landroid/widget/RelativeLayout;Lcom/yandex/mobile/ads/impl/zr;Lcom/yandex/mobile/ads/impl/e1;Lcom/yandex/mobile/ads/impl/v1;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/st;Lcom/yandex/mobile/ads/impl/lr0;Lcom/yandex/mobile/ads/impl/l3;)V
    .locals 1

    .line 9
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adResponse"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "container"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "contentCloseListener"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "eventController"

    invoke-static {p5, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adActivityListener"

    invoke-static {p6, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adConfiguration"

    invoke-static {p7, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adEventListener"

    invoke-static {p8, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "layoutDesignsControllerCreator"

    invoke-static {p9, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adCompleteListenerCreator"

    invoke-static {p10, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/de0;->a:Lcom/yandex/mobile/ads/impl/o8;

    .line 12
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/de0;->b:Landroid/view/ViewGroup;

    .line 13
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/de0;->c:Lcom/yandex/mobile/ads/impl/zr;

    .line 14
    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/de0;->d:Lcom/yandex/mobile/ads/impl/o3;

    .line 15
    iput-object p8, p0, Lcom/yandex/mobile/ads/impl/de0;->e:Lcom/yandex/mobile/ads/impl/st;

    .line 16
    iput-object p9, p0, Lcom/yandex/mobile/ads/impl/de0;->f:Lcom/yandex/mobile/ads/impl/lr0;

    .line 17
    iput-object p10, p0, Lcom/yandex/mobile/ads/impl/de0;->g:Lcom/yandex/mobile/ads/impl/l3;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/q61;Lcom/yandex/mobile/ads/impl/zr;)Lcom/yandex/mobile/ads/impl/yd0;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v9, p2

    move-object/from16 v12, p3

    const-string v1, "context"

    invoke-static {v2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "nativeAdPrivate"

    invoke-static {v9, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "contentCloseListener"

    invoke-static {v12, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/yandex/mobile/ads/impl/z20;

    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/de0;->d:Lcom/yandex/mobile/ads/impl/o3;

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/o3;->q()Lcom/yandex/mobile/ads/impl/bv1;

    move-result-object v3

    invoke-interface {v3}, Lcom/yandex/mobile/ads/impl/bv1;->c()Lcom/yandex/mobile/ads/impl/s01;

    move-result-object v6

    new-instance v7, Lcom/yandex/mobile/ads/impl/h30;

    invoke-direct {v7}, Lcom/yandex/mobile/ads/impl/h30;-><init>()V

    new-instance v8, Lcom/yandex/mobile/ads/impl/n30;

    invoke-direct {v8}, Lcom/yandex/mobile/ads/impl/n30;-><init>()V

    move-object v3, v1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v3 .. v8}, Lcom/yandex/mobile/ads/impl/z20;-><init>(Lcom/yandex/mobile/ads/impl/q61;Lcom/yandex/mobile/ads/impl/zr;Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/h30;Lcom/yandex/mobile/ads/impl/n30;)V

    new-instance v6, Lcom/yandex/mobile/ads/impl/ks1;

    invoke-direct {v6, v2, v1, v12}, Lcom/yandex/mobile/ads/impl/ks1;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/z20;Lcom/yandex/mobile/ads/impl/zr;)V

    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/de0;->g:Lcom/yandex/mobile/ads/impl/l3;

    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/de0;->a:Lcom/yandex/mobile/ads/impl/o8;

    invoke-virtual {v1, v3, v6}, Lcom/yandex/mobile/ads/impl/l3;->a(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/ks1;)Lcom/yandex/mobile/ads/impl/y1;

    move-result-object v10

    invoke-interface/range {p2 .. p2}, Lcom/yandex/mobile/ads/impl/q61;->c()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lcom/yandex/mobile/ads/impl/b30;

    invoke-virtual {v7}, Lcom/yandex/mobile/ads/impl/b30;->e()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/yandex/mobile/ads/impl/h10;->c:Lcom/yandex/mobile/ads/impl/h10;

    invoke-virtual {v8}, Lcom/yandex/mobile/ads/impl/h10;->a()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object v7, v4

    goto :goto_1

    :cond_2
    move-object v7, v3

    :goto_1
    invoke-interface/range {p2 .. p2}, Lcom/yandex/mobile/ads/impl/q61;->c()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v1, v4}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/yandex/mobile/ads/impl/b30;

    invoke-virtual {v5}, Lcom/yandex/mobile/ads/impl/b30;->e()Ljava/lang/String;

    move-result-object v5

    sget-object v8, Lcom/yandex/mobile/ads/impl/h10;->d:Lcom/yandex/mobile/ads/impl/h10;

    invoke-virtual {v8}, Lcom/yandex/mobile/ads/impl/h10;->a()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_4
    move-object v4, v3

    :goto_2
    check-cast v4, Lcom/yandex/mobile/ads/impl/b30;

    move-object/from16 v18, v4

    goto :goto_3

    :cond_5
    move-object/from16 v18, v3

    :goto_3
    invoke-interface/range {p2 .. p2}, Lcom/yandex/mobile/ads/impl/q61;->a()Lcom/yandex/mobile/ads/impl/y61;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/y61;->a()Lcom/yandex/mobile/ads/impl/g6;

    move-result-object v1

    move-object/from16 v19, v1

    goto :goto_4

    :cond_6
    move-object/from16 v19, v3

    :goto_4
    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/de0;->a:Lcom/yandex/mobile/ads/impl/o8;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/o8;->x()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/yandex/mobile/ads/impl/e10;->c:Lcom/yandex/mobile/ads/impl/e10;

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/e10;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    if-eqz v19, :cond_8

    instance-of v1, v9, Lcom/yandex/mobile/ads/impl/b02;

    if-nez v1, :cond_7

    if-eqz v18, :cond_8

    :cond_7
    new-instance v20, Lcom/yandex/mobile/ads/impl/j6;

    move-object/from16 v1, v20

    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/de0;->e:Lcom/yandex/mobile/ads/impl/st;

    move-object v4, v3

    iget-object v8, v0, Lcom/yandex/mobile/ads/impl/de0;->b:Landroid/view/ViewGroup;

    iget-object v11, v0, Lcom/yandex/mobile/ads/impl/de0;->f:Lcom/yandex/mobile/ads/impl/lr0;

    new-instance v0, Lcom/monetization/ads/nativeads/ExtendedNativeAdView;

    move-object v13, v0

    invoke-direct {v0, v2}, Lcom/monetization/ads/nativeads/ExtendedNativeAdView;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/x1;

    move-object v14, v0

    invoke-direct {v0, v9, v12, v3}, Lcom/yandex/mobile/ads/impl/x1;-><init>(Lcom/yandex/mobile/ads/impl/q61;Lcom/yandex/mobile/ads/impl/zr;Lcom/yandex/mobile/ads/impl/st;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/xl1;

    move-object v15, v0

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/xl1;-><init>()V

    new-instance v0, Lcom/yandex/mobile/ads/impl/aq;

    move-object/from16 v16, v0

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/aq;-><init>()V

    new-instance v0, Lcom/yandex/mobile/ads/impl/zr1;

    move-object/from16 v17, v0

    new-instance v3, Lcom/yandex/mobile/ads/impl/o52;

    invoke-direct {v3}, Lcom/yandex/mobile/ads/impl/o52;-><init>()V

    invoke-direct {v0, v3}, Lcom/yandex/mobile/ads/impl/zr1;-><init>(Lcom/yandex/mobile/ads/impl/o52;)V

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v5, v6

    move-object v6, v7

    move-object/from16 v7, v18

    move-object v9, v10

    move-object/from16 v10, p3

    move-object/from16 v12, v19

    invoke-direct/range {v1 .. v17}, Lcom/yandex/mobile/ads/impl/j6;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/q61;Lcom/yandex/mobile/ads/impl/st;Lcom/yandex/mobile/ads/impl/ks1;Ljava/util/ArrayList;Lcom/yandex/mobile/ads/impl/b30;Landroid/view/ViewGroup;Lcom/yandex/mobile/ads/impl/y1;Lcom/yandex/mobile/ads/impl/zr;Lcom/yandex/mobile/ads/impl/lr0;Lcom/yandex/mobile/ads/impl/g6;Lcom/monetization/ads/nativeads/ExtendedNativeAdView;Lcom/yandex/mobile/ads/impl/x1;Lcom/yandex/mobile/ads/impl/xl1;Lcom/yandex/mobile/ads/impl/aq;Lcom/yandex/mobile/ads/impl/zr1;)V

    goto :goto_6

    :cond_8
    new-instance v5, Lcom/yandex/mobile/ads/impl/vm1;

    invoke-direct {v5, v10}, Lcom/yandex/mobile/ads/impl/vm1;-><init>(Lcom/yandex/mobile/ads/impl/y1;)V

    new-instance v8, Lcom/yandex/mobile/ads/impl/f52;

    new-instance v14, Lcom/yandex/mobile/ads/impl/xl1;

    invoke-direct {v14}, Lcom/yandex/mobile/ads/impl/xl1;-><init>()V

    new-instance v15, Lcom/yandex/mobile/ads/impl/vy1;

    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/de0;->a:Lcom/yandex/mobile/ads/impl/o8;

    invoke-direct {v15, v1}, Lcom/yandex/mobile/ads/impl/vy1;-><init>(Lcom/yandex/mobile/ads/impl/o8;)V

    new-instance v1, Lcom/yandex/mobile/ads/impl/zy1;

    iget-object v4, v0, Lcom/yandex/mobile/ads/impl/de0;->a:Lcom/yandex/mobile/ads/impl/o8;

    invoke-direct {v1, v4}, Lcom/yandex/mobile/ads/impl/zy1;-><init>(Lcom/yandex/mobile/ads/impl/o8;)V

    new-instance v17, Lcom/yandex/mobile/ads/impl/yy1;

    invoke-direct/range {v17 .. v17}, Lcom/yandex/mobile/ads/impl/yy1;-><init>()V

    new-instance v18, Lcom/yandex/mobile/ads/impl/aq;

    invoke-direct/range {v18 .. v18}, Lcom/yandex/mobile/ads/impl/aq;-><init>()V

    move-object v13, v8

    move-object/from16 v16, v1

    invoke-direct/range {v13 .. v18}, Lcom/yandex/mobile/ads/impl/f52;-><init>(Lcom/yandex/mobile/ads/impl/xl1;Lcom/yandex/mobile/ads/impl/z1;Lcom/yandex/mobile/ads/impl/mz;Lcom/yandex/mobile/ads/impl/kp;Lcom/yandex/mobile/ads/impl/aq;)V

    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/de0;->f:Lcom/yandex/mobile/ads/impl/lr0;

    iget-object v4, v0, Lcom/yandex/mobile/ads/impl/de0;->b:Landroid/view/ViewGroup;

    iget-object v10, v0, Lcom/yandex/mobile/ads/impl/de0;->e:Lcom/yandex/mobile/ads/impl/st;

    new-instance v11, Lcom/yandex/mobile/ads/impl/az1;

    invoke-direct {v11}, Lcom/yandex/mobile/ads/impl/az1;-><init>()V

    if-eqz v7, :cond_9

    invoke-static {v7}, Li81;->q0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/b30;

    move-object v13, v0

    goto :goto_5

    :cond_9
    move-object v13, v3

    :goto_5
    const/4 v14, 0x0

    move-object v0, v1

    move-object/from16 v1, p1

    move-object v2, v4

    move-object/from16 v3, p2

    move-object v4, v10

    move-object v7, v8

    move-object v8, v11

    move-object v9, v13

    move-object v10, v14

    invoke-virtual/range {v0 .. v10}, Lcom/yandex/mobile/ads/impl/lr0;->a(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/yandex/mobile/ads/impl/q61;Lcom/yandex/mobile/ads/impl/st;Lcom/yandex/mobile/ads/impl/k3;Lcom/yandex/mobile/ads/impl/ks1;Lcom/yandex/mobile/ads/impl/f52;Lcom/yandex/mobile/ads/impl/l20;Lcom/yandex/mobile/ads/impl/b30;Lcom/yandex/mobile/ads/impl/m6;)Lcom/yandex/mobile/ads/impl/kr0;

    move-result-object v0

    new-instance v1, Lcom/yandex/mobile/ads/impl/ce0;

    invoke-direct {v1, v0, v12}, Lcom/yandex/mobile/ads/impl/ce0;-><init>(Lcom/yandex/mobile/ads/impl/kr0;Lcom/yandex/mobile/ads/impl/zr;)V

    move-object/from16 v20, v1

    :goto_6
    return-object v20
.end method
