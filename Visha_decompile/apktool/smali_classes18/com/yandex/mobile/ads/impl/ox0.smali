.class public final Lcom/yandex/mobile/ads/impl/ox0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/o3;

.field private final b:Lcom/yandex/mobile/ads/impl/px0;

.field private c:Z


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/px0;

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getApplicationContext(...)"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {v0, v1, p2}, Lcom/yandex/mobile/ads/impl/px0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;)V

    .line 4
    invoke-direct {p0, p1, p2, v0}, Lcom/yandex/mobile/ads/impl/ox0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/px0;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/px0;)V
    .locals 1

    .line 5
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adConfiguration"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "mediaViewSizeInfoController"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/ox0;->a:Lcom/yandex/mobile/ads/impl/o3;

    .line 8
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/ox0;->b:Lcom/yandex/mobile/ads/impl/px0;

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/ox0;->c:Z

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/ox0;)Lcom/yandex/mobile/ads/impl/px0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ox0;->b:Lcom/yandex/mobile/ads/impl/px0;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/monetization/ads/nativeads/CustomizableMediaView;Lcom/yandex/mobile/ads/impl/hx0$a;)V
    .locals 2

    .line 2
    const-string v0, "mediaView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/ox0;->c:Z

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ox0;->a:Lcom/yandex/mobile/ads/impl/o3;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/o3;->b()Lcom/yandex/mobile/ads/impl/ts;

    move-result-object v0

    sget-object v1, Lcom/yandex/mobile/ads/impl/ts;->g:Lcom/yandex/mobile/ads/impl/ts;

    if-ne v0, v1, :cond_0

    .line 5
    new-instance v0, Lcom/yandex/mobile/ads/impl/ox0$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/yandex/mobile/ads/impl/ox0$a;-><init>(Lcom/yandex/mobile/ads/impl/ox0;Lcom/monetization/ads/nativeads/CustomizableMediaView;Lcom/yandex/mobile/ads/impl/hx0$a;)V

    invoke-static {p1, v0}, Lcom/yandex/mobile/ads/impl/wh2;->a(Landroid/view/View;Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/ox0;->c:Z

    :cond_1
    return-void
.end method
