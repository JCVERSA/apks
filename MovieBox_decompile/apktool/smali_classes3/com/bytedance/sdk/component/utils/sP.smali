.class public Lcom/bytedance/sdk/component/utils/sP;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/utils/sP$sP;,
        Lcom/bytedance/sdk/component/utils/sP$Sj;
    }
.end annotation


# static fields
.field private static Sj:Lcom/bytedance/sdk/component/utils/sP$Sj;


# direct methods
.method public static Sj(Landroid/view/View;)Landroid/app/Activity;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 8
    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_1

    .line 9
    check-cast v1, Landroid/app/Activity;

    return-object v1

    .line 10
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v0

    :cond_2
    const v1, 0x1020002

    .line 11
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_3

    return-object v0

    .line 12
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_4

    return-object v0

    .line 13
    :cond_4
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_5

    .line 14
    check-cast p0, Landroid/app/Activity;

    return-object p0

    .line 15
    :cond_5
    instance-of v1, p0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_6

    .line 16
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    .line 17
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_6

    .line 18
    check-cast p0, Landroid/app/Activity;

    return-object p0

    :cond_6
    return-object v0
.end method

.method public static Sj(Lcom/bytedance/sdk/component/utils/sP$Sj;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/bytedance/sdk/component/utils/sP;->Sj:Lcom/bytedance/sdk/component/utils/sP$Sj;

    return-void
.end method

.method public static Sj(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/sdk/component/utils/sP$sP;)Z
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, p2, v0}, Lcom/bytedance/sdk/component/utils/sP;->Sj(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/sdk/component/utils/sP$sP;Z)Z

    move-result p0

    return p0
.end method

.method public static Sj(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/sdk/component/utils/sP$sP;Z)Z
    .locals 2

    if-eqz p3, :cond_0

    .line 3
    sget-object p3, Lcom/bytedance/sdk/component/utils/sP;->Sj:Lcom/bytedance/sdk/component/utils/sP$Sj;

    if-eqz p3, :cond_0

    invoke-interface {p3}, Lcom/bytedance/sdk/component/utils/sP$Sj;->isEnableAsyncStartActivity()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 4
    sget-object p3, Lcom/bytedance/sdk/component/utils/sP;->Sj:Lcom/bytedance/sdk/component/utils/sP$Sj;

    invoke-interface {p3}, Lcom/bytedance/sdk/component/utils/sP$Sj;->getAsyncStartActivityThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 5
    new-instance v0, Lcom/bytedance/sdk/component/utils/sP$1;

    const-string v1, "startAct"

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/bytedance/sdk/component/utils/sP$1;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/sdk/component/utils/sP$sP;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0

    .line 6
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/bytedance/sdk/component/utils/sP;->TKC(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/sdk/component/utils/sP$sP;)Z

    move-result p0

    return p0
.end method

.method private static TKC(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/sdk/component/utils/sP$sP;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_3

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    goto :goto_2

    .line 7
    :cond_0
    :try_start_0
    instance-of v1, p0, Landroid/app/Activity;

    .line 8
    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    const/high16 v1, 0x10000000

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 20
    .line 21
    .line 22
    if-eqz p2, :cond_2

    .line 23
    .line 24
    invoke-interface {p2}, Lcom/bytedance/sdk/component/utils/sP$sP;->Sj()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    :cond_2
    const/4 p0, 0x1

    .line 28
    return p0

    .line 29
    :goto_1
    if-eqz p2, :cond_3

    .line 30
    .line 31
    invoke-interface {p2, p0}, Lcom/bytedance/sdk/component/utils/sP$sP;->Sj(Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    :cond_3
    :goto_2
    return v0
.end method

.method static synthetic sP(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/sdk/component/utils/sP$sP;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/bytedance/sdk/component/utils/sP;->TKC(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/sdk/component/utils/sP$sP;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method
