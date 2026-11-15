.class public final Lcom/yandex/mobile/ads/impl/xu1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/ir1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/mobile/ads/impl/ir1<",
        "Lcom/yandex/mobile/ads/impl/ju1;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/hr1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/hr1<",
            "Lcom/yandex/mobile/ads/impl/ju1;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/mobile/ads/impl/ui2;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/sp1;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/vc1;->a(Lcom/yandex/mobile/ads/impl/sp1;)Lcom/yandex/mobile/ads/impl/wu1;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/yandex/mobile/ads/impl/ui2;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/ui2;-><init>()V

    .line 3
    invoke-direct {p0, p1, v0, v1}, Lcom/yandex/mobile/ads/impl/xu1;-><init>(Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/hr1;Lcom/yandex/mobile/ads/impl/ui2;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/hr1;Lcom/yandex/mobile/ads/impl/ui2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/sp1;",
            "Lcom/yandex/mobile/ads/impl/hr1<",
            "Lcom/yandex/mobile/ads/impl/ju1;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/ui2;",
            ")V"
        }
    .end annotation

    .line 4
    const-string v0, "reporter"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "sdkConfigurationResponseParser"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "volleyMapper"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/xu1;->a:Lcom/yandex/mobile/ads/impl/hr1;

    .line 7
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/xu1;->b:Lcom/yandex/mobile/ads/impl/ui2;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/xc1;)Ljava/lang/Object;
    .locals 1

    const-string v0, "networkResponse"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/xu1;->b:Lcom/yandex/mobile/ads/impl/ui2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/ui2;->a(Lcom/yandex/mobile/ads/impl/xc1;)Lcom/yandex/mobile/ads/impl/wq1;

    move-result-object p1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/xu1;->a:Lcom/yandex/mobile/ads/impl/hr1;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/hr1;->a(Lcom/yandex/mobile/ads/impl/wq1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/ju1;

    return-object p0
.end method
