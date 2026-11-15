.class public final Lcom/yandex/mobile/ads/impl/wr1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/sj;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/sj;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/sj;-><init>()V

    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/wr1;-><init>(Lcom/yandex/mobile/ads/impl/sj;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/sj;)V
    .locals 1

    .line 2
    const-string v0, "base64Decoder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/wr1;->a:Lcom/yandex/mobile/ads/impl/sj;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/wq1;)Lcom/yandex/mobile/ads/impl/ur1;
    .locals 5

    const-string v0, "networkResponse"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/wq1;->b()Ljava/util/Map;

    move-result-object p1

    sget-object v0, Lcom/yandex/mobile/ads/impl/vh0;->C:Lcom/yandex/mobile/ads/impl/vh0;

    sget v1, Lcom/yandex/mobile/ads/impl/nf0;->b:I

    const-string v1, "responseHeaders"

    invoke-static {p1, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "httpHeader"

    invoke-static {v0, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/yandex/mobile/ads/impl/nf0;->a(Ljava/util/Map;Lcom/yandex/mobile/ads/impl/vh0;)Ljava/lang/String;

    move-result-object v0

    sget v3, Lcom/yandex/mobile/ads/impl/oa;->b:I

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    move-object v0, v3

    :goto_0
    sget-object v4, Lcom/yandex/mobile/ads/impl/vh0;->E:Lcom/yandex/mobile/ads/impl/vh0;

    invoke-static {p1, v4}, Lcom/yandex/mobile/ads/impl/nf0;->a(Ljava/util/Map;Lcom/yandex/mobile/ads/impl/vh0;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/wr1;->a:Lcom/yandex/mobile/ads/impl/sj;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lcom/yandex/mobile/ads/impl/sj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    move-object p0, v3

    :goto_1
    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    new-instance v4, Lcom/yandex/mobile/ads/impl/hp;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v4, v0, p0}, Lcom/yandex/mobile/ads/impl/hp;-><init>(ILjava/lang/String;)V

    goto :goto_2

    :cond_2
    move-object v4, v3

    :goto_2
    sget-object p0, Lcom/yandex/mobile/ads/impl/vh0;->F:Lcom/yandex/mobile/ads/impl/vh0;

    invoke-static {p1, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "header"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0}, Lcom/yandex/mobile/ads/impl/nf0;->c(Ljava/util/Map;Lcom/yandex/mobile/ads/impl/vh0;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0}, Li81;->q0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    new-instance v3, Lcom/yandex/mobile/ads/impl/rx1;

    invoke-direct {v3, p0}, Lcom/yandex/mobile/ads/impl/rx1;-><init>(Ljava/lang/String;)V

    :cond_3
    sget-object p0, Lcom/yandex/mobile/ads/impl/vh0;->K:Lcom/yandex/mobile/ads/impl/vh0;

    invoke-static {p1, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0}, Lcom/yandex/mobile/ads/impl/nf0;->a(Ljava/util/Map;Lcom/yandex/mobile/ads/impl/vh0;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_3

    :cond_4
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    :goto_3
    new-instance p1, Lcom/yandex/mobile/ads/impl/ur1$a;

    invoke-direct {p1}, Lcom/yandex/mobile/ads/impl/ur1$a;-><init>()V

    invoke-virtual {p1, v4}, Lcom/yandex/mobile/ads/impl/ur1$a;->a(Lcom/yandex/mobile/ads/impl/hp;)Lcom/yandex/mobile/ads/impl/ur1$a;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/yandex/mobile/ads/impl/ur1$a;->a(Lcom/yandex/mobile/ads/impl/rx1;)Lcom/yandex/mobile/ads/impl/ur1$a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/yandex/mobile/ads/impl/ur1$a;->a(Z)Lcom/yandex/mobile/ads/impl/ur1$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ur1$a;->a()Lcom/yandex/mobile/ads/impl/ur1;

    move-result-object p0

    return-object p0
.end method
