.class public final Lcom/yandex/mobile/ads/impl/va1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/h00;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/o8;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/h00;

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getApplicationContext(...)"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {v0, v1, p3, p2}, Lcom/yandex/mobile/ads/impl/h00;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/o3;)V

    .line 4
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/yandex/mobile/ads/impl/va1;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/h00;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/h00;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/mobile/ads/impl/o3;",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;",
            "Lcom/yandex/mobile/ads/impl/h00;",
            ")V"
        }
    .end annotation

    .line 5
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adConfiguration"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adResponse"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "exoPlayerCreator"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/va1;->a:Lcom/yandex/mobile/ads/impl/h00;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/zb2;)Lcom/yandex/mobile/ads/impl/sa1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/zb2<",
            "Lcom/yandex/mobile/ads/impl/kb1;",
            ">;)",
            "Lcom/yandex/mobile/ads/impl/sa1;"
        }
    .end annotation

    const-string v0, "videoAdInfo"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/yandex/mobile/ads/impl/f70;->d:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/f70$a;->a()Lcom/yandex/mobile/ads/impl/f70;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/f70;->a(Lcom/yandex/mobile/ads/impl/zb2;)Lcom/yandex/mobile/ads/impl/sa1;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/sa1;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/va1;->a:Lcom/yandex/mobile/ads/impl/h00;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/h00;->a()Lcom/yandex/mobile/ads/impl/i70;

    move-result-object v0

    invoke-static {}, Lcom/yandex/mobile/ads/impl/f70$a;->a()Lcom/yandex/mobile/ads/impl/f70;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/f70;->a(Lcom/yandex/mobile/ads/impl/zb2;Lcom/yandex/mobile/ads/impl/i70;)V

    :cond_1
    return-object v0
.end method
