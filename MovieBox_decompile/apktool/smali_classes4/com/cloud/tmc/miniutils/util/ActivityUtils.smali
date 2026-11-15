.class public final Lcom/cloud/tmc/miniutils/util/ActivityUtils;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 5
    .line 6
    const-string v1, "u can\'t instantiate me..."

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    throw v0
.end method

.method public static addActivityLifecycleCallbacks(Landroid/app/Activity;Lcom/cloud/tmc/miniutils/util/Utils$ActivityLifecycleCallbacks;)V
    .locals 0
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/cloud/tmc/miniutils/util/Utils$ActivityLifecycleCallbacks;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->addActivityLifecycleCallbacks(Landroid/app/Activity;Lcom/cloud/tmc/miniutils/util/Utils$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public static addActivityLifecycleCallbacks(Lcom/cloud/tmc/miniutils/util/Utils$ActivityLifecycleCallbacks;)V
    .locals 0
    .param p0    # Lcom/cloud/tmc/miniutils/util/Utils$ActivityLifecycleCallbacks;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->addActivityLifecycleCallbacks(Lcom/cloud/tmc/miniutils/util/Utils$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public static finishActivity(Landroid/app/Activity;)V
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->finishActivity(Landroid/app/Activity;Z)V

    return-void
.end method

.method public static finishActivity(Landroid/app/Activity;II)V
    .locals 0
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 5
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public static finishActivity(Landroid/app/Activity;Z)V
    .locals 0
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1, p1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method public static finishActivity(Ljava/lang/Class;)V
    .locals 1
    .param p0    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 6
    invoke-static {p0, v0}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->finishActivity(Ljava/lang/Class;Z)V

    return-void
.end method

.method public static finishActivity(Ljava/lang/Class;II)V
    .locals 3
    .param p0    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;II)V"
        }
    .end annotation

    .line 12
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->getActivityList()Ljava/util/List;

    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 15
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 16
    invoke-virtual {v1, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static finishActivity(Ljava/lang/Class;Z)V
    .locals 3
    .param p0    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;Z)V"
        }
    .end annotation

    .line 7
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->getActivityList()Ljava/util/List;

    move-result-object v0

    .line 8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    if-nez p1, :cond_0

    const/4 v2, 0x0

    .line 11
    invoke-virtual {v1, v2, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static finishAllActivities()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->finishAllActivities(Z)V

    return-void
.end method

.method public static finishAllActivities(II)V
    .locals 2

    .line 6
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->getActivityList()Ljava/util/List;

    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 8
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 9
    invoke-virtual {v1, p0, p1}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static finishAllActivities(Z)V
    .locals 3

    .line 2
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->getActivityList()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 4
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    if-nez p0, :cond_0

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v1, v2, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static finishAllActivitiesExceptNewest()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->finishAllActivitiesExceptNewest(Z)V

    return-void
.end method

.method public static finishAllActivitiesExceptNewest(II)V
    .locals 3

    .line 5
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->getActivityList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    .line 6
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 7
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2, p0, p1}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->finishActivity(Landroid/app/Activity;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static finishAllActivitiesExceptNewest(Z)V
    .locals 3

    .line 2
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->getActivityList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2, p0}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->finishActivity(Landroid/app/Activity;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static finishOtherActivities(Ljava/lang/Class;)V
    .locals 1
    .param p0    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->finishOtherActivities(Ljava/lang/Class;Z)V

    return-void
.end method

.method public static finishOtherActivities(Ljava/lang/Class;II)V
    .locals 3
    .param p0    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;II)V"
        }
    .end annotation

    .line 6
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->getActivityList()Ljava/util/List;

    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9
    invoke-static {v1, p1, p2}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->finishActivity(Landroid/app/Activity;II)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static finishOtherActivities(Ljava/lang/Class;Z)V
    .locals 3
    .param p0    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;Z)V"
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->getActivityList()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    invoke-static {v1, p1}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->finishActivity(Landroid/app/Activity;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static finishToActivity(Landroid/app/Activity;Z)Z
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->finishToActivity(Landroid/app/Activity;ZZ)Z

    move-result p0

    return p0
.end method

.method public static finishToActivity(Landroid/app/Activity;ZII)Z
    .locals 3
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 7
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->getActivityList()Ljava/util/List;

    move-result-object v0

    .line 8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 9
    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_0

    .line 10
    invoke-static {v1, p2, p3}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->finishActivity(Landroid/app/Activity;II)V

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 11
    :cond_1
    invoke-static {v1, p2, p3}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->finishActivity(Landroid/app/Activity;II)V

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static finishToActivity(Landroid/app/Activity;ZZ)Z
    .locals 3
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->getActivityList()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 4
    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_0

    .line 5
    invoke-static {v1, p2}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->finishActivity(Landroid/app/Activity;Z)V

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 6
    :cond_1
    invoke-static {v1, p2}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->finishActivity(Landroid/app/Activity;Z)V

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static finishToActivity(Ljava/lang/Class;Z)Z
    .locals 1
    .param p0    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;Z)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 12
    invoke-static {p0, p1, v0}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->finishToActivity(Ljava/lang/Class;ZZ)Z

    move-result p0

    return p0
.end method

.method public static finishToActivity(Ljava/lang/Class;ZII)Z
    .locals 3
    .param p0    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;ZII)Z"
        }
    .end annotation

    .line 18
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->getActivityList()Ljava/util/List;

    move-result-object v0

    .line 19
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_0

    .line 21
    invoke-static {v1, p2, p3}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->finishActivity(Landroid/app/Activity;II)V

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 22
    :cond_1
    invoke-static {v1, p2, p3}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->finishActivity(Landroid/app/Activity;II)V

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static finishToActivity(Ljava/lang/Class;ZZ)Z
    .locals 3
    .param p0    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;ZZ)Z"
        }
    .end annotation

    .line 13
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->getActivityList()Ljava/util/List;

    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_0

    .line 16
    invoke-static {v1, p2}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->finishActivity(Landroid/app/Activity;Z)V

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 17
    :cond_1
    invoke-static {v1, p2}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->finishActivity(Landroid/app/Activity;Z)V

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static getActivityByContext(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->getActivityByContextInner(Landroid/content/Context;)Landroid/app/Activity;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->isActivityAlive(Landroid/app/Activity;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    :cond_0
    return-object p0
.end method

.method private static getActivityByContextInner(Landroid/content/Context;)Landroid/app/Activity;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    :cond_1
    instance-of v2, p0, Landroid/content/ContextWrapper;

    .line 11
    .line 12
    if-eqz v2, :cond_5

    .line 13
    .line 14
    instance-of v2, p0, Landroid/app/Activity;

    .line 15
    .line 16
    if-eqz v2, :cond_2

    .line 17
    .line 18
    check-cast p0, Landroid/app/Activity;

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_2
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->getActivityFromDecorContext(Landroid/content/Context;)Landroid/app/Activity;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    if-eqz v2, :cond_3

    .line 26
    .line 27
    return-object v2

    .line 28
    :cond_3
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    check-cast p0, Landroid/content/ContextWrapper;

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    if-nez p0, :cond_4

    .line 38
    .line 39
    return-object v0

    .line 40
    :cond_4
    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_1

    .line 45
    .line 46
    :cond_5
    return-object v0
.end method

.method private static getActivityFromDecorContext(Landroid/content/Context;)Landroid/app/Activity;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "com.android.internal.policy.DecorContext"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "mActivityContext"

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const/4 v2, 0x1

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    check-cast p0, Ljava/lang/ref/WeakReference;

    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    check-cast p0, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    return-object p0

    .line 48
    :catch_0
    :cond_1
    return-object v0
.end method

.method public static getActivityIcon(Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0    # Landroid/content/ComponentName;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 3
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 4
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getActivityIcon(Ljava/lang/Class;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    .line 2
    new-instance v0, Landroid/content/ComponentName;

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getActivityList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->getActivityList()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static getActivityLogo(Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->getActivityLogo(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getActivityLogo(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0    # Landroid/content/ComponentName;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 3
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 4
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getActivityLogo(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getActivityLogo(Ljava/lang/Class;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    .line 2
    new-instance v0, Landroid/content/ComponentName;

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->getActivityLogo(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getLauncherActivity()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->getLauncherActivity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLauncherActivity(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->isSpace(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v2, 0x0

    .line 7
    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 8
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    return-object p0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public static getMainActivities()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->getMainActivities(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getMainActivities(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4
    invoke-virtual {v1, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    .line 6
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    :goto_0
    if-ge v3, v2, :cond_2

    .line 8
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 9
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 10
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static getOptionsBundle(Landroid/app/Activity;[Landroid/view/View;)Landroid/os/Bundle;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 6
    :cond_0
    array-length v1, p1

    if-gtz v1, :cond_1

    return-object v0

    .line 7
    :cond_1
    new-array v0, v1, [Landroidx/core/util/e;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 8
    aget-object v3, p1, v2

    invoke-virtual {v3}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroidx/core/util/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/core/util/e;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_2
    invoke-static {p0, v0}, Landroidx/core/app/c;->b(Landroid/app/Activity;[Landroidx/core/util/e;)Landroidx/core/app/c;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/core/app/c;->c()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private static getOptionsBundle(Landroid/content/Context;II)Landroid/os/Bundle;
    .locals 0

    .line 3
    invoke-static {p0, p1, p2}, Landroidx/core/app/c;->a(Landroid/content/Context;II)Landroidx/core/app/c;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/core/app/c;->c()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private static getOptionsBundle(Landroidx/fragment/app/Fragment;II)Landroid/os/Bundle;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/core/app/c;->a(Landroid/content/Context;II)Landroidx/core/app/c;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/core/app/c;->c()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private static getOptionsBundle(Landroidx/fragment/app/Fragment;[Landroid/view/View;)Landroid/os/Bundle;
    .locals 0

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 5
    :cond_0
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->getOptionsBundle(Landroid/app/Activity;[Landroid/view/View;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static getTopActivity()Landroid/app/Activity;
    .locals 1

    .line 1
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->getTopActivity()Landroid/app/Activity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static getTopActivityOrApp()Landroid/content/Context;
    .locals 1

    .line 1
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->isAppForeground()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->getTopActivity()Landroid/app/Activity;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :cond_0
    return-object v0

    .line 18
    :cond_1
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method

.method public static isActivityAlive(Landroid/app/Activity;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isActivityAlive(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->getActivityByContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->isActivityAlive(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public static isActivityExists(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const/4 p1, 0x0

    .line 18
    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    if-eqz p0, :cond_0

    .line 39
    .line 40
    const/4 p1, 0x1

    .line 41
    :cond_0
    return p1
.end method

.method public static isActivityExistsInStack(Landroid/app/Activity;)Z
    .locals 2
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->getActivityList()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 3
    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isActivityExistsInStack(Ljava/lang/Class;)Z
    .locals 2
    .param p0    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)Z"
        }
    .end annotation

    .line 4
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->getActivityList()Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static isIntentAvailable(Landroid/content/Intent;)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/high16 v1, 0x10000

    .line 10
    .line 11
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-lez p0, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    :goto_0
    return p0
.end method

.method public static removeActivityLifecycleCallbacks(Landroid/app/Activity;)V
    .locals 0
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->removeActivityLifecycleCallbacks(Landroid/app/Activity;)V

    return-void
.end method

.method public static removeActivityLifecycleCallbacks(Landroid/app/Activity;Lcom/cloud/tmc/miniutils/util/Utils$ActivityLifecycleCallbacks;)V
    .locals 0
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/cloud/tmc/miniutils/util/Utils$ActivityLifecycleCallbacks;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->removeActivityLifecycleCallbacks(Landroid/app/Activity;Lcom/cloud/tmc/miniutils/util/Utils$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public static removeActivityLifecycleCallbacks(Lcom/cloud/tmc/miniutils/util/Utils$ActivityLifecycleCallbacks;)V
    .locals 0
    .param p0    # Lcom/cloud/tmc/miniutils/util/Utils$ActivityLifecycleCallbacks;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->removeActivityLifecycleCallbacks(Lcom/cloud/tmc/miniutils/util/Utils$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public static startActivities(Landroid/app/Activity;[Landroid/content/Intent;)V
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 5
    invoke-static {p1, p0, v0}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->startActivities([Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method

.method public static startActivities(Landroid/app/Activity;[Landroid/content/Intent;II)V
    .locals 0
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 7
    invoke-static {p0, p2, p3}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->getOptionsBundle(Landroid/content/Context;II)Landroid/os/Bundle;

    move-result-object p2

    invoke-static {p1, p0, p2}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->startActivities([Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method

.method public static startActivities(Landroid/app/Activity;[Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 0
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 6
    invoke-static {p1, p0, p2}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->startActivities([Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method

.method public static startActivities([Landroid/content/Intent;)V
    .locals 2
    .param p0    # [Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->getTopActivityOrApp()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->startActivities([Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method

.method public static startActivities([Landroid/content/Intent;II)V
    .locals 1
    .param p0    # [Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->getTopActivityOrApp()Landroid/content/Context;

    move-result-object v0

    .line 4
    invoke-static {v0, p1, p2}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->getOptionsBundle(Landroid/content/Context;II)Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->startActivities([Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method

.method private static startActivities([Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 4
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 8
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 9
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    const/high16 v3, 0x10000000

    .line 10
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 11
    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_1

    .line 12
    :cond_1
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivities([Landroid/content/Intent;)V

    :goto_1
    return-void
.end method

.method public static startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 1
    .param p0    # [Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->getTopActivityOrApp()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->startActivities([Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method

.method public static startActivity(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 53
    invoke-static {p1, p0, v0}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->startActivity(Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)Z

    return-void
.end method

.method public static startActivity(Landroid/app/Activity;Landroid/content/Intent;II)V
    .locals 0
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 56
    invoke-static {p0, p2, p3}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->getOptionsBundle(Landroid/content/Context;II)Landroid/os/Bundle;

    move-result-object p2

    invoke-static {p1, p0, p2}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->startActivity(Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)Z

    return-void
.end method

.method public static startActivity(Landroid/app/Activity;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 0
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 54
    invoke-static {p1, p0, p2}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->startActivity(Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)Z

    return-void
.end method

.method public static varargs startActivity(Landroid/app/Activity;Landroid/content/Intent;[Landroid/view/View;)V
    .locals 0
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 55
    invoke-static {p0, p2}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->getOptionsBundle(Landroid/app/Activity;[Landroid/view/View;)Landroid/os/Bundle;

    move-result-object p2

    invoke-static {p1, p0, p2}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->startActivity(Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)Z

    return-void
.end method

.method public static startActivity(Landroid/app/Activity;Ljava/lang/Class;)V
    .locals 2
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1, v1}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static startActivity(Landroid/app/Activity;Ljava/lang/Class;II)V
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;II)V"
        }
    .end annotation

    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-static {p0, p2, p3}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->getOptionsBundle(Landroid/content/Context;II)Landroid/os/Bundle;

    move-result-object p2

    const/4 p3, 0x0

    .line 16
    invoke-static {p0, p3, v0, p1, p2}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static startActivity(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 2
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1, p2}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static varargs startActivity(Landroid/app/Activity;Ljava/lang/Class;[Landroid/view/View;)V
    .locals 2
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;[",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-static {p0, p2}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->getOptionsBundle(Landroid/app/Activity;[Landroid/view/View;)Landroid/os/Bundle;

    move-result-object p2

    const/4 v1, 0x0

    .line 13
    invoke-static {p0, v1, v0, p1, p2}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static startActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 37
    invoke-static {p0, v0, p1, p2, v0}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static startActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 40
    invoke-static {p0, p3, p4}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->getOptionsBundle(Landroid/content/Context;II)Landroid/os/Bundle;

    move-result-object p3

    invoke-static {p0, v0, p1, p2, p3}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static startActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 38
    invoke-static {p0, v0, p1, p2, p3}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static varargs startActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Landroid/view/View;)V
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 39
    invoke-static {p0, p3}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->getOptionsBundle(Landroid/app/Activity;[Landroid/view/View;)Landroid/os/Bundle;

    move-result-object p3

    invoke-static {p0, v0, p1, p2, p3}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private static startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p4    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 57
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz p1, :cond_0

    .line 58
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 59
    :cond_0
    new-instance p1, Landroid/content/ComponentName;

    invoke-direct {p1, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 60
    invoke-static {v0, p0, p4}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->startActivity(Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)Z

    return-void
.end method

.method public static startActivity(Landroid/os/Bundle;Landroid/app/Activity;Ljava/lang/Class;)V
    .locals 2
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    invoke-static {p1, p0, v0, p2, v1}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static startActivity(Landroid/os/Bundle;Landroid/app/Activity;Ljava/lang/Class;II)V
    .locals 1
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;II)V"
        }
    .end annotation

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    .line 31
    invoke-static {p1, p3, p4}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->getOptionsBundle(Landroid/content/Context;II)Landroid/os/Bundle;

    move-result-object p3

    .line 32
    invoke-static {p1, p0, v0, p2, p3}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static startActivity(Landroid/os/Bundle;Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 1
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p0, v0, p2, p3}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static varargs startActivity(Landroid/os/Bundle;Landroid/app/Activity;Ljava/lang/Class;[Landroid/view/View;)V
    .locals 1
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;[",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    .line 28
    invoke-static {p1, p3}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->getOptionsBundle(Landroid/app/Activity;[Landroid/view/View;)Landroid/os/Bundle;

    move-result-object p3

    .line 29
    invoke-static {p1, p0, v0, p2, p3}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static startActivity(Landroid/os/Bundle;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 45
    invoke-static {p1, p0, p2, p3, v0}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static startActivity(Landroid/os/Bundle;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 48
    invoke-static {p1, p4, p5}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->getOptionsBundle(Landroid/content/Context;II)Landroid/os/Bundle;

    move-result-object p4

    invoke-static {p1, p0, p2, p3, p4}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static startActivity(Landroid/os/Bundle;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 46
    invoke-static {p1, p0, p2, p3, p4}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static varargs startActivity(Landroid/os/Bundle;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Landroid/view/View;)V
    .locals 0
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 47
    invoke-static {p1, p4}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->getOptionsBundle(Landroid/app/Activity;[Landroid/view/View;)Landroid/os/Bundle;

    move-result-object p4

    invoke-static {p1, p0, p2, p3, p4}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static startActivity(Landroid/os/Bundle;Ljava/lang/Class;)V
    .locals 3
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .line 17
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->getTopActivityOrApp()Landroid/content/Context;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-static {v0, p0, v1, p1, v2}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static startActivity(Landroid/os/Bundle;Ljava/lang/Class;II)V
    .locals 2
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;II)V"
        }
    .end annotation

    .line 21
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->getTopActivityOrApp()Landroid/content/Context;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 23
    invoke-static {v0, p2, p3}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->getOptionsBundle(Landroid/content/Context;II)Landroid/os/Bundle;

    move-result-object p2

    .line 24
    invoke-static {v0, p0, v1, p1, p2}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static startActivity(Landroid/os/Bundle;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 2
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 19
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->getTopActivityOrApp()Landroid/content/Context;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p0, v1, p1, p2}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static startActivity(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 41
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->getTopActivityOrApp()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, p2, v1}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static startActivity(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 43
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->getTopActivityOrApp()Landroid/content/Context;

    move-result-object v0

    .line 44
    invoke-static {v0, p3, p4}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->getOptionsBundle(Landroid/content/Context;II)Landroid/os/Bundle;

    move-result-object p3

    invoke-static {v0, p0, p1, p2, p3}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static startActivity(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 42
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->getTopActivityOrApp()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p1, p2, p3}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static startActivity(Ljava/lang/Class;)V
    .locals 3
    .param p0    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->getTopActivityOrApp()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p0, v2}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static startActivity(Ljava/lang/Class;II)V
    .locals 2
    .param p0    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;II)V"
        }
    .end annotation

    .line 5
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->getTopActivityOrApp()Landroid/content/Context;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 7
    invoke-static {v0, p1, p2}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->getOptionsBundle(Landroid/content/Context;II)Landroid/os/Bundle;

    move-result-object p1

    const/4 p2, 0x0

    .line 8
    invoke-static {v0, p2, v1, p0, p1}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static startActivity(Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 3
    .param p0    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->getTopActivityOrApp()Landroid/content/Context;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p0, p1}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static startActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 33
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->getTopActivityOrApp()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1, v1}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static startActivity(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 35
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->getTopActivityOrApp()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    .line 36
    invoke-static {v0, p2, p3}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->getOptionsBundle(Landroid/content/Context;II)Landroid/os/Bundle;

    move-result-object p2

    invoke-static {v0, v1, p0, p1, p2}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static startActivity(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 34
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->getTopActivityOrApp()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1, p2}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static startActivity(Landroid/content/Intent;)Z
    .locals 2
    .param p0    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 49
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->getTopActivityOrApp()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->startActivity(Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public static startActivity(Landroid/content/Intent;II)Z
    .locals 1
    .param p0    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 51
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->getTopActivityOrApp()Landroid/content/Context;

    move-result-object v0

    .line 52
    invoke-static {v0, p1, p2}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->getOptionsBundle(Landroid/content/Context;II)Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->startActivity(Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method private static startActivity(Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)Z
    .locals 1

    .line 61
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->isIntentAvailable(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    const-string p0, "ActivityUtils"

    const-string p1, "intent is unavailable"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 63
    :cond_0
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_1

    const/high16 v0, 0x10000000

    .line 64
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_1
    if-eqz p2, :cond_2

    .line 65
    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_0

    .line 66
    :cond_2
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static startActivity(Landroid/content/Intent;Landroid/os/Bundle;)Z
    .locals 1
    .param p0    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 50
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->getTopActivityOrApp()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->startActivity(Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public static startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;I)V
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 23
    invoke-static {p1, p0, p2, v0}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->startActivityForResult(Landroid/content/Intent;Landroid/app/Activity;ILandroid/os/Bundle;)Z

    return-void
.end method

.method public static startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;III)V
    .locals 0
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 27
    invoke-static {p0, p3, p4}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->getOptionsBundle(Landroid/content/Context;II)Landroid/os/Bundle;

    move-result-object p3

    .line 28
    invoke-static {p1, p0, p2, p3}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->startActivityForResult(Landroid/content/Intent;Landroid/app/Activity;ILandroid/os/Bundle;)Z

    return-void
.end method

.method public static startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 24
    invoke-static {p1, p0, p2, p3}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->startActivityForResult(Landroid/content/Intent;Landroid/app/Activity;ILandroid/os/Bundle;)Z

    return-void
.end method

.method public static varargs startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;I[Landroid/view/View;)V
    .locals 0
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 25
    invoke-static {p0, p3}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->getOptionsBundle(Landroid/app/Activity;[Landroid/view/View;)Landroid/os/Bundle;

    move-result-object p3

    .line 26
    invoke-static {p1, p0, p2, p3}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->startActivityForResult(Landroid/content/Intent;Landroid/app/Activity;ILandroid/os/Bundle;)Z

    return-void
.end method

.method public static startActivityForResult(Landroid/app/Activity;Ljava/lang/Class;I)V
    .locals 6
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->startActivityForResult(Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    return-void
.end method

.method public static startActivityForResult(Landroid/app/Activity;Ljava/lang/Class;III)V
    .locals 6
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;III)V"
        }
    .end annotation

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-static {p0, p3, p4}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->getOptionsBundle(Landroid/content/Context;II)Landroid/os/Bundle;

    move-result-object v5

    const/4 v1, 0x0

    move-object v0, p0

    move v4, p2

    .line 8
    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->startActivityForResult(Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    return-void
.end method

.method public static startActivityForResult(Landroid/app/Activity;Ljava/lang/Class;ILandroid/os/Bundle;)V
    .locals 6
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;I",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    move-object v0, p0

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->startActivityForResult(Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    return-void
.end method

.method public static varargs startActivityForResult(Landroid/app/Activity;Ljava/lang/Class;I[Landroid/view/View;)V
    .locals 6
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;I[",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-static {p0, p3}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->getOptionsBundle(Landroid/app/Activity;[Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v5

    const/4 v1, 0x0

    move-object v0, p0

    move v4, p2

    .line 5
    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->startActivityForResult(Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    return-void
.end method

.method public static startActivityForResult(Landroid/os/Bundle;Landroid/app/Activity;Ljava/lang/Class;I)V
    .locals 6
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;I)V"
        }
    .end annotation

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->startActivityForResult(Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    return-void
.end method

.method public static startActivityForResult(Landroid/os/Bundle;Landroid/app/Activity;Ljava/lang/Class;III)V
    .locals 6
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;III)V"
        }
    .end annotation

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 15
    invoke-static {p1, p4, p5}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->getOptionsBundle(Landroid/content/Context;II)Landroid/os/Bundle;

    move-result-object v5

    move-object v0, p1

    move-object v1, p0

    move v4, p3

    .line 16
    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->startActivityForResult(Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    return-void
.end method

.method public static startActivityForResult(Landroid/os/Bundle;Landroid/app/Activity;Ljava/lang/Class;ILandroid/os/Bundle;)V
    .locals 6
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;I",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v0, p1

    move-object v1, p0

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->startActivityForResult(Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    return-void
.end method

.method public static varargs startActivityForResult(Landroid/os/Bundle;Landroid/app/Activity;Ljava/lang/Class;I[Landroid/view/View;)V
    .locals 6
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;I[",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 12
    invoke-static {p1, p4}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->getOptionsBundle(Landroid/app/Activity;[Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v5

    move-object v0, p1

    move-object v1, p0

    move v4, p3

    .line 13
    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->startActivityForResult(Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    return-void
.end method

.method public static startActivityForResult(Landroid/os/Bundle;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 17
    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->startActivityForResult(Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    return-void
.end method

.method public static startActivityForResult(Landroid/os/Bundle;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 6
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 21
    invoke-static {p1, p5, p6}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->getOptionsBundle(Landroid/content/Context;II)Landroid/os/Bundle;

    move-result-object v5

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 22
    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->startActivityForResult(Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    return-void
.end method

.method public static startActivityForResult(Landroid/os/Bundle;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 6
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .line 18
    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->startActivityForResult(Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    return-void
.end method

.method public static varargs startActivityForResult(Landroid/os/Bundle;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Landroid/view/View;)V
    .locals 6
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 19
    invoke-static {p1, p5}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->getOptionsBundle(Landroid/app/Activity;[Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v5

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 20
    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->startActivityForResult(Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    return-void
.end method

.method public static startActivityForResult(Landroid/os/Bundle;Landroidx/fragment/app/Fragment;Ljava/lang/Class;I)V
    .locals 7
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;I)V"
        }
    .end annotation

    .line 37
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p0

    move v5, p3

    invoke-static/range {v1 .. v6}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->startActivityForResult(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    return-void
.end method

.method public static startActivityForResult(Landroid/os/Bundle;Landroidx/fragment/app/Fragment;Ljava/lang/Class;III)V
    .locals 7
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;III)V"
        }
    .end annotation

    .line 42
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 43
    invoke-static {p1, p4, p5}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->getOptionsBundle(Landroidx/fragment/app/Fragment;II)Landroid/os/Bundle;

    move-result-object v6

    move-object v1, p1

    move-object v2, p0

    move v5, p3

    .line 44
    invoke-static/range {v1 .. v6}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->startActivityForResult(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    return-void
.end method

.method public static startActivityForResult(Landroid/os/Bundle;Landroidx/fragment/app/Fragment;Ljava/lang/Class;ILandroid/os/Bundle;)V
    .locals 7
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;I",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 38
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v1, p1

    move-object v2, p0

    move v5, p3

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->startActivityForResult(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    return-void
.end method

.method public static varargs startActivityForResult(Landroid/os/Bundle;Landroidx/fragment/app/Fragment;Ljava/lang/Class;I[Landroid/view/View;)V
    .locals 7
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;I[",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 39
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 40
    invoke-static {p1, p4}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->getOptionsBundle(Landroidx/fragment/app/Fragment;[Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v6

    move-object v1, p1

    move-object v2, p0

    move v5, p3

    .line 41
    invoke-static/range {v1 .. v6}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->startActivityForResult(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    return-void
.end method

.method public static startActivityForResult(Landroid/os/Bundle;Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 45
    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->startActivityForResult(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    return-void
.end method

.method public static startActivityForResult(Landroid/os/Bundle;Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 6
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 49
    invoke-static {p1, p5, p6}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->getOptionsBundle(Landroidx/fragment/app/Fragment;II)Landroid/os/Bundle;

    move-result-object v5

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 50
    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->startActivityForResult(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    return-void
.end method

.method public static startActivityForResult(Landroid/os/Bundle;Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 6
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .line 46
    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->startActivityForResult(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    return-void
.end method

.method public static varargs startActivityForResult(Landroid/os/Bundle;Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;I[Landroid/view/View;)V
    .locals 6
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 47
    invoke-static {p1, p5}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->getOptionsBundle(Landroidx/fragment/app/Fragment;[Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v5

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 48
    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->startActivityForResult(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    return-void
.end method

.method public static startActivityForResult(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .locals 1
    .param p0    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 51
    invoke-static {p1, p0, p2, v0}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->startActivityForResult(Landroid/content/Intent;Landroidx/fragment/app/Fragment;ILandroid/os/Bundle;)Z

    return-void
.end method

.method public static startActivityForResult(Landroidx/fragment/app/Fragment;Landroid/content/Intent;III)V
    .locals 0
    .param p0    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 55
    invoke-static {p0, p3, p4}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->getOptionsBundle(Landroidx/fragment/app/Fragment;II)Landroid/os/Bundle;

    move-result-object p3

    .line 56
    invoke-static {p1, p0, p2, p3}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->startActivityForResult(Landroid/content/Intent;Landroidx/fragment/app/Fragment;ILandroid/os/Bundle;)Z

    return-void
.end method

.method public static startActivityForResult(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0
    .param p0    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 52
    invoke-static {p1, p0, p2, p3}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->startActivityForResult(Landroid/content/Intent;Landroidx/fragment/app/Fragment;ILandroid/os/Bundle;)Z

    return-void
.end method

.method public static varargs startActivityForResult(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I[Landroid/view/View;)V
    .locals 0
    .param p0    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 53
    invoke-static {p0, p3}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->getOptionsBundle(Landroidx/fragment/app/Fragment;[Landroid/view/View;)Landroid/os/Bundle;

    move-result-object p3

    .line 54
    invoke-static {p1, p0, p2, p3}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->startActivityForResult(Landroid/content/Intent;Landroidx/fragment/app/Fragment;ILandroid/os/Bundle;)Z

    return-void
.end method

.method public static startActivityForResult(Landroidx/fragment/app/Fragment;Ljava/lang/Class;I)V
    .locals 7
    .param p0    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;I)V"
        }
    .end annotation

    .line 29
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-object v1, p0

    move v5, p2

    invoke-static/range {v1 .. v6}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->startActivityForResult(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    return-void
.end method

.method public static startActivityForResult(Landroidx/fragment/app/Fragment;Ljava/lang/Class;III)V
    .locals 7
    .param p0    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;III)V"
        }
    .end annotation

    .line 34
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 35
    invoke-static {p0, p3, p4}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->getOptionsBundle(Landroidx/fragment/app/Fragment;II)Landroid/os/Bundle;

    move-result-object v6

    const/4 v2, 0x0

    move-object v1, p0

    move v5, p2

    .line 36
    invoke-static/range {v1 .. v6}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->startActivityForResult(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    return-void
.end method

.method public static startActivityForResult(Landroidx/fragment/app/Fragment;Ljava/lang/Class;ILandroid/os/Bundle;)V
    .locals 7
    .param p0    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;I",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 30
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    move-object v1, p0

    move v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->startActivityForResult(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    return-void
.end method

.method public static varargs startActivityForResult(Landroidx/fragment/app/Fragment;Ljava/lang/Class;I[Landroid/view/View;)V
    .locals 7
    .param p0    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;I[",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 31
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 32
    invoke-static {p0, p3}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->getOptionsBundle(Landroidx/fragment/app/Fragment;[Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v6

    const/4 v2, 0x0

    move-object v1, p0

    move v5, p2

    .line 33
    invoke-static/range {v1 .. v6}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->startActivityForResult(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    return-void
.end method

.method private static startActivityForResult(Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z
    .locals 1
    .param p5    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 57
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz p1, :cond_0

    .line 58
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 59
    :cond_0
    new-instance p1, Landroid/content/ComponentName;

    invoke-direct {p1, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 60
    invoke-static {v0, p0, p4, p5}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->startActivityForResult(Landroid/content/Intent;Landroid/app/Activity;ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method private static startActivityForResult(Landroid/content/Intent;Landroid/app/Activity;ILandroid/os/Bundle;)Z
    .locals 1
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 61
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->isIntentAvailable(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    const-string p0, "ActivityUtils"

    const-string p1, "intent is unavailable"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    if-eqz p3, :cond_1

    .line 63
    invoke-virtual {p1, p0, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {p1, p0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static startActivityForResult(Landroid/content/Intent;Landroidx/fragment/app/Fragment;ILandroid/os/Bundle;)Z
    .locals 3
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 69
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->isIntentAvailable(Landroid/content/Intent;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ActivityUtils"

    if-nez v0, :cond_0

    .line 70
    const-string p0, "intent is unavailable"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 71
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 72
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Fragment "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " not attached to Activity"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    if-eqz p3, :cond_2

    .line 73
    invoke-virtual {p1, p0, p2, p3}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 74
    :cond_2
    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static startActivityForResult(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z
    .locals 1
    .param p5    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 65
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz p1, :cond_0

    .line 66
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 67
    :cond_0
    new-instance p1, Landroid/content/ComponentName;

    invoke-direct {p1, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 68
    invoke-static {v0, p0, p4, p5}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->startActivityForResult(Landroid/content/Intent;Landroidx/fragment/app/Fragment;ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public static startHomeActivity()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "android.intent.action.MAIN"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "android.intent.category.HOME"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    const/high16 v1, 0x10000000

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->startActivity(Landroid/content/Intent;)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public static startLauncherActivity()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->startLauncherActivity(Ljava/lang/String;)V

    return-void
.end method

.method public static startLauncherActivity(Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->getLauncherActivity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {p0, v0}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->startActivity(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
