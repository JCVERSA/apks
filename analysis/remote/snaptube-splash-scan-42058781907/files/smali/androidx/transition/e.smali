.class public Landroidx/transition/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/e$a;
    }
.end annotation


# static fields
.field public static c:Landroidx/transition/Transition;

.field public static d:Ljava/lang/ThreadLocal;

.field public static e:Ljava/util/ArrayList;


# instance fields
.field public a:Lo/zt;

.field public b:Lo/zt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/py;

    invoke-direct {v0}, Lo/py;-><init>()V

    sput-object v0, Landroidx/transition/e;->c:Landroidx/transition/Transition;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/transition/e;->d:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroidx/transition/e;->e:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lo/zt;

    invoke-direct {v0}, Lo/zt;-><init>()V

    iput-object v0, p0, Landroidx/transition/e;->a:Lo/zt;

    new-instance v0, Lo/zt;

    invoke-direct {v0}, Lo/zt;-><init>()V

    iput-object v0, p0, Landroidx/transition/e;->b:Lo/zt;

    return-void
.end method

.method public static a(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V
    .locals 1

    sget-object v0, Landroidx/transition/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroidx/transition/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez p1, :cond_0

    sget-object p1, Landroidx/transition/e;->c:Landroidx/transition/Transition;

    :cond_0
    invoke-virtual {p1}, Landroidx/transition/Transition;->n()Landroidx/transition/Transition;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/transition/e;->d(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lo/uw6;->b(Landroid/view/ViewGroup;Lo/uw6;)V

    invoke-static {p0, p1}, Landroidx/transition/e;->c(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    :cond_1
    return-void
.end method

.method public static b()Lo/zt;
    .locals 3

    sget-object v0, Landroidx/transition/e;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/zt;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lo/zt;

    invoke-direct {v0}, Lo/zt;-><init>()V

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sget-object v2, Landroidx/transition/e;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static c(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    new-instance v0, Landroidx/transition/e$a;

    invoke-direct {v0, p1, p0}, Landroidx/transition/e$a;-><init>(Landroidx/transition/Transition;Landroid/view/ViewGroup;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    return-void
.end method

.method public static d(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V
    .locals 2

    invoke-static {}, Landroidx/transition/e;->b()Lo/zt;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo/be7;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/Transition;

    invoke-virtual {v1, p0}, Landroidx/transition/Transition;->O(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Landroidx/transition/Transition;->l(Landroid/view/ViewGroup;Z)V

    :cond_1
    invoke-static {p0}, Lo/uw6;->a(Landroid/view/ViewGroup;)Lo/uw6;

    return-void
.end method
