.class public final Lcom/yandex/mobile/ads/impl/q8;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/ek$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/ek$a<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/ek$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/ek$a<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "responseReportDataProvider"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/q8;->a:Lcom/yandex/mobile/ads/impl/ek$a;

    return-void
.end method


# virtual methods
.method public final a(ILcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/xq1;)Lcom/yandex/mobile/ads/impl/pp1;
    .locals 2

    const-string v0, "adConfiguration"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/q8;->a:Lcom/yandex/mobile/ads/impl/ek$a;

    invoke-interface {p0, p3, p2}, Lcom/yandex/mobile/ads/impl/ek$a;->a(Lcom/yandex/mobile/ads/impl/xq1;Lcom/yandex/mobile/ads/impl/o3;)Lcom/yandex/mobile/ads/impl/pp1;

    move-result-object p0

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/o3;->r()Lcom/yandex/mobile/ads/impl/gz1;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/yandex/mobile/ads/impl/gz1;->a()Lcom/yandex/mobile/ads/impl/gz1$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/gz1$a;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "size_type"

    invoke-virtual {p0, v0, v1}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/yandex/mobile/ads/impl/gz1;->getWidth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "width"

    invoke-virtual {p0, v0, v1}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/yandex/mobile/ads/impl/gz1;->getHeight()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "height"

    invoke-virtual {p0, p2, v0}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    const-string p2, "error_code"

    goto :goto_0

    :cond_1
    const-string p2, "code"

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_3

    iget-object p1, p3, Lcom/yandex/mobile/ads/impl/xq1;->a:Ljava/lang/Object;

    check-cast p1, Lcom/yandex/mobile/ads/impl/o8;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/o8;->D()Lcom/yandex/mobile/ads/impl/hz0;

    move-result-object p2

    if-eqz p2, :cond_2

    const-string p1, "mediation"

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/o8;->I()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string p1, "ad"

    goto :goto_1

    :cond_3
    const-string p1, "empty"

    :goto_1
    const-string p2, "response_type"

    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_5

    iget-object p1, p3, Lcom/yandex/mobile/ads/impl/xq1;->a:Ljava/lang/Object;

    check-cast p1, Lcom/yandex/mobile/ads/impl/o8;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/o8;->a()Lcom/yandex/mobile/ads/impl/f;

    move-result-object p1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/pp1;->a(Lcom/yandex/mobile/ads/impl/f;)V

    :cond_5
    return-object p0
.end method
