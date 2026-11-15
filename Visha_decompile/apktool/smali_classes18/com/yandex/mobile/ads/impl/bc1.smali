.class public final Lcom/yandex/mobile/ads/impl/bc1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/e0;

.field private final b:Lcom/yandex/mobile/ads/impl/bf2;


# direct methods
.method public synthetic constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/e0;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/e0;-><init>()V

    .line 2
    new-instance v1, Lcom/yandex/mobile/ads/impl/bf2;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/bf2;-><init>()V

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/yandex/mobile/ads/impl/bc1;-><init>(Lcom/yandex/mobile/ads/impl/e0;Lcom/yandex/mobile/ads/impl/bf2;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/e0;Lcom/yandex/mobile/ads/impl/bf2;)V
    .locals 1

    .line 4
    const-string v0, "actionViewsContainerCreator"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "placeholderViewCreator"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/bc1;->a:Lcom/yandex/mobile/ads/impl/e0;

    .line 7
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/bc1;->b:Lcom/yandex/mobile/ads/impl/bf2;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/xe2;Lcom/yandex/mobile/ads/impl/aw0;Lcom/yandex/mobile/ads/impl/lb2;I)Lcom/yandex/mobile/ads/impl/yb1;
    .locals 3
    .param p5    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoOptions"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customControls"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/view/TextureView;

    invoke-direct {v0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/bc1;->a:Lcom/yandex/mobile/ads/impl/e0;

    invoke-virtual {v2, p1, p2, p3, p5}, Lcom/yandex/mobile/ads/impl/e0;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/xe2;Lcom/yandex/mobile/ads/impl/aw0;I)Lcom/yandex/mobile/ads/impl/qa1;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/bc1;->b:Lcom/yandex/mobile/ads/impl/bf2;

    invoke-virtual {p0, p1, p4}, Lcom/yandex/mobile/ads/impl/bf2;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/lb2;)Lcom/yandex/mobile/ads/impl/af2;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance p3, Lcom/yandex/mobile/ads/impl/yb1;

    invoke-direct {p3, p1, p0, v0, p2}, Lcom/yandex/mobile/ads/impl/yb1;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/af2;Landroid/view/TextureView;Lcom/yandex/mobile/ads/impl/qa1;)V

    invoke-virtual {p3, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const-string p0, "native_video_view"

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/uh2;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p3
.end method
