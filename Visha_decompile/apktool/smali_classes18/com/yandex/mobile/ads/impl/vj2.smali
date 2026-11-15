.class public final Lcom/yandex/mobile/ads/impl/vj2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/yf1;

.field private final b:Lcom/yandex/mobile/ads/impl/dz1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/yf1;)V
    .locals 1

    const-string v0, "parentHtmlWebView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/vj2;->a:Lcom/yandex/mobile/ads/impl/yf1;

    new-instance p1, Lcom/yandex/mobile/ads/impl/dz1;

    invoke-direct {p1}, Lcom/yandex/mobile/ads/impl/dz1;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/vj2;->b:Lcom/yandex/mobile/ads/impl/dz1;

    return-void
.end method

.method private static final a(Lcom/yandex/mobile/ads/impl/vj2;Ljava/util/Map;)V
    .locals 2

    .line 3
    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$trackingParameters"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/vj2;->a:Lcom/yandex/mobile/ads/impl/yf1;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/sp0;->d([Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/vj2;->a:Lcom/yandex/mobile/ads/impl/yf1;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/yf1;->j()Lcom/yandex/mobile/ads/impl/dh0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/vj2;->a:Lcom/yandex/mobile/ads/impl/yf1;

    invoke-interface {v0, p0, p1}, Lcom/yandex/mobile/ads/impl/dh0;->a(Lcom/yandex/mobile/ads/impl/yf1;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/yandex/mobile/ads/impl/vj2;Ljava/util/Map;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/vj2;->a(Lcom/yandex/mobile/ads/impl/vj2;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "trackingParameters"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/vj2;->b:Lcom/yandex/mobile/ads/impl/dz1;

    new-instance v1, Ljwd;

    invoke-direct {v1, p0, p1}, Ljwd;-><init>(Lcom/yandex/mobile/ads/impl/vj2;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/dz1;->a(Ljava/lang/Runnable;)V

    return-void
.end method
