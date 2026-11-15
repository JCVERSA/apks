.class public final Lcom/yandex/mobile/ads/impl/zk2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/lq1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/mobile/ads/impl/lq1<",
        "Lcom/yandex/mobile/ads/impl/mb2;",
        "Ljava/util/List<",
        "+",
        "Lcom/yandex/mobile/ads/impl/mb2;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/nd2;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/nd2;)V
    .locals 1

    const-string v0, "reportParametersProvider"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/zk2;->a:Lcom/yandex/mobile/ads/impl/nd2;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/xq1;ILjava/lang/Object;)Lcom/yandex/mobile/ads/impl/op1;
    .locals 1

    .line 7
    check-cast p3, Lcom/yandex/mobile/ads/impl/mb2;

    .line 8
    const-string v0, "request"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    .line 9
    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/xq1;->a:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    goto :goto_0

    :cond_0
    move-object p1, p3

    :goto_0
    const/16 v0, 0xcc

    if-ne v0, p2, :cond_1

    .line 10
    sget-object p1, Lcom/yandex/mobile/ads/impl/op1$c;->e:Lcom/yandex/mobile/ads/impl/op1$c;

    goto :goto_2

    :cond_1
    if-eqz p1, :cond_4

    const/16 v0, 0xc8

    if-eq p2, v0, :cond_2

    goto :goto_1

    .line 11
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/yandex/mobile/ads/impl/op1$c;->e:Lcom/yandex/mobile/ads/impl/op1$c;

    goto :goto_2

    .line 12
    :cond_3
    sget-object p1, Lcom/yandex/mobile/ads/impl/op1$c;->c:Lcom/yandex/mobile/ads/impl/op1$c;

    goto :goto_2

    .line 13
    :cond_4
    :goto_1
    sget-object p1, Lcom/yandex/mobile/ads/impl/op1$c;->d:Lcom/yandex/mobile/ads/impl/op1$c;

    .line 14
    :goto_2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zk2;->a:Lcom/yandex/mobile/ads/impl/nd2;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/nd2;->a()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/op1$c;->a()Ljava/lang/String;

    move-result-object p1

    const-string p2, "status"

    invoke-static {p2, p1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lky5;->h(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/collections/a;->s(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    .line 15
    new-instance p1, Lcom/yandex/mobile/ads/impl/op1;

    sget-object p2, Lcom/yandex/mobile/ads/impl/op1$b;->p:Lcom/yandex/mobile/ads/impl/op1$b;

    .line 16
    const-string v0, "reportType"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reportData"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/op1$b;->a()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0}, Lkotlin/collections/a;->C(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    invoke-direct {p1, p2, p0, p3}, Lcom/yandex/mobile/ads/impl/op1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/yandex/mobile/ads/impl/f;)V

    return-object p1
.end method

.method public final a(Ljava/lang/Object;)Lcom/yandex/mobile/ads/impl/op1;
    .locals 2

    .line 1
    check-cast p1, Lcom/yandex/mobile/ads/impl/mb2;

    .line 2
    const-string v0, "request"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zk2;->a:Lcom/yandex/mobile/ads/impl/nd2;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/nd2;->a()Ljava/util/Map;

    move-result-object p0

    .line 4
    new-instance p1, Lcom/yandex/mobile/ads/impl/op1;

    sget-object v0, Lcom/yandex/mobile/ads/impl/op1$b;->o:Lcom/yandex/mobile/ads/impl/op1$b;

    .line 5
    const-string v1, "reportType"

    invoke-static {v0, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "reportData"

    invoke-static {p0, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/op1$b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lkotlin/collections/a;->C(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {p1, v0, p0, v1}, Lcom/yandex/mobile/ads/impl/op1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/yandex/mobile/ads/impl/f;)V

    return-object p1
.end method
