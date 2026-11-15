.class public final Lcom/yandex/mobile/ads/impl/d71;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/jr1;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/o3;

.field private final b:Lcom/yandex/mobile/ads/impl/i81;

.field private final c:Lcom/yandex/mobile/ads/impl/vz0;

.field private d:Lcom/yandex/mobile/ads/impl/o8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/o8<",
            "Lcom/yandex/mobile/ads/impl/y61;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/o3;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/v71;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/v71;-><init>()V

    .line 2
    new-instance v1, Lcom/yandex/mobile/ads/impl/vz0;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/vz0;-><init>()V

    .line 3
    invoke-direct {p0, p1, v0, v1}, Lcom/yandex/mobile/ads/impl/d71;-><init>(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/i81;Lcom/yandex/mobile/ads/impl/vz0;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/i81;Lcom/yandex/mobile/ads/impl/vz0;)V
    .locals 1

    .line 4
    const-string v0, "adConfiguration"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commonReportDataProvider"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediationNetworkReportDataProvider"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/d71;->a:Lcom/yandex/mobile/ads/impl/o3;

    .line 7
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/d71;->b:Lcom/yandex/mobile/ads/impl/i81;

    .line 8
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/d71;->c:Lcom/yandex/mobile/ads/impl/vz0;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/pp1;
    .locals 5

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/pp1;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/pp1;-><init>(Ljava/util/Map;I)V

    .line 2
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/d71;->d:Lcom/yandex/mobile/ads/impl/o8;

    if-eqz v1, :cond_1

    .line 3
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/d71;->b:Lcom/yandex/mobile/ads/impl/i81;

    .line 4
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/o8;->I()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yandex/mobile/ads/impl/y61;

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/d71;->a:Lcom/yandex/mobile/ads/impl/o3;

    invoke-interface {v2, v1, v4, v3}, Lcom/yandex/mobile/ads/impl/i81;->a(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/y61;)Lcom/yandex/mobile/ads/impl/pp1;

    move-result-object v1

    .line 5
    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/impl/qp1;->a(Lcom/yandex/mobile/ads/impl/pp1;Lcom/yandex/mobile/ads/impl/pp1;)Lcom/yandex/mobile/ads/impl/pp1;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/d71;->a:Lcom/yandex/mobile/ads/impl/o3;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/o3;->i()Lcom/yandex/mobile/ads/impl/lz0;

    move-result-object v1

    .line 7
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/d71;->c:Lcom/yandex/mobile/ads/impl/vz0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "adapter"

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    .line 8
    const-string v3, "mediationNetwork"

    invoke-static {v1, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v3, Lcom/yandex/mobile/ads/impl/pp1;

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {v3, v4, v2}, Lcom/yandex/mobile/ads/impl/pp1;-><init>(Ljava/util/Map;I)V

    .line 10
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/lz0;->e()Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-virtual {v3, v2, p0}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/lz0;->i()Ljava/util/Map;

    move-result-object p0

    const-string v1, "adapter_parameters"

    invoke-virtual {v3, p0, v1}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_0
    new-instance v3, Lcom/yandex/mobile/ads/impl/pp1;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {v3, v1, v2}, Lcom/yandex/mobile/ads/impl/pp1;-><init>(Ljava/util/Map;I)V

    .line 14
    sget-object v1, Lcom/yandex/mobile/ads/impl/op1$a;->a:Ljava/lang/String;

    invoke-virtual {v3, v1, p0}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    :goto_0
    invoke-static {v0, v3}, Lcom/yandex/mobile/ads/impl/qp1;->a(Lcom/yandex/mobile/ads/impl/pp1;Lcom/yandex/mobile/ads/impl/pp1;)Lcom/yandex/mobile/ads/impl/pp1;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/o8;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "Lcom/yandex/mobile/ads/impl/y61;",
            ">;)V"
        }
    .end annotation

    .line 16
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/d71;->d:Lcom/yandex/mobile/ads/impl/o8;

    return-void
.end method
