.class final Lcom/yandex/mobile/ads/impl/as$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/f1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/as;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/mobile/ads/impl/as;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/as<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/as;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/as$a;->a:Lcom/yandex/mobile/ads/impl/as;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/as$a;->a:Lcom/yandex/mobile/ads/impl/as;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/as;->a(Lcom/yandex/mobile/ads/impl/as;)Lcom/yandex/mobile/ads/impl/yc0;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/yc0;->resume()V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/as$a;->a:Lcom/yandex/mobile/ads/impl/as;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/as;->a(Lcom/yandex/mobile/ads/impl/as;)Lcom/yandex/mobile/ads/impl/yc0;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/yc0;->pause()V

    :cond_0
    return-void
.end method
