.class public abstract Lcom/blankj/utilcode/util/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/util/h$a;
    }
.end annotation


# direct methods
.method public static A()Z
    .locals 1

    invoke-static {}, Ljdc;->a()Z

    move-result v0

    return v0
.end method

.method public static B()Z
    .locals 1

    invoke-static {}, Lpx8;->b()Z

    move-result v0

    return v0
.end method

.method public static C()Z
    .locals 1

    invoke-static {}, Lcom/blankj/utilcode/util/e;->h()Z

    move-result v0

    return v0
.end method

.method public static D(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lr0a;->h(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static E(Landroid/view/View;J)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lkt1;->b(Landroid/view/View;J)Z

    move-result p0

    return p0
.end method

.method public static F(I)Landroid/view/View;
    .locals 0

    invoke-static {p0}, Ljdc;->b(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static G()V
    .locals 3

    invoke-static {}, Lcom/blankj/utilcode/util/AdaptScreenUtils;->f()Ljava/lang/Runnable;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Runnable;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/blankj/utilcode/util/h;->H([Ljava/lang/Runnable;)V

    return-void
.end method

.method public static varargs H([Ljava/lang/Runnable;)V
    .locals 4

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->l()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static I(Landroid/app/Activity;)V
    .locals 1

    sget-object v0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->h:Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;

    invoke-virtual {v0, p0}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->t(Landroid/app/Activity;)V

    return-void
.end method

.method public static J(Lcom/blankj/utilcode/util/Utils$a;)V
    .locals 1

    sget-object v0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->h:Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;

    invoke-virtual {v0, p0}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->v(Lcom/blankj/utilcode/util/Utils$a;)V

    return-void
.end method

.method public static K(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0}, Lcom/blankj/utilcode/util/ThreadUtils;->s(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static L(Ljava/lang/Runnable;J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/ThreadUtils;->t(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static M(Landroid/app/Application;)V
    .locals 1

    sget-object v0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->h:Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;

    invoke-virtual {v0, p0}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->y(Landroid/app/Application;)V

    return-void
.end method

.method public static N(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-static {p0}, Lcom/blankj/utilcode/util/ImageUtils;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static O(Ljava/lang/String;Ljava/io/InputStream;)Z
    .locals 0

    invoke-static {p0, p1}, Lkq3;->f(Ljava/lang/String;Ljava/io/InputStream;)Z

    move-result p0

    return p0
.end method

.method public static P(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lkq3;->h(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static a(Lcom/blankj/utilcode/util/Utils$a;)V
    .locals 1

    sget-object v0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->h:Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;

    invoke-virtual {v0, p0}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->e(Lcom/blankj/utilcode/util/Utils$a;)V

    return-void
.end method

.method public static addOnAppStatusChangedListener(Lcom/blankj/utilcode/util/Utils$c;)V
    .locals 1

    sget-object v0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->h:Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;

    invoke-virtual {v0, p0}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->addOnAppStatusChangedListener(Lcom/blankj/utilcode/util/Utils$c;)V

    return-void
.end method

.method public static b([B)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lki1;->a([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/io/File;)Z
    .locals 0

    invoke-static {p0}, Lzu3;->c(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static d(Ljava/io/File;)Z
    .locals 0

    invoke-static {p0}, Lzu3;->e(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static e(F)I
    .locals 0

    invoke-static {p0}, Lcom/blankj/utilcode/util/g;->a(F)I

    move-result p0

    return p0
.end method

.method public static f(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 0

    invoke-static {p0, p1}, Lr0a;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static g(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0}, Lbg5;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public static h(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lmc5;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static i()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->h:Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;

    invoke-virtual {v0}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->j()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static j()I
    .locals 1

    invoke-static {}, Lf39;->a()I

    move-result v0

    return v0
.end method

.method public static k()Landroid/app/Application;
    .locals 1

    sget-object v0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->h:Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;

    invoke-virtual {v0}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->n()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method public static l()Ljava/lang/String;
    .locals 1

    invoke-static {}, Ldh8;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static m(Ljava/lang/String;)Ljava/io/File;
    .locals 0

    invoke-static {p0}, Lzu3;->m(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static n(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lsia;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static o()Lcom/google/gson/Gson;
    .locals 1

    invoke-static {}, Lek4;->g()Lcom/google/gson/Gson;

    move-result-object v0

    return-object v0
.end method

.method public static p(Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 0

    invoke-static {p0, p1}, Lz35;->b(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static q()I
    .locals 1

    invoke-static {}, Le80;->c()I

    move-result v0

    return v0
.end method

.method public static r(Lcom/blankj/utilcode/util/d$a;Lcom/blankj/utilcode/util/Utils$b;)Landroid/app/Notification;
    .locals 0

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/d;->a(Lcom/blankj/utilcode/util/d$a;Lcom/blankj/utilcode/util/Utils$b;)Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method public static removeOnAppStatusChangedListener(Lcom/blankj/utilcode/util/Utils$c;)V
    .locals 1

    sget-object v0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->h:Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;

    invoke-virtual {v0, p0}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->removeOnAppStatusChangedListener(Lcom/blankj/utilcode/util/Utils$c;)V

    return-void
.end method

.method public static s()I
    .locals 1

    invoke-static {}, Le80;->e()I

    move-result v0

    return v0
.end method

.method public static t()Landroid/app/Activity;
    .locals 1

    sget-object v0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->h:Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;

    invoke-virtual {v0}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->o()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public static u(Landroid/app/Application;)V
    .locals 1

    sget-object v0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->h:Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;

    invoke-virtual {v0, p0}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->p(Landroid/app/Application;)V

    return-void
.end method

.method public static v(Landroid/app/Activity;)Z
    .locals 0

    invoke-static {p0}, Lcom/blankj/utilcode/util/a;->f(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public static w()Z
    .locals 1

    sget-object v0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->h:Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;

    invoke-virtual {v0}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->q()Z

    move-result v0

    return v0
.end method

.method public static x(Ljava/io/File;)Z
    .locals 0

    invoke-static {p0}, Lzu3;->x(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static y()Z
    .locals 1

    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->h()Z

    move-result v0

    return v0
.end method

.method public static z(Landroid/content/Intent;)Z
    .locals 0

    invoke-static {p0}, Lz35;->c(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method
