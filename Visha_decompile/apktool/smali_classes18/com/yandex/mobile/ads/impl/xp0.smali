.class public final Lcom/yandex/mobile/ads/impl/xp0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/bv1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/en2;)V
    .locals 1

    const-string v0, "sdkEnvironmentModule"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/xp0;->a:Lcom/yandex/mobile/ads/impl/bv1;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/b5;Lcom/yandex/mobile/ads/impl/v7;Lcom/yandex/mobile/ads/impl/md0;)Lcom/yandex/mobile/ads/impl/wp0;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/mobile/ads/impl/b5<",
            "Lcom/yandex/mobile/ads/impl/wp0;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/v7;",
            "Lcom/yandex/mobile/ads/impl/md0;",
            ")",
            "Lcom/yandex/mobile/ads/impl/wp0;"
        }
    .end annotation

    move-object v1, p1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemsLoadFinishListener"

    move-object v3, p2

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adRequestData"

    move-object v4, p3

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v11, Lcom/yandex/mobile/ads/impl/wp0;

    move-object v0, p0

    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/xp0;->a:Lcom/yandex/mobile/ads/impl/bv1;

    new-instance v5, Lcom/yandex/mobile/ads/impl/g5;

    invoke-direct {v5}, Lcom/yandex/mobile/ads/impl/g5;-><init>()V

    new-instance v6, Lcom/yandex/mobile/ads/impl/sg0;

    invoke-direct {v6}, Lcom/yandex/mobile/ads/impl/sg0;-><init>()V

    new-instance v7, Lcom/yandex/mobile/ads/impl/vp0;

    invoke-direct {v7, p1}, Lcom/yandex/mobile/ads/impl/vp0;-><init>(Landroid/content/Context;)V

    new-instance v8, Lcom/yandex/mobile/ads/impl/bq0;

    move-object/from16 v0, p4

    invoke-direct {v8, p1, v0}, Lcom/yandex/mobile/ads/impl/bq0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/md0;)V

    new-instance v9, Lcom/yandex/mobile/ads/impl/o3;

    sget-object v0, Lcom/yandex/mobile/ads/impl/ts;->e:Lcom/yandex/mobile/ads/impl/ts;

    invoke-direct {v9, v0, v2}, Lcom/yandex/mobile/ads/impl/o3;-><init>(Lcom/yandex/mobile/ads/impl/ts;Lcom/yandex/mobile/ads/impl/bv1;)V

    new-instance v10, Lcom/yandex/mobile/ads/impl/qm1;

    invoke-direct {v10, p1, v9, v5, v8}, Lcom/yandex/mobile/ads/impl/qm1;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/bq0;)V

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/yandex/mobile/ads/impl/wp0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/b5;Lcom/yandex/mobile/ads/impl/v7;Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/sg0;Lcom/yandex/mobile/ads/impl/vp0;Lcom/yandex/mobile/ads/impl/bq0;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/qm1;)V

    return-object v11
.end method
