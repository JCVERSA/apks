.class public final Lcom/yandex/mobile/ads/impl/m30;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbu2;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/m30;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getBold()Landroid/graphics/Typeface;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/m30;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/fc0;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/ec0;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ec0;->a()Landroid/graphics/Typeface;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    sget-object p0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    :cond_1
    return-object p0
.end method

.method public final getLight()Landroid/graphics/Typeface;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/m30;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/fc0;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/ec0;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ec0;->b()Landroid/graphics/Typeface;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getMedium()Landroid/graphics/Typeface;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/m30;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/fc0;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/ec0;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ec0;->c()Landroid/graphics/Typeface;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getRegular()Landroid/graphics/Typeface;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/m30;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/fc0;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/ec0;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ec0;->d()Landroid/graphics/Typeface;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public bridge synthetic getTypefaceFor(I)Landroid/graphics/Typeface;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-super {p0, p1}, Lbu2;->getTypefaceFor(I)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method
