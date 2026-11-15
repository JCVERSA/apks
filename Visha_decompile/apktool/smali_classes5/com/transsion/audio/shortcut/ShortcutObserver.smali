.class public final Lcom/transsion/audio/shortcut/ShortcutObserver;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;Landroid/widget/ImageView;)V
    .locals 1

    const-string v0, "handler"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mShortCutIv"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/transsion/audio/shortcut/ShortcutObserver;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/transsion/audio/shortcut/ShortcutObserver;->b:Landroid/widget/ImageView;

    return-void
.end method

.method public static final synthetic a(Lcom/transsion/audio/shortcut/ShortcutObserver;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/shortcut/ShortcutObserver;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic b(Lcom/transsion/audio/shortcut/ShortcutObserver;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audio/shortcut/ShortcutObserver;->e()V

    return-void
.end method

.method public static final synthetic c(Lcom/transsion/audio/shortcut/ShortcutObserver;Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/shortcut/ShortcutObserver;->f(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic d(Lcom/transsion/audio/shortcut/ShortcutObserver;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audio/shortcut/ShortcutObserver;->g()V

    return-void
.end method


# virtual methods
.method public final e()V
    .locals 2

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x491

    invoke-virtual {p0, v1, v0}, Lh27;->e(I[Ljava/lang/Object;)V

    return-void
.end method

.method public final f(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const/4 p0, 0x4

    invoke-static {p1, p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcuts(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p0

    const-string p1, "getShortcuts(...)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    instance-of p1, p0, Ljava/util/Collection;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    move-object p1, p0

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/core/content/pm/ShortcutInfoCompat;

    invoke-virtual {p1}, Landroidx/core/content/pm/ShortcutInfoCompat;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method public final g()V
    .locals 2

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x491

    invoke-virtual {p0, v1, v0}, Lh27;->e(I[Ljava/lang/Object;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 6

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    sget-object v0, Lqi4;->b:Lqi4;

    invoke-static {}, Lmc2;->c()Lrx5;

    move-result-object v1

    new-instance v3, Lcom/transsion/audio/shortcut/ShortcutObserver$onChange$1;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p1}, Lcom/transsion/audio/shortcut/ShortcutObserver$onChange$1;-><init>(Lcom/transsion/audio/shortcut/ShortcutObserver;Lwh1;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    return-void
.end method
