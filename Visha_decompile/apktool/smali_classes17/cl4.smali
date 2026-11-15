.class public Lcl4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcl4$d;,
        Lcl4$e;
    }
.end annotation


# instance fields
.field public a:Landroid/view/View;

.field public b:Lfx9;

.field public c:Z

.field public d:Ljava/util/ArrayList;

.field public e:Lcl4$e;

.field public f:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcl4;->d:Ljava/util/ArrayList;

    new-instance v0, Lcl4$c;

    invoke-direct {v0, p0}, Lcl4$c;-><init>(Lcl4;)V

    iput-object v0, p0, Lcl4;->f:Landroid/os/Handler;

    return-void
.end method

.method public static f()Lcl4;
    .locals 1

    sget-object v0, Lcl4$d;->a:Lcl4;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcl4;->j(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcl4;->a:Landroid/view/View;

    iget-object p1, p0, Lcl4;->b:Lfx9;

    invoke-virtual {p1}, Lfx9;->g()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcl4;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcl4$a;

    invoke-direct {v0, p0}, Lcl4$a;-><init>(Lcl4;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    :cond_1
    iget-object p1, p0, Lcl4;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcl4$b;

    invoke-direct {v0, p0}, Lcl4$b;-><init>(Lcl4;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcl4;->c:Z

    iget-object p0, p0, Lcl4;->f:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcl4;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcl4;->d:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    :goto_0
    return-void
.end method

.method public d()Lcom/wh/stat/layout/StatLayout;
    .locals 4

    iget-object p0, p0, Lcl4;->a:Landroid/view/View;

    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/wh/stat/layout/StatLayout;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/wh/stat/layout/StatLayout;

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public e()Lfx9;
    .locals 0

    iget-object p0, p0, Lcl4;->b:Lfx9;

    return-object p0
.end method

.method public g()I
    .locals 0

    iget-object p0, p0, Lcl4;->b:Lfx9;

    invoke-virtual {p0}, Lfx9;->e()I

    move-result p0

    return p0
.end method

.method public h()I
    .locals 0

    iget-object p0, p0, Lcl4;->b:Lfx9;

    iget p0, p0, Lfx9;->a:I

    return p0
.end method

.method public i(Lfx9;)V
    .locals 3

    if-eqz p1, :cond_3

    iput-object p1, p0, Lcl4;->b:Lfx9;

    invoke-virtual {p1}, Lfx9;->e()I

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lg5;

    invoke-direct {p1}, Lg5;-><init>()V

    iget-object v0, p0, Lcl4;->b:Lfx9;

    invoke-virtual {v0}, Lfx9;->a()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Llu4;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcl4;->b:Lfx9;

    invoke-virtual {v0}, Lfx9;->a()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Llu4;

    invoke-interface {v0, p1}, Llu4;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v0, p0, Lcl4;->b:Lfx9;

    invoke-virtual {v0}, Lfx9;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v0, p0, Lcl4;->b:Lfx9;

    invoke-virtual {v0}, Lfx9;->d()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcl4;->b:Lfx9;

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lfx9;->o(Landroid/graphics/Rect;)V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/ClassCastException;

    const-string p1, "Application\u6ca1\u6709\u5b9e\u73b0IContext\u63a5\u53e3"

    invoke-direct {p0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "StatBuilder\u5728\u6784\u5efa\u65f6\u9700\u8981\u521d\u59cb\u5316ID\uff1asetTagId(R.id.xxx)"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\u8bf7\u4f7f\u7528StatBuilder\u6784\u5efa\u7c7b\u8fdb\u884c\u521d\u59cb\u5316"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public j(Landroid/app/Activity;)Z
    .locals 2

    iget-object p0, p0, Lcl4;->b:Lfx9;

    invoke-virtual {p0}, Lfx9;->c()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    return v0
.end method

.method public k(Landroid/view/View;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcl4;->m(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public final l()Z
    .locals 0

    iget-object p0, p0, Lcl4;->b:Lfx9;

    invoke-virtual {p0}, Lfx9;->i()Z

    move-result p0

    return p0
.end method

.method public m(Landroid/view/View;)Z
    .locals 0

    invoke-virtual {p0}, Lcl4;->g()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public n()V
    .locals 6

    invoke-virtual {p0}, Lcl4;->d()Lcom/wh/stat/layout/StatLayout;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcl4;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/wh/stat/layout/StatLayout;->findDisplayView(Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    invoke-virtual {p0}, Lcl4;->g()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcl4;->k(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v3}, Lcom/wh/stat/layout/StatLayout;->isViewValidRange(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcl4;->l()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcl4;->h()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcl4;->h()I

    move-result v4

    const-string v5, "msg"

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcl4;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcl4;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcl4;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lcl4;->e:Lcl4$e;

    if-eqz p0, :cond_5

    invoke-interface {p0, v0}, Lcl4$e;->a(Ljava/util/ArrayList;)V

    goto :goto_2

    :cond_4
    iget-object p0, p0, Lcl4;->d:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_5
    :goto_2
    return-void
.end method

.method public o()V
    .locals 3

    invoke-virtual {p0}, Lcl4;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcl4;->c:Z

    iget-object v0, p0, Lcl4;->f:Landroid/os/Handler;

    iget-object p0, p0, Lcl4;->b:Lfx9;

    invoke-virtual {p0}, Lfx9;->b()J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public p()V
    .locals 3

    invoke-virtual {p0}, Lcl4;->b()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcl4;->c:Z

    iget-object v0, p0, Lcl4;->f:Landroid/os/Handler;

    iget-object p0, p0, Lcl4;->b:Lfx9;

    iget-wide v1, p0, Lfx9;->b:J

    const/4 p0, 0x2

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public q(Lcl4$e;)V
    .locals 0

    iput-object p1, p0, Lcl4;->e:Lcl4$e;

    return-void
.end method

.method public r()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcl4;->a:Landroid/view/View;

    return-void
.end method
