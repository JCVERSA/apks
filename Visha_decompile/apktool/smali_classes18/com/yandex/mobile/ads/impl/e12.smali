.class public final Lcom/yandex/mobile/ads/impl/e12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/y62;

.field private final b:Lcom/yandex/mobile/ads/impl/y41;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/z02;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/yandex/mobile/ads/impl/p51;

.field private final e:Lcom/yandex/mobile/ads/impl/s91;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/y62;Lcom/yandex/mobile/ads/impl/y41;Ljava/util/List;Lcom/yandex/mobile/ads/impl/p51;Lcom/yandex/mobile/ads/impl/s91;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/y62;",
            "Lcom/yandex/mobile/ads/impl/y41;",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/z02;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/p51;",
            "Lcom/yandex/mobile/ads/impl/s91;",
            ")V"
        }
    .end annotation

    const-string v0, "trackingUrlHandler"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickReporterCreator"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "items"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdEventController"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeOpenUrlHandlerCreator"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/e12;->a:Lcom/yandex/mobile/ads/impl/y62;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/e12;->b:Lcom/yandex/mobile/ads/impl/y41;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/e12;->c:Ljava/util/List;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/e12;->d:Lcom/yandex/mobile/ads/impl/p51;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/e12;->e:Lcom/yandex/mobile/ads/impl/s91;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    const-string v0, "menuItem"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/e12;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/e12;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/mobile/ads/impl/z02;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/z02;->a()Lcom/yandex/mobile/ads/impl/vr0;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/e12;->b:Lcom/yandex/mobile/ads/impl/y41;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/z02;->b()Ljava/lang/String;

    move-result-object p1

    const-string v2, "social_action"

    invoke-virtual {v1, p1, v2}, Lcom/yandex/mobile/ads/impl/y41;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/ep;

    move-result-object p1

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/e12;->e:Lcom/yandex/mobile/ads/impl/s91;

    invoke-virtual {v1, p1}, Lcom/yandex/mobile/ads/impl/s91;->a(Lcom/yandex/mobile/ads/impl/tp1;)Lcom/yandex/mobile/ads/impl/r91;

    move-result-object p1

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/e12;->d:Lcom/yandex/mobile/ads/impl/p51;

    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/impl/p51;->a(Lcom/yandex/mobile/ads/impl/vr0;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/e12;->a:Lcom/yandex/mobile/ads/impl/y62;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/vr0;->d()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/yandex/mobile/ads/impl/y62;->a(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/vr0;->e()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0}, Lcom/yandex/mobile/ads/impl/r91;->a(Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
