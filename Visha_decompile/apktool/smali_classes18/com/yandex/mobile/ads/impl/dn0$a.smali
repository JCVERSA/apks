.class final Lcom/yandex/mobile/ads/impl/dn0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/ks0$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/dn0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/mobile/ads/impl/dn0;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/dn0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/dn0$a;->a:Lcom/yandex/mobile/ads/impl/dn0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;Ljava/util/List;Lcom/yandex/mobile/ads/impl/et;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/xb2;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/et;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "viewGroup"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "friendlyOverlays"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loadedInstreamAd"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/dn0$a;->a:Lcom/yandex/mobile/ads/impl/dn0;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/dn0;->g(Lcom/yandex/mobile/ads/impl/dn0;)V

    .line 3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/dn0$a;->a:Lcom/yandex/mobile/ads/impl/dn0;

    invoke-static {v0, p3}, Lcom/yandex/mobile/ads/impl/dn0;->a(Lcom/yandex/mobile/ads/impl/dn0;Lcom/yandex/mobile/ads/impl/et;)V

    .line 4
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/dn0$a;->a:Lcom/yandex/mobile/ads/impl/dn0;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/dn0;->e(Lcom/yandex/mobile/ads/impl/dn0;)Lcom/yandex/mobile/ads/impl/et;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/dn0$a;->a:Lcom/yandex/mobile/ads/impl/dn0;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/et;->b()V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/dn0$a;->a:Lcom/yandex/mobile/ads/impl/dn0;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/dn0;->b(Lcom/yandex/mobile/ads/impl/dn0;)Lcom/yandex/mobile/ads/impl/ol;

    move-result-object v0

    .line 8
    invoke-virtual {v0, p1, p2, p3}, Lcom/yandex/mobile/ads/impl/ol;->a(Landroid/view/ViewGroup;Ljava/util/List;Lcom/yandex/mobile/ads/impl/et;)Lcom/yandex/mobile/ads/impl/ml;

    move-result-object p1

    .line 9
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/dn0$a;->a:Lcom/yandex/mobile/ads/impl/dn0;

    invoke-static {p2}, Lcom/yandex/mobile/ads/impl/dn0;->c(Lcom/yandex/mobile/ads/impl/dn0;)Lcom/yandex/mobile/ads/impl/ql;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/yandex/mobile/ads/impl/ql;->a(Lcom/yandex/mobile/ads/impl/ml;)V

    .line 10
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/dn0$a;->a:Lcom/yandex/mobile/ads/impl/dn0;

    .line 11
    invoke-static {p2}, Lcom/yandex/mobile/ads/impl/dn0;->f(Lcom/yandex/mobile/ads/impl/dn0;)Lcom/yandex/mobile/ads/impl/nb2;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/yandex/mobile/ads/impl/ml;->a(Lcom/yandex/mobile/ads/impl/nb2;)V

    .line 12
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ml;->c()V

    .line 13
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ml;->d()V

    .line 14
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/dn0$a;->a:Lcom/yandex/mobile/ads/impl/dn0;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/dn0;->d(Lcom/yandex/mobile/ads/impl/dn0;)Lcom/yandex/mobile/ads/impl/b70;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/b70;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 15
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/dn0$a;->a:Lcom/yandex/mobile/ads/impl/dn0;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/dn0;->h(Lcom/yandex/mobile/ads/impl/dn0;)V

    .line 16
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/dn0$a;->a:Lcom/yandex/mobile/ads/impl/dn0;

    invoke-static {p0, p3}, Lcom/yandex/mobile/ads/impl/dn0;->b(Lcom/yandex/mobile/ads/impl/dn0;Lcom/yandex/mobile/ads/impl/et;)V

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 17
    const-string v0, "reason"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/dn0$a;->a:Lcom/yandex/mobile/ads/impl/dn0;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/dn0;->g(Lcom/yandex/mobile/ads/impl/dn0;)V

    .line 19
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/dn0$a;->a:Lcom/yandex/mobile/ads/impl/dn0;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/dn0;->a(Lcom/yandex/mobile/ads/impl/dn0;)Lcom/yandex/mobile/ads/impl/p5;

    move-result-object p0

    sget-object p1, Lcom/google/android/exoplayer2/source/ads/a;->h:Lcom/google/android/exoplayer2/source/ads/a;

    const-string v0, "NONE"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/p5;->a(Lcom/google/android/exoplayer2/source/ads/a;)V

    return-void
.end method
