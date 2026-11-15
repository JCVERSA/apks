.class final Lcom/yandex/mobile/ads/impl/wy1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/v2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/wy1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/mobile/ads/impl/wy1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/wy1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/wy1$a;->a:Lcom/yandex/mobile/ads/impl/wy1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/wy1$a;->a:Lcom/yandex/mobile/ads/impl/wy1;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/wy1;->a(Lcom/yandex/mobile/ads/impl/wy1;)Lcom/yandex/mobile/ads/impl/y8;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/y8;->b()V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final d()V
    .locals 0

    return-void
.end method

.method public final e()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/wy1$a;->a:Lcom/yandex/mobile/ads/impl/wy1;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/wy1;->a(Lcom/yandex/mobile/ads/impl/wy1;)Lcom/yandex/mobile/ads/impl/y8;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/y8;->c()V

    :cond_0
    return-void
.end method

.method public final g()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/wy1$a;->a:Lcom/yandex/mobile/ads/impl/wy1;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/wy1;->a(Lcom/yandex/mobile/ads/impl/wy1;)Lcom/yandex/mobile/ads/impl/y8;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/y8;->a()V

    :cond_0
    return-void
.end method
