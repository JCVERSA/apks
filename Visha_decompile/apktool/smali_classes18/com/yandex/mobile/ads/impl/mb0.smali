.class public final Lcom/yandex/mobile/ads/impl/mb0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/gz1;

.field private final b:Lcom/yandex/mobile/ads/impl/j1;

.field private final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/gz1;Lcom/yandex/mobile/ads/impl/j1;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sizeInfo"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adActivityListener"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/mb0;->a:Lcom/yandex/mobile/ads/impl/gz1;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/mb0;->b:Lcom/yandex/mobile/ads/impl/j1;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/mb0;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/mb0;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/mb0;->c:Landroid/content/Context;

    const-string v2, "context"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/mb0;->a:Lcom/yandex/mobile/ads/impl/gz1;

    invoke-static {v1, v2}, Lcom/yandex/mobile/ads/impl/qa;->b(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/gz1;)Z

    move-result v3

    invoke-static {v1, v2}, Lcom/yandex/mobile/ads/impl/qa;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/gz1;)Z

    move-result v1

    const/4 v2, -0x1

    if-ne v3, v1, :cond_0

    move v0, v2

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v3, v0, :cond_2

    goto :goto_0

    :cond_1
    if-ne v3, v0, :cond_3

    :cond_2
    const/4 v0, 0x7

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x6

    :goto_1
    if-eq v2, v0, :cond_4

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/mb0;->b:Lcom/yandex/mobile/ads/impl/j1;

    invoke-interface {p0, v0}, Lcom/yandex/mobile/ads/impl/j1;->a(I)V

    :cond_4
    return-void
.end method
