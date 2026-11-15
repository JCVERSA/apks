.class public final Lcom/yandex/mobile/ads/impl/h00;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/yandex/mobile/ads/impl/o3;

.field private final c:Lcom/yandex/mobile/ads/impl/o8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/o3;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfiguration"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adResponse"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/h00;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/h00;->b:Lcom/yandex/mobile/ads/impl/o3;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/h00;->c:Lcom/yandex/mobile/ads/impl/o8;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/i70;
    .locals 3

    new-instance v0, Lcom/yandex/mobile/ads/impl/q60;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/h00;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/h00;->b:Lcom/yandex/mobile/ads/impl/o3;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/h00;->c:Lcom/yandex/mobile/ads/impl/o8;

    invoke-direct {v0, v1, p0, v2}, Lcom/yandex/mobile/ads/impl/q60;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/o3;)V

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/q60;->a()Lcom/yandex/mobile/ads/impl/i70;

    move-result-object p0

    return-object p0
.end method
