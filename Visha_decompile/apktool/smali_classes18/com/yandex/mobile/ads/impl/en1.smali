.class public final Lcom/yandex/mobile/ads/impl/en1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/jj0;

.field private final b:Lcom/yandex/mobile/ads/impl/fn1;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/sj0;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/jj0;

    .line 2
    new-instance v1, Lcom/yandex/mobile/ads/impl/sn0;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/yandex/mobile/ads/impl/sn0;-><init>(Z)V

    .line 3
    invoke-direct {v0, p1, v1, p2}, Lcom/yandex/mobile/ads/impl/jj0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/jj0$a;Lcom/yandex/mobile/ads/impl/sj0;)V

    .line 4
    new-instance v1, Lcom/yandex/mobile/ads/impl/fn1;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/fn1;-><init>()V

    .line 5
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/yandex/mobile/ads/impl/en1;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/sj0;Lcom/yandex/mobile/ads/impl/jj0;Lcom/yandex/mobile/ads/impl/fn1;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/sj0;Lcom/yandex/mobile/ads/impl/jj0;Lcom/yandex/mobile/ads/impl/fn1;)V
    .locals 1

    .line 6
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "imageProvider"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "imageForPresentProvider"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "qrcodeUrlConfigurator"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/en1;->a:Lcom/yandex/mobile/ads/impl/jj0;

    .line 9
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/en1;->b:Lcom/yandex/mobile/ads/impl/fn1;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/jj0$b;)V
    .locals 6

    const-string v0, "clickUrl"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "listener"

    invoke-static {p3, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/en1;->b:Lcom/yandex/mobile/ads/impl/fn1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "https://www.yandex.ru/ads/qr/gen"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "click_link"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const/16 p1, 0x12c

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "size"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    const-string p1, "<this>"

    invoke-static {v0, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "key"

    const-string v1, "brand_logo_link"

    invoke-static {v1, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-static {p1}, Ly45;->g(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string p1, "toString(...)"

    invoke-static {v3, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/yandex/mobile/ads/impl/xj0;

    const/4 v4, 0x0

    const/16 v5, 0x78

    const/16 v1, 0x12c

    const/16 v2, 0x12c

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/xj0;-><init>(IILjava/lang/String;Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/en1;->a:Lcom/yandex/mobile/ads/impl/jj0;

    invoke-virtual {p0, p1, p3}, Lcom/yandex/mobile/ads/impl/jj0;->a(Lcom/yandex/mobile/ads/impl/xj0;Lcom/yandex/mobile/ads/impl/jj0$b;)V

    return-void
.end method
