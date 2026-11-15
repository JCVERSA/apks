.class public Lcom/iab/omid/library/hisavana/walking/TreeWalker;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lke/a$a;


# static fields
.field private static i:Lcom/iab/omid/library/hisavana/walking/TreeWalker;

.field private static j:Landroid/os/Handler;

.field private static k:Landroid/os/Handler;

.field private static final l:Ljava/lang/Runnable;

.field private static final m:Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/util/List;

.field private b:I

.field private c:Z

.field private final d:Ljava/util/List;

.field private e:Lke/b;

.field private f:Lcom/iab/omid/library/hisavana/walking/a;

.field private g:Lcom/iab/omid/library/hisavana/walking/b;

.field private h:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/iab/omid/library/hisavana/walking/TreeWalker;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->i:Lcom/iab/omid/library/hisavana/walking/TreeWalker;

    .line 7
    .line 8
    new-instance v0, Landroid/os/Handler;

    .line 9
    .line 10
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->j:Landroid/os/Handler;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    sput-object v0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->k:Landroid/os/Handler;

    .line 21
    .line 22
    new-instance v0, Lcom/iab/omid/library/hisavana/walking/TreeWalker$b;

    .line 23
    .line 24
    invoke-direct {v0}, Lcom/iab/omid/library/hisavana/walking/TreeWalker$b;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->l:Ljava/lang/Runnable;

    .line 28
    .line 29
    new-instance v0, Lcom/iab/omid/library/hisavana/walking/TreeWalker$c;

    .line 30
    .line 31
    invoke-direct {v0}, Lcom/iab/omid/library/hisavana/walking/TreeWalker$c;-><init>()V

    .line 32
    .line 33
    .line 34
    sput-object v0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->m:Ljava/lang/Runnable;

    .line 35
    .line 36
    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->a:Ljava/util/List;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->c:Z

    .line 13
    .line 14
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->d:Ljava/util/List;

    .line 20
    .line 21
    new-instance v0, Lcom/iab/omid/library/hisavana/walking/a;

    .line 22
    .line 23
    invoke-direct {v0}, Lcom/iab/omid/library/hisavana/walking/a;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->f:Lcom/iab/omid/library/hisavana/walking/a;

    .line 27
    .line 28
    new-instance v0, Lke/b;

    .line 29
    .line 30
    invoke-direct {v0}, Lke/b;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->e:Lke/b;

    .line 34
    .line 35
    new-instance v0, Lcom/iab/omid/library/hisavana/walking/b;

    .line 36
    .line 37
    new-instance v1, Lme/c;

    .line 38
    .line 39
    invoke-direct {v1}, Lme/c;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-direct {v0, v1}, Lcom/iab/omid/library/hisavana/walking/b;-><init>(Lme/c;)V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->g:Lcom/iab/omid/library/hisavana/walking/b;

    .line 46
    .line 47
    return-void
.end method

.method static synthetic b()Landroid/os/Handler;
    .locals 1

    .line 1
    sget-object v0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->k:Landroid/os/Handler;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic c(Lcom/iab/omid/library/hisavana/walking/TreeWalker;)Lcom/iab/omid/library/hisavana/walking/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->g:Lcom/iab/omid/library/hisavana/walking/b;

    .line 2
    .line 3
    return-object p0
.end method

.method private d(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->a:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->a:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 30
    .line 31
    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 32
    .line 33
    .line 34
    const/4 p1, 0x0

    .line 35
    throw p1

    .line 36
    :cond_1
    :goto_0
    return-void
.end method

.method private e(Landroid/view/View;Lke/a;Lorg/json/JSONObject;Lcom/iab/omid/library/hisavana/walking/c;Z)V
    .locals 6

    .line 1
    sget-object v0, Lcom/iab/omid/library/hisavana/walking/c;->a:Lcom/iab/omid/library/hisavana/walking/c;

    .line 2
    .line 3
    if-ne p4, v0, :cond_0

    .line 4
    .line 5
    const/4 p4, 0x1

    .line 6
    :goto_0
    move v4, p4

    .line 7
    goto :goto_1

    .line 8
    :cond_0
    const/4 p4, 0x0

    .line 9
    goto :goto_0

    .line 10
    :goto_1
    move-object v0, p2

    .line 11
    move-object v1, p1

    .line 12
    move-object v2, p3

    .line 13
    move-object v3, p0

    .line 14
    move v5, p5

    .line 15
    invoke-interface/range {v0 .. v5}, Lke/a;->a(Landroid/view/View;Lorg/json/JSONObject;Lke/a$a;ZZ)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private f(Ljava/lang/String;Landroid/view/View;Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->e:Lke/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lke/b;->b()Lke/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->f:Lcom/iab/omid/library/hisavana/walking/a;

    .line 8
    .line 9
    invoke-virtual {v1, p1}, Lcom/iab/omid/library/hisavana/walking/a;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0, p2}, Lke/a;->a(Landroid/view/View;)Lorg/json/JSONObject;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-static {p2, p1}, Lle/c;->h(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-static {p2, v1}, Lle/c;->o(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p3, p2}, Lle/c;->j(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method private g(Landroid/view/View;Lorg/json/JSONObject;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->f:Lcom/iab/omid/library/hisavana/walking/a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/iab/omid/library/hisavana/walking/a;->g(Landroid/view/View;)Lcom/iab/omid/library/hisavana/walking/a$a;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-static {p2, p1}, Lle/c;->f(Lorg/json/JSONObject;Lcom/iab/omid/library/hisavana/walking/a$a;)V

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    return p1

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    return p1
.end method

.method static synthetic h()Ljava/lang/Runnable;
    .locals 1

    .line 1
    sget-object v0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->l:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic i(Lcom/iab/omid/library/hisavana/walking/TreeWalker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->u()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private j(Landroid/view/View;Lorg/json/JSONObject;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->f:Lcom/iab/omid/library/hisavana/walking/a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/iab/omid/library/hisavana/walking/a;->j(Landroid/view/View;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {p2, v0}, Lle/c;->h(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->f:Lcom/iab/omid/library/hisavana/walking/a;

    .line 13
    .line 14
    invoke-virtual {v1, p1}, Lcom/iab/omid/library/hisavana/walking/a;->p(Landroid/view/View;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p2, p1}, Lle/c;->g(Lorg/json/JSONObject;Ljava/lang/Boolean;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->f:Lcom/iab/omid/library/hisavana/walking/a;

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lcom/iab/omid/library/hisavana/walking/a;->l(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-static {p2, p1}, Lle/c;->n(Lorg/json/JSONObject;Ljava/lang/Boolean;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->f:Lcom/iab/omid/library/hisavana/walking/a;

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/iab/omid/library/hisavana/walking/a;->n()V

    .line 41
    .line 42
    .line 43
    const/4 p1, 0x1

    .line 44
    return p1

    .line 45
    :cond_0
    const/4 p1, 0x0

    .line 46
    return p1
.end method

.method static synthetic k()Ljava/lang/Runnable;
    .locals 1

    .line 1
    sget-object v0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->m:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-object v0
.end method

.method private l()V
    .locals 4

    .line 1
    invoke-static {}, Lle/f;->b()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->h:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    invoke-direct {p0, v0, v1}, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->d(J)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private m()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->b:I

    .line 3
    .line 4
    iget-object v1, p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->d:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 7
    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->c:Z

    .line 10
    .line 11
    invoke-static {}, Lcom/iab/omid/library/hisavana/internal/c;->e()Lcom/iab/omid/library/hisavana/internal/c;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/iab/omid/library/hisavana/internal/c;->a()Ljava/util/Collection;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lcom/iab/omid/library/hisavana/adsession/h;

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/iab/omid/library/hisavana/adsession/h;->o()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->c:Z

    .line 43
    .line 44
    :cond_1
    invoke-static {}, Lle/f;->b()J

    .line 45
    .line 46
    .line 47
    move-result-wide v0

    .line 48
    iput-wide v0, p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->h:J

    .line 49
    .line 50
    return-void
.end method

.method public static p()Lcom/iab/omid/library/hisavana/walking/TreeWalker;
    .locals 1

    .line 1
    sget-object v0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->i:Lcom/iab/omid/library/hisavana/walking/TreeWalker;

    .line 2
    .line 3
    return-object v0
.end method

.method private r()V
    .locals 4

    .line 1
    sget-object v0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->k:Landroid/os/Handler;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/os/Handler;

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->k:Landroid/os/Handler;

    .line 15
    .line 16
    sget-object v1, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->l:Ljava/lang/Runnable;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    sget-object v0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->k:Landroid/os/Handler;

    .line 22
    .line 23
    sget-object v1, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->m:Ljava/lang/Runnable;

    .line 24
    .line 25
    const-wide/16 v2, 0xc8

    .line 26
    .line 27
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method private t()V
    .locals 2

    .line 1
    sget-object v0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->k:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v1, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->m:Ljava/lang/Runnable;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    sput-object v0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->k:Landroid/os/Handler;

    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method private u()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->m()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->n()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->l()V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/iab/omid/library/hisavana/internal/j;->f()Lcom/iab/omid/library/hisavana/internal/j;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/iab/omid/library/hisavana/internal/j;->a()V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lke/a;Lorg/json/JSONObject;Z)V
    .locals 7

    .line 1
    invoke-static {p1}, Lle/i;->f(Landroid/view/View;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->f:Lcom/iab/omid/library/hisavana/walking/a;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/iab/omid/library/hisavana/walking/a;->m(Landroid/view/View;)Lcom/iab/omid/library/hisavana/walking/c;

    .line 11
    .line 12
    .line 13
    move-result-object v5

    .line 14
    sget-object v0, Lcom/iab/omid/library/hisavana/walking/c;->c:Lcom/iab/omid/library/hisavana/walking/c;

    .line 15
    .line 16
    if-ne v5, v0, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    invoke-interface {p2, p1}, Lke/a;->a(Landroid/view/View;)Lorg/json/JSONObject;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-static {p3, v4}, Lle/c;->j(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, p1, v4}, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->j(Landroid/view/View;Lorg/json/JSONObject;)Z

    .line 27
    .line 28
    .line 29
    move-result p3

    .line 30
    const/4 v0, 0x1

    .line 31
    if-nez p3, :cond_5

    .line 32
    .line 33
    invoke-direct {p0, p1, v4}, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->g(Landroid/view/View;Lorg/json/JSONObject;)Z

    .line 34
    .line 35
    .line 36
    move-result p3

    .line 37
    if-nez p4, :cond_3

    .line 38
    .line 39
    if-eqz p3, :cond_2

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    const/4 p3, 0x0

    .line 43
    move v6, p3

    .line 44
    goto :goto_1

    .line 45
    :cond_3
    :goto_0
    move v6, v0

    .line 46
    :goto_1
    iget-boolean p3, p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->c:Z

    .line 47
    .line 48
    if-eqz p3, :cond_4

    .line 49
    .line 50
    sget-object p3, Lcom/iab/omid/library/hisavana/walking/c;->b:Lcom/iab/omid/library/hisavana/walking/c;

    .line 51
    .line 52
    if-ne v5, p3, :cond_4

    .line 53
    .line 54
    if-nez v6, :cond_4

    .line 55
    .line 56
    iget-object p3, p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->d:Ljava/util/List;

    .line 57
    .line 58
    new-instance p4, Lne/a;

    .line 59
    .line 60
    invoke-direct {p4, p1}, Lne/a;-><init>(Landroid/view/View;)V

    .line 61
    .line 62
    .line 63
    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    :cond_4
    move-object v1, p0

    .line 67
    move-object v2, p1

    .line 68
    move-object v3, p2

    .line 69
    invoke-direct/range {v1 .. v6}, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->e(Landroid/view/View;Lke/a;Lorg/json/JSONObject;Lcom/iab/omid/library/hisavana/walking/c;Z)V

    .line 70
    .line 71
    .line 72
    :cond_5
    iget p1, p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->b:I

    .line 73
    .line 74
    add-int/2addr p1, v0

    .line 75
    iput p1, p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->b:I

    .line 76
    .line 77
    return-void
.end method

.method n()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->f:Lcom/iab/omid/library/hisavana/walking/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/iab/omid/library/hisavana/walking/a;->o()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lle/f;->b()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iget-object v2, p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->e:Lke/b;

    .line 11
    .line 12
    invoke-virtual {v2}, Lke/b;->a()Lke/a;

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    iget-object v2, p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->f:Lcom/iab/omid/library/hisavana/walking/a;

    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/iab/omid/library/hisavana/walking/a;->i()Ljava/util/HashSet;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/4 v3, 0x0

    .line 27
    if-lez v2, :cond_0

    .line 28
    .line 29
    iget-object v2, p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->f:Lcom/iab/omid/library/hisavana/walking/a;

    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/iab/omid/library/hisavana/walking/a;->i()Ljava/util/HashSet;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-eqz v4, :cond_0

    .line 44
    .line 45
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    check-cast v4, Ljava/lang/String;

    .line 50
    .line 51
    invoke-interface {v5, v3}, Lke/a;->a(Landroid/view/View;)Lorg/json/JSONObject;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    iget-object v7, p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->f:Lcom/iab/omid/library/hisavana/walking/a;

    .line 56
    .line 57
    invoke-virtual {v7, v4}, Lcom/iab/omid/library/hisavana/walking/a;->a(Ljava/lang/String;)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    invoke-direct {p0, v4, v7, v6}, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->f(Ljava/lang/String;Landroid/view/View;Lorg/json/JSONObject;)V

    .line 62
    .line 63
    .line 64
    invoke-static {v6}, Lle/c;->m(Lorg/json/JSONObject;)V

    .line 65
    .line 66
    .line 67
    new-instance v7, Ljava/util/HashSet;

    .line 68
    .line 69
    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v7, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    iget-object v4, p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->g:Lcom/iab/omid/library/hisavana/walking/b;

    .line 76
    .line 77
    invoke-virtual {v4, v6, v7, v0, v1}, Lcom/iab/omid/library/hisavana/walking/b;->b(Lorg/json/JSONObject;Ljava/util/HashSet;J)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_0
    iget-object v2, p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->f:Lcom/iab/omid/library/hisavana/walking/a;

    .line 82
    .line 83
    invoke-virtual {v2}, Lcom/iab/omid/library/hisavana/walking/a;->k()Ljava/util/HashSet;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    if-lez v2, :cond_1

    .line 92
    .line 93
    invoke-interface {v5, v3}, Lke/a;->a(Landroid/view/View;)Lorg/json/JSONObject;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    sget-object v7, Lcom/iab/omid/library/hisavana/walking/c;->a:Lcom/iab/omid/library/hisavana/walking/c;

    .line 98
    .line 99
    const/4 v4, 0x0

    .line 100
    const/4 v8, 0x0

    .line 101
    move-object v3, p0

    .line 102
    move-object v6, v2

    .line 103
    invoke-direct/range {v3 .. v8}, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->e(Landroid/view/View;Lke/a;Lorg/json/JSONObject;Lcom/iab/omid/library/hisavana/walking/c;Z)V

    .line 104
    .line 105
    .line 106
    invoke-static {v2}, Lle/c;->m(Lorg/json/JSONObject;)V

    .line 107
    .line 108
    .line 109
    iget-object v3, p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->g:Lcom/iab/omid/library/hisavana/walking/b;

    .line 110
    .line 111
    iget-object v4, p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->f:Lcom/iab/omid/library/hisavana/walking/a;

    .line 112
    .line 113
    invoke-virtual {v4}, Lcom/iab/omid/library/hisavana/walking/a;->k()Ljava/util/HashSet;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    invoke-virtual {v3, v2, v4, v0, v1}, Lcom/iab/omid/library/hisavana/walking/b;->d(Lorg/json/JSONObject;Ljava/util/HashSet;J)V

    .line 118
    .line 119
    .line 120
    iget-boolean v0, p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->c:Z

    .line 121
    .line 122
    if-eqz v0, :cond_2

    .line 123
    .line 124
    invoke-static {}, Lcom/iab/omid/library/hisavana/internal/c;->e()Lcom/iab/omid/library/hisavana/internal/c;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {v0}, Lcom/iab/omid/library/hisavana/internal/c;->a()Ljava/util/Collection;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    if-eqz v1, :cond_2

    .line 141
    .line 142
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    check-cast v1, Lcom/iab/omid/library/hisavana/adsession/h;

    .line 147
    .line 148
    iget-object v2, p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->d:Ljava/util/List;

    .line 149
    .line 150
    invoke-virtual {v1, v2}, Lcom/iab/omid/library/hisavana/adsession/h;->h(Ljava/util/List;)V

    .line 151
    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->g:Lcom/iab/omid/library/hisavana/walking/b;

    .line 155
    .line 156
    invoke-virtual {v0}, Lcom/iab/omid/library/hisavana/walking/b;->c()V

    .line 157
    .line 158
    .line 159
    :cond_2
    iget-object v0, p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->f:Lcom/iab/omid/library/hisavana/walking/a;

    .line 160
    .line 161
    invoke-virtual {v0}, Lcom/iab/omid/library/hisavana/walking/a;->d()V

    .line 162
    .line 163
    .line 164
    return-void
.end method

.method public o()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->t()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public q()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->r()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public s()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->o()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->a:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7
    .line 8
    .line 9
    sget-object v0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->j:Landroid/os/Handler;

    .line 10
    .line 11
    new-instance v1, Lcom/iab/omid/library/hisavana/walking/TreeWalker$a;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lcom/iab/omid/library/hisavana/walking/TreeWalker$a;-><init>(Lcom/iab/omid/library/hisavana/walking/TreeWalker;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method
