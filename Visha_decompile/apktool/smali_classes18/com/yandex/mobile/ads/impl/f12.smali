.class public final Lcom/yandex/mobile/ads/impl/f12;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/o3;

.field private final b:Lcom/yandex/mobile/ads/impl/y41;

.field private final c:Lcom/yandex/mobile/ads/impl/p51;

.field private final d:Lcom/yandex/mobile/ads/impl/s91;

.field private final e:Lcom/yandex/mobile/ads/impl/k12;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/y41;Lcom/yandex/mobile/ads/impl/p51;Lcom/yandex/mobile/ads/impl/g71;Lcom/yandex/mobile/ads/impl/s91;Lcom/yandex/mobile/ads/impl/k12;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/mobile/ads/impl/o3;",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;",
            "Lcom/yandex/mobile/ads/impl/y41;",
            "Lcom/yandex/mobile/ads/impl/p51;",
            "Lcom/yandex/mobile/ads/impl/g71;",
            "Lcom/yandex/mobile/ads/impl/s91;",
            "Lcom/yandex/mobile/ads/impl/k12;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adConfiguration"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adResponse"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "clickReporterCreator"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "nativeAdEventController"

    invoke-static {p5, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "nativeAdViewAdapter"

    invoke-static {p6, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "nativeOpenUrlHandlerCreator"

    invoke-static {p7, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "socialMenuCreator"

    invoke-static {p8, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/f12;->a:Lcom/yandex/mobile/ads/impl/o3;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/f12;->b:Lcom/yandex/mobile/ads/impl/y41;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/f12;->c:Lcom/yandex/mobile/ads/impl/p51;

    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/f12;->d:Lcom/yandex/mobile/ads/impl/s91;

    iput-object p8, p0, Lcom/yandex/mobile/ads/impl/f12;->e:Lcom/yandex/mobile/ads/impl/k12;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Lcom/yandex/mobile/ads/impl/w02;)V
    .locals 7

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/w02;->c()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/f12;->e:Lcom/yandex/mobile/ads/impl/k12;

    invoke-virtual {p2, p1, v4}, Lcom/yandex/mobile/ads/impl/k12;->a(Landroid/view/View;Ljava/util/List;)Landroid/widget/PopupMenu;

    move-result-object p2

    new-instance v0, Lcom/yandex/mobile/ads/impl/v9;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "getContext(...)"

    invoke-static {p1, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/f12;->a:Lcom/yandex/mobile/ads/impl/o3;

    invoke-direct {v0, p1, v1}, Lcom/yandex/mobile/ads/impl/v9;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;)V

    new-instance v2, Lcom/yandex/mobile/ads/impl/y62;

    invoke-direct {v2, v0}, Lcom/yandex/mobile/ads/impl/y62;-><init>(Lcom/yandex/mobile/ads/impl/v9;)V

    new-instance p1, Lcom/yandex/mobile/ads/impl/e12;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/f12;->b:Lcom/yandex/mobile/ads/impl/y41;

    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/f12;->c:Lcom/yandex/mobile/ads/impl/p51;

    iget-object v6, p0, Lcom/yandex/mobile/ads/impl/f12;->d:Lcom/yandex/mobile/ads/impl/s91;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/yandex/mobile/ads/impl/e12;-><init>(Lcom/yandex/mobile/ads/impl/y62;Lcom/yandex/mobile/ads/impl/y41;Ljava/util/List;Lcom/yandex/mobile/ads/impl/p51;Lcom/yandex/mobile/ads/impl/s91;)V

    invoke-virtual {p2, p1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    invoke-virtual {p2}, Landroid/widget/PopupMenu;->show()V

    :cond_0
    return-void
.end method
