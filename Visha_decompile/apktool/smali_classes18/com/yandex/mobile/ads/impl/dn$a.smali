.class public final Lcom/yandex/mobile/ads/impl/dn$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/dn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/dn$a;-><init>()V

    return-void
.end method

.method public static final a(Lcom/yandex/mobile/ads/impl/qf0;Lcom/yandex/mobile/ads/impl/qf0;)Lcom/yandex/mobile/ads/impl/qf0;
    .locals 13

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/qf0$a;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/qf0$a;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/qf0;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const-string v4, "Content-Type"

    const-string v5, "Content-Encoding"

    const-string v6, "Content-Length"

    const/4 v7, 0x1

    if-ge v3, v1, :cond_4

    .line 3
    invoke-virtual {p0, v3}, Lcom/yandex/mobile/ads/impl/qf0;->a(I)Ljava/lang/String;

    move-result-object v8

    .line 4
    invoke-virtual {p0, v3}, Lcom/yandex/mobile/ads/impl/qf0;->b(I)Ljava/lang/String;

    move-result-object v9

    .line 5
    const-string v10, "Warning"

    invoke-static {v10, v8, v7}, Lg1a;->E(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x2

    const/4 v11, 0x0

    const-string v12, "1"

    invoke-static {v9, v12, v2, v10, v11}, Lg1a;->R(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    goto :goto_2

    .line 6
    :cond_0
    invoke-static {v6, v8, v7}, Lg1a;->E(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_2

    .line 7
    invoke-static {v5, v8, v7}, Lg1a;->E(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_2

    .line 8
    invoke-static {v4, v8, v7}, Lg1a;->E(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    invoke-static {v8}, Lcom/yandex/mobile/ads/impl/dn$a;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 10
    invoke-virtual {p1, v8}, Lcom/yandex/mobile/ads/impl/qf0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    .line 11
    :cond_2
    :goto_1
    invoke-virtual {v0, v8, v9}, Lcom/yandex/mobile/ads/impl/qf0$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 12
    :cond_4
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/qf0;->size()I

    move-result p0

    :goto_3
    if-ge v2, p0, :cond_7

    .line 13
    invoke-virtual {p1, v2}, Lcom/yandex/mobile/ads/impl/qf0;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-static {v6, v1, v7}, Lg1a;->E(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_6

    .line 15
    invoke-static {v5, v1, v7}, Lg1a;->E(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_6

    .line 16
    invoke-static {v4, v1, v7}, Lg1a;->E(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_4

    .line 17
    :cond_5
    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/dn$a;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 18
    invoke-virtual {p1, v2}, Lcom/yandex/mobile/ads/impl/qf0;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/yandex/mobile/ads/impl/qf0$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 19
    :cond_7
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/qf0$a;->a()Lcom/yandex/mobile/ads/impl/qf0;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Lcom/yandex/mobile/ads/impl/vq1;)Lcom/yandex/mobile/ads/impl/vq1;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 20
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/vq1;->a()Lcom/yandex/mobile/ads/impl/zq1;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    new-instance v1, Lcom/yandex/mobile/ads/impl/vq1$a;

    invoke-direct {v1, p0}, Lcom/yandex/mobile/ads/impl/vq1$a;-><init>(Lcom/yandex/mobile/ads/impl/vq1;)V

    .line 23
    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/impl/vq1$a;->a(Lcom/yandex/mobile/ads/impl/zq1;)Lcom/yandex/mobile/ads/impl/vq1$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/vq1$a;->a()Lcom/yandex/mobile/ads/impl/vq1;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 2

    .line 24
    const-string v0, "Connection"

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lg1a;->E(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    const-string v0, "Keep-Alive"

    invoke-static {v0, p0, v1}, Lg1a;->E(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    const-string v0, "Proxy-Authenticate"

    invoke-static {v0, p0, v1}, Lg1a;->E(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 27
    const-string v0, "Proxy-Authorization"

    invoke-static {v0, p0, v1}, Lg1a;->E(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    const-string v0, "TE"

    invoke-static {v0, p0, v1}, Lg1a;->E(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    const-string v0, "Trailers"

    invoke-static {v0, p0, v1}, Lg1a;->E(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    const-string v0, "Transfer-Encoding"

    invoke-static {v0, p0, v1}, Lg1a;->E(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    const-string v0, "Upgrade"

    invoke-static {v0, p0, v1}, Lg1a;->E(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
