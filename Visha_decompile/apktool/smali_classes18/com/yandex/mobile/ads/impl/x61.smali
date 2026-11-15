.class public final Lcom/yandex/mobile/ads/impl/x61;
.super Lcom/yandex/mobile/ads/impl/ek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/mobile/ads/impl/ek<",
        "Lcom/yandex/mobile/ads/impl/y61;",
        ">;"
    }
.end annotation


# instance fields
.field private final c:Lcom/yandex/mobile/ads/impl/b71;


# direct methods
.method public synthetic constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/ba1;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/ba1;-><init>()V

    .line 2
    new-instance v1, Lcom/yandex/mobile/ads/impl/b71;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/b71;-><init>()V

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/yandex/mobile/ads/impl/x61;-><init>(Lcom/yandex/mobile/ads/impl/ba1;Lcom/yandex/mobile/ads/impl/b71;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/ba1;Lcom/yandex/mobile/ads/impl/b71;)V
    .locals 1

    .line 4
    const-string v0, "nativeResponseReportDataProvider"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdResponseDataProvider"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/ek;-><init>(Lcom/yandex/mobile/ads/impl/ek$a;)V

    .line 6
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/x61;->c:Lcom/yandex/mobile/ads/impl/b71;

    return-void
.end method


# virtual methods
.method public final a(ILcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/xq1;)Lcom/yandex/mobile/ads/impl/pp1;
    .locals 3

    .line 7
    const-string v0, "adConfiguration"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-super {p0, p1, p2, p3}, Lcom/yandex/mobile/ads/impl/ek;->a(ILcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/xq1;)Lcom/yandex/mobile/ads/impl/pp1;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 9
    iget-object p3, p3, Lcom/yandex/mobile/ads/impl/xq1;->a:Ljava/lang/Object;

    check-cast p3, Lcom/yandex/mobile/ads/impl/o8;

    goto :goto_0

    :cond_0
    move-object p3, v0

    :goto_0
    const/16 v1, 0xcc

    const-string v2, "status"

    if-ne v1, p1, :cond_1

    .line 10
    sget-object v0, Lcom/yandex/mobile/ads/impl/op1$c;->e:Lcom/yandex/mobile/ads/impl/op1$c;

    goto :goto_2

    :cond_1
    if-eqz p3, :cond_4

    const/16 v1, 0xc8

    if-eq p1, v1, :cond_2

    goto :goto_1

    .line 11
    :cond_2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/x61;->c:Lcom/yandex/mobile/ads/impl/b71;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    const-string p0, "adResponse"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p3}, Lcom/yandex/mobile/ads/impl/o8;->I()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/y61;

    if-eqz p0, :cond_3

    .line 14
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/y61;->f()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/yandex/mobile/ads/impl/op1$c;

    goto :goto_2

    .line 15
    :cond_3
    invoke-virtual {p3}, Lcom/yandex/mobile/ads/impl/o8;->D()Lcom/yandex/mobile/ads/impl/hz0;

    move-result-object p0

    if-nez p0, :cond_5

    .line 16
    sget-object v0, Lcom/yandex/mobile/ads/impl/op1$c;->d:Lcom/yandex/mobile/ads/impl/op1$c;

    goto :goto_2

    .line 17
    :cond_4
    :goto_1
    sget-object v0, Lcom/yandex/mobile/ads/impl/op1$c;->d:Lcom/yandex/mobile/ads/impl/op1$c;

    :cond_5
    :goto_2
    if-eqz v0, :cond_6

    .line 18
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/op1$c;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0, v2}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_6
    return-object p2
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/o3;)Lcom/yandex/mobile/ads/impl/pp1;
    .locals 2

    .line 1
    const-string v0, "adConfiguration"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1}, Lcom/yandex/mobile/ads/impl/ek;->a(Lcom/yandex/mobile/ads/impl/o3;)Lcom/yandex/mobile/ads/impl/pp1;

    move-result-object p0

    .line 3
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/o3;->u()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "image_loading_automatically"

    invoke-virtual {p0, v0, v1}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/o3;->m()Ljava/util/List;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    const-string v0, "image_sizes"

    invoke-virtual {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method
