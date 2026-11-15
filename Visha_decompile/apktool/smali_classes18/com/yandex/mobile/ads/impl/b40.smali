.class public interface abstract Lcom/yandex/mobile/ads/impl/b40;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/b40$a;
    }
.end annotation


# virtual methods
.method public abstract a(Lcom/yandex/mobile/ads/impl/b40$a;)V
    .param p1    # Lcom/yandex/mobile/ads/impl/b40$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract cancel()V
.end method

.method public abstract remove()V
.end method
