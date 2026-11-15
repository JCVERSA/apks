.class public final Lcom/yandex/mobile/ads/impl/sg0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/jr1;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/wq;

.field private final b:Lcom/yandex/mobile/ads/impl/vz0;

.field private c:Lcom/yandex/mobile/ads/impl/o8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/o8<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/yandex/mobile/ads/impl/o3;


# direct methods
.method public synthetic constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/wq;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/wq;-><init>()V

    .line 2
    new-instance v1, Lcom/yandex/mobile/ads/impl/vz0;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/vz0;-><init>()V

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/yandex/mobile/ads/impl/sg0;-><init>(Lcom/yandex/mobile/ads/impl/wq;Lcom/yandex/mobile/ads/impl/vz0;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/wq;Lcom/yandex/mobile/ads/impl/vz0;)V
    .locals 1

    .line 4
    const-string v0, "commonReportDataProvider"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediationReportDataProvider"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/sg0;->a:Lcom/yandex/mobile/ads/impl/wq;

    .line 7
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/sg0;->b:Lcom/yandex/mobile/ads/impl/vz0;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/pp1;
    .locals 6

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/pp1;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/pp1;-><init>(Ljava/util/Map;I)V

    .line 2
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/sg0;->c:Lcom/yandex/mobile/ads/impl/o8;

    .line 3
    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/sg0;->d:Lcom/yandex/mobile/ads/impl/o3;

    if-eqz v1, :cond_1

    if-eqz v3, :cond_1

    .line 4
    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/sg0;->a:Lcom/yandex/mobile/ads/impl/wq;

    invoke-virtual {v4, v1, v3}, Lcom/yandex/mobile/ads/impl/wq;->a(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/o3;)Lcom/yandex/mobile/ads/impl/pp1;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/yandex/mobile/ads/impl/qp1;->a(Lcom/yandex/mobile/ads/impl/pp1;Lcom/yandex/mobile/ads/impl/pp1;)Lcom/yandex/mobile/ads/impl/pp1;

    move-result-object v0

    .line 5
    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/o3;->i()Lcom/yandex/mobile/ads/impl/lz0;

    move-result-object v3

    .line 6
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/sg0;->b:Lcom/yandex/mobile/ads/impl/vz0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "adapter"

    if-eqz v3, :cond_0

    .line 7
    const-string v4, "mediationNetwork"

    invoke-static {v3, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v4, Lcom/yandex/mobile/ads/impl/pp1;

    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {v4, v5, v2}, Lcom/yandex/mobile/ads/impl/pp1;-><init>(Ljava/util/Map;I)V

    .line 9
    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/lz0;->e()Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-virtual {v4, v2, p0}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/lz0;->i()Ljava/util/Map;

    move-result-object p0

    const-string v2, "adapter_parameters"

    invoke-virtual {v4, p0, v2}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_0
    new-instance v4, Lcom/yandex/mobile/ads/impl/pp1;

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {v4, v3, v2}, Lcom/yandex/mobile/ads/impl/pp1;-><init>(Ljava/util/Map;I)V

    .line 13
    sget-object v2, Lcom/yandex/mobile/ads/impl/op1$a;->a:Ljava/lang/String;

    invoke-virtual {v4, v2, p0}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    :goto_0
    invoke-static {v0, v4}, Lcom/yandex/mobile/ads/impl/qp1;->a(Lcom/yandex/mobile/ads/impl/pp1;Lcom/yandex/mobile/ads/impl/pp1;)Lcom/yandex/mobile/ads/impl/pp1;

    move-result-object v0

    .line 15
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/o8;->M()Lcom/yandex/mobile/ads/impl/gz1;

    move-result-object p0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/gz1;->a()Lcom/yandex/mobile/ads/impl/gz1$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/gz1$a;->a()Ljava/lang/String;

    move-result-object p0

    const-string v2, "size_type"

    invoke-virtual {v0, p0, v2}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/o8;->M()Lcom/yandex/mobile/ads/impl/gz1;

    move-result-object p0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/gz1;->getWidth()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v2, "width"

    invoke-virtual {v0, p0, v2}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/o8;->M()Lcom/yandex/mobile/ads/impl/gz1;

    move-result-object p0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/gz1;->getHeight()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "height"

    invoke-virtual {v0, p0, v1}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/o3;)V
    .locals 1

    .line 18
    const-string v0, "adConfiguration"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/sg0;->d:Lcom/yandex/mobile/ads/impl/o3;

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/o8;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 20
    const-string v0, "adResponse"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/sg0;->c:Lcom/yandex/mobile/ads/impl/o8;

    return-void
.end method
