.class final Lcom/yandex/mobile/ads/impl/dw1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/monetization/ads/nativeads/CustomizableMediaView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/dw1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/yandex/mobile/ads/impl/dw1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/yandex/mobile/ads/impl/dw1;",
            ">;)V"
        }
    .end annotation

    const-string v0, "weakSdkMediaViewVideoWithFallbackAdapter"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/dw1$a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 2

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/dw1$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/dw1;

    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/dw1;->b(Lcom/yandex/mobile/ads/impl/dw1;)Lcom/yandex/mobile/ads/impl/fz1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/fz1;->b()I

    move-result v1

    if-lt p1, v1, :cond_0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/fz1;->a()I

    move-result p1

    if-ge p2, p1, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/dw1;->a(Lcom/yandex/mobile/ads/impl/dw1;)Lcom/yandex/mobile/ads/impl/hx0;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/dw1;->a(Lcom/yandex/mobile/ads/impl/dw1;Lcom/yandex/mobile/ads/impl/hx0;)V

    :cond_1
    return-void
.end method
