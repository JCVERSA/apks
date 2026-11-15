.class public abstract Lcom/yandex/mobile/ads/nativeads/b;
.super Lcom/monetization/ads/nativeads/CustomizableMediaView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Lcom/monetization/ads/nativeads/CustomizableMediaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public setVideoControls(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/monetization/ads/nativeads/CustomizableMediaView;->a(I)V

    return-void
.end method
