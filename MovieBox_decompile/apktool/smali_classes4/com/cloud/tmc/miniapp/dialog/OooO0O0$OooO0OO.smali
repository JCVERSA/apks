.class public final Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO0OO;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.implements Lcom/cloud/tmc/miniapp/dialog/OooO0O0$Oooo000;
.implements Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOo00;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/dialog/OooO0O0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OooO0OO"
.end annotation


# instance fields
.field public OooO00o:Landroid/app/Activity;

.field public OooO0O0:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

.field public OooO0OO:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/cloud/tmc/miniapp/dialog/OooO0O0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO0OO;->OooO00o:Landroid/app/Activity;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO0OO;->OooO0O0:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    invoke-virtual {p2, p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;->OooO00o(Lcom/cloud/tmc/miniapp/dialog/OooO0O0$Oooo000;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO0OO;->OooO0O0:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;->OooO00o(Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOo00;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public static final OooO00o(Lcom/cloud/tmc/miniapp/dialog/OooO0O0;Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO0OO;)V
    .locals 1

    .line 1
    const-string v0, "$it"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "this$0"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget p1, p1, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO0OO;->OooO0OO:I

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;->OooO00o(I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    const-string p2, "activity"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO0OO;->OooO00o:Landroid/app/Activity;

    .line 7
    .line 8
    if-eq v0, p1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    if-eqz v0, :cond_2

    .line 12
    .line 13
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 14
    .line 15
    const/16 v1, 0x1d

    .line 16
    .line 17
    if-lt p1, v1, :cond_1

    .line 18
    .line 19
    invoke-static {v0, p0}, Lcom/cloud/tmc/miniapp/dialog/b;->a(Landroid/app/Activity;Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 28
    .line 29
    .line 30
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 31
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO0OO;->OooO00o:Landroid/app/Activity;

    .line 32
    .line 33
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO0OO;->OooO0O0:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    .line 34
    .line 35
    if-eqz v0, :cond_5

    .line 36
    .line 37
    iget-object v1, v0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;->OooO0O0:Ljava/util/List;

    .line 38
    .line 39
    if-eqz v1, :cond_3

    .line 40
    .line 41
    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    :cond_3
    iget-object v1, v0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;->OooO0Oo:Ljava/util/List;

    .line 45
    .line 46
    if-eqz v1, :cond_4

    .line 47
    .line 48
    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    :cond_4
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_5

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;->dismiss()V

    .line 58
    .line 59
    .line 60
    :cond_5
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO0OO;->OooO0O0:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    .line 61
    .line 62
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO0OO;->OooO00o:Landroid/app/Activity;

    .line 7
    .line 8
    if-eq v0, p1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO0OO;->OooO0O0:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    .line 12
    .line 13
    if-eqz p1, :cond_3

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    const/4 v0, -0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_2
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 35
    .line 36
    :goto_0
    iput v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO0OO;->OooO0OO:I

    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    invoke-virtual {p1, v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;->OooO00o(I)V

    .line 40
    .line 41
    .line 42
    :cond_3
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 3

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO0OO;->OooO00o:Landroid/app/Activity;

    .line 7
    .line 8
    if-eq v0, p1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO0OO;->OooO0O0:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    .line 12
    .line 13
    if-eqz p1, :cond_2

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/c;

    .line 23
    .line 24
    invoke-direct {v0, p1, p0}, Lcom/cloud/tmc/miniapp/dialog/c;-><init>(Lcom/cloud/tmc/miniapp/dialog/OooO0O0;Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO0OO;)V

    .line 25
    .line 26
    .line 27
    const-wide/16 v1, 0x64

    .line 28
    .line 29
    invoke-static {p1, v0, v1, v2}, Lcom/cloud/tmc/miniapp/action/HandlerAction$DefaultImpls;->postDelayed(Lcom/cloud/tmc/miniapp/action/HandlerAction;Ljava/lang/Runnable;J)Z

    .line 30
    .line 31
    .line 32
    :cond_2
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "outState"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onDismiss(Lcom/cloud/tmc/miniapp/dialog/OooO0O0;)V
    .locals 2

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO0OO;->OooO0O0:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    .line 3
    .line 4
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO0OO;->OooO00o:Landroid/app/Activity;

    .line 5
    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 9
    .line 10
    const/16 v1, 0x1d

    .line 11
    .line 12
    if-lt v0, v1, :cond_0

    .line 13
    .line 14
    invoke-static {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/b;->a(Landroid/app/Activity;Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    :goto_0
    return-void
.end method

.method public onShow(Lcom/cloud/tmc/miniapp/dialog/OooO0O0;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO0OO;->OooO0O0:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO0OO;->OooO00o:Landroid/app/Activity;

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 8
    .line 9
    const/16 v1, 0x1d

    .line 10
    .line 11
    if-lt v0, v1, :cond_0

    .line 12
    .line 13
    invoke-static {p1, p0}, Landroidx/lifecycle/j0;->a(Landroid/app/Activity;Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    :goto_0
    return-void
.end method
