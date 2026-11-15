.class public final Lcom/yandex/mobile/ads/impl/wq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/er1;

.field private final b:Lcom/yandex/mobile/ads/impl/c8;

.field private final c:Lcom/yandex/mobile/ads/impl/jr;


# direct methods
.method public synthetic constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/er1;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/er1;-><init>()V

    .line 2
    new-instance v1, Lcom/yandex/mobile/ads/impl/c8;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/c8;-><init>()V

    .line 3
    new-instance v2, Lcom/yandex/mobile/ads/impl/jr;

    invoke-direct {v2}, Lcom/yandex/mobile/ads/impl/jr;-><init>()V

    .line 4
    invoke-direct {p0, v0, v1, v2}, Lcom/yandex/mobile/ads/impl/wq;-><init>(Lcom/yandex/mobile/ads/impl/er1;Lcom/yandex/mobile/ads/impl/c8;Lcom/yandex/mobile/ads/impl/jr;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/er1;Lcom/yandex/mobile/ads/impl/c8;Lcom/yandex/mobile/ads/impl/jr;)V
    .locals 1

    .line 5
    const-string v0, "responseDataProvider"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adRequestReportDataProvider"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configurationReportDataProvider"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/wq;->a:Lcom/yandex/mobile/ads/impl/er1;

    .line 8
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/wq;->b:Lcom/yandex/mobile/ads/impl/c8;

    .line 9
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/wq;->c:Lcom/yandex/mobile/ads/impl/jr;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/o3;)Lcom/yandex/mobile/ads/impl/pp1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;",
            "Lcom/yandex/mobile/ads/impl/o3;",
            ")",
            "Lcom/yandex/mobile/ads/impl/pp1;"
        }
    .end annotation

    const-string v0, "adConfiguration"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/wq;->a:Lcom/yandex/mobile/ads/impl/er1;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/mobile/ads/impl/er1;->b(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/o3;)Lcom/yandex/mobile/ads/impl/pp1;

    move-result-object p1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/wq;->b:Lcom/yandex/mobile/ads/impl/c8;

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/o3;->a()Lcom/yandex/mobile/ads/impl/v7;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/c8;->a(Lcom/yandex/mobile/ads/impl/v7;)Lcom/yandex/mobile/ads/impl/pp1;

    move-result-object v0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/wq;->c:Lcom/yandex/mobile/ads/impl/jr;

    invoke-virtual {p0, p2}, Lcom/yandex/mobile/ads/impl/jr;->a(Lcom/yandex/mobile/ads/impl/o3;)Lcom/yandex/mobile/ads/impl/pp1;

    move-result-object p0

    invoke-static {p1, v0}, Lcom/yandex/mobile/ads/impl/qp1;->a(Lcom/yandex/mobile/ads/impl/pp1;Lcom/yandex/mobile/ads/impl/pp1;)Lcom/yandex/mobile/ads/impl/pp1;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/yandex/mobile/ads/impl/qp1;->a(Lcom/yandex/mobile/ads/impl/pp1;Lcom/yandex/mobile/ads/impl/pp1;)Lcom/yandex/mobile/ads/impl/pp1;

    move-result-object p0

    return-object p0
.end method
