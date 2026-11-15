.class public final Lcom/yandex/mobile/ads/impl/ox0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/mobile/ads/impl/ox0;->a(Lcom/monetization/ads/nativeads/CustomizableMediaView;Lcom/yandex/mobile/ads/impl/hx0$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/mobile/ads/impl/ox0;

.field final synthetic b:Lcom/monetization/ads/nativeads/CustomizableMediaView;

.field final synthetic c:Lcom/yandex/mobile/ads/impl/hx0$a;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/ox0;Lcom/monetization/ads/nativeads/CustomizableMediaView;Lcom/yandex/mobile/ads/impl/hx0$a;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ox0$a;->a:Lcom/yandex/mobile/ads/impl/ox0;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/ox0$a;->b:Lcom/monetization/ads/nativeads/CustomizableMediaView;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/ox0$a;->c:Lcom/yandex/mobile/ads/impl/hx0$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ox0$a;->a:Lcom/yandex/mobile/ads/impl/ox0;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/ox0;->a(Lcom/yandex/mobile/ads/impl/ox0;)Lcom/yandex/mobile/ads/impl/px0;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ox0$a;->b:Lcom/monetization/ads/nativeads/CustomizableMediaView;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ox0$a;->c:Lcom/yandex/mobile/ads/impl/hx0$a;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/hx0$a;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/yandex/mobile/ads/impl/px0;->a(Lcom/monetization/ads/nativeads/CustomizableMediaView;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
