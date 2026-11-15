.class public final Lmgj;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lqgj;


# direct methods
.method public synthetic constructor <init>(Lqgj;Logj;)V
    .locals 0

    iput-object p1, p0, Lmgj;->a:Lqgj;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isInitialStickyBroadcast()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lmgj;->a:Lqgj;

    invoke-static {p0}, Lqgj;->b(Lqgj;)Lhvg;

    move-result-object v0

    invoke-static {p0}, Lqgj;->d(Lqgj;)Lsgj;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lggj;->d(Landroid/content/Context;Landroid/content/Intent;Lhvg;Lsgj;)Lggj;

    move-result-object p1

    invoke-static {p0, p1}, Lqgj;->f(Lqgj;Lggj;)V

    :cond_0
    return-void
.end method
