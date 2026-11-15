.class public final Lcom/yandex/mobile/ads/impl/yn0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/bv1;

.field private final b:Lcom/yandex/mobile/ads/impl/gt;

.field private final c:Lcom/yandex/mobile/ads/impl/zb2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/zb2<",
            "Lcom/yandex/mobile/ads/impl/go0;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/gt;Lcom/yandex/mobile/ads/impl/zb2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/mobile/ads/impl/bv1;",
            "Lcom/yandex/mobile/ads/impl/gt;",
            "Lcom/yandex/mobile/ads/impl/zb2<",
            "Lcom/yandex/mobile/ads/impl/go0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkEnvironmentModule"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreInstreamAdBreak"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoAdInfo"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/yn0;->a:Lcom/yandex/mobile/ads/impl/bv1;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/yn0;->b:Lcom/yandex/mobile/ads/impl/gt;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/yn0;->c:Lcom/yandex/mobile/ads/impl/zb2;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/yn0;->d:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/ff1;
    .locals 7

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/yn0;->b:Lcom/yandex/mobile/ads/impl/gt;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/gt;->c()Lcom/yandex/mobile/ads/impl/a00;

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/yn0;->c:Lcom/yandex/mobile/ads/impl/zb2;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/zb2;->b()Lcom/yandex/mobile/ads/impl/uu;

    move-result-object v0

    new-instance v1, Lcom/yandex/mobile/ads/impl/vn0;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/yn0;->d:Landroid/content/Context;

    const-string v3, "context"

    invoke-static {v2, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/yn0;->a:Lcom/yandex/mobile/ads/impl/bv1;

    new-instance v5, Lcom/yandex/mobile/ads/impl/o3;

    sget-object v6, Lcom/yandex/mobile/ads/impl/ts;->h:Lcom/yandex/mobile/ads/impl/ts;

    invoke-direct {v5, v6, v4}, Lcom/yandex/mobile/ads/impl/o3;-><init>(Lcom/yandex/mobile/ads/impl/ts;Lcom/yandex/mobile/ads/impl/bv1;)V

    invoke-direct {v1, v2, v4, v0, v5}, Lcom/yandex/mobile/ads/impl/vn0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/uu;Lcom/yandex/mobile/ads/impl/o3;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/on0;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/yn0;->d:Landroid/content/Context;

    invoke-static {p0, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/yandex/mobile/ads/impl/y82;

    new-instance v3, Lcom/yandex/mobile/ads/impl/x82;

    invoke-direct {v3}, Lcom/yandex/mobile/ads/impl/x82;-><init>()V

    invoke-direct {v2, v3}, Lcom/yandex/mobile/ads/impl/y82;-><init>(Lcom/yandex/mobile/ads/impl/x82;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/yandex/mobile/ads/impl/on0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/vn0;Lcom/yandex/mobile/ads/impl/y82;)V

    return-object v0
.end method
