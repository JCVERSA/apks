.class public final Lcom/yandex/mobile/ads/impl/lr0;
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

.field private final b:Lcom/yandex/mobile/ads/impl/zr;

.field private final c:Lcom/yandex/mobile/ads/impl/e1;

.field private final d:I

.field private final e:Lcom/yandex/mobile/ads/impl/j1;

.field private final f:Lcom/yandex/mobile/ads/impl/o3;

.field private final g:Lcom/yandex/mobile/ads/impl/mr0;

.field private final h:Lcom/yandex/mobile/ads/impl/dw;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/zr;Lcom/yandex/mobile/ads/impl/e1;ILcom/yandex/mobile/ads/impl/v1;Lcom/yandex/mobile/ads/impl/o3;)V
    .locals 10

    move-object/from16 v7, p7

    .line 1
    new-instance v8, Lcom/yandex/mobile/ads/impl/mr0;

    invoke-direct {v8}, Lcom/yandex/mobile/ads/impl/mr0;-><init>()V

    .line 2
    new-instance v0, Lcom/yandex/mobile/ads/impl/fw;

    .line 3
    new-instance v1, Lcom/yandex/mobile/ads/impl/er1;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/er1;-><init>()V

    move-object v2, p2

    invoke-virtual {v1, p2, v7}, Lcom/yandex/mobile/ads/impl/er1;->b(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/o3;)Lcom/yandex/mobile/ads/impl/pp1;

    move-result-object v1

    move-object v3, p1

    .line 4
    invoke-direct {v0, p1, v7, v1}, Lcom/yandex/mobile/ads/impl/fw;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/pp1;)V

    .line 5
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/fw;->a()Lcom/yandex/mobile/ads/impl/ew;

    move-result-object v9

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object/from16 v6, p6

    .line 6
    invoke-direct/range {v0 .. v9}, Lcom/yandex/mobile/ads/impl/lr0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/zr;Lcom/yandex/mobile/ads/impl/e1;ILcom/yandex/mobile/ads/impl/v1;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/mr0;Lcom/yandex/mobile/ads/impl/dw;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/zr;Lcom/yandex/mobile/ads/impl/e1;ILcom/yandex/mobile/ads/impl/v1;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/mr0;Lcom/yandex/mobile/ads/impl/dw;)V
    .locals 1

    .line 7
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adResponse"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "contentCloseListener"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "eventController"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adActivityListener"

    invoke-static {p6, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adConfiguration"

    invoke-static {p7, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "layoutDesignsProvider"

    invoke-static {p8, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "debugEventsReporter"

    invoke-static {p9, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/lr0;->a:Lcom/yandex/mobile/ads/impl/o8;

    .line 10
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/lr0;->b:Lcom/yandex/mobile/ads/impl/zr;

    .line 11
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/lr0;->c:Lcom/yandex/mobile/ads/impl/e1;

    .line 12
    iput p5, p0, Lcom/yandex/mobile/ads/impl/lr0;->d:I

    .line 13
    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/lr0;->e:Lcom/yandex/mobile/ads/impl/j1;

    .line 14
    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/lr0;->f:Lcom/yandex/mobile/ads/impl/o3;

    .line 15
    iput-object p8, p0, Lcom/yandex/mobile/ads/impl/lr0;->g:Lcom/yandex/mobile/ads/impl/mr0;

    .line 16
    iput-object p9, p0, Lcom/yandex/mobile/ads/impl/lr0;->h:Lcom/yandex/mobile/ads/impl/dw;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/yandex/mobile/ads/impl/q61;Lcom/yandex/mobile/ads/impl/st;Lcom/yandex/mobile/ads/impl/k3;Lcom/yandex/mobile/ads/impl/ks1;Lcom/yandex/mobile/ads/impl/f52;Lcom/yandex/mobile/ads/impl/l20;Lcom/yandex/mobile/ads/impl/b30;Lcom/yandex/mobile/ads/impl/m6;)Lcom/yandex/mobile/ads/impl/kr0;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/ViewGroup;",
            "Lcom/yandex/mobile/ads/impl/q61;",
            "Lcom/yandex/mobile/ads/impl/st;",
            "Lcom/yandex/mobile/ads/impl/k3;",
            "Lcom/yandex/mobile/ads/impl/ks1;",
            "Lcom/yandex/mobile/ads/impl/f52;",
            "Lcom/yandex/mobile/ads/impl/l20;",
            "Lcom/yandex/mobile/ads/impl/b30;",
            "Lcom/yandex/mobile/ads/impl/m6;",
            ")",
            "Lcom/yandex/mobile/ads/impl/kr0<",
            "Lcom/monetization/ads/nativeads/ExtendedNativeAdView;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    move-object/from16 v14, p3

    move-object/from16 v13, p4

    .line 1
    const-string v12, "context"

    invoke-static {v15, v12}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "container"

    move-object/from16 v11, p2

    invoke-static {v11, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "nativeAdPrivate"

    invoke-static {v14, v10}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "adEventListener"

    invoke-static {v13, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "adCompleteListener"

    move-object/from16 v9, p5

    invoke-static {v9, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "closeVerificationController"

    move-object/from16 v8, p6

    invoke-static {v8, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "timeProviderContainer"

    move-object/from16 v7, p7

    invoke-static {v7, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "divKitActionHandlerDelegate"

    move-object/from16 v6, p8

    invoke-static {v6, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/lr0;->f:Lcom/yandex/mobile/ads/impl/o3;

    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/lr0;->a:Lcom/yandex/mobile/ads/impl/o8;

    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/lr0;->e:Lcom/yandex/mobile/ads/impl/j1;

    iget v4, v0, Lcom/yandex/mobile/ads/impl/lr0;->d:I

    .line 3
    const-string v5, "adConfiguration"

    invoke-static {v1, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "adResponse"

    invoke-static {v2, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v16, v5

    const-string v5, "adActivityListener"

    invoke-static {v3, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/o8;->n()Lcom/yandex/mobile/ads/impl/ts;

    move-result-object v2

    .line 5
    sget-object v5, Lcom/yandex/mobile/ads/impl/ts;->f:Lcom/yandex/mobile/ads/impl/ts;

    if-ne v2, v5, :cond_0

    .line 6
    new-instance v2, Lcom/yandex/mobile/ads/impl/qs1;

    .line 7
    new-instance v5, Lcom/yandex/mobile/ads/impl/ms1;

    invoke-direct {v5, v1, v3, v4}, Lcom/yandex/mobile/ads/impl/ms1;-><init>(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/j1;I)V

    .line 8
    invoke-direct {v2, v1, v3, v5}, Lcom/yandex/mobile/ads/impl/qs1;-><init>(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/j1;Lcom/yandex/mobile/ads/impl/ms1;)V

    :goto_0
    move-object v1, v2

    goto :goto_1

    .line 9
    :cond_0
    new-instance v2, Lcom/yandex/mobile/ads/impl/eq0;

    .line 10
    new-instance v5, Lcom/yandex/mobile/ads/impl/dq0;

    invoke-direct {v5, v1, v3, v4}, Lcom/yandex/mobile/ads/impl/dq0;-><init>(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/j1;I)V

    .line 11
    new-instance v4, Lcom/yandex/mobile/ads/impl/c51;

    invoke-direct {v4}, Lcom/yandex/mobile/ads/impl/c51;-><init>()V

    .line 12
    invoke-direct {v2, v1, v3, v5, v4}, Lcom/yandex/mobile/ads/impl/eq0;-><init>(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/j1;Lcom/yandex/mobile/ads/impl/dq0;Lcom/yandex/mobile/ads/impl/c51;)V

    goto :goto_0

    .line 13
    :goto_1
    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/lr0;->a:Lcom/yandex/mobile/ads/impl/o8;

    .line 14
    iget-object v5, v0, Lcom/yandex/mobile/ads/impl/lr0;->b:Lcom/yandex/mobile/ads/impl/zr;

    .line 15
    iget-object v4, v0, Lcom/yandex/mobile/ads/impl/lr0;->c:Lcom/yandex/mobile/ads/impl/e1;

    .line 16
    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/lr0;->h:Lcom/yandex/mobile/ads/impl/dw;

    move-object/from16 v17, v2

    move-object/from16 v2, p1

    move-object/from16 v18, v4

    move-object/from16 v4, p3

    move-object/from16 v19, v16

    move-object/from16 v6, p4

    move-object/from16 v7, v18

    move-object/from16 v8, v17

    move-object/from16 v9, p5

    move-object/from16 v20, v10

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v21, v12

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    .line 17
    invoke-interface/range {v1 .. v14}, Lcom/yandex/mobile/ads/impl/d10;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/q61;Lcom/yandex/mobile/ads/impl/zr;Lcom/yandex/mobile/ads/impl/st;Lcom/yandex/mobile/ads/impl/e1;Lcom/yandex/mobile/ads/impl/dw;Lcom/yandex/mobile/ads/impl/k3;Lcom/yandex/mobile/ads/impl/ks1;Lcom/yandex/mobile/ads/impl/f52;Lcom/yandex/mobile/ads/impl/l20;Lcom/yandex/mobile/ads/impl/b30;Lcom/yandex/mobile/ads/impl/m6;)Ljava/util/List;

    move-result-object v1

    .line 18
    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/lr0;->g:Lcom/yandex/mobile/ads/impl/mr0;

    .line 19
    iget-object v7, v0, Lcom/yandex/mobile/ads/impl/lr0;->a:Lcom/yandex/mobile/ads/impl/o8;

    .line 20
    iget-object v8, v0, Lcom/yandex/mobile/ads/impl/lr0;->b:Lcom/yandex/mobile/ads/impl/zr;

    .line 21
    iget-object v9, v0, Lcom/yandex/mobile/ads/impl/lr0;->c:Lcom/yandex/mobile/ads/impl/e1;

    .line 22
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, v21

    .line 23
    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-static {v7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v10, p3

    move-object/from16 v0, v20

    invoke-static {v10, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentCloseListener"

    invoke-static {v8, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdEventListener"

    move-object/from16 v11, p4

    invoke-static {v11, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventController"

    invoke-static {v9, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "designCreators"

    invoke-static {v1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance v12, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {v1, v0}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 25
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 26
    check-cast v0, Lcom/yandex/mobile/ads/impl/ee0;

    move-object/from16 v1, p1

    move-object v2, v7

    move-object/from16 v3, p3

    move-object v4, v8

    move-object/from16 v5, p4

    move-object v6, v9

    .line 27
    invoke-interface/range {v0 .. v6}, Lcom/yandex/mobile/ads/impl/ee0;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/q61;Lcom/yandex/mobile/ads/impl/zr;Lcom/yandex/mobile/ads/impl/st;Lcom/yandex/mobile/ads/impl/e1;)Lcom/yandex/mobile/ads/impl/fr0;

    move-result-object v0

    .line 28
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 29
    :cond_1
    new-instance v0, Lcom/yandex/mobile/ads/impl/kr0;

    .line 30
    new-instance v1, Lcom/yandex/mobile/ads/impl/jr0;

    invoke-direct {v1, v12}, Lcom/yandex/mobile/ads/impl/jr0;-><init>(Ljava/util/List;)V

    .line 31
    new-instance v2, Lcom/yandex/mobile/ads/impl/hr0;

    invoke-direct {v2}, Lcom/yandex/mobile/ads/impl/hr0;-><init>()V

    .line 32
    new-instance v3, Lcom/yandex/mobile/ads/impl/gr0;

    invoke-direct {v3}, Lcom/yandex/mobile/ads/impl/gr0;-><init>()V

    move-object/from16 p3, v0

    move-object/from16 p4, p1

    move-object/from16 p5, p2

    move-object/from16 p6, v12

    move-object/from16 p7, v1

    move-object/from16 p8, v2

    move-object/from16 p9, v3

    .line 33
    invoke-direct/range {p3 .. p9}, Lcom/yandex/mobile/ads/impl/kr0;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/ArrayList;Lcom/yandex/mobile/ads/impl/jr0;Lcom/yandex/mobile/ads/impl/hr0;Lcom/yandex/mobile/ads/impl/gr0;)V

    return-object v0
.end method

.method public final a(Landroid/content/Context;Lcom/monetization/ads/nativeads/ExtendedNativeAdView;Lcom/yandex/mobile/ads/impl/q61;Lcom/yandex/mobile/ads/impl/st;Lcom/yandex/mobile/ads/impl/k3;Lcom/yandex/mobile/ads/impl/ks1;Lcom/yandex/mobile/ads/impl/xl1;Lcom/yandex/mobile/ads/impl/l6;Ljava/util/ArrayList;Lcom/yandex/mobile/ads/impl/b30;Lcom/yandex/mobile/ads/impl/g6;Lcom/yandex/mobile/ads/impl/aq;)Ljava/util/ArrayList;
    .locals 31

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p7

    move-object/from16 v6, p9

    move-object/from16 v7, p11

    .line 34
    const-string v0, "context"

    move-object/from16 v10, p1

    invoke-static {v10, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "container"

    move-object/from16 v9, p2

    invoke-static {v9, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdPrivate"

    invoke-static {v11, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adEventListener"

    invoke-static {v12, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adCompleteListener"

    move-object/from16 v8, p5

    invoke-static {v8, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "closeVerificationController"

    move-object/from16 v15, p6

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "progressIncrementer"

    invoke-static {v13, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divKitActionHandlerDelegate"

    move-object/from16 v14, p8

    invoke-static {v14, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adPod"

    invoke-static {v7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "closeTimerProgressIncrementer"

    move-object/from16 v5, p12

    invoke-static {v5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    instance-of v0, v11, Lcom/yandex/mobile/ads/impl/b02;

    const/4 v1, 0x0

    const/16 v25, 0x0

    const-wide/16 v26, 0x0

    if-eqz v0, :cond_6

    .line 36
    check-cast v11, Lcom/yandex/mobile/ads/impl/b02;

    .line 37
    invoke-virtual/range {p11 .. p11}, Lcom/yandex/mobile/ads/impl/g6;->b()Ljava/util/List;

    move-result-object v4

    .line 38
    invoke-interface {v11}, Lcom/yandex/mobile/ads/impl/b02;->d()Ljava/util/ArrayList;

    move-result-object v3

    .line 39
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 40
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 41
    invoke-static {v4, v1}, Li81;->r0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v24, v16

    check-cast v24, Lcom/yandex/mobile/ads/impl/m6;

    .line 42
    new-instance v21, Lcom/yandex/mobile/ads/impl/f52;

    move-object/from16 p3, v2

    .line 43
    new-instance v2, Lcom/yandex/mobile/ads/impl/h6;

    invoke-direct {v2, v4}, Lcom/yandex/mobile/ads/impl/h6;-><init>(Ljava/util/List;)V

    move-object/from16 v16, v3

    .line 44
    new-instance v3, Lcom/yandex/mobile/ads/impl/k6;

    if-eqz v24, :cond_0

    invoke-virtual/range {v24 .. v24}, Lcom/yandex/mobile/ads/impl/m6;->a()J

    move-result-wide v17

    move-wide/from16 v29, v17

    move-object/from16 v17, v4

    move-wide/from16 v4, v29

    goto :goto_1

    :cond_0
    move-object/from16 v17, v4

    move-wide/from16 v4, v26

    :goto_1
    invoke-direct {v3, v4, v5}, Lcom/yandex/mobile/ads/impl/k6;-><init>(J)V

    .line 45
    new-instance v4, Lcom/yandex/mobile/ads/impl/i6;

    invoke-direct {v4, v7, v1}, Lcom/yandex/mobile/ads/impl/i6;-><init>(Lcom/yandex/mobile/ads/impl/g6;I)V

    move/from16 v28, v0

    move-object/from16 v0, v21

    move v5, v1

    move-object/from16 v1, p7

    move-object/from16 v13, p3

    move-object/from16 v8, v16

    move-object/from16 v9, v17

    move v10, v5

    move-object/from16 v5, p12

    .line 46
    invoke-direct/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/f52;-><init>(Lcom/yandex/mobile/ads/impl/xl1;Lcom/yandex/mobile/ads/impl/z1;Lcom/yandex/mobile/ads/impl/mz;Lcom/yandex/mobile/ads/impl/kp;Lcom/yandex/mobile/ads/impl/aq;)V

    .line 47
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Lcom/yandex/mobile/ads/impl/q61;

    .line 48
    new-instance v0, Lcom/yandex/mobile/ads/impl/k32;

    invoke-direct {v0, v12}, Lcom/yandex/mobile/ads/impl/k32;-><init>(Lcom/yandex/mobile/ads/impl/st;)V

    if-eqz v6, :cond_1

    .line 49
    invoke-static {v6, v10}, Li81;->r0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/mobile/ads/impl/b30;

    move-object/from16 v23, v1

    goto :goto_2

    :cond_1
    move-object/from16 v23, v25

    :goto_2
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v16, p2

    move-object/from16 v18, v0

    move-object/from16 v19, p5

    move-object/from16 v20, p6

    move-object/from16 v22, p8

    .line 50
    invoke-virtual/range {v14 .. v24}, Lcom/yandex/mobile/ads/impl/lr0;->a(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/yandex/mobile/ads/impl/q61;Lcom/yandex/mobile/ads/impl/st;Lcom/yandex/mobile/ads/impl/k3;Lcom/yandex/mobile/ads/impl/ks1;Lcom/yandex/mobile/ads/impl/f52;Lcom/yandex/mobile/ads/impl/l20;Lcom/yandex/mobile/ads/impl/b30;Lcom/yandex/mobile/ads/impl/m6;)Lcom/yandex/mobile/ads/impl/kr0;

    move-result-object v0

    .line 51
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v10, 0x1

    move-object/from16 v10, p1

    move-object/from16 v15, p6

    move-object/from16 v14, p8

    move-object/from16 v5, p12

    move-object v3, v8

    move-object v4, v9

    move-object v2, v13

    move/from16 v0, v28

    move-object/from16 v9, p2

    move-object/from16 v8, p5

    move-object/from16 v13, p7

    goto/16 :goto_0

    :cond_2
    move-object v13, v2

    move-object v8, v3

    move-object v9, v4

    .line 52
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v9, v0}, Li81;->r0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/yandex/mobile/ads/impl/m6;

    .line 53
    new-instance v7, Lcom/yandex/mobile/ads/impl/f52;

    .line 54
    new-instance v2, Lcom/yandex/mobile/ads/impl/h6;

    invoke-direct {v2, v9}, Lcom/yandex/mobile/ads/impl/h6;-><init>(Ljava/util/List;)V

    .line 55
    new-instance v3, Lcom/yandex/mobile/ads/impl/k6;

    if-eqz v10, :cond_3

    invoke-virtual {v10}, Lcom/yandex/mobile/ads/impl/m6;->a()J

    move-result-wide v26

    :cond_3
    move-wide/from16 v0, v26

    invoke-direct {v3, v0, v1}, Lcom/yandex/mobile/ads/impl/k6;-><init>(J)V

    .line 56
    new-instance v4, Lcom/yandex/mobile/ads/impl/wf1;

    invoke-direct {v4}, Lcom/yandex/mobile/ads/impl/wf1;-><init>()V

    move-object v0, v7

    move-object/from16 v1, p7

    move-object/from16 v5, p12

    .line 57
    invoke-direct/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/f52;-><init>(Lcom/yandex/mobile/ads/impl/xl1;Lcom/yandex/mobile/ads/impl/z1;Lcom/yandex/mobile/ads/impl/mz;Lcom/yandex/mobile/ads/impl/kp;Lcom/yandex/mobile/ads/impl/aq;)V

    if-eqz p10, :cond_4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v11

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p10

    .line 58
    invoke-virtual/range {v0 .. v10}, Lcom/yandex/mobile/ads/impl/lr0;->a(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/yandex/mobile/ads/impl/q61;Lcom/yandex/mobile/ads/impl/st;Lcom/yandex/mobile/ads/impl/k3;Lcom/yandex/mobile/ads/impl/ks1;Lcom/yandex/mobile/ads/impl/f52;Lcom/yandex/mobile/ads/impl/l20;Lcom/yandex/mobile/ads/impl/b30;Lcom/yandex/mobile/ads/impl/m6;)Lcom/yandex/mobile/ads/impl/kr0;

    move-result-object v25

    :cond_4
    move-object/from16 v0, v25

    if-eqz v0, :cond_5

    .line 59
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    move-object v2, v13

    goto/16 :goto_5

    .line 60
    :cond_6
    invoke-virtual/range {p11 .. p11}, Lcom/yandex/mobile/ads/impl/g6;->b()Ljava/util/List;

    move-result-object v13

    .line 61
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 62
    new-instance v8, Lcom/yandex/mobile/ads/impl/f52;

    .line 63
    new-instance v2, Lcom/yandex/mobile/ads/impl/h6;

    invoke-direct {v2, v13}, Lcom/yandex/mobile/ads/impl/h6;-><init>(Ljava/util/List;)V

    .line 64
    new-instance v3, Lcom/yandex/mobile/ads/impl/k6;

    invoke-static {v13}, Li81;->q0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/m6;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/m6;->a()J

    move-result-wide v4

    goto :goto_3

    :cond_7
    move-wide/from16 v4, v26

    :goto_3
    invoke-direct {v3, v4, v5}, Lcom/yandex/mobile/ads/impl/k6;-><init>(J)V

    .line 65
    new-instance v4, Lcom/yandex/mobile/ads/impl/i6;

    invoke-direct {v4, v7, v1}, Lcom/yandex/mobile/ads/impl/i6;-><init>(Lcom/yandex/mobile/ads/impl/g6;I)V

    move-object v0, v8

    move-object/from16 v1, p7

    move-object/from16 v5, p12

    .line 66
    invoke-direct/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/f52;-><init>(Lcom/yandex/mobile/ads/impl/xl1;Lcom/yandex/mobile/ads/impl/z1;Lcom/yandex/mobile/ads/impl/mz;Lcom/yandex/mobile/ads/impl/kp;Lcom/yandex/mobile/ads/impl/aq;)V

    if-eqz v6, :cond_8

    .line 67
    invoke-static/range {p9 .. p9}, Li81;->q0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/b30;

    move-object v9, v0

    goto :goto_4

    :cond_8
    move-object/from16 v9, v25

    .line 68
    :goto_4
    invoke-static {v13}, Li81;->q0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/yandex/mobile/ads/impl/m6;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object v7, v8

    move-object/from16 v8, p8

    .line 69
    invoke-virtual/range {v0 .. v10}, Lcom/yandex/mobile/ads/impl/lr0;->a(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/yandex/mobile/ads/impl/q61;Lcom/yandex/mobile/ads/impl/st;Lcom/yandex/mobile/ads/impl/k3;Lcom/yandex/mobile/ads/impl/ks1;Lcom/yandex/mobile/ads/impl/f52;Lcom/yandex/mobile/ads/impl/l20;Lcom/yandex/mobile/ads/impl/b30;Lcom/yandex/mobile/ads/impl/m6;)Lcom/yandex/mobile/ads/impl/kr0;

    move-result-object v0

    .line 70
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 71
    invoke-static {v13, v0}, Li81;->r0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/yandex/mobile/ads/impl/m6;

    .line 72
    new-instance v7, Lcom/yandex/mobile/ads/impl/f52;

    .line 73
    new-instance v0, Lcom/yandex/mobile/ads/impl/h6;

    invoke-direct {v0, v13}, Lcom/yandex/mobile/ads/impl/h6;-><init>(Ljava/util/List;)V

    .line 74
    new-instance v1, Lcom/yandex/mobile/ads/impl/k6;

    if-eqz v10, :cond_9

    invoke-virtual {v10}, Lcom/yandex/mobile/ads/impl/m6;->a()J

    move-result-wide v26

    :cond_9
    move-wide/from16 v2, v26

    invoke-direct {v1, v2, v3}, Lcom/yandex/mobile/ads/impl/k6;-><init>(J)V

    .line 75
    new-instance v2, Lcom/yandex/mobile/ads/impl/wf1;

    invoke-direct {v2}, Lcom/yandex/mobile/ads/impl/wf1;-><init>()V

    move-object/from16 v3, p7

    .line 76
    invoke-direct {v7, v3, v0, v1, v2}, Lcom/yandex/mobile/ads/impl/f52;-><init>(Lcom/yandex/mobile/ads/impl/xl1;Lcom/yandex/mobile/ads/impl/z1;Lcom/yandex/mobile/ads/impl/mz;Lcom/yandex/mobile/ads/impl/kp;)V

    if-eqz p10, :cond_a

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p10

    .line 77
    invoke-virtual/range {v0 .. v10}, Lcom/yandex/mobile/ads/impl/lr0;->a(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/yandex/mobile/ads/impl/q61;Lcom/yandex/mobile/ads/impl/st;Lcom/yandex/mobile/ads/impl/k3;Lcom/yandex/mobile/ads/impl/ks1;Lcom/yandex/mobile/ads/impl/f52;Lcom/yandex/mobile/ads/impl/l20;Lcom/yandex/mobile/ads/impl/b30;Lcom/yandex/mobile/ads/impl/m6;)Lcom/yandex/mobile/ads/impl/kr0;

    move-result-object v25

    :cond_a
    move-object/from16 v0, v25

    if-eqz v0, :cond_b

    .line 78
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    move-object v2, v14

    :goto_5
    return-object v2
.end method
