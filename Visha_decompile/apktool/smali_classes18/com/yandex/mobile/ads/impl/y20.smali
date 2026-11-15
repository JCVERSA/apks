.class public final Lcom/yandex/mobile/ads/impl/y20;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/i20;


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    new-instance p1, Lcom/yandex/mobile/ads/impl/i20;

    invoke-direct {p1}, Lcom/yandex/mobile/ads/impl/i20;-><init>()V

    .line 2
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/y20;-><init>(Lcom/yandex/mobile/ads/impl/i20;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/i20;)V
    .locals 1

    .line 3
    const-string v0, "divExtensionProvider"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/y20;->a:Lcom/yandex/mobile/ads/impl/i20;

    return-void
.end method


# virtual methods
.method public final a(Log2;)Lcom/yandex/mobile/ads/impl/x20;
    .locals 1

    const-string v0, "divBase"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/y20;->a:Lcom/yandex/mobile/ads/impl/i20;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "click"

    invoke-static {p1, p0}, Lcom/yandex/mobile/ads/impl/i20;->a(Log2;Ljava/lang/String;)Lcom/yandex/div2/DivExtension;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_2

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    iget-object p0, p0, Lcom/yandex/div2/DivExtension;->b:Lorg/json/JSONObject;

    if-eqz p0, :cond_0

    const-string v0, "url"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    move-object p0, p1

    :goto_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p0}, Lkotlin/c;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    invoke-static {p0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object p0, p1

    :cond_1
    check-cast p0, Landroid/net/Uri;

    if-eqz p0, :cond_2

    new-instance p1, Lcom/yandex/mobile/ads/impl/x20;

    invoke-direct {p1, p0}, Lcom/yandex/mobile/ads/impl/x20;-><init>(Landroid/net/Uri;)V

    :cond_2
    return-object p1
.end method
