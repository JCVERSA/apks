.class public final Lcom/yandex/mobile/ads/impl/eq0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/d10;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/o3;

.field private final b:Lcom/yandex/mobile/ads/impl/dq0;

.field private final c:Lcom/yandex/mobile/ads/impl/c51;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/j1;Lcom/yandex/mobile/ads/impl/dq0;Lcom/yandex/mobile/ads/impl/c51;)V
    .locals 1

    const-string v0, "adConfiguration"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adActivityListener"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "interstitialDivKitDesignCreatorProvider"

    invoke-static {p3, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "nativeAdControlViewProviderById"

    invoke-static {p4, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/eq0;->a:Lcom/yandex/mobile/ads/impl/o3;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/eq0;->b:Lcom/yandex/mobile/ads/impl/dq0;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/eq0;->c:Lcom/yandex/mobile/ads/impl/c51;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/q61;Lcom/yandex/mobile/ads/impl/zr;Lcom/yandex/mobile/ads/impl/st;Lcom/yandex/mobile/ads/impl/e1;Lcom/yandex/mobile/ads/impl/dw;Lcom/yandex/mobile/ads/impl/k3;Lcom/yandex/mobile/ads/impl/ks1;Lcom/yandex/mobile/ads/impl/f52;Lcom/yandex/mobile/ads/impl/l20;Lcom/yandex/mobile/ads/impl/b30;Lcom/yandex/mobile/ads/impl/m6;)Ljava/util/List;
    .locals 16
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
            "Lcom/yandex/mobile/ads/impl/dw;",
            "Lcom/yandex/mobile/ads/impl/k3;",
            "Lcom/yandex/mobile/ads/impl/ks1;",
            "Lcom/yandex/mobile/ads/impl/f52;",
            "Lcom/yandex/mobile/ads/impl/l20;",
            "Lcom/yandex/mobile/ads/impl/b30;",
            "Lcom/yandex/mobile/ads/impl/m6;",
            ")",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/ee0;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v5, p4

    move-object/from16 v4, p6

    move-object/from16 v7, p7

    move-object/from16 v9, p10

    const-string v1, "context"

    move-object/from16 v3, p1

    invoke-static {v3, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "adResponse"

    invoke-static {v2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "nativeAdPrivate"

    move-object/from16 v6, p3

    invoke-static {v6, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "contentCloseListener"

    invoke-static {v5, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "nativeAdEventListener"

    move-object/from16 v8, p5

    invoke-static {v8, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "eventController"

    invoke-static {v4, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "debugEventsReporter"

    invoke-static {v7, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "adCompleteListener"

    move-object/from16 v8, p8

    invoke-static {v8, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "closeVerificationController"

    move-object/from16 v10, p9

    invoke-static {v10, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "timeProviderContainer"

    invoke-static {v9, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "divKitActionHandlerDelegate"

    move-object/from16 v10, p11

    invoke-static {v10, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/yandex/mobile/ads/impl/cq0;

    new-instance v11, Lcom/yandex/mobile/ads/impl/di2;

    invoke-direct {v11}, Lcom/yandex/mobile/ads/impl/di2;-><init>()V

    invoke-direct {v1, v2, v4, v5, v11}, Lcom/yandex/mobile/ads/impl/cq0;-><init>(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/e1;Lcom/yandex/mobile/ads/impl/zr;Lcom/yandex/mobile/ads/impl/op;)V

    iget-object v11, v0, Lcom/yandex/mobile/ads/impl/eq0;->c:Lcom/yandex/mobile/ads/impl/c51;

    invoke-virtual {v1, v11, v7, v9}, Lcom/yandex/mobile/ads/impl/cq0;->a(Lcom/yandex/mobile/ads/impl/c51;Lcom/yandex/mobile/ads/impl/dw;Lcom/yandex/mobile/ads/impl/f52;)Lcom/yandex/mobile/ads/impl/fq;

    move-result-object v1

    iget-object v11, v0, Lcom/yandex/mobile/ads/impl/eq0;->a:Lcom/yandex/mobile/ads/impl/o3;

    invoke-virtual {v11}, Lcom/yandex/mobile/ads/impl/o3;->q()Lcom/yandex/mobile/ads/impl/bv1;

    move-result-object v11

    invoke-interface {v11}, Lcom/yandex/mobile/ads/impl/bv1;->c()Lcom/yandex/mobile/ads/impl/s01;

    move-result-object v11

    new-instance v12, Lcom/yandex/mobile/ads/impl/nj1;

    new-instance v13, Lcom/yandex/mobile/ads/impl/vq;

    invoke-direct {v13}, Lcom/yandex/mobile/ads/impl/vq;-><init>()V

    invoke-direct {v12, v1, v11, v13}, Lcom/yandex/mobile/ads/impl/nj1;-><init>(Lcom/yandex/mobile/ads/impl/fq;Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/vq;)V

    new-instance v13, Lcom/yandex/mobile/ads/impl/cr0;

    new-instance v14, Lcom/yandex/mobile/ads/impl/uq1;

    invoke-direct {v14}, Lcom/yandex/mobile/ads/impl/uq1;-><init>()V

    new-instance v15, Lcom/yandex/mobile/ads/impl/vq;

    invoke-direct {v15}, Lcom/yandex/mobile/ads/impl/vq;-><init>()V

    invoke-direct {v13, v1, v11, v14, v15}, Lcom/yandex/mobile/ads/impl/cr0;-><init>(Lcom/yandex/mobile/ads/impl/fq;Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/uq1;Lcom/yandex/mobile/ads/impl/vq;)V

    new-instance v14, Lcom/yandex/mobile/ads/impl/br0;

    new-instance v15, Lcom/yandex/mobile/ads/impl/uq1;

    invoke-direct {v15}, Lcom/yandex/mobile/ads/impl/uq1;-><init>()V

    new-instance v2, Lcom/yandex/mobile/ads/impl/vq;

    invoke-direct {v2}, Lcom/yandex/mobile/ads/impl/vq;-><init>()V

    invoke-direct {v14, v1, v11, v15, v2}, Lcom/yandex/mobile/ads/impl/br0;-><init>(Lcom/yandex/mobile/ads/impl/fq;Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/uq1;Lcom/yandex/mobile/ads/impl/vq;)V

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/yandex/mobile/ads/impl/ee0;

    const/4 v2, 0x0

    aput-object v12, v1, v2

    const/4 v2, 0x1

    aput-object v13, v1, v2

    const/4 v2, 0x2

    aput-object v14, v1, v2

    invoke-static {v1}, Ly71;->n([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/eq0;->b:Lcom/yandex/mobile/ads/impl/dq0;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v6, p8

    move-object/from16 v8, p11

    move-object/from16 v10, p12

    move-object/from16 v11, p13

    invoke-virtual/range {v0 .. v11}, Lcom/yandex/mobile/ads/impl/dq0;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/q61;Lcom/yandex/mobile/ads/impl/e1;Lcom/yandex/mobile/ads/impl/zr;Lcom/yandex/mobile/ads/impl/k3;Lcom/yandex/mobile/ads/impl/dw;Lcom/yandex/mobile/ads/impl/l20;Lcom/yandex/mobile/ads/impl/f52;Lcom/yandex/mobile/ads/impl/b30;Lcom/yandex/mobile/ads/impl/m6;)Lcom/yandex/mobile/ads/impl/f30;

    move-result-object v0

    invoke-static {v0}, Lx71;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v12}, Li81;->J0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Li81;->l0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
