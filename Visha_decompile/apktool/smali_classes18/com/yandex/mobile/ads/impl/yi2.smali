.class public final Lcom/yandex/mobile/ads/impl/yi2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/qk$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/mobile/ads/impl/qk$a<",
        "Lcom/yandex/mobile/ads/impl/xc1;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/dq1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/dq1<",
            "Lcom/yandex/mobile/ads/impl/xc1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/yi2;->a:Lcom/yandex/mobile/ads/impl/dq1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/si2;)V
    .locals 2

    .line 1
    const-string v0, "error"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p1, Lcom/yandex/mobile/ads/impl/si2;->b:Lcom/yandex/mobile/ads/impl/xc1;

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 4
    const-string p1, "Ad request failed with network error"

    .line 5
    :cond_0
    new-instance v0, Lcom/yandex/mobile/ads/impl/sb2;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1}, Lcom/yandex/mobile/ads/impl/sb2;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_1
    const-string p1, "description"

    const-string v0, "Ping error"

    invoke-static {v0, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance p1, Lcom/yandex/mobile/ads/impl/sb2;

    const/4 v1, 0x1

    invoke-direct {p1, v1, v0}, Lcom/yandex/mobile/ads/impl/sb2;-><init>(ILjava/lang/String;)V

    move-object v0, p1

    .line 8
    :goto_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/yi2;->a:Lcom/yandex/mobile/ads/impl/dq1;

    if-eqz p0, :cond_2

    invoke-interface {p0, v0}, Lcom/yandex/mobile/ads/impl/dq1;->a(Lcom/yandex/mobile/ads/impl/sb2;)V

    :cond_2
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1

    .line 9
    check-cast p1, Lcom/yandex/mobile/ads/impl/xc1;

    .line 10
    const-string v0, "response"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/yi2;->a:Lcom/yandex/mobile/ads/impl/dq1;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/dq1;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
