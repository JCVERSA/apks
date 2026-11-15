.class public final Lcom/yandex/mobile/ads/impl/uv0;
.super Lcom/yandex/mobile/ads/impl/jv0;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/IllegalStateException;Lcom/yandex/mobile/ads/impl/kv0;Landroid/view/Surface;)V
    .locals 0
    .param p2    # Lcom/yandex/mobile/ads/impl/kv0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/jv0;-><init>(Ljava/lang/IllegalStateException;Lcom/yandex/mobile/ads/impl/kv0;)V

    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/Surface;->isValid()Z

    :cond_0
    return-void
.end method
