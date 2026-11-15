.class public final Lcom/yandex/mobile/ads/impl/lf1;
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

.field private final b:Lcom/yandex/mobile/ads/impl/j1;

.field private final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/v1;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adResponse"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adActivityListener"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/lf1;->a:Lcom/yandex/mobile/ads/impl/o8;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/lf1;->b:Lcom/yandex/mobile/ads/impl/j1;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/lf1;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/lf1;->a:Lcom/yandex/mobile/ads/impl/o8;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/o8;->S()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/lf1;->a:Lcom/yandex/mobile/ads/impl/o8;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/o8;->M()Lcom/yandex/mobile/ads/impl/gz1;

    move-result-object v0

    new-instance v1, Lcom/yandex/mobile/ads/impl/mb0;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/lf1;->c:Landroid/content/Context;

    const-string v3, "context"

    invoke-static {v2, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/lf1;->b:Lcom/yandex/mobile/ads/impl/j1;

    invoke-direct {v1, v2, v0, p0}, Lcom/yandex/mobile/ads/impl/mb0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/gz1;Lcom/yandex/mobile/ads/impl/j1;)V

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/mb0;->a()V

    :cond_0
    return-void
.end method
