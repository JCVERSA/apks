.class public Lcom/mgmi/ads/api/e/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgmi/ads/api/e/j$b;,
        Lcom/mgmi/ads/api/e/j$d;,
        Lcom/mgmi/ads/api/e/j$a;,
        Lcom/mgmi/ads/api/e/j$c;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mgmi/ads/api/e/j$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mgmi/ads/api/e/j$c;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/mgmi/ads/api/e/j$b;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mgmi/ads/api/e/j;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mgmi/ads/api/e/j;->b:Ljava/util/List;

    new-instance v0, Lcom/mgmi/ads/api/e/j$b;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/mgmi/ads/api/e/j$b;-><init>(Landroid/os/Looper;Lcom/mgmi/ads/api/e/j;)V

    iput-object v0, p0, Lcom/mgmi/ads/api/e/j;->c:Lcom/mgmi/ads/api/e/j$b;

    return-void
.end method

.method public static synthetic a(Lcom/mgmi/ads/api/e/j;Lcom/mgmi/ads/api/e/j$d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mgmi/ads/api/e/j;->d(Lcom/mgmi/ads/api/e/j$d;)V

    return-void
.end method

.method public static synthetic b(Lcom/mgmi/ads/api/e/j;Lcom/mgmi/ads/api/e/j$d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mgmi/ads/api/e/j;->f(Lcom/mgmi/ads/api/e/j$d;)V

    return-void
.end method

.method public static synthetic c(Lcom/mgmi/ads/api/e/j;Lcom/mgmi/ads/api/e/j$d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mgmi/ads/api/e/j;->e(Lcom/mgmi/ads/api/e/j$d;)V

    return-void
.end method

.method private d(Lcom/mgmi/ads/api/e/j$d;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/mgmi/ads/api/e/j;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, Lcom/mgmi/ads/api/e/j;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mgmi/ads/api/e/j$a;

    .line 4
    invoke-interface {v2, p1}, Lcom/mgmi/ads/api/e/j$a;->c(Lcom/mgmi/ads/api/e/j$d;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic d(Lcom/mgmi/ads/api/e/j;Lcom/mgmi/ads/api/e/j$d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mgmi/ads/api/e/j;->h(Lcom/mgmi/ads/api/e/j$d;)V

    return-void
.end method

.method private e(Lcom/mgmi/ads/api/e/j$d;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/mgmi/ads/api/e/j;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, Lcom/mgmi/ads/api/e/j;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mgmi/ads/api/e/j$a;

    .line 4
    invoke-interface {v2, p1}, Lcom/mgmi/ads/api/e/j$a;->a(Lcom/mgmi/ads/api/e/j$d;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic e(Lcom/mgmi/ads/api/e/j;Lcom/mgmi/ads/api/e/j$d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mgmi/ads/api/e/j;->g(Lcom/mgmi/ads/api/e/j$d;)V

    return-void
.end method

.method private f(Lcom/mgmi/ads/api/e/j$d;)V
    .locals 3

    iget-object v0, p0, Lcom/mgmi/ads/api/e/j;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/mgmi/ads/api/e/j;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mgmi/ads/api/e/j$c;

    invoke-interface {v2, p1}, Lcom/mgmi/ads/api/e/j$c;->a(Lcom/mgmi/ads/api/e/j$d;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private g(Lcom/mgmi/ads/api/e/j$d;)V
    .locals 4

    iget-object v0, p0, Lcom/mgmi/ads/api/e/j;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mgmi/ads/api/e/j;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/mgmi/ads/api/e/j;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mgmi/ads/api/e/j$a;

    iput-boolean v1, p1, Lcom/mgmi/ads/api/e/j$d;->d:Z

    invoke-interface {v3, p1}, Lcom/mgmi/ads/api/e/j$a;->b(Lcom/mgmi/ads/api/e/j$d;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_1
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/mgmi/ads/api/e/j;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mgmi/ads/api/e/j$c;

    invoke-interface {v2, p1}, Lcom/mgmi/ads/api/e/j$c;->b(Lcom/mgmi/ads/api/e/j$d;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private h(Lcom/mgmi/ads/api/e/j$d;)V
    .locals 3

    iget-object v0, p0, Lcom/mgmi/ads/api/e/j;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/mgmi/ads/api/e/j;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mgmi/ads/api/e/j$a;

    invoke-interface {v2, p1}, Lcom/mgmi/ads/api/e/j$a;->b(Lcom/mgmi/ads/api/e/j$d;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/mgmi/ads/api/e/j$a;)V
    .locals 1

    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/mgmi/ads/api/e/j;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/mgmi/ads/api/e/j;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 5
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(Lcom/mgmi/ads/api/e/j$d;)V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/mgmi/ads/api/e/j;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 7
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const v1, 0xb307

    .line 8
    iput v1, v0, Landroid/os/Message;->what:I

    .line 9
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 10
    iget-object p0, p0, Lcom/mgmi/ads/api/e/j;->c:Lcom/mgmi/ads/api/e/j$b;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public declared-synchronized b(Lcom/mgmi/ads/api/e/j$a;)V
    .locals 1

    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/mgmi/ads/api/e/j;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/mgmi/ads/api/e/j;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/mgmi/ads/api/e/j;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 5
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public b(Lcom/mgmi/ads/api/e/j$d;)V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/mgmi/ads/api/e/j;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 7
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const v1, 0xb309

    .line 8
    iput v1, v0, Landroid/os/Message;->what:I

    .line 9
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 10
    iget-object p0, p0, Lcom/mgmi/ads/api/e/j;->c:Lcom/mgmi/ads/api/e/j$b;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public c(Lcom/mgmi/ads/api/e/j$d;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/mgmi/ads/api/e/j;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const v1, 0xb310

    .line 4
    iput v1, v0, Landroid/os/Message;->what:I

    .line 5
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 6
    iget-object p0, p0, Lcom/mgmi/ads/api/e/j;->c:Lcom/mgmi/ads/api/e/j$b;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
