.class public final Lkgj;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/ContentResolver;

.field public final b:Landroid/net/Uri;

.field public final synthetic c:Lqgj;


# direct methods
.method public constructor <init>(Lqgj;Landroid/os/Handler;Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lkgj;->c:Lqgj;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p3, p0, Lkgj;->a:Landroid/content/ContentResolver;

    iput-object p4, p0, Lkgj;->b:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lkgj;->a:Landroid/content/ContentResolver;

    iget-object v1, p0, Lkgj;->b:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lkgj;->a:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public final onChange(Z)V
    .locals 2

    iget-object p0, p0, Lkgj;->c:Lqgj;

    invoke-static {p0}, Lqgj;->a(Lqgj;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p0}, Lqgj;->b(Lqgj;)Lhvg;

    move-result-object v0

    invoke-static {p0}, Lqgj;->d(Lqgj;)Lsgj;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lggj;->c(Landroid/content/Context;Lhvg;Lsgj;)Lggj;

    move-result-object p1

    invoke-static {p0, p1}, Lqgj;->f(Lqgj;Lggj;)V

    return-void
.end method
