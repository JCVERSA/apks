.class public final Lcom/yandex/mobile/ads/impl/w6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/wq;

.field private final b:Lcom/yandex/mobile/ads/impl/i81;


# direct methods
.method public synthetic constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/wq;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/wq;-><init>()V

    .line 2
    new-instance v1, Lcom/yandex/mobile/ads/impl/v71;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/v71;-><init>()V

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/yandex/mobile/ads/impl/w6;-><init>(Lcom/yandex/mobile/ads/impl/wq;Lcom/yandex/mobile/ads/impl/i81;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/wq;Lcom/yandex/mobile/ads/impl/i81;)V
    .locals 1

    .line 4
    const-string v0, "commonReportDataProvider"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeCommonReportDataProvider"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/w6;->a:Lcom/yandex/mobile/ads/impl/wq;

    .line 7
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/w6;->b:Lcom/yandex/mobile/ads/impl/i81;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/o3;)Lcom/yandex/mobile/ads/impl/pp1;
    .locals 3
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

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/o8;->v()Lcom/yandex/mobile/ads/impl/is;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    sget-object v2, Lcom/yandex/mobile/ads/impl/is;->c:Lcom/yandex/mobile/ads/impl/is;

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/o8;->I()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/yandex/mobile/ads/impl/y61;

    if-eqz v2, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/yandex/mobile/ads/impl/y61;

    :cond_1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/w6;->b:Lcom/yandex/mobile/ads/impl/i81;

    invoke-interface {p0, p1, p2, v0}, Lcom/yandex/mobile/ads/impl/i81;->a(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/y61;)Lcom/yandex/mobile/ads/impl/pp1;

    move-result-object p0

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/w6;->a:Lcom/yandex/mobile/ads/impl/wq;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/wq;->a(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/o3;)Lcom/yandex/mobile/ads/impl/pp1;

    move-result-object p0

    :goto_1
    return-object p0
.end method
