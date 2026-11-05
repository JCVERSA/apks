.class public Lcom/mopub/mraid/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mraid/b$e;,
        Lcom/mopub/mraid/b$c;,
        Lcom/mopub/mraid/b$d;,
        Lcom/mopub/mraid/b$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public b:J

.field public final c:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field public d:Ljava/lang/ref/WeakReference;

.field public final e:Ljava/util/Map;

.field public final f:Lcom/mopub/mraid/b$c;

.field public g:Lcom/mopub/mraid/b$e;

.field public final h:Lcom/mopub/mraid/b$d;

.field public final i:Landroid/os/Handler;

.field public j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Ljava/util/WeakHashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    new-instance v1, Lcom/mopub/mraid/b$c;

    invoke-direct {v1}, Lcom/mopub/mraid/b$c;-><init>()V

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/mopub/mraid/b;-><init>(Landroid/content/Context;Ljava/util/Map;Lcom/mopub/mraid/b$c;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Map;Lcom/mopub/mraid/b$c;Landroid/os/Handler;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mopub/mraid/b;->b:J

    iput-object p2, p0, Lcom/mopub/mraid/b;->e:Ljava/util/Map;

    iput-object p3, p0, Lcom/mopub/mraid/b;->f:Lcom/mopub/mraid/b$c;

    iput-object p4, p0, Lcom/mopub/mraid/b;->i:Landroid/os/Handler;

    new-instance p2, Lcom/mopub/mraid/b$d;

    invoke-direct {p2, p0}, Lcom/mopub/mraid/b$d;-><init>(Lcom/mopub/mraid/b;)V

    iput-object p2, p0, Lcom/mopub/mraid/b;->h:Lcom/mopub/mraid/b$d;

    new-instance p2, Ljava/util/ArrayList;

    const/16 p3, 0x32

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lcom/mopub/mraid/b;->a:Ljava/util/ArrayList;

    new-instance p2, Lcom/mopub/mraid/b$a;

    invoke-direct {p2, p0}, Lcom/mopub/mraid/b$a;-><init>(Lcom/mopub/mraid/b;)V

    iput-object p2, p0, Lcom/mopub/mraid/b;->c:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    new-instance p2, Ljava/lang/ref/WeakReference;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/mopub/mraid/b;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, p1, p3}, Lcom/mopub/mraid/b;->i(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic a(Lcom/mopub/mraid/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mopub/mraid/b;->j:Z

    return p1
.end method

.method public static synthetic b(Lcom/mopub/mraid/b;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/mopub/mraid/b;->e:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic c(Lcom/mopub/mraid/b;)Lcom/mopub/mraid/b$c;
    .locals 0

    iget-object p0, p0, Lcom/mopub/mraid/b;->f:Lcom/mopub/mraid/b$c;

    return-object p0
.end method

.method public static synthetic d(Lcom/mopub/mraid/b;)Lcom/mopub/mraid/b$e;
    .locals 0

    iget-object p0, p0, Lcom/mopub/mraid/b;->g:Lcom/mopub/mraid/b$e;

    return-object p0
.end method


# virtual methods
.method public e(Landroid/view/View;Landroid/view/View;IILjava/lang/Integer;)V
    .locals 2

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/mopub/mraid/b;->i(Landroid/content/Context;Landroid/view/View;)V

    iget-object v0, p0, Lcom/mopub/mraid/b;->e:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mraid/b$b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mopub/mraid/b$b;

    invoke-direct {v0}, Lcom/mopub/mraid/b$b;-><init>()V

    iget-object v1, p0, Lcom/mopub/mraid/b;->e:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mopub/mraid/b;->h()V

    :cond_0
    invoke-static {p4, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput-object p1, v0, Lcom/mopub/mraid/b$b;->d:Landroid/view/View;

    iput p3, v0, Lcom/mopub/mraid/b$b;->a:I

    iput p2, v0, Lcom/mopub/mraid/b$b;->b:I

    iget-wide p1, p0, Lcom/mopub/mraid/b;->b:J

    iput-wide p1, v0, Lcom/mopub/mraid/b$b;->c:J

    iput-object p5, v0, Lcom/mopub/mraid/b$b;->e:Ljava/lang/Integer;

    const-wide/16 p3, 0x1

    add-long/2addr p3, p1

    iput-wide p3, p0, Lcom/mopub/mraid/b;->b:J

    const-wide/16 v0, 0x32

    rem-long/2addr p3, v0

    const-wide/16 v0, 0x0

    cmp-long p5, p3, v0

    if-nez p5, :cond_1

    const-wide/16 p3, -0x31

    add-long/2addr p1, p3

    invoke-virtual {p0, p1, p2}, Lcom/mopub/mraid/b;->k(J)V

    :cond_1
    return-void
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lcom/mopub/mraid/b;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/mopub/mraid/b;->i:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v1, p0, Lcom/mopub/mraid/b;->j:Z

    return-void
.end method

.method public g(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/mopub/mraid/b;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public h()V
    .locals 4

    iget-boolean v0, p0, Lcom/mopub/mraid/b;->j:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/mraid/b;->j:Z

    iget-object v0, p0, Lcom/mopub/mraid/b;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/mraid/b;->h:Lcom/mopub/mraid/b$d;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final i(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/mopub/mraid/b;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2}, Lo/tz8;->c(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result p2

    if-nez p2, :cond_2

    return-void

    :cond_2
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/mopub/mraid/b;->d:Ljava/lang/ref/WeakReference;

    iget-object p2, p0, Lcom/mopub/mraid/b;->c:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public j(Lcom/mopub/mraid/b$e;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/mraid/b;->g:Lcom/mopub/mraid/b$e;

    return-void
.end method

.method public final k(J)V
    .locals 5

    iget-object v0, p0, Lcom/mopub/mraid/b;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mopub/mraid/b$b;

    iget-wide v2, v2, Lcom/mopub/mraid/b$b;->c:J

    cmp-long v4, v2, p1

    if-gez v4, :cond_0

    iget-object v2, p0, Lcom/mopub/mraid/b;->a:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/mopub/mraid/b;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p2}, Lcom/mopub/mraid/b;->g(Landroid/view/View;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/mopub/mraid/b;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
