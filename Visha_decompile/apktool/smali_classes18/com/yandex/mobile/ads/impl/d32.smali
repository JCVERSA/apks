.class public final Lcom/yandex/mobile/ads/impl/d32;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/uj;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/uj;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/uj;-><init>()V

    .line 2
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/d32;-><init>(Lcom/yandex/mobile/ads/impl/uj;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/uj;)V
    .locals 1

    .line 3
    const-string v0, "base64Encoder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/d32;->a:Lcom/yandex/mobile/ads/impl/uj;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/yandex/mobile/ads/impl/pw1;->l:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/pw1$a;->a()Lcom/yandex/mobile/ads/impl/pw1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/pw1;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/ju1;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ju1;->u()Lcom/yandex/mobile/ads/impl/l50;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    invoke-static {}, Lcom/yandex/mobile/ads/impl/l50;->a()Lcom/yandex/mobile/ads/impl/l50;

    move-result-object p1

    :cond_1
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/l50;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/l50;->c()I

    move-result p1

    new-instance v1, Lcom/yandex/mobile/ads/impl/x01;

    invoke-direct {v1, p1, v0}, Lcom/yandex/mobile/ads/impl/x01;-><init>(ILjava/lang/String;)V

    sget-object p1, Lqv0;->b:Ljava/nio/charset/Charset;

    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string p2, "getBytes(...)"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/yandex/mobile/ads/impl/x01;->a([B)[B

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/d32;->a:Lcom/yandex/mobile/ads/impl/uj;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/uj;->a([B)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
