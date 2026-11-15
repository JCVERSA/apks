.class public final Lcom/yandex/mobile/ads/impl/dp0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/hq1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/mobile/ads/impl/hq1<",
        "Lcom/yandex/mobile/ads/impl/rx;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/aj2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/aj2<",
            "Lcom/yandex/mobile/ads/impl/rx;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/aj2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/aj2<",
            "Lcom/yandex/mobile/ads/impl/rx;",
            ">;)V"
        }
    .end annotation

    const-string v0, "responseParser"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/dp0;->a:Lcom/yandex/mobile/ads/impl/aj2;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/xc1;)Ljava/lang/Object;
    .locals 1

    .line 2
    const-string v0, "networkResponse"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/dp0;->a:Lcom/yandex/mobile/ads/impl/aj2;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/aj2;->a(Lcom/yandex/mobile/ads/impl/xc1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/rx;

    return-object p0
.end method

.method public final a()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    return p0
.end method
