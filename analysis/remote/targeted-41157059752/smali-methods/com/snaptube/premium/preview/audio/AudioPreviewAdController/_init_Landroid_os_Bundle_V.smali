.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/snaptube/premium/preview/audio/AudioPreviewAdController;->a:Landroid/os/Bundle;

    sget-object p1, Lcom/snaptube/ads/base/AdsPos;->AUDIO_PREVIEW:Lcom/snaptube/ads/base/AdsPos;

    iput-object p1, p0, Lcom/snaptube/premium/preview/audio/AudioPreviewAdController;->b:Lcom/snaptube/ads/base/AdsPos;

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lo/fc1;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/snaptube/premium/preview/audio/AudioPreviewAdController$b;

    invoke-interface {p1, p0}, Lcom/snaptube/premium/preview/audio/AudioPreviewAdController$b;->T(Lcom/snaptube/premium/preview/audio/AudioPreviewAdController;)V

    return-void
.end method
