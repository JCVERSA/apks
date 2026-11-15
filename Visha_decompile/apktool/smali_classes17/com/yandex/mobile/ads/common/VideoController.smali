.class public final Lcom/yandex/mobile/ads/common/VideoController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/MainThread;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/yandex/mobile/ads/common/VideoController;",
        "",
        "Lcom/yandex/mobile/ads/impl/qe2;",
        "videoEventController",
        "<init>",
        "(Lcom/yandex/mobile/ads/impl/qe2;)V",
        "Lcom/yandex/mobile/ads/common/VideoEventListener;",
        "videoEventListener",
        "Lzfb;",
        "setVideoEventListener",
        "(Lcom/yandex/mobile/ads/common/VideoEventListener;)V",
        "mobileads_externalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/qe2;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/qe2;)V
    .locals 1

    const-string v0, "videoEventController"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/common/VideoController;->a:Lcom/yandex/mobile/ads/impl/qe2;

    return-void
.end method


# virtual methods
.method public final setVideoEventListener(Lcom/yandex/mobile/ads/common/VideoEventListener;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/yandex/mobile/ads/impl/sn2;

    invoke-direct {v0, p1}, Lcom/yandex/mobile/ads/impl/sn2;-><init>(Lcom/yandex/mobile/ads/common/VideoEventListener;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/common/VideoController;->a:Lcom/yandex/mobile/ads/impl/qe2;

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/qe2;->a(Lcom/yandex/mobile/ads/impl/sn2;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/common/VideoController;->a:Lcom/yandex/mobile/ads/impl/qe2;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/qe2;->a(Lcom/yandex/mobile/ads/impl/sn2;)V

    :goto_0
    return-void
.end method
