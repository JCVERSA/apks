.class public final Lcom/yandex/mobile/ads/impl/ta0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/gk;

.field private final b:Lcom/yandex/mobile/ads/impl/yb;

.field private final c:Lcom/yandex/mobile/ads/impl/r20;

.field private final d:Lcom/yandex/mobile/ads/impl/mg2;

.field private final e:Lcom/yandex/mobile/ads/impl/re2;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/gk;Lcom/yandex/mobile/ads/impl/yb;Lcom/yandex/mobile/ads/impl/r20;Lcom/yandex/mobile/ads/impl/mg2;Lcom/yandex/mobile/ads/impl/re2;)V
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adtuneRenderer"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divKitAdtuneRenderer"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoTracker"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoEventUrlsTracker"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ta0;->a:Lcom/yandex/mobile/ads/impl/gk;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/ta0;->b:Lcom/yandex/mobile/ads/impl/yb;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/ta0;->c:Lcom/yandex/mobile/ads/impl/r20;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/ta0;->d:Lcom/yandex/mobile/ads/impl/mg2;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/ta0;->e:Lcom/yandex/mobile/ads/impl/re2;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    const-string v0, "adtune"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ta0;->d:Lcom/yandex/mobile/ads/impl/mg2;

    const-string v1, "feedback"

    invoke-interface {v0, v1}, Lcom/yandex/mobile/ads/impl/mg2;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ta0;->e:Lcom/yandex/mobile/ads/impl/re2;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ta0;->a:Lcom/yandex/mobile/ads/impl/gk;

    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/gk;->b()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/re2;->a(Ljava/util/List;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ta0;->a:Lcom/yandex/mobile/ads/impl/gk;

    instance-of v1, v0, Lcom/yandex/mobile/ads/impl/jb;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ta0;->b:Lcom/yandex/mobile/ads/impl/yb;

    check-cast v0, Lcom/yandex/mobile/ads/impl/jb;

    invoke-virtual {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/yb;->a(Landroid/view/View;Lcom/yandex/mobile/ads/impl/jb;)V

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lcom/yandex/mobile/ads/impl/n20;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ta0;->c:Lcom/yandex/mobile/ads/impl/r20;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "getContext(...)"

    invoke-static {p1, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/yandex/mobile/ads/impl/n20;

    invoke-virtual {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/r20;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/n20;)V

    :cond_1
    :goto_0
    return-void
.end method
