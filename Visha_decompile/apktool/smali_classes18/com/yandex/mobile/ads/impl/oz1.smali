.class public final Lcom/yandex/mobile/ads/impl/oz1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/co0;

.field private final b:Lcom/yandex/mobile/ads/impl/od2;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/co0;Lcom/yandex/mobile/ads/impl/go0;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/go0;->h()Lcom/yandex/mobile/ads/impl/od2;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/yandex/mobile/ads/impl/oz1;-><init>(Lcom/yandex/mobile/ads/impl/co0;Lcom/yandex/mobile/ads/impl/go0;Lcom/yandex/mobile/ads/impl/od2;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/co0;Lcom/yandex/mobile/ads/impl/go0;Lcom/yandex/mobile/ads/impl/od2;)V
    .locals 1

    .line 3
    const-string v0, "instreamVastAdPlayer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "instreamVideoAd"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/oz1;->a:Lcom/yandex/mobile/ads/impl/co0;

    .line 6
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/oz1;->b:Lcom/yandex/mobile/ads/impl/od2;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Lcom/yandex/mobile/ads/impl/ln0;)V
    .locals 1

    const-string v0, "skipControl"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controlsState"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/oz1;->b:Lcom/yandex/mobile/ads/impl/od2;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/yandex/mobile/ads/impl/nz1;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/oz1;->a:Lcom/yandex/mobile/ads/impl/co0;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/impl/nz1;-><init>(Lcom/yandex/mobile/ads/impl/co0;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/ln0;->c()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/ln0;->c()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method
