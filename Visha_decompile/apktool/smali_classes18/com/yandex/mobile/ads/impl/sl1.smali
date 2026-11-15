.class public final Lcom/yandex/mobile/ads/impl/sl1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/bm1;
.implements Lcom/yandex/mobile/ads/impl/xi1;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/bm1;

.field private b:Lcom/yandex/mobile/ads/impl/ci1;

.field private c:Lcom/yandex/mobile/ads/impl/ob0;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/bm1;)V
    .locals 1

    const-string v0, "progressProvider"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/sl1;->a:Lcom/yandex/mobile/ads/impl/bm1;

    invoke-static {}, Lcom/yandex/mobile/ads/impl/ci1$a;->a()Lcom/yandex/mobile/ads/impl/ci1;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/sl1;->b:Lcom/yandex/mobile/ads/impl/ci1;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/ci1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/sl1;->c:Lcom/yandex/mobile/ads/impl/ob0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/sl1;->a:Lcom/yandex/mobile/ads/impl/bm1;

    .line 2
    :cond_0
    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/bm1;->a()Lcom/yandex/mobile/ads/impl/ci1;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/sl1;->b:Lcom/yandex/mobile/ads/impl/ci1;

    return-object v0
.end method

.method public final a(Lcom/google/android/exoplayer2/t;)V
    .locals 1

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Lcom/yandex/mobile/ads/impl/ob0;

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/sl1;->b:Lcom/yandex/mobile/ads/impl/ci1;

    invoke-direct {p1, v0}, Lcom/yandex/mobile/ads/impl/ob0;-><init>(Lcom/yandex/mobile/ads/impl/ci1;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/sl1;->c:Lcom/yandex/mobile/ads/impl/ob0;

    return-void
.end method
