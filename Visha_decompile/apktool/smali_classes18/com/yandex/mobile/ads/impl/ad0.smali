.class public final Lcom/yandex/mobile/ads/impl/ad0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/t62;
.implements Lcom/yandex/mobile/ads/impl/a92;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/gs;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/gs;)V
    .locals 1

    const-string v0, "contentPresenter"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ad0;->a:Lcom/yandex/mobile/ads/impl/gs;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/zc0;
    .locals 2

    .line 4
    new-instance v0, Lcom/yandex/mobile/ads/impl/zc0;

    iget-boolean v1, p0, Lcom/yandex/mobile/ads/impl/ad0;->c:Z

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ad0;->b:Ljava/util/Map;

    invoke-direct {v0, v1, p0}, Lcom/yandex/mobile/ads/impl/zc0;-><init>(ZLjava/util/Map;)V

    return-object v0
.end method

.method public final a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ad0;->b:Ljava/util/Map;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/ad0;->c:Z

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ad0;->a:Lcom/yandex/mobile/ads/impl/gs;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/gs;->a(Z)V

    return-void
.end method
