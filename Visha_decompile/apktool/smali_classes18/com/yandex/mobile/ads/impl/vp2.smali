.class public final synthetic Lcom/yandex/mobile/ads/impl/vp2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaCodec$OnFrameRenderedListener;


# instance fields
.field public final synthetic a:Lcom/yandex/mobile/ads/impl/hh;

.field public final synthetic b:Lcom/yandex/mobile/ads/impl/gv0$c;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/hh;Lcom/yandex/mobile/ads/impl/gv0$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/vp2;->a:Lcom/yandex/mobile/ads/impl/hh;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/vp2;->b:Lcom/yandex/mobile/ads/impl/gv0$c;

    return-void
.end method


# virtual methods
.method public final onFrameRendered(Landroid/media/MediaCodec;JJ)V
    .locals 7

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/vp2;->a:Lcom/yandex/mobile/ads/impl/hh;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/vp2;->b:Lcom/yandex/mobile/ads/impl/gv0$c;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-static/range {v0 .. v6}, Lcom/yandex/mobile/ads/impl/hh;->a(Lcom/yandex/mobile/ads/impl/hh;Lcom/yandex/mobile/ads/impl/gv0$c;Landroid/media/MediaCodec;JJ)V

    return-void
.end method
