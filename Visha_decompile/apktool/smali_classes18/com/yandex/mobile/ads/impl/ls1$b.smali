.class final Lcom/yandex/mobile/ads/impl/ls1$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/f1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/ls1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/mobile/ads/impl/ls1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/ls1<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/ls1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ls1$b;->a:Lcom/yandex/mobile/ads/impl/ls1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ls1$b;->a:Lcom/yandex/mobile/ads/impl/ls1;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/ls1;->a(Lcom/yandex/mobile/ads/impl/ls1;)Lcom/yandex/mobile/ads/impl/yc0;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/yc0;->resume()V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ls1$b;->a:Lcom/yandex/mobile/ads/impl/ls1;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/ls1;->a(Lcom/yandex/mobile/ads/impl/ls1;)Lcom/yandex/mobile/ads/impl/yc0;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/yc0;->pause()V

    :cond_0
    return-void
.end method
