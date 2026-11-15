.class abstract Lcom/blankj/utilcode/util/e0;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method static A(Landroid/content/Intent;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/blankj/utilcode/util/p;->c(Landroid/content/Intent;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static B()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/g0;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method static C()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/v;->j()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method static D(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/blankj/utilcode/util/b0;->f(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static E(Landroid/view/View;J)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/j;->b(Landroid/view/View;J)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static F(I)Landroid/view/View;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/blankj/utilcode/util/g0;->b(I)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static G()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/AdaptScreenUtils;->f()Ljava/lang/Runnable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    new-array v1, v1, [Ljava/lang/Runnable;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    aput-object v0, v1, v2

    .line 10
    .line 11
    invoke-static {v1}, Lcom/blankj/utilcode/util/e0;->H([Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private static varargs H([Ljava/lang/Runnable;)V
    .locals 4

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    .line 5
    aget-object v2, p0, v1

    .line 6
    .line 7
    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->d()Ljava/util/concurrent/ExecutorService;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-interface {v3, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    add-int/lit8 v1, v1, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    return-void
.end method

.method static I(Lcom/blankj/utilcode/util/Utils$a;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->g:Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->u(Lcom/blankj/utilcode/util/Utils$a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method static J(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/blankj/utilcode/util/ThreadUtils;->j(Ljava/lang/Runnable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static K(Ljava/lang/Runnable;J)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/ThreadUtils;->k(Ljava/lang/Runnable;J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static L(Landroid/app/Application;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->g:Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->y(Landroid/app/Application;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method static M(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/blankj/utilcode/util/ImageUtils;->h(Landroid/view/View;)Landroid/graphics/Bitmap;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static a(Lcom/blankj/utilcode/util/Utils$a;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->g:Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->e(Lcom/blankj/utilcode/util/Utils$a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method static b([B)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/blankj/utilcode/util/i;->c([B)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static c(Ljava/io/File;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/blankj/utilcode/util/n;->c(Ljava/io/File;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static d(F)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static e(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/b0;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static f(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/blankj/utilcode/util/KeyboardUtils;->a(Landroid/app/Activity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static varargs g(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/b0;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static h()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->g:Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->j()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method static i()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/y;->b()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method static j()Landroid/app/Application;
    .locals 1

    .line 1
    sget-object v0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->g:Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->n()Landroid/app/Application;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method static k()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/t;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method static l(Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/blankj/utilcode/util/n;->f(Ljava/lang/String;)Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static m(Ljava/lang/String;)J
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/blankj/utilcode/util/n;->j(Ljava/lang/String;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method static n(Ljava/lang/String;)J
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/blankj/utilcode/util/n;->k(Ljava/lang/String;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method static o(Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/p;->b(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static p()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/d;->a()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method static q(Lcom/blankj/utilcode/util/s$a;Lcom/blankj/utilcode/util/Utils$b;)Landroid/app/Notification;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/s;->a(Lcom/blankj/utilcode/util/s$a;Lcom/blankj/utilcode/util/Utils$b;)Landroid/app/Notification;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static r()Lcom/blankj/utilcode/util/x;
    .locals 1

    .line 1
    const-string v0, "Utils"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/blankj/utilcode/util/x;->a(Ljava/lang/String;)Lcom/blankj/utilcode/util/x;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method static s()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/d;->c()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method static t(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/blankj/utilcode/util/b0;->d(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static u()Landroid/app/Activity;
    .locals 1

    .line 1
    sget-object v0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->g:Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->o()Landroid/app/Activity;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method static v(Landroid/app/Application;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->g:Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->p(Landroid/app/Application;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method static w(Landroid/app/Activity;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/blankj/utilcode/util/a;->c(Landroid/app/Activity;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static x()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->g:Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->q()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method static y(Ljava/io/File;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/blankj/utilcode/util/n;->m(Ljava/io/File;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static z()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->t()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method
