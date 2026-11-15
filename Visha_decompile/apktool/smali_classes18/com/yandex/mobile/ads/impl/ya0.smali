.class public final Lcom/yandex/mobile/ads/impl/ya0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/o3;

.field private final b:Lcom/yandex/mobile/ads/impl/tp1;

.field private final c:Lcom/yandex/mobile/ads/impl/g71;

.field private final d:Lcom/yandex/mobile/ads/impl/p51;

.field private final e:Lcom/yandex/mobile/ads/impl/xa0;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/tp1;Lcom/yandex/mobile/ads/impl/g71;Lcom/yandex/mobile/ads/impl/p51;Lcom/yandex/mobile/ads/impl/xa0;)V
    .locals 1

    const-string v0, "adConfiguration"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reporter"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdViewAdapter"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdEventController"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feedbackMenuCreator"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ya0;->a:Lcom/yandex/mobile/ads/impl/o3;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/ya0;->b:Lcom/yandex/mobile/ads/impl/tp1;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/ya0;->c:Lcom/yandex/mobile/ads/impl/g71;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/ya0;->d:Lcom/yandex/mobile/ads/impl/p51;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/ya0;->e:Lcom/yandex/mobile/ads/impl/xa0;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/oa0;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ya0;->c:Lcom/yandex/mobile/ads/impl/g71;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/g71;->g()Lcom/yandex/mobile/ads/impl/q71;

    move-result-object v0

    const-string v1, "feedback"

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/q71;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/ImageView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/oa0;->c()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    :try_start_0
    new-instance v1, Lcom/yandex/mobile/ads/impl/v9;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ya0;->a:Lcom/yandex/mobile/ads/impl/o3;

    invoke-direct {v1, p1, v2}, Lcom/yandex/mobile/ads/impl/v9;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;)V

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ya0;->e:Lcom/yandex/mobile/ads/impl/xa0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0, p2}, Lcom/yandex/mobile/ads/impl/xa0;->a(Landroid/content/Context;Landroid/widget/ImageView;Ljava/util/List;)Landroid/widget/PopupMenu;

    move-result-object p1

    new-instance v0, Lcom/yandex/mobile/ads/impl/mj1;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ya0;->b:Lcom/yandex/mobile/ads/impl/tp1;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/ya0;->d:Lcom/yandex/mobile/ads/impl/p51;

    invoke-direct {v0, v1, p2, v2, v3}, Lcom/yandex/mobile/ads/impl/mj1;-><init>(Lcom/yandex/mobile/ads/impl/v9;Ljava/util/List;Lcom/yandex/mobile/ads/impl/tp1;Lcom/yandex/mobile/ads/impl/p51;)V

    invoke-virtual {p1, v0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    invoke-virtual {p1}, Landroid/widget/PopupMenu;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    sget v0, Lcom/yandex/mobile/ads/impl/sp0;->b:I

    const-string v0, "args"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ya0;->a:Lcom/yandex/mobile/ads/impl/o3;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/o3;->q()Lcom/yandex/mobile/ads/impl/bv1;

    move-result-object p0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/bv1;->c()Lcom/yandex/mobile/ads/impl/s01;

    move-result-object p0

    const-string p2, "Failed to render feedback"

    invoke-virtual {p0, p2, p1}, Lcom/yandex/mobile/ads/impl/s01;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void
.end method
