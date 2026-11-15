.class public final Lcom/yandex/mobile/ads/impl/f30;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/ee0;


# instance fields
.field private final a:Lcom/yandex/div2/DivData;

.field private final b:Lcom/yandex/mobile/ads/impl/o3;

.field private final c:Lcom/yandex/mobile/ads/impl/b10;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/b10<",
            "Lcom/monetization/ads/nativeads/ExtendedNativeAdView;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/yandex/mobile/ads/impl/j1;

.field private final e:Lcom/yandex/mobile/ads/impl/l20;

.field private final f:I

.field private final g:Lcom/yandex/mobile/ads/impl/w10;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/div2/DivData;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/ar;Lcom/yandex/mobile/ads/impl/j1;Lcom/yandex/mobile/ads/impl/l20;I)V
    .locals 8

    .line 1
    new-instance v7, Lcom/yandex/mobile/ads/impl/w10;

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/o3;->q()Lcom/yandex/mobile/ads/impl/bv1;

    move-result-object v0

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/bv1;->c()Lcom/yandex/mobile/ads/impl/s01;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/yandex/mobile/ads/impl/w10;-><init>(Lcom/yandex/mobile/ads/impl/sp1;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    .line 2
    invoke-direct/range {v0 .. v7}, Lcom/yandex/mobile/ads/impl/f30;-><init>(Lcom/yandex/div2/DivData;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/ar;Lcom/yandex/mobile/ads/impl/j1;Lcom/yandex/mobile/ads/impl/l20;ILcom/yandex/mobile/ads/impl/w10;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/div2/DivData;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/ar;Lcom/yandex/mobile/ads/impl/j1;Lcom/yandex/mobile/ads/impl/l20;ILcom/yandex/mobile/ads/impl/w10;)V
    .locals 1

    .line 3
    const-string v0, "divData"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfiguration"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adTypeSpecificBinder"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adActivityListener"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divKitActionHandlerDelegate"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divConfigurationCreator"

    invoke-static {p7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/f30;->a:Lcom/yandex/div2/DivData;

    .line 6
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/f30;->b:Lcom/yandex/mobile/ads/impl/o3;

    .line 7
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/f30;->c:Lcom/yandex/mobile/ads/impl/b10;

    .line 8
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/f30;->d:Lcom/yandex/mobile/ads/impl/j1;

    .line 9
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/f30;->e:Lcom/yandex/mobile/ads/impl/l20;

    .line 10
    iput p6, p0, Lcom/yandex/mobile/ads/impl/f30;->f:I

    .line 11
    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/f30;->g:Lcom/yandex/mobile/ads/impl/w10;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/q61;Lcom/yandex/mobile/ads/impl/zr;Lcom/yandex/mobile/ads/impl/st;Lcom/yandex/mobile/ads/impl/e1;)Lcom/yandex/mobile/ads/impl/fr0;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;",
            "Lcom/yandex/mobile/ads/impl/q61;",
            "Lcom/yandex/mobile/ads/impl/zr;",
            "Lcom/yandex/mobile/ads/impl/st;",
            "Lcom/yandex/mobile/ads/impl/e1;",
            ")",
            "Lcom/yandex/mobile/ads/impl/fr0<",
            "Lcom/monetization/ads/nativeads/ExtendedNativeAdView;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v15, p3

    move-object/from16 v14, p4

    move-object/from16 v13, p5

    const-string v1, "context"

    invoke-static {v8, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "adResponse"

    invoke-static {v9, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "nativeAdPrivate"

    invoke-static {v15, v10}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "contentCloseListener"

    invoke-static {v14, v11}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "nativeAdEventListener"

    invoke-static {v13, v12}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "eventController"

    move-object/from16 v2, p6

    invoke-static {v2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Lcom/yandex/mobile/ads/impl/uo;

    invoke-direct {v7}, Lcom/yandex/mobile/ads/impl/uo;-><init>()V

    new-instance v6, Lcom/yandex/mobile/ads/impl/v20;

    invoke-direct {v6, v7}, Lcom/yandex/mobile/ads/impl/v20;-><init>(Lcom/yandex/mobile/ads/impl/uo;)V

    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/f30;->g:Lcom/yandex/mobile/ads/impl/w10;

    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/f30;->a:Lcom/yandex/div2/DivData;

    invoke-virtual {v1, v8, v2, v15, v6}, Lcom/yandex/mobile/ads/impl/w10;->a(Landroid/content/Context;Lcom/yandex/div2/DivData;Lcom/yandex/mobile/ads/impl/q61;Lcom/yandex/mobile/ads/impl/v20;)Ljh2;

    move-result-object v19

    new-instance v18, Lcom/yandex/mobile/ads/impl/k20;

    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/f30;->b:Lcom/yandex/mobile/ads/impl/o3;

    iget-object v5, v0, Lcom/yandex/mobile/ads/impl/f30;->e:Lcom/yandex/mobile/ads/impl/l20;

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object/from16 v16, v5

    move-object/from16 v5, p4

    move-object/from16 v17, v6

    move-object/from16 v6, v16

    move-object v9, v7

    move-object/from16 v7, v17

    invoke-direct/range {v1 .. v7}, Lcom/yandex/mobile/ads/impl/k20;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/zr;Lcom/yandex/mobile/ads/impl/l20;Lcom/yandex/mobile/ads/impl/v20;)V

    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/f30;->b:Lcom/yandex/mobile/ads/impl/o3;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/o3;->q()Lcom/yandex/mobile/ads/impl/bv1;

    move-result-object v1

    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/bv1;->c()Lcom/yandex/mobile/ads/impl/s01;

    move-result-object v6

    new-instance v25, Lcom/yandex/mobile/ads/impl/u20;

    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/f30;->a:Lcom/yandex/div2/DivData;

    instance-of v2, v8, Landroidx/lifecycle/LifecycleOwner;

    if-eqz v2, :cond_0

    move-object v2, v8

    check-cast v2, Landroidx/lifecycle/LifecycleOwner;

    :goto_0
    move-object/from16 v21, v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :goto_1
    move-object/from16 v16, v25

    move-object/from16 v17, v1

    move-object/from16 v20, v6

    invoke-direct/range {v16 .. v21}, Lcom/yandex/mobile/ads/impl/u20;-><init>(Lcom/yandex/div2/DivData;Lcom/yandex/mobile/ads/impl/k20;Ljh2;Lcom/yandex/mobile/ads/impl/sp1;Landroidx/lifecycle/LifecycleOwner;)V

    new-instance v8, Lcom/yandex/mobile/ads/impl/ar;

    new-instance v7, Lcom/yandex/mobile/ads/impl/pq1;

    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/f30;->d:Lcom/yandex/mobile/ads/impl/j1;

    iget v2, v0, Lcom/yandex/mobile/ads/impl/f30;->f:I

    invoke-direct {v7, v1, v2}, Lcom/yandex/mobile/ads/impl/pq1;-><init>(Lcom/yandex/mobile/ads/impl/j1;I)V

    new-instance v26, Lcom/yandex/mobile/ads/impl/ae0;

    invoke-static {v15, v10}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v14, v11}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13, v12}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "clickConnector"

    invoke-static {v9, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "reporter"

    invoke-static {v6, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v1, v15, Lcom/yandex/mobile/ads/impl/b02;

    if-eqz v1, :cond_1

    new-instance v1, Lcom/yandex/mobile/ads/impl/a02;

    move-object/from16 v17, v15

    check-cast v17, Lcom/yandex/mobile/ads/impl/b02;

    new-instance v22, Lcom/yandex/mobile/ads/impl/l41;

    invoke-direct/range {v22 .. v22}, Lcom/yandex/mobile/ads/impl/l41;-><init>()V

    new-instance v23, Lcom/yandex/mobile/ads/impl/r61;

    invoke-direct/range {v23 .. v23}, Lcom/yandex/mobile/ads/impl/r61;-><init>()V

    new-instance v2, Lcom/yandex/mobile/ads/impl/eh;

    invoke-static/range {v17 .. v17}, Lcom/yandex/mobile/ads/impl/r61;->b(Lcom/yandex/mobile/ads/impl/q61;)Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/yandex/mobile/ads/impl/eh;-><init>(Ljava/util/Collection;)V

    move-object/from16 v16, v1

    move-object/from16 v18, p4

    move-object/from16 v19, p5

    move-object/from16 v20, v9

    move-object/from16 v21, v6

    move-object/from16 v24, v2

    invoke-direct/range {v16 .. v24}, Lcom/yandex/mobile/ads/impl/a02;-><init>(Lcom/yandex/mobile/ads/impl/b02;Lcom/yandex/mobile/ads/impl/zr;Lcom/yandex/mobile/ads/impl/st;Lcom/yandex/mobile/ads/impl/uo;Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/j41;Lcom/yandex/mobile/ads/impl/r61;Lcom/yandex/mobile/ads/impl/eh;)V

    move-object v10, v1

    goto :goto_2

    :cond_1
    new-instance v1, Lcom/yandex/mobile/ads/impl/m51;

    new-instance v16, Lcom/yandex/mobile/ads/impl/l41;

    invoke-direct/range {v16 .. v16}, Lcom/yandex/mobile/ads/impl/l41;-><init>()V

    new-instance v17, Lcom/yandex/mobile/ads/impl/r61;

    invoke-direct/range {v17 .. v17}, Lcom/yandex/mobile/ads/impl/r61;-><init>()V

    new-instance v2, Lcom/yandex/mobile/ads/impl/eh;

    invoke-static/range {p3 .. p3}, Lcom/yandex/mobile/ads/impl/r61;->a(Lcom/yandex/mobile/ads/impl/q61;)Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/yandex/mobile/ads/impl/eh;-><init>(Ljava/util/Collection;)V

    move-object v10, v1

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move-object v14, v9

    move-object v15, v6

    move-object/from16 v18, v2

    invoke-direct/range {v10 .. v18}, Lcom/yandex/mobile/ads/impl/m51;-><init>(Lcom/yandex/mobile/ads/impl/q61;Lcom/yandex/mobile/ads/impl/zr;Lcom/yandex/mobile/ads/impl/st;Lcom/yandex/mobile/ads/impl/uo;Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/j41;Lcom/yandex/mobile/ads/impl/r61;Lcom/yandex/mobile/ads/impl/eh;)V

    :goto_2
    move-object/from16 v1, v26

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object v5, v9

    move-object v9, v7

    move-object v7, v10

    invoke-direct/range {v1 .. v7}, Lcom/yandex/mobile/ads/impl/ae0;-><init>(Lcom/yandex/mobile/ads/impl/q61;Lcom/yandex/mobile/ads/impl/zr;Lcom/yandex/mobile/ads/impl/st;Lcom/yandex/mobile/ads/impl/uo;Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/b10;)V

    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/f30;->c:Lcom/yandex/mobile/ads/impl/b10;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/yandex/mobile/ads/impl/b10;

    const/4 v2, 0x0

    aput-object v9, v1, v2

    const/4 v2, 0x1

    aput-object v25, v1, v2

    const/4 v2, 0x2

    aput-object v26, v1, v2

    const/4 v2, 0x3

    aput-object v0, v1, v2

    invoke-direct {v8, v1}, Lcom/yandex/mobile/ads/impl/ar;-><init>([Lcom/yandex/mobile/ads/impl/b10;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/e30;

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/impl/e30;-><init>(Lcom/yandex/mobile/ads/impl/o8;)V

    new-instance v1, Lcom/yandex/mobile/ads/impl/fr0;

    sget v2, Lcom/yandex/mobile/ads/R$layout;->monetization_ads_internal_divkit:I

    invoke-direct {v1, v2, v8, v0}, Lcom/yandex/mobile/ads/impl/fr0;-><init>(ILcom/yandex/mobile/ads/impl/ar;Lcom/yandex/mobile/ads/impl/c10;)V

    return-object v1
.end method
