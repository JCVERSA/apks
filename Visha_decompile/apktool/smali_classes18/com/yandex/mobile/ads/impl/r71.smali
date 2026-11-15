.class public final Lcom/yandex/mobile/ads/impl/r71;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/k71;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/k71;)V
    .locals 1

    const-string v0, "viewProvider"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/r71;->a:Lcom/yandex/mobile/ads/impl/k71;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/q71;
    .locals 3

    new-instance v0, Lcom/yandex/mobile/ads/impl/q71$a;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/r71;->a:Lcom/yandex/mobile/ads/impl/k71;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/k71;->d()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/r71;->a:Lcom/yandex/mobile/ads/impl/k71;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/k71;->a()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/q71$a;-><init>(Landroid/view/View;Ljava/util/Map;)V

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/r71;->a:Lcom/yandex/mobile/ads/impl/k71;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/k71;->b()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/q71$a;->a(Landroid/widget/ImageView;)Lcom/yandex/mobile/ads/impl/q71$a;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/r71;->a:Lcom/yandex/mobile/ads/impl/k71;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/k71;->c()Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/q71$a;->a(Landroid/widget/CheckBox;)Lcom/yandex/mobile/ads/impl/q71$a;

    move-result-object v0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/r71;->a:Lcom/yandex/mobile/ads/impl/k71;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/k71;->f()Landroid/widget/ProgressBar;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/impl/q71$a;->a(Landroid/widget/ProgressBar;)Lcom/yandex/mobile/ads/impl/q71$a;

    move-result-object p0

    new-instance v0, Lcom/yandex/mobile/ads/impl/q71;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/yandex/mobile/ads/impl/q71;-><init>(Lcom/yandex/mobile/ads/impl/q71$a;I)V

    return-object v0
.end method
