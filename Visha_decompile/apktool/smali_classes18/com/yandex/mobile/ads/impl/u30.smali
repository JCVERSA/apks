.class public final Lcom/yandex/mobile/ads/impl/u30;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/fn0;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/ig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/ig<",
            "*>;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/mobile/ads/impl/mg;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/ig;Lcom/yandex/mobile/ads/impl/mg;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/ig<",
            "*>;",
            "Lcom/yandex/mobile/ads/impl/mg;",
            ")V"
        }
    .end annotation

    const-string v0, "clickConfigurator"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/u30;->a:Lcom/yandex/mobile/ads/impl/ig;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/u30;->b:Lcom/yandex/mobile/ads/impl/mg;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/ob2;)V
    .locals 2

    const-string v0, "uiElements"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ob2;->f()Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/u30;->a:Lcom/yandex/mobile/ads/impl/ig;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ig;->d()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_2

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/u30;->b:Lcom/yandex/mobile/ads/impl/mg;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/u30;->a:Lcom/yandex/mobile/ads/impl/ig;

    invoke-virtual {v0, p1, p0}, Lcom/yandex/mobile/ads/impl/mg;->a(Landroid/view/View;Lcom/yandex/mobile/ads/impl/ig;)V

    goto :goto_1

    :cond_1
    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method
