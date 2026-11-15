.class public final Lcom/yandex/mobile/ads/impl/zf;
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

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/zf;->a:Lcom/yandex/mobile/ads/impl/bv1;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/b5;Lcom/yandex/mobile/ads/impl/v7;Lcom/yandex/mobile/ads/impl/md0;)Lcom/yandex/mobile/ads/impl/wf;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/mobile/ads/impl/b5<",
            "Lcom/yandex/mobile/ads/impl/wf;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/v7;",
            "Lcom/yandex/mobile/ads/impl/md0;",
            ")",
            "Lcom/yandex/mobile/ads/impl/wf;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "finishListener"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adRequestData"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/wf;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/zf;->a:Lcom/yandex/mobile/ads/impl/bv1;

    new-instance v6, Lcom/yandex/mobile/ads/impl/g5;

    invoke-direct {v6}, Lcom/yandex/mobile/ads/impl/g5;-><init>()V

    new-instance v7, Lcom/yandex/mobile/ads/impl/sg0;

    invoke-direct {v7}, Lcom/yandex/mobile/ads/impl/sg0;-><init>()V

    new-instance v8, Lcom/yandex/mobile/ads/impl/vf;

    invoke-direct {v8, p1}, Lcom/yandex/mobile/ads/impl/vf;-><init>(Landroid/content/Context;)V

    new-instance v9, Lcom/yandex/mobile/ads/impl/o3;

    sget-object p0, Lcom/yandex/mobile/ads/impl/ts;->i:Lcom/yandex/mobile/ads/impl/ts;

    invoke-direct {v9, p0, v3}, Lcom/yandex/mobile/ads/impl/o3;-><init>(Lcom/yandex/mobile/ads/impl/ts;Lcom/yandex/mobile/ads/impl/bv1;)V

    new-instance v10, Lcom/yandex/mobile/ads/impl/om1;

    invoke-direct {v10, p1, v9, v6, p4}, Lcom/yandex/mobile/ads/impl/om1;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/md0;)V

    move-object v1, v0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v10}, Lcom/yandex/mobile/ads/impl/wf;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/b5;Lcom/yandex/mobile/ads/impl/v7;Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/sg0;Lcom/yandex/mobile/ads/impl/vf;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/om1;)V

    return-object v0
.end method
