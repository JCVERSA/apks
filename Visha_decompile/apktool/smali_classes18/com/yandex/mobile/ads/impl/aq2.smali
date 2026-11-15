.class public final synthetic Lcom/yandex/mobile/ads/impl/aq2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# instance fields
.field public final synthetic b:Lcom/yandex/mobile/ads/impl/nt1;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/nt1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/aq2;->b:Lcom/yandex/mobile/ads/impl/nt1;

    return-void
.end method


# virtual methods
.method public final onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/aq2;->b:Lcom/yandex/mobile/ads/impl/nt1;

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/nt1;->a(Lcom/yandex/mobile/ads/impl/nt1;Landroid/graphics/SurfaceTexture;)V

    return-void
.end method
