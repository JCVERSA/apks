.class public final Lcom/yandex/mobile/ads/impl/hj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/div2/DivData;

.field private final b:Lcom/yandex/mobile/ads/impl/o3;

.field private final c:Lcom/yandex/mobile/ads/impl/m20;

.field private final d:Lcom/yandex/mobile/ads/impl/w10;

.field private final e:Lcom/yandex/mobile/ads/impl/ir0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/ir0<",
            "Lcom/monetization/ads/nativeads/ExtendedNativeAdView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yandex/div2/DivData;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/m20;Lcom/yandex/mobile/ads/impl/w10;Lcom/yandex/mobile/ads/impl/ir0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/div2/DivData;",
            "Lcom/yandex/mobile/ads/impl/o3;",
            "Lcom/yandex/mobile/ads/impl/m20;",
            "Lcom/yandex/mobile/ads/impl/w10;",
            "Lcom/yandex/mobile/ads/impl/ir0<",
            "Lcom/monetization/ads/nativeads/ExtendedNativeAdView;",
            ">;)V"
        }
    .end annotation

    const-string v0, "divData"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfiguration"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divKitAdBinderFactory"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divConfigurationCreator"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutDesignFactory"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/hj;->a:Lcom/yandex/div2/DivData;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/hj;->b:Lcom/yandex/mobile/ads/impl/o3;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/hj;->c:Lcom/yandex/mobile/ads/impl/m20;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/hj;->d:Lcom/yandex/mobile/ads/impl/w10;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/hj;->e:Lcom/yandex/mobile/ads/impl/ir0;

    return-void
.end method

.method private static final a()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic b()V
    .locals 0

    invoke-static {}, Lcom/yandex/mobile/ads/impl/hj;->a()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/q61;Lcom/yandex/mobile/ads/impl/b81;Lcom/yandex/mobile/ads/impl/qe2;)Lcom/yandex/mobile/ads/impl/fr0;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v1, p4

    move-object/from16 v10, p5

    .line 2
    const-string v3, "context"

    invoke-static {v2, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "adResponse"

    invoke-static {v8, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "nativeAdPrivate"

    invoke-static {v9, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "nativeAdEventListener"

    invoke-static {v1, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "videoEventController"

    invoke-static {v10, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v3, Lcom/yandex/mobile/ads/impl/uo;

    invoke-direct {v3}, Lcom/yandex/mobile/ads/impl/uo;-><init>()V

    new-instance v5, Lxhd;

    invoke-direct {v5}, Lxhd;-><init>()V

    .line 4
    new-instance v6, Lcom/yandex/mobile/ads/impl/gj;

    invoke-direct {v6}, Lcom/yandex/mobile/ads/impl/gj;-><init>()V

    .line 5
    iget-object v4, v0, Lcom/yandex/mobile/ads/impl/hj;->b:Lcom/yandex/mobile/ads/impl/o3;

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/o3;->q()Lcom/yandex/mobile/ads/impl/bv1;

    move-result-object v4

    invoke-interface {v4}, Lcom/yandex/mobile/ads/impl/bv1;->c()Lcom/yandex/mobile/ads/impl/s01;

    move-result-object v15

    .line 6
    iget-object v4, v0, Lcom/yandex/mobile/ads/impl/hj;->c:Lcom/yandex/mobile/ads/impl/m20;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9, v5, v1, v3, v15}, Lcom/yandex/mobile/ads/impl/m20;->a(Lcom/yandex/mobile/ads/impl/q61;Lcom/yandex/mobile/ads/impl/zr;Lcom/yandex/mobile/ads/impl/st;Lcom/yandex/mobile/ads/impl/uo;Lcom/yandex/mobile/ads/impl/sp1;)Lcom/yandex/mobile/ads/impl/b10;

    move-result-object v17

    .line 7
    new-instance v7, Lcom/yandex/mobile/ads/impl/v20;

    invoke-direct {v7, v3}, Lcom/yandex/mobile/ads/impl/v20;-><init>(Lcom/yandex/mobile/ads/impl/uo;)V

    .line 8
    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/hj;->d:Lcom/yandex/mobile/ads/impl/w10;

    .line 9
    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/hj;->a:Lcom/yandex/div2/DivData;

    .line 10
    invoke-virtual {v1, v2, v3, v9, v7}, Lcom/yandex/mobile/ads/impl/w10;->a(Landroid/content/Context;Lcom/yandex/div2/DivData;Lcom/yandex/mobile/ads/impl/q61;Lcom/yandex/mobile/ads/impl/v20;)Ljh2;

    move-result-object v14

    .line 11
    new-instance v13, Lcom/yandex/mobile/ads/impl/k20;

    .line 12
    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/hj;->b:Lcom/yandex/mobile/ads/impl/o3;

    move-object v1, v13

    move-object/from16 v4, p2

    .line 13
    invoke-direct/range {v1 .. v7}, Lcom/yandex/mobile/ads/impl/k20;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/zr;Lcom/yandex/mobile/ads/impl/l20;Lcom/yandex/mobile/ads/impl/v20;)V

    .line 14
    new-instance v16, Lcom/yandex/mobile/ads/impl/sb0;

    invoke-direct/range {v16 .. v16}, Lcom/yandex/mobile/ads/impl/sb0;-><init>()V

    .line 15
    new-instance v1, Lcom/yandex/mobile/ads/impl/u20;

    .line 16
    iget-object v12, v0, Lcom/yandex/mobile/ads/impl/hj;->a:Lcom/yandex/div2/DivData;

    move-object v11, v1

    .line 17
    invoke-direct/range {v11 .. v16}, Lcom/yandex/mobile/ads/impl/u20;-><init>(Lcom/yandex/div2/DivData;Lcom/yandex/mobile/ads/impl/k20;Ljh2;Lcom/yandex/mobile/ads/impl/sp1;Landroidx/lifecycle/LifecycleOwner;)V

    .line 18
    new-instance v2, Lcom/yandex/mobile/ads/impl/c81;

    .line 19
    invoke-interface/range {p3 .. p3}, Lcom/yandex/mobile/ads/impl/q61;->b()Lcom/yandex/mobile/ads/impl/n91;

    move-result-object v3

    .line 20
    invoke-direct {v2, v3, v10}, Lcom/yandex/mobile/ads/impl/c81;-><init>(Lcom/yandex/mobile/ads/impl/n91;Lcom/yandex/mobile/ads/impl/qe2;)V

    .line 21
    new-instance v3, Lcom/yandex/mobile/ads/impl/ar;

    const/4 v4, 0x3

    .line 22
    new-array v4, v4, [Lcom/yandex/mobile/ads/impl/b10;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v17, v4, v1

    const/4 v1, 0x2

    aput-object v2, v4, v1

    .line 23
    invoke-direct {v3, v4}, Lcom/yandex/mobile/ads/impl/ar;-><init>([Lcom/yandex/mobile/ads/impl/b10;)V

    .line 24
    new-instance v1, Lcom/yandex/mobile/ads/impl/e30;

    invoke-direct {v1, v8}, Lcom/yandex/mobile/ads/impl/e30;-><init>(Lcom/yandex/mobile/ads/impl/o8;)V

    .line 25
    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/hj;->e:Lcom/yandex/mobile/ads/impl/ir0;

    .line 26
    sget v2, Lcom/yandex/mobile/ads/R$layout;->monetization_ads_internal_divkit:I

    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    const-string v0, "layoutViewClass"

    const-class v4, Lcom/monetization/ads/nativeads/ExtendedNativeAdView;

    invoke-static {v4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "designComponentBinder"

    invoke-static {v3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "designConstraint"

    invoke-static {v1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance v0, Lcom/yandex/mobile/ads/impl/fr0;

    invoke-direct {v0, v2, v3, v1}, Lcom/yandex/mobile/ads/impl/fr0;-><init>(ILcom/yandex/mobile/ads/impl/ar;Lcom/yandex/mobile/ads/impl/c10;)V

    return-object v0
.end method
