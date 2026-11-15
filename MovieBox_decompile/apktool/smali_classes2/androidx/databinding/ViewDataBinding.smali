.class public abstract Landroidx/databinding/ViewDataBinding;
.super Landroidx/databinding/a;
.source "source.java"

# interfaces
.implements Lf4/a;


# static fields
.field static a:I

.field private static final b:Z

.field private static final c:Landroidx/databinding/d;

.field private static final d:Landroidx/databinding/d;

.field private static final e:Landroidx/databinding/d;

.field private static final f:Landroidx/databinding/d;

.field private static final g:Landroidx/databinding/c$a;

.field private static final h:Ljava/lang/ref/ReferenceQueue;

.field private static final i:Landroid/view/View$OnAttachStateChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    sput v0, Landroidx/databinding/ViewDataBinding;->a:I

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    sput-boolean v0, Landroidx/databinding/ViewDataBinding;->b:Z

    .line 7
    .line 8
    new-instance v0, Landroidx/databinding/ViewDataBinding$a;

    .line 9
    .line 10
    invoke-direct {v0}, Landroidx/databinding/ViewDataBinding$a;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Landroidx/databinding/ViewDataBinding;->c:Landroidx/databinding/d;

    .line 14
    .line 15
    new-instance v0, Landroidx/databinding/ViewDataBinding$b;

    .line 16
    .line 17
    invoke-direct {v0}, Landroidx/databinding/ViewDataBinding$b;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Landroidx/databinding/ViewDataBinding;->d:Landroidx/databinding/d;

    .line 21
    .line 22
    new-instance v0, Landroidx/databinding/ViewDataBinding$c;

    .line 23
    .line 24
    invoke-direct {v0}, Landroidx/databinding/ViewDataBinding$c;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v0, Landroidx/databinding/ViewDataBinding;->e:Landroidx/databinding/d;

    .line 28
    .line 29
    new-instance v0, Landroidx/databinding/ViewDataBinding$d;

    .line 30
    .line 31
    invoke-direct {v0}, Landroidx/databinding/ViewDataBinding$d;-><init>()V

    .line 32
    .line 33
    .line 34
    sput-object v0, Landroidx/databinding/ViewDataBinding;->f:Landroidx/databinding/d;

    .line 35
    .line 36
    new-instance v0, Landroidx/databinding/ViewDataBinding$e;

    .line 37
    .line 38
    invoke-direct {v0}, Landroidx/databinding/ViewDataBinding$e;-><init>()V

    .line 39
    .line 40
    .line 41
    sput-object v0, Landroidx/databinding/ViewDataBinding;->g:Landroidx/databinding/c$a;

    .line 42
    .line 43
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    .line 46
    .line 47
    .line 48
    sput-object v0, Landroidx/databinding/ViewDataBinding;->h:Ljava/lang/ref/ReferenceQueue;

    .line 49
    .line 50
    new-instance v0, Landroidx/databinding/ViewDataBinding$f;

    .line 51
    .line 52
    invoke-direct {v0}, Landroidx/databinding/ViewDataBinding$f;-><init>()V

    .line 53
    .line 54
    .line 55
    sput-object v0, Landroidx/databinding/ViewDataBinding;->i:Landroid/view/View$OnAttachStateChangeListener;

    .line 56
    .line 57
    return-void
.end method

.method static synthetic a(Landroidx/databinding/ViewDataBinding;Z)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    throw p0
.end method

.method static synthetic b(Landroidx/databinding/ViewDataBinding;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    throw p0
.end method

.method static synthetic c(Landroidx/databinding/ViewDataBinding;Z)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    throw p0
.end method

.method static synthetic d()V
    .locals 0

    .line 1
    invoke-static {}, Landroidx/databinding/ViewDataBinding;->h()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic e(Landroidx/databinding/ViewDataBinding;)Landroid/view/View;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    throw p0
.end method

.method static synthetic f()Landroid/view/View$OnAttachStateChangeListener;
    .locals 1

    .line 1
    sget-object v0, Landroidx/databinding/ViewDataBinding;->i:Landroid/view/View$OnAttachStateChangeListener;

    .line 2
    .line 3
    return-object v0
.end method

.method static g(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    sget v1, Landroidx/databinding/library/R$id;->dataBinding:I

    .line 5
    .line 6
    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-static {p0}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-object v0
.end method

.method private static h()V
    .locals 1

    .line 1
    :goto_0
    sget-object v0, Landroidx/databinding/ViewDataBinding;->h:Ljava/lang/ref/ReferenceQueue;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    return-void
.end method
