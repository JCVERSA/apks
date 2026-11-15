.class public final Lcom/yandex/mobile/ads/impl/wy0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/m81;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/o8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/o8<",
            "Lcom/yandex/mobile/ads/impl/y61;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/mobile/ads/impl/hz0;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/hz0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "Lcom/yandex/mobile/ads/impl/y61;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/hz0;",
            ")V"
        }
    .end annotation

    const-string v0, "adResponse"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediationData"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/wy0;->a:Lcom/yandex/mobile/ads/impl/o8;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/wy0;->b:Lcom/yandex/mobile/ads/impl/hz0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/g61;)Lcom/yandex/mobile/ads/impl/l81;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "nativeAdLoadManager"

    invoke-static {v1, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v14, Lcom/yandex/mobile/ads/impl/vy0;

    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/wy0;->a:Lcom/yandex/mobile/ads/impl/o8;

    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/wy0;->b:Lcom/yandex/mobile/ads/impl/hz0;

    invoke-virtual/range {p1 .. p1}, Lcom/yandex/mobile/ads/impl/ck;->f()Lcom/yandex/mobile/ads/impl/o3;

    move-result-object v12

    new-instance v13, Lcom/yandex/mobile/ads/impl/ly0;

    invoke-direct {v13, v12}, Lcom/yandex/mobile/ads/impl/ly0;-><init>(Lcom/yandex/mobile/ads/impl/o3;)V

    new-instance v15, Lcom/yandex/mobile/ads/impl/gy0;

    invoke-direct {v15, v12, v2}, Lcom/yandex/mobile/ads/impl/gy0;-><init>(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/o8;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/zx0;

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/hz0;->c()Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v4, v13, v15}, Lcom/yandex/mobile/ads/impl/zx0;-><init>(Ljava/util/List;Lcom/yandex/mobile/ads/impl/ly0;Lcom/yandex/mobile/ads/impl/gy0;)V

    new-instance v11, Lcom/yandex/mobile/ads/impl/sy0;

    invoke-direct {v11, v0}, Lcom/yandex/mobile/ads/impl/sy0;-><init>(Lcom/yandex/mobile/ads/impl/zx0;)V

    invoke-virtual/range {p1 .. p1}, Lcom/yandex/mobile/ads/impl/ck;->i()Lcom/yandex/mobile/ads/impl/g5;

    move-result-object v10

    new-instance v9, Lcom/yandex/mobile/ads/impl/ig1;

    new-instance v4, Lcom/yandex/mobile/ads/impl/wa;

    invoke-direct {v4}, Lcom/yandex/mobile/ads/impl/wa;-><init>()V

    invoke-direct {v9, v1, v3, v10, v4}, Lcom/yandex/mobile/ads/impl/ig1;-><init>(Lcom/yandex/mobile/ads/impl/ck;Lcom/yandex/mobile/ads/impl/hz0;Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/wa;)V

    new-instance v16, Lcom/yandex/mobile/ads/impl/ty0;

    invoke-direct/range {v16 .. v16}, Lcom/yandex/mobile/ads/impl/ty0;-><init>()V

    new-instance v8, Lcom/yandex/mobile/ads/impl/rx0;

    new-instance v17, Lcom/yandex/mobile/ads/impl/dy0;

    invoke-direct/range {v17 .. v17}, Lcom/yandex/mobile/ads/impl/dy0;-><init>()V

    move-object v4, v8

    move-object v5, v12

    move-object v6, v10

    move-object/from16 v7, v16

    move-object/from16 p0, v13

    move-object v13, v8

    move-object v8, v15

    move-object/from16 v18, v9

    move-object v9, v11

    move-object/from16 v19, v10

    move-object/from16 v10, v18

    move-object/from16 v20, v11

    move-object/from16 v11, v17

    invoke-direct/range {v4 .. v11}, Lcom/yandex/mobile/ads/impl/rx0;-><init>(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/yx0;Lcom/yandex/mobile/ads/impl/gy0;Lcom/yandex/mobile/ads/impl/sx0;Lcom/yandex/mobile/ads/impl/ig1;Lcom/yandex/mobile/ads/impl/dy0;)V

    new-instance v11, Lcom/yandex/mobile/ads/impl/s71;

    invoke-direct {v11, v2, v1, v13}, Lcom/yandex/mobile/ads/impl/s71;-><init>(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/g61;Lcom/yandex/mobile/ads/impl/rx0;)V

    move-object v7, v0

    move-object v0, v14

    move-object v4, v12

    move-object/from16 v5, p0

    move-object v6, v15

    move-object/from16 v8, v20

    move-object/from16 v9, v19

    move-object v15, v11

    move-object/from16 v11, v16

    move-object v12, v13

    move-object v13, v15

    invoke-direct/range {v0 .. v13}, Lcom/yandex/mobile/ads/impl/vy0;-><init>(Lcom/yandex/mobile/ads/impl/g61;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/hz0;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/ly0;Lcom/yandex/mobile/ads/impl/gy0;Lcom/yandex/mobile/ads/impl/zx0;Lcom/yandex/mobile/ads/impl/sy0;Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/ig1;Lcom/yandex/mobile/ads/impl/ty0;Lcom/yandex/mobile/ads/impl/rx0;Lcom/yandex/mobile/ads/impl/s71;)V

    return-object v14
.end method
