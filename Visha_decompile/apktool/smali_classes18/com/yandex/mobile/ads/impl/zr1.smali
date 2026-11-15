.class public final Lcom/yandex/mobile/ads/impl/zr1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/n52;

.field private final b:Lcom/yandex/mobile/ads/impl/q42;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/o52;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/q42;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/q42;-><init>()V

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/zr1;-><init>(Lcom/yandex/mobile/ads/impl/o52;Lcom/yandex/mobile/ads/impl/q42;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/o52;Lcom/yandex/mobile/ads/impl/q42;)V
    .locals 1

    .line 3
    const-string v0, "timerViewProvider"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "textDelayViewController"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/zr1;->a:Lcom/yandex/mobile/ads/impl/n52;

    .line 6
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/zr1;->b:Lcom/yandex/mobile/ads/impl/q42;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;JJ)V
    .locals 1

    const-string v0, "timerView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zr1;->a:Lcom/yandex/mobile/ads/impl/n52;

    invoke-interface {v0, p1}, Lcom/yandex/mobile/ads/impl/n52;->a(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zr1;->b:Lcom/yandex/mobile/ads/impl/q42;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2, p3, p4, p5}, Lcom/yandex/mobile/ads/impl/q42;->a(Landroid/widget/TextView;JJ)V

    :cond_0
    return-void
.end method
