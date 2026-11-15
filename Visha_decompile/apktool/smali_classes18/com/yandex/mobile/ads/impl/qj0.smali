.class public final Lcom/yandex/mobile/ads/impl/qj0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/bl1;

.field private final b:Lcom/yandex/mobile/ads/impl/cl1;

.field private final c:Lcom/yandex/mobile/ads/impl/yl;


# direct methods
.method public synthetic constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/bl1;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/bl1;-><init>()V

    .line 2
    new-instance v1, Lcom/yandex/mobile/ads/impl/cl1;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/cl1;-><init>()V

    .line 3
    new-instance v2, Lcom/yandex/mobile/ads/impl/yl;

    invoke-direct {v2}, Lcom/yandex/mobile/ads/impl/yl;-><init>()V

    .line 4
    invoke-direct {p0, v0, v1, v2}, Lcom/yandex/mobile/ads/impl/qj0;-><init>(Lcom/yandex/mobile/ads/impl/bl1;Lcom/yandex/mobile/ads/impl/cl1;Lcom/yandex/mobile/ads/impl/yl;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/bl1;Lcom/yandex/mobile/ads/impl/cl1;Lcom/yandex/mobile/ads/impl/yl;)V
    .locals 1

    .line 5
    const-string v0, "previewBitmapCreator"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "previewBitmapScaler"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blurredBitmapProvider"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/qj0;->a:Lcom/yandex/mobile/ads/impl/bl1;

    .line 8
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/qj0;->b:Lcom/yandex/mobile/ads/impl/cl1;

    .line 9
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/qj0;->c:Lcom/yandex/mobile/ads/impl/yl;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/xj0;)Landroid/graphics/Bitmap;
    .locals 3

    const-string v0, "imageValue"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/xj0;->c()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/qj0;->a:Lcom/yandex/mobile/ads/impl/bl1;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/bl1;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_0
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/qj0;->b:Lcom/yandex/mobile/ads/impl/cl1;

    invoke-virtual {v2, v0, p1}, Lcom/yandex/mobile/ads/impl/cl1;->a(Landroid/graphics/Bitmap;Lcom/yandex/mobile/ads/impl/xj0;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p1}, Lkotlin/c;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object p1, v1

    :cond_1
    check-cast p1, Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_2
    move-object p1, v1

    :goto_1
    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qj0;->c:Lcom/yandex/mobile/ads/impl/yl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {p1, v0, v1}, Lcom/yandex/mobile/ads/impl/yl;->a(Landroid/graphics/Bitmap;D)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_3
    return-object v1
.end method
