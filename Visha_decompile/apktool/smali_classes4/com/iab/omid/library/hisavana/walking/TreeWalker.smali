.class public Lcom/iab/omid/library/hisavana/walking/TreeWalker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj3d$a;


# static fields
.field public static i:Lcom/iab/omid/library/hisavana/walking/TreeWalker;

.field public static j:Landroid/os/Handler;

.field public static k:Landroid/os/Handler;

.field public static final l:Ljava/lang/Runnable;

.field public static final m:Ljava/lang/Runnable;


# instance fields
.field public a:Ljava/util/List;

.field public b:I

.field public c:Z

.field public final d:Ljava/util/List;

.field public e:Lv6d;

.field public f:Lcom/iab/omid/library/hisavana/walking/a;

.field public g:Lb7d;

.field public h:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;

    invoke-direct {v0}, Lcom/iab/omid/library/hisavana/walking/TreeWalker;-><init>()V

    sput-object v0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->i:Lcom/iab/omid/library/hisavana/walking/TreeWalker;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->j:Landroid/os/Handler;

    const/4 v0, 0x0

    sput-object v0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->k:Landroid/os/Handler;

    new-instance v0, Lcom/iab/omid/library/hisavana/walking/TreeWalker$b;

    invoke-direct {v0}, Lcom/iab/omid/library/hisavana/walking/TreeWalker$b;-><init>()V

    sput-object v0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->l:Ljava/lang/Runnable;

    new-instance v0, Lcom/iab/omid/library/hisavana/walking/TreeWalker$c;

    invoke-direct {v0}, Lcom/iab/omid/library/hisavana/walking/TreeWalker$c;-><init>()V

    sput-object v0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->m:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->a:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->c:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->d:Ljava/util/List;

    new-instance v0, Lcom/iab/omid/library/hisavana/walking/a;

    invoke-direct {v0}, Lcom/iab/omid/library/hisavana/walking/a;-><init>()V

    iput-object v0, p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->f:Lcom/iab/omid/library/hisavana/walking/a;

    new-instance v0, Lv6d;

    invoke-direct {v0}, Lv6d;-><init>()V

    iput-object v0, p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->e:Lv6d;

    new-instance v0, Lb7d;

    new-instance v1, Ll8d;

    invoke-direct {v1}, Ll8d;-><init>()V

    invoke-direct {v0, v1}, Lb7d;-><init>(Ll8d;)V

    iput-object v0, p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->g:Lb7d;

    return-void
.end method

.method public static synthetic b()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->k:Landroid/os/Handler;

    return-object v0
.end method

.method public static synthetic c(Lcom/iab/omid/library/hisavana/walking/TreeWalker;)Lb7d;
    .locals 0

    iget-object p0, p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->g:Lb7d;

    return-object p0
.end method

.method public static synthetic h()Ljava/lang/Runnable;
    .locals 1

    sget-object v0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->l:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static synthetic i(Lcom/iab/omid/library/hisavana/walking/TreeWalker;)V
    .locals 0

    invoke-virtual {p0}, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->u()V

    return-void
.end method

.method public static synthetic k()Ljava/lang/Runnable;
    .locals 1

    sget-object v0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->m:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static p()Lcom/iab/omid/library/hisavana/walking/TreeWalker;
    .locals 1

    sget-object v0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->i:Lcom/iab/omid/library/hisavana/walking/TreeWalker;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/View;Lj3d;Lorg/json/JSONObject;Z)V
    .locals 7

    invoke-static {p1}, Lghd;->f(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->f:Lcom/iab/omid/library/hisavana/walking/a;

    invoke-virtual {v0, p1}, Lcom/iab/omid/library/hisavana/walking/a;->m(Landroid/view/View;)Lcom/iab/omid/library/hisavana/walking/c;

    move-result-object v5

    sget-object v0, Lcom/iab/omid/library/hisavana/walking/c;->c:Lcom/iab/omid/library/hisavana/walking/c;

    if-ne v5, v0, :cond_1

    return-void

    :cond_1
    invoke-interface {p2, p1}, Lj3d;->a(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {p3, v4}, Lk8d;->j(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    invoke-virtual {p0, p1, v4}, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->j(Landroid/view/View;Lorg/json/JSONObject;)Z

    move-result p3

    const/4 v0, 0x1

    if-nez p3, :cond_5

    invoke-virtual {p0, p1, v4}, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->g(Landroid/view/View;Lorg/json/JSONObject;)Z

    move-result p3

    if-nez p4, :cond_3

    if-eqz p3, :cond_2

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    move v6, p3

    goto :goto_1

    :cond_3
    :goto_0
    move v6, v0

    :goto_1
    iget-boolean p3, p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->c:Z

    if-eqz p3, :cond_4

    sget-object p3, Lcom/iab/omid/library/hisavana/walking/c;->b:Lcom/iab/omid/library/hisavana/walking/c;

    if-ne v5, p3, :cond_4

    if-nez v6, :cond_4

    iget-object p3, p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->d:Ljava/util/List;

    new-instance p4, Lv1d;

    invoke-direct {p4, p1}, Lv1d;-><init>(Landroid/view/View;)V

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->e(Landroid/view/View;Lj3d;Lorg/json/JSONObject;Lcom/iab/omid/library/hisavana/walking/c;Z)V

    :cond_5
    iget p1, p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->b:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->b:I

    return-void
.end method

.method public final d(J)V
    .locals 1

    iget-object v0, p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object p0, p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lubc;->a(Ljava/lang/Object;)V

    sget-object p0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public final e(Landroid/view/View;Lj3d;Lorg/json/JSONObject;Lcom/iab/omid/library/hisavana/walking/c;Z)V
    .locals 6

    sget-object v0, Lcom/iab/omid/library/hisavana/walking/c;->a:Lcom/iab/omid/library/hisavana/walking/c;

    if-ne p4, v0, :cond_0

    const/4 p4, 0x1

    :goto_0
    move v4, p4

    goto :goto_1

    :cond_0
    const/4 p4, 0x0

    goto :goto_0

    :goto_1
    move-object v0, p2

    move-object v1, p1

    move-object v2, p3

    move-object v3, p0

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lj3d;->a(Landroid/view/View;Lorg/json/JSONObject;Lj3d$a;ZZ)V

    return-void
.end method

.method public final f(Ljava/lang/String;Landroid/view/View;Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->e:Lv6d;

    invoke-virtual {v0}, Lv6d;->b()Lj3d;

    move-result-object v0

    iget-object p0, p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->f:Lcom/iab/omid/library/hisavana/walking/a;

    invoke-virtual {p0, p1}, Lcom/iab/omid/library/hisavana/walking/a;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {v0, p2}, Lj3d;->a(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-static {p2, p1}, Lk8d;->h(Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-static {p2, p0}, Lk8d;->o(Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-static {p3, p2}, Lk8d;->j(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method public final g(Landroid/view/View;Lorg/json/JSONObject;)Z
    .locals 0

    iget-object p0, p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->f:Lcom/iab/omid/library/hisavana/walking/a;

    invoke-virtual {p0, p1}, Lcom/iab/omid/library/hisavana/walking/a;->g(Landroid/view/View;)Lcom/iab/omid/library/hisavana/walking/a$a;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p2, p0}, Lk8d;->f(Lorg/json/JSONObject;Lcom/iab/omid/library/hisavana/walking/a$a;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final j(Landroid/view/View;Lorg/json/JSONObject;)Z
    .locals 2

    iget-object v0, p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->f:Lcom/iab/omid/library/hisavana/walking/a;

    invoke-virtual {v0, p1}, Lcom/iab/omid/library/hisavana/walking/a;->j(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p2, v0}, Lk8d;->h(Lorg/json/JSONObject;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->f:Lcom/iab/omid/library/hisavana/walking/a;

    invoke-virtual {v1, p1}, Lcom/iab/omid/library/hisavana/walking/a;->p(Landroid/view/View;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2, p1}, Lk8d;->g(Lorg/json/JSONObject;Ljava/lang/Boolean;)V

    iget-object p1, p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->f:Lcom/iab/omid/library/hisavana/walking/a;

    invoke-virtual {p1, v0}, Lcom/iab/omid/library/hisavana/walking/a;->l(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2, p1}, Lk8d;->n(Lorg/json/JSONObject;Ljava/lang/Boolean;)V

    iget-object p0, p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->f:Lcom/iab/omid/library/hisavana/walking/a;

    invoke-virtual {p0}, Lcom/iab/omid/library/hisavana/walking/a;->n()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final l()V
    .locals 4

    invoke-static {}, Lqed;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->h:J

    sub-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->d(J)V

    return-void
.end method

.method public final m()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->b:I

    iget-object v1, p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iput-boolean v0, p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->c:Z

    invoke-static {}, Li8d;->e()Li8d;

    move-result-object v0

    invoke-virtual {v0}, Li8d;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le3d;

    invoke-virtual {v1}, Le3d;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->c:Z

    :cond_1
    invoke-static {}, Lqed;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->h:J

    return-void
.end method

.method public n()V
    .locals 9

    iget-object v0, p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->f:Lcom/iab/omid/library/hisavana/walking/a;

    invoke-virtual {v0}, Lcom/iab/omid/library/hisavana/walking/a;->o()V

    invoke-static {}, Lqed;->b()J

    move-result-wide v0

    iget-object v2, p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->e:Lv6d;

    invoke-virtual {v2}, Lv6d;->a()Lj3d;

    move-result-object v5

    iget-object v2, p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->f:Lcom/iab/omid/library/hisavana/walking/a;

    invoke-virtual {v2}, Lcom/iab/omid/library/hisavana/walking/a;->i()Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->f:Lcom/iab/omid/library/hisavana/walking/a;

    invoke-virtual {v2}, Lcom/iab/omid/library/hisavana/walking/a;->i()Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v5, v3}, Lj3d;->a(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v6

    iget-object v7, p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->f:Lcom/iab/omid/library/hisavana/walking/a;

    invoke-virtual {v7, v4}, Lcom/iab/omid/library/hisavana/walking/a;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, v4, v7, v6}, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->f(Ljava/lang/String;Landroid/view/View;Lorg/json/JSONObject;)V

    invoke-static {v6}, Lk8d;->m(Lorg/json/JSONObject;)V

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v7, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->g:Lb7d;

    invoke-virtual {v4, v6, v7, v0, v1}, Lb7d;->b(Lorg/json/JSONObject;Ljava/util/HashSet;J)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->f:Lcom/iab/omid/library/hisavana/walking/a;

    invoke-virtual {v2}, Lcom/iab/omid/library/hisavana/walking/a;->k()Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-interface {v5, v3}, Lj3d;->a(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v2

    sget-object v7, Lcom/iab/omid/library/hisavana/walking/c;->a:Lcom/iab/omid/library/hisavana/walking/c;

    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v6, v2

    invoke-virtual/range {v3 .. v8}, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->e(Landroid/view/View;Lj3d;Lorg/json/JSONObject;Lcom/iab/omid/library/hisavana/walking/c;Z)V

    invoke-static {v2}, Lk8d;->m(Lorg/json/JSONObject;)V

    iget-object v3, p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->g:Lb7d;

    iget-object v4, p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->f:Lcom/iab/omid/library/hisavana/walking/a;

    invoke-virtual {v4}, Lcom/iab/omid/library/hisavana/walking/a;->k()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v3, v2, v4, v0, v1}, Lb7d;->d(Lorg/json/JSONObject;Ljava/util/HashSet;J)V

    iget-boolean v0, p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->c:Z

    if-eqz v0, :cond_2

    invoke-static {}, Li8d;->e()Li8d;

    move-result-object v0

    invoke-virtual {v0}, Li8d;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le3d;

    iget-object v2, p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->d:Ljava/util/List;

    invoke-virtual {v1, v2}, Le3d;->h(Ljava/util/List;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->g:Lb7d;

    invoke-virtual {v0}, Lb7d;->c()V

    :cond_2
    iget-object p0, p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->f:Lcom/iab/omid/library/hisavana/walking/a;

    invoke-virtual {p0}, Lcom/iab/omid/library/hisavana/walking/a;->d()V

    return-void
.end method

.method public o()V
    .locals 0

    invoke-virtual {p0}, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->t()V

    return-void
.end method

.method public q()V
    .locals 0

    invoke-virtual {p0}, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->r()V

    return-void
.end method

.method public final r()V
    .locals 3

    sget-object p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->k:Landroid/os/Handler;

    if-nez p0, :cond_0

    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->k:Landroid/os/Handler;

    sget-object v0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->l:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->k:Landroid/os/Handler;

    sget-object v0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->m:Ljava/lang/Runnable;

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public s()V
    .locals 2

    invoke-virtual {p0}, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->o()V

    iget-object v0, p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->j:Landroid/os/Handler;

    new-instance v1, Lcom/iab/omid/library/hisavana/walking/TreeWalker$a;

    invoke-direct {v1, p0}, Lcom/iab/omid/library/hisavana/walking/TreeWalker$a;-><init>(Lcom/iab/omid/library/hisavana/walking/TreeWalker;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final t()V
    .locals 1

    sget-object p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->k:Landroid/os/Handler;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->m:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p0, 0x0

    sput-object p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->k:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method public final u()V
    .locals 0

    invoke-virtual {p0}, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->m()V

    invoke-virtual {p0}, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->n()V

    invoke-virtual {p0}, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->l()V

    invoke-static {}, Lnjd;->f()Lnjd;

    move-result-object p0

    invoke-virtual {p0}, Lnjd;->a()V

    return-void
.end method
