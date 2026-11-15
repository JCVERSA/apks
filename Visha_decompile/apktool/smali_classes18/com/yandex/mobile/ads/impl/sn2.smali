.class public final Lcom/yandex/mobile/ads/impl/sn2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/lu;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/common/VideoEventListener;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/common/VideoEventListener;)V
    .locals 1

    const-string v0, "videoEventListener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/sn2;->a:Lcom/yandex/mobile/ads/common/VideoEventListener;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/sn2;)Lcom/yandex/mobile/ads/common/VideoEventListener;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/sn2;->a:Lcom/yandex/mobile/ads/common/VideoEventListener;

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/yandex/mobile/ads/impl/sn2;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/yandex/mobile/ads/impl/sn2;

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/sn2;->a:Lcom/yandex/mobile/ads/common/VideoEventListener;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/sn2;->a:Lcom/yandex/mobile/ads/common/VideoEventListener;

    invoke-static {p1, p0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/sn2;->a:Lcom/yandex/mobile/ads/common/VideoEventListener;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final onVideoComplete()V
    .locals 2

    new-instance v0, Lcom/monetization/ads/core/utils/CallbackStackTraceMarker;

    new-instance v1, Lcom/yandex/mobile/ads/impl/sn2$a;

    invoke-direct {v1, p0}, Lcom/yandex/mobile/ads/impl/sn2$a;-><init>(Lcom/yandex/mobile/ads/impl/sn2;)V

    invoke-direct {v0, v1}, Lcom/monetization/ads/core/utils/CallbackStackTraceMarker;-><init>(Lc74;)V

    return-void
.end method
