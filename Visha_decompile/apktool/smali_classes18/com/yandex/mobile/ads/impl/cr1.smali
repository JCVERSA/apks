.class public final Lcom/yandex/mobile/ads/impl/cr1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/br1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/yandex/mobile/ads/impl/br1<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/aj2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/aj2<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/mobile/ads/impl/ui2;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/aj2;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/ui2;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/ui2;-><init>()V

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/cr1;-><init>(Lcom/yandex/mobile/ads/impl/aj2;Lcom/yandex/mobile/ads/impl/ui2;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/aj2;Lcom/yandex/mobile/ads/impl/ui2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/aj2<",
            "TT;>;",
            "Lcom/yandex/mobile/ads/impl/ui2;",
            ")V"
        }
    .end annotation

    .line 3
    const-string v0, "responseBodyParser"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "volleyMapper"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/cr1;->a:Lcom/yandex/mobile/ads/impl/aj2;

    .line 6
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/cr1;->b:Lcom/yandex/mobile/ads/impl/ui2;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/wq1;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/wq1;",
            ")TT;"
        }
    .end annotation

    const-string v0, "networkResponse"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/cr1;->b:Lcom/yandex/mobile/ads/impl/ui2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "response"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/xc1;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/wq1;->c()I

    move-result v1

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/wq1;->a()Lcom/yandex/mobile/ads/impl/ar1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/ar1;->a()[B

    move-result-object v2

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/wq1;->b()Ljava/util/Map;

    move-result-object p1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/yandex/mobile/ads/impl/xc1;-><init>(I[BLjava/util/Map;Z)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/cr1;->a:Lcom/yandex/mobile/ads/impl/aj2;

    invoke-interface {p0, v0}, Lcom/yandex/mobile/ads/impl/aj2;->a(Lcom/yandex/mobile/ads/impl/xc1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
