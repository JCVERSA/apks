.class public final Lcom/yandex/mobile/ads/impl/wo0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/qd2;

.field private final b:Lcom/yandex/mobile/ads/impl/gt;

.field private final c:Lcom/yandex/mobile/ads/impl/zb2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/zb2<",
            "Lcom/yandex/mobile/ads/impl/go0;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/yandex/mobile/ads/impl/ao0;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/qd2;Lcom/yandex/mobile/ads/impl/gt;Lcom/yandex/mobile/ads/impl/zb2;)V
    .locals 1

    .line 1
    sget v0, Lcom/yandex/mobile/ads/impl/ao0;->g:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/ao0$a;->a()Lcom/yandex/mobile/ads/impl/ao0;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/yandex/mobile/ads/impl/wo0;-><init>(Lcom/yandex/mobile/ads/impl/qd2;Lcom/yandex/mobile/ads/impl/gt;Lcom/yandex/mobile/ads/impl/zb2;Lcom/yandex/mobile/ads/impl/ao0;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/qd2;Lcom/yandex/mobile/ads/impl/gt;Lcom/yandex/mobile/ads/impl/zb2;Lcom/yandex/mobile/ads/impl/ao0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/qd2;",
            "Lcom/yandex/mobile/ads/impl/gt;",
            "Lcom/yandex/mobile/ads/impl/zb2<",
            "Lcom/yandex/mobile/ads/impl/go0;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/ao0;",
            ")V"
        }
    .end annotation

    .line 3
    const-string v0, "statusController"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adBreak"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoAdInfo"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "instreamSettings"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/wo0;->a:Lcom/yandex/mobile/ads/impl/qd2;

    .line 6
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/wo0;->b:Lcom/yandex/mobile/ads/impl/gt;

    .line 7
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/wo0;->c:Lcom/yandex/mobile/ads/impl/zb2;

    .line 8
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/wo0;->d:Lcom/yandex/mobile/ads/impl/ao0;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 5

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/wo0;->c:Lcom/yandex/mobile/ads/impl/zb2;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/zb2;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/go0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/go0;->b()Lcom/yandex/mobile/ads/impl/zc2;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/wo0;->d:Lcom/yandex/mobile/ads/impl/ao0;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/ao0;->d()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/zc2;->a()I

    move-result v1

    if-le v1, v2, :cond_0

    sget-object v0, Lcom/yandex/mobile/ads/impl/pd2;->e:Lcom/yandex/mobile/ads/impl/pd2;

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/wo0;->b:Lcom/yandex/mobile/ads/impl/gt;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/gt;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x468f8cde

    if-eq v3, v4, :cond_3

    const v4, 0x317dbb73

    if-eq v3, v4, :cond_2

    const v4, 0x3eeac2c5

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "midroll"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_2
    const-string v3, "pauseroll"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_3
    const-string v3, "inroll"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    :goto_0
    sget-object v0, Lcom/yandex/mobile/ads/impl/pd2;->c:Lcom/yandex/mobile/ads/impl/pd2;

    goto :goto_2

    :cond_5
    :goto_1
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/zc2;->a()I

    move-result v0

    if-ne v0, v2, :cond_6

    sget-object v0, Lcom/yandex/mobile/ads/impl/pd2;->e:Lcom/yandex/mobile/ads/impl/pd2;

    goto :goto_2

    :cond_6
    sget-object v0, Lcom/yandex/mobile/ads/impl/pd2;->c:Lcom/yandex/mobile/ads/impl/pd2;

    :goto_2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/wo0;->a:Lcom/yandex/mobile/ads/impl/qd2;

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/qd2;->a(Lcom/yandex/mobile/ads/impl/pd2;)Z

    move-result p0

    return p0
.end method
