.class public final Lcom/yandex/mobile/ads/impl/jp1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/lp1;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/lp1;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/lp1;-><init>()V

    .line 2
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/jp1;-><init>(Lcom/yandex/mobile/ads/impl/lp1;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/lp1;)V
    .locals 1

    .line 3
    const-string v0, "replayButtonCreator"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/jp1;->a:Lcom/yandex/mobile/ads/impl/lp1;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/hp1;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/jp1;->a:Lcom/yandex/mobile/ads/impl/lp1;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/lp1;->a(Landroid/content/Context;)Landroid/widget/Button;

    move-result-object p0

    const-string v0, "replay_button"

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/uh2;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/hp1;

    invoke-direct {v0, p1, p0}, Lcom/yandex/mobile/ads/impl/hp1;-><init>(Landroid/content/Context;Landroid/widget/Button;)V

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method
