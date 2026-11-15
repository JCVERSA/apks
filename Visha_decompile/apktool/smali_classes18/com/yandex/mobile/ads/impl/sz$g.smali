.class final Lcom/yandex/mobile/ads/impl/sz$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/rz$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/sz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "g"
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/mobile/ads/impl/sz;


# direct methods
.method private constructor <init>(Lcom/yandex/mobile/ads/impl/sz;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/sz$g;->a:Lcom/yandex/mobile/ads/impl/sz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/sz;Lqtd;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/sz$g;-><init>(Lcom/yandex/mobile/ads/impl/sz;)V

    return-void
.end method

.method private static synthetic a(Lcom/yandex/mobile/ads/impl/rz;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/rz;->a(Lcom/yandex/mobile/ads/impl/h40$a;)V

    return-void
.end method

.method public static synthetic c(Lcom/yandex/mobile/ads/impl/rz;)V
    .locals 0

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sz$g;->a(Lcom/yandex/mobile/ads/impl/rz;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/rz;I)V
    .locals 6

    const/4 v0, 0x1

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v3, 0x0

    if-ne p2, v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/sz$g;->a:Lcom/yandex/mobile/ads/impl/sz;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/sz;->f(Lcom/yandex/mobile/ads/impl/sz;)I

    move-result v4

    if-lez v4, :cond_0

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/sz;->b(Lcom/yandex/mobile/ads/impl/sz;)J

    move-result-wide v4

    cmp-long v4, v4, v1

    if-eqz v4, :cond_0

    .line 3
    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/sz;->e(Lcom/yandex/mobile/ads/impl/sz;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/sz$g;->a:Lcom/yandex/mobile/ads/impl/sz;

    invoke-static {p2}, Lcom/yandex/mobile/ads/impl/sz;->k(Lcom/yandex/mobile/ads/impl/sz;)Landroid/os/Handler;

    move-result-object p2

    .line 5
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    new-instance v0, Lcom/yandex/mobile/ads/impl/ur2;

    invoke-direct {v0, p1}, Lcom/yandex/mobile/ads/impl/ur2;-><init>(Lcom/yandex/mobile/ads/impl/rz;)V

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/sz$g;->a:Lcom/yandex/mobile/ads/impl/sz;

    invoke-static {v4}, Lcom/yandex/mobile/ads/impl/sz;->b(Lcom/yandex/mobile/ads/impl/sz;)J

    move-result-wide v4

    add-long/2addr v1, v4

    .line 8
    invoke-virtual {p2, v0, p1, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    goto :goto_0

    :cond_0
    if-nez p2, :cond_4

    .line 9
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/sz$g;->a:Lcom/yandex/mobile/ads/impl/sz;

    invoke-static {p2}, Lcom/yandex/mobile/ads/impl/sz;->c(Lcom/yandex/mobile/ads/impl/sz;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 10
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/sz$g;->a:Lcom/yandex/mobile/ads/impl/sz;

    invoke-static {p2}, Lcom/yandex/mobile/ads/impl/sz;->h(Lcom/yandex/mobile/ads/impl/sz;)Lcom/yandex/mobile/ads/impl/rz;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 11
    invoke-static {p2, v3}, Lcom/yandex/mobile/ads/impl/sz;->m(Lcom/yandex/mobile/ads/impl/sz;Lcom/yandex/mobile/ads/impl/rz;)V

    .line 12
    :cond_1
    invoke-static {p2}, Lcom/yandex/mobile/ads/impl/sz;->i(Lcom/yandex/mobile/ads/impl/sz;)Lcom/yandex/mobile/ads/impl/rz;

    move-result-object v0

    if-ne v0, p1, :cond_2

    .line 13
    invoke-static {p2, v3}, Lcom/yandex/mobile/ads/impl/sz;->n(Lcom/yandex/mobile/ads/impl/sz;Lcom/yandex/mobile/ads/impl/rz;)V

    .line 14
    :cond_2
    invoke-static {p2}, Lcom/yandex/mobile/ads/impl/sz;->a(Lcom/yandex/mobile/ads/impl/sz;)Lcom/yandex/mobile/ads/impl/sz$f;

    move-result-object p2

    .line 15
    invoke-static {p2}, Lcom/yandex/mobile/ads/impl/sz$f;->a(Lcom/yandex/mobile/ads/impl/sz$f;)Ljava/util/HashSet;

    move-result-object v0

    .line 16
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 17
    invoke-static {p2}, Lcom/yandex/mobile/ads/impl/sz$f;->b(Lcom/yandex/mobile/ads/impl/sz$f;)Lcom/yandex/mobile/ads/impl/rz;

    move-result-object v0

    if-ne v0, p1, :cond_3

    .line 18
    invoke-static {p2, v3}, Lcom/yandex/mobile/ads/impl/sz$f;->c(Lcom/yandex/mobile/ads/impl/sz$f;Lcom/yandex/mobile/ads/impl/rz;)V

    .line 19
    invoke-static {p2}, Lcom/yandex/mobile/ads/impl/sz$f;->a(Lcom/yandex/mobile/ads/impl/sz$f;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 20
    invoke-static {p2}, Lcom/yandex/mobile/ads/impl/sz$f;->a(Lcom/yandex/mobile/ads/impl/sz$f;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/rz;

    invoke-static {p2, v0}, Lcom/yandex/mobile/ads/impl/sz$f;->c(Lcom/yandex/mobile/ads/impl/sz$f;Lcom/yandex/mobile/ads/impl/rz;)V

    .line 21
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/rz;->d()V

    .line 22
    :cond_3
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/sz$g;->a:Lcom/yandex/mobile/ads/impl/sz;

    invoke-static {p2}, Lcom/yandex/mobile/ads/impl/sz;->b(Lcom/yandex/mobile/ads/impl/sz;)J

    move-result-wide v4

    cmp-long v0, v4, v1

    if-eqz v0, :cond_4

    .line 23
    invoke-static {p2}, Lcom/yandex/mobile/ads/impl/sz;->k(Lcom/yandex/mobile/ads/impl/sz;)Landroid/os/Handler;

    move-result-object p2

    .line 24
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 26
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/sz$g;->a:Lcom/yandex/mobile/ads/impl/sz;

    invoke-static {p2}, Lcom/yandex/mobile/ads/impl/sz;->e(Lcom/yandex/mobile/ads/impl/sz;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 27
    :cond_4
    :goto_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/sz$g;->a:Lcom/yandex/mobile/ads/impl/sz;

    .line 28
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sz;->g(Lcom/yandex/mobile/ads/impl/sz;)Lcom/yandex/mobile/ads/impl/l60;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 29
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sz;->f(Lcom/yandex/mobile/ads/impl/sz;)I

    move-result p1

    if-nez p1, :cond_5

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sz;->c(Lcom/yandex/mobile/ads/impl/sz;)Ljava/util/ArrayList;

    move-result-object p1

    .line 30
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sz;->d(Lcom/yandex/mobile/ads/impl/sz;)Ljava/util/Set;

    move-result-object p1

    .line 31
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 32
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sz;->g(Lcom/yandex/mobile/ads/impl/sz;)Lcom/yandex/mobile/ads/impl/l60;

    move-result-object p1

    .line 33
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    invoke-interface {p1}, Lcom/yandex/mobile/ads/impl/l60;->release()V

    .line 35
    invoke-static {p0, v3}, Lcom/yandex/mobile/ads/impl/sz;->l(Lcom/yandex/mobile/ads/impl/sz;Lcom/yandex/mobile/ads/impl/l60;)V

    :cond_5
    return-void
.end method

.method public final b(Lcom/yandex/mobile/ads/impl/rz;)V
    .locals 5

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/sz$g;->a:Lcom/yandex/mobile/ads/impl/sz;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/sz;->b(Lcom/yandex/mobile/ads/impl/sz;)J

    move-result-wide v1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/sz;->e(Lcom/yandex/mobile/ads/impl/sz;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/sz$g;->a:Lcom/yandex/mobile/ads/impl/sz;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sz;->k(Lcom/yandex/mobile/ads/impl/sz;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
