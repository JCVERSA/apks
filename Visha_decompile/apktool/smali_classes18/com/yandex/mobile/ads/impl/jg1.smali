.class public final Lcom/yandex/mobile/ads/impl/jg1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/p82;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/kg1;

.field private final b:Lcom/yandex/mobile/ads/impl/k50;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/kg1;)V
    .locals 1

    const-string v0, "passbackUrlParametersProvider"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/jg1;->a:Lcom/yandex/mobile/ads/impl/kg1;

    new-instance p1, Lcom/yandex/mobile/ads/impl/k50;

    invoke-direct {p1}, Lcom/yandex/mobile/ads/impl/k50;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/jg1;->b:Lcom/yandex/mobile/ads/impl/k50;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/p82$a;
    .locals 0

    .line 13
    sget-object p0, Lcom/yandex/mobile/ads/impl/p82$a;->c:Lcom/yandex/mobile/ads/impl/p82$a;

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
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/jg1;->a:Lcom/yandex/mobile/ads/impl/kg1;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/kg1;->a()Ljava/util/Map;

    move-result-object v0

    .line 3
    invoke-static {p1, p2, p3}, Lcom/yandex/mobile/ads/impl/fb0$b;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/kx1;)Lcom/yandex/mobile/ads/impl/fb0$a;

    move-result-object p2

    .line 4
    invoke-virtual {p2, v0}, Lcom/yandex/mobile/ads/impl/fb0$a;->b(Ljava/util/Map;)Lcom/yandex/mobile/ads/impl/fb0$a;

    move-result-object p2

    .line 5
    new-instance p3, Lcom/yandex/mobile/ads/impl/fb0;

    const/4 v0, 0x0

    invoke-direct {p3, p2, v0}, Lcom/yandex/mobile/ads/impl/fb0;-><init>(Lcom/yandex/mobile/ads/impl/fb0$a;I)V

    invoke-virtual {p3}, Lcom/yandex/mobile/ads/impl/fb0;->toString()Ljava/lang/String;

    move-result-object p2

    .line 6
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/jg1;->b:Lcom/yandex/mobile/ads/impl/k50;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/k50;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/o3;)Ljava/lang/String;
    .locals 0

    .line 7
    const-string p0, "adConfiguration"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/o3;->k()Lcom/yandex/mobile/ads/impl/o50;

    move-result-object p0

    .line 10
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/o50;->a()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    .line 12
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
