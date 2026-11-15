.class public final Lcom/yandex/mobile/ads/impl/tn;
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

.field private final b:Lcom/yandex/mobile/ads/impl/wo;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/ig;Lcom/yandex/mobile/ads/impl/wo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/ig<",
            "*>;",
            "Lcom/yandex/mobile/ads/impl/wo;",
            ")V"
        }
    .end annotation

    const-string v0, "clickControlConfigurator"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/tn;->a:Lcom/yandex/mobile/ads/impl/ig;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/tn;->b:Lcom/yandex/mobile/ads/impl/wo;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/ob2;)V
    .locals 3

    const-string v0, "uiElements"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ob2;->e()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ob2;->d()Landroid/widget/ImageView;

    move-result-object p1

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/tn;->a:Lcom/yandex/mobile/ads/impl/ig;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/ig;->d()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/tn;->b:Lcom/yandex/mobile/ads/impl/wo;

    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/impl/wo;->a(Landroid/view/View;)V

    :cond_2
    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/tn;->b:Lcom/yandex/mobile/ads/impl/wo;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/wo;->a(Landroid/view/View;)V

    :cond_3
    return-void
.end method
