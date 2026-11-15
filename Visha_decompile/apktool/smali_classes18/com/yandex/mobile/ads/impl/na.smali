.class public final Lcom/yandex/mobile/ads/impl/na;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/p82;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/k50;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/yandex/mobile/ads/impl/k50;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/k50;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/na;->a:Lcom/yandex/mobile/ads/impl/k50;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/p82$a;
    .locals 0

    .line 11
    sget-object p0, Lcom/yandex/mobile/ads/impl/p82$a;->b:Lcom/yandex/mobile/ads/impl/p82$a;

    return-object p0
.end method

.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/kx1;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfiguration"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sensitiveModeChecker"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1, p2, p3}, Lcom/yandex/mobile/ads/impl/fb0$b;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/kx1;)Lcom/yandex/mobile/ads/impl/fb0$a;

    move-result-object p2

    .line 3
    new-instance p3, Lcom/yandex/mobile/ads/impl/fb0;

    const/4 v0, 0x0

    invoke-direct {p3, p2, v0}, Lcom/yandex/mobile/ads/impl/fb0;-><init>(Lcom/yandex/mobile/ads/impl/fb0$a;I)V

    invoke-virtual {p3}, Lcom/yandex/mobile/ads/impl/fb0;->toString()Ljava/lang/String;

    move-result-object p2

    .line 4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/na;->a:Lcom/yandex/mobile/ads/impl/k50;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/k50;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/o3;)Ljava/lang/String;
    .locals 0

    .line 5
    const-string p0, "adConfiguration"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/o3;->k()Lcom/yandex/mobile/ads/impl/o50;

    move-result-object p0

    .line 8
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/o50;->a()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    .line 10
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    const-string p1, "v4/ad"

    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
