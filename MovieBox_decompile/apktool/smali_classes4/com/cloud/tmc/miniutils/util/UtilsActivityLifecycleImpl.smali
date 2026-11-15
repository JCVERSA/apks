.class final Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field static final INSTANCE:Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;

.field private static final STUB:Landroid/app/Activity;


# instance fields
.field private final mActivityLifecycleCallbacksMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/miniutils/util/Utils$ActivityLifecycleCallbacks;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mActivityList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mConfigCount:I

.field private mForegroundCount:I

.field private mIsBackground:Z

.field private final mStatusListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cloud/tmc/miniutils/util/Utils$OnAppStatusChangedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->INSTANCE:Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;

    .line 7
    .line 8
    new-instance v0, Landroid/app/Activity;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/app/Activity;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->STUB:Landroid/app/Activity;

    .line 14
    .line 15
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->mActivityList:Ljava/util/LinkedList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->mStatusListeners:Ljava/util/List;

    .line 17
    .line 18
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->mActivityLifecycleCallbacksMap:Ljava/util/Map;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->mForegroundCount:I

    .line 27
    .line 28
    iput v0, p0, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->mConfigCount:I

    .line 29
    .line 30
    iput-boolean v0, p0, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->mIsBackground:Z

    .line 31
    .line 32
    return-void
.end method

.method static bridge synthetic a(Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->mActivityLifecycleCallbacksMap:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method private addActivityLifecycleCallbacksInner(Landroid/app/Activity;Lcom/cloud/tmc/miniutils/util/Utils$ActivityLifecycleCallbacks;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->mActivityLifecycleCallbacksMap:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/List;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->mActivityLifecycleCallbacksMap:Ljava/util/Map;

    .line 17
    .line 18
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    :goto_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method static bridge synthetic b(Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;Landroid/app/Activity;Lcom/cloud/tmc/miniutils/util/Utils$ActivityLifecycleCallbacks;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->addActivityLifecycleCallbacksInner(Landroid/app/Activity;Lcom/cloud/tmc/miniutils/util/Utils$ActivityLifecycleCallbacks;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic c(Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;Landroid/app/Activity;Lcom/cloud/tmc/miniutils/util/Utils$ActivityLifecycleCallbacks;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->removeActivityLifecycleCallbacksInner(Landroid/app/Activity;Lcom/cloud/tmc/miniutils/util/Utils$ActivityLifecycleCallbacks;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private consumeActivityLifecycleCallbacks(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->mActivityLifecycleCallbacksMap:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/List;

    .line 8
    .line 9
    invoke-direct {p0, p1, p2, v0}, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->consumeLifecycle(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle$Event;Ljava/util/List;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->mActivityLifecycleCallbacksMap:Ljava/util/Map;

    .line 13
    .line 14
    sget-object v1, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->STUB:Landroid/app/Activity;

    .line 15
    .line 16
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Ljava/util/List;

    .line 21
    .line 22
    invoke-direct {p0, p1, p2, v0}, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->consumeLifecycle(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle$Event;Ljava/util/List;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private consumeLifecycle(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle$Event;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroidx/lifecycle/Lifecycle$Event;",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/miniutils/util/Utils$ActivityLifecycleCallbacks;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 5
    .line 6
    .line 7
    move-result-object p3

    .line 8
    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_7

    .line 13
    .line 14
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/cloud/tmc/miniutils/util/Utils$ActivityLifecycleCallbacks;

    .line 19
    .line 20
    invoke-virtual {v0, p1, p2}, Lcom/cloud/tmc/miniutils/util/Utils$ActivityLifecycleCallbacks;->onLifecycleChanged(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle$Event;)V

    .line 21
    .line 22
    .line 23
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    .line 24
    .line 25
    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniutils/util/Utils$ActivityLifecycleCallbacks;->onActivityCreated(Landroid/app/Activity;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    .line 36
    .line 37
    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_3

    .line 42
    .line 43
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniutils/util/Utils$ActivityLifecycleCallbacks;->onActivityStarted(Landroid/app/Activity;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    .line 48
    .line 49
    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_4

    .line 54
    .line 55
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniutils/util/Utils$ActivityLifecycleCallbacks;->onActivityResumed(Landroid/app/Activity;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_4
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    .line 60
    .line 61
    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_5

    .line 66
    .line 67
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniutils/util/Utils$ActivityLifecycleCallbacks;->onActivityPaused(Landroid/app/Activity;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_5
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    .line 72
    .line 73
    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_6

    .line 78
    .line 79
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniutils/util/Utils$ActivityLifecycleCallbacks;->onActivityStopped(Landroid/app/Activity;)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_6
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 84
    .line 85
    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_1

    .line 90
    .line 91
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniutils/util/Utils$ActivityLifecycleCallbacks;->onActivityDestroyed(Landroid/app/Activity;)V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_7
    sget-object p3, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 96
    .line 97
    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result p2

    .line 101
    if-eqz p2, :cond_8

    .line 102
    .line 103
    iget-object p2, p0, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->mActivityLifecycleCallbacksMap:Ljava/util/Map;

    .line 104
    .line 105
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    :cond_8
    return-void
.end method

.method private getActivitiesByReflect()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :try_start_0
    invoke-direct {p0}, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->getActivityThread()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    const-string v4, "mActivities"

    .line 19
    .line 20
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const/4 v4, 0x1

    .line 25
    invoke-virtual {v3, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    instance-of v3, v2, Ljava/util/Map;

    .line 33
    .line 34
    if-nez v3, :cond_1

    .line 35
    .line 36
    return-object v0

    .line 37
    :cond_1
    check-cast v2, Ljava/util/Map;

    .line 38
    .line 39
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_4

    .line 52
    .line 53
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    const-string v6, "activity"

    .line 62
    .line 63
    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    invoke-virtual {v6, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v6, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    check-cast v6, Landroid/app/Activity;

    .line 75
    .line 76
    if-nez v1, :cond_3

    .line 77
    .line 78
    const-string v7, "paused"

    .line 79
    .line 80
    invoke-virtual {v5, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    invoke-virtual {v5, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v5, v3}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    if-nez v3, :cond_2

    .line 92
    .line 93
    move-object v1, v6

    .line 94
    goto :goto_0

    .line 95
    :cond_2
    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :catch_0
    move-exception v2

    .line 100
    goto :goto_1

    .line 101
    :cond_3
    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    const-string v4, "getActivitiesByReflect: "

    .line 111
    .line 112
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    const-string v3, "UtilsActivityLifecycle"

    .line 127
    .line 128
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    :cond_4
    if-eqz v1, :cond_5

    .line 132
    .line 133
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    :cond_5
    return-object v0
.end method

.method private getActivityThread()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->getActivityThreadInActivityThreadStaticField()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->getActivityThreadInActivityThreadStaticMethod()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method private getActivityThreadInActivityThreadStaticField()Ljava/lang/Object;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "android.app.ActivityThread"

    .line 3
    .line 4
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const-string v2, "sCurrentActivityThread"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return-object v0

    .line 23
    :catch_0
    move-exception v1

    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v3, "getActivityThreadInActivityThreadStaticField: "

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    const-string v2, "UtilsActivityLifecycle"

    .line 46
    .line 47
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    return-object v0
.end method

.method private getActivityThreadInActivityThreadStaticMethod()Ljava/lang/Object;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "android.app.ActivityThread"

    .line 3
    .line 4
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const-string v2, "currentActivityThread"

    .line 9
    .line 10
    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1, v0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    return-object v0

    .line 19
    :catch_0
    move-exception v1

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v3, "getActivityThreadInActivityThreadStaticMethod: "

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const-string v2, "UtilsActivityLifecycle"

    .line 42
    .line 43
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    return-object v0
.end method

.method private postStatus(Landroid/app/Activity;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->mStatusListeners:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->mStatusListeners:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/cloud/tmc/miniutils/util/Utils$OnAppStatusChangedListener;

    .line 27
    .line 28
    if-eqz p2, :cond_1

    .line 29
    .line 30
    invoke-interface {v1, p1}, Lcom/cloud/tmc/miniutils/util/Utils$OnAppStatusChangedListener;->onForeground(Landroid/app/Activity;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-interface {v1, p1}, Lcom/cloud/tmc/miniutils/util/Utils$OnAppStatusChangedListener;->onBackground(Landroid/app/Activity;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    return-void
.end method

.method private processHideSoftInputOnActivityDestroy(Landroid/app/Activity;Z)V
    .locals 2

    .line 1
    const/16 v0, -0x7b

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-virtual {v1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    const/4 p2, 0x3

    .line 27
    invoke-virtual {p1, p2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-virtual {p2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    instance-of v0, p2, Ljava/lang/Integer;

    .line 44
    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    return-void

    .line 48
    :cond_1
    new-instance v0, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl$4;

    .line 49
    .line 50
    invoke-direct {v0, p0, p1, p2}, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl$4;-><init>(Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;Landroid/app/Activity;Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    const-wide/16 p1, 0x64

    .line 54
    .line 55
    invoke-static {v0, p1, p2}, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    .line 58
    :catch_0
    :goto_0
    return-void
.end method

.method private removeActivityLifecycleCallbacksInner(Landroid/app/Activity;Lcom/cloud/tmc/miniutils/util/Utils$ActivityLifecycleCallbacks;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->mActivityLifecycleCallbacksMap:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/util/List;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method private static setAnimatorsEnabled()V
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/blankj/utilcode/util/d0;->a()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    :try_start_0
    const-class v0, Landroid/animation/ValueAnimator;

    .line 15
    .line 16
    const-string v1, "sDurationScale"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Ljava/lang/Float;

    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    const/4 v3, 0x0

    .line 38
    cmpl-float v2, v2, v3

    .line 39
    .line 40
    if-nez v2, :cond_1

    .line 41
    .line 42
    const/high16 v2, 0x3f800000    # 1.0f

    .line 43
    .line 44
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    goto :goto_2

    .line 52
    :catch_0
    move-exception v0

    .line 53
    goto :goto_0

    .line 54
    :catch_1
    move-exception v0

    .line 55
    goto :goto_1

    .line 56
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 57
    .line 58
    .line 59
    goto :goto_2

    .line 60
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 61
    .line 62
    .line 63
    :cond_1
    :goto_2
    return-void
.end method

.method private setTopActivity(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->mActivityList:Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->mActivityList:Ljava/util/LinkedList;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/app/Activity;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->mActivityList:Ljava/util/LinkedList;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->mActivityList:Ljava/util/LinkedList;

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->mActivityList:Ljava/util/LinkedList;

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method addActivityLifecycleCallbacks(Landroid/app/Activity;Lcom/cloud/tmc/miniutils/util/Utils$ActivityLifecycleCallbacks;)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl$1;-><init>(Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;Landroid/app/Activity;Lcom/cloud/tmc/miniutils/util/Utils$ActivityLifecycleCallbacks;)V

    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method addActivityLifecycleCallbacks(Lcom/cloud/tmc/miniutils/util/Utils$ActivityLifecycleCallbacks;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->STUB:Landroid/app/Activity;

    invoke-virtual {p0, v0, p1}, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->addActivityLifecycleCallbacks(Landroid/app/Activity;Lcom/cloud/tmc/miniutils/util/Utils$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method addOnAppStatusChangedListener(Lcom/cloud/tmc/miniutils/util/Utils$OnAppStatusChangedListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->mStatusListeners:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method getActivityList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->mActivityList:Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/util/LinkedList;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->mActivityList:Ljava/util/LinkedList;

    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 14
    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_0
    invoke-direct {p0}, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->getActivitiesByReflect()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->mActivityList:Ljava/util/LinkedList;

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 24
    .line 25
    .line 26
    new-instance v0, Ljava/util/LinkedList;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->mActivityList:Ljava/util/LinkedList;

    .line 29
    .line 30
    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 31
    .line 32
    .line 33
    return-object v0
.end method

.method getApplicationByReflect()Landroid/app/Application;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "android.app.ActivityThread"

    .line 3
    .line 4
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-direct {p0}, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->getActivityThread()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const-string v3, "getApplication"

    .line 13
    .line 14
    invoke-virtual {v1, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_0
    check-cast v1, Landroid/app/Application;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    return-object v1

    .line 28
    :catchall_0
    move-exception v1

    .line 29
    const-string v2, "UtilsActivityLifecycleImpl"

    .line 30
    .line 31
    const-string v3, "init error "

    .line 32
    .line 33
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 34
    .line 35
    .line 36
    return-object v0
.end method

.method getTopActivity()Landroid/app/Activity;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->getActivityList()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroid/app/Activity;

    .line 20
    .line 21
    invoke-static {v1}, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->isActivityAlive(Landroid/app/Activity;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return-object v1

    .line 29
    :cond_1
    const/4 v0, 0x0

    .line 30
    return-object v0
.end method

.method init(Landroid/app/Application;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method isAppForeground()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->mIsBackground:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    return v0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p2, p0, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->mActivityList:Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    const/4 p2, 0x1

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->postStatus(Landroid/app/Activity;Z)V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->setAnimatorsEnabled()V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->setTopActivity(Landroid/app/Activity;)V

    .line 17
    .line 18
    .line 19
    sget-object p2, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    .line 20
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->consumeActivityLifecycleCallbacks(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle$Event;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->mActivityList:Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->fixSoftInputLeaks(Landroid/app/Activity;)V

    .line 7
    .line 8
    .line 9
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 10
    .line 11
    invoke-direct {p0, p1, v0}, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->consumeActivityLifecycleCallbacks(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle$Event;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->consumeActivityLifecycleCallbacks(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle$Event;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onActivityPostCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public onActivityPostDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public onActivityPostPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public onActivityPostResumed(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public onActivityPostSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public onActivityPostStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public onActivityPostStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public onActivityPreDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public onActivityPrePaused(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public onActivityPreResumed(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public onActivityPreSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public onActivityPreStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public onActivityPreStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->setTopActivity(Landroid/app/Activity;)V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->mIsBackground:Z

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iput-boolean v1, p0, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->mIsBackground:Z

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-direct {p0, p1, v0}, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->postStatus(Landroid/app/Activity;Z)V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->processHideSoftInputOnActivityDestroy(Landroid/app/Activity;Z)V

    .line 16
    .line 17
    .line 18
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    .line 19
    .line 20
    invoke-direct {p0, p1, v0}, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->consumeActivityLifecycleCallbacks(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle$Event;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->mIsBackground:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->setTopActivity(Landroid/app/Activity;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget v0, p0, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->mConfigCount:I

    .line 9
    .line 10
    if-gez v0, :cond_1

    .line 11
    .line 12
    add-int/lit8 v0, v0, 0x1

    .line 13
    .line 14
    iput v0, p0, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->mConfigCount:I

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    iget v0, p0, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->mForegroundCount:I

    .line 18
    .line 19
    add-int/lit8 v0, v0, 0x1

    .line 20
    .line 21
    iput v0, p0, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->mForegroundCount:I

    .line 22
    .line 23
    :goto_0
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    .line 24
    .line 25
    invoke-direct {p0, p1, v0}, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->consumeActivityLifecycleCallbacks(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle$Event;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget v0, p0, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->mConfigCount:I

    .line 9
    .line 10
    sub-int/2addr v0, v1

    .line 11
    iput v0, p0, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->mConfigCount:I

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget v0, p0, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->mForegroundCount:I

    .line 15
    .line 16
    sub-int/2addr v0, v1

    .line 17
    iput v0, p0, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->mForegroundCount:I

    .line 18
    .line 19
    if-gtz v0, :cond_1

    .line 20
    .line 21
    iput-boolean v1, p0, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->mIsBackground:Z

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, v0}, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->postStatus(Landroid/app/Activity;Z)V

    .line 25
    .line 26
    .line 27
    :cond_1
    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->processHideSoftInputOnActivityDestroy(Landroid/app/Activity;Z)V

    .line 28
    .line 29
    .line 30
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    .line 31
    .line 32
    invoke-direct {p0, p1, v0}, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->consumeActivityLifecycleCallbacks(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle$Event;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method removeActivityLifecycleCallbacks(Landroid/app/Activity;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl$2;

    invoke-direct {v0, p0, p1}, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl$2;-><init>(Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method removeActivityLifecycleCallbacks(Landroid/app/Activity;Lcom/cloud/tmc/miniutils/util/Utils$ActivityLifecycleCallbacks;)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl$3;-><init>(Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;Landroid/app/Activity;Lcom/cloud/tmc/miniutils/util/Utils$ActivityLifecycleCallbacks;)V

    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method removeActivityLifecycleCallbacks(Lcom/cloud/tmc/miniutils/util/Utils$ActivityLifecycleCallbacks;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->STUB:Landroid/app/Activity;

    invoke-virtual {p0, v0, p1}, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->removeActivityLifecycleCallbacks(Landroid/app/Activity;Lcom/cloud/tmc/miniutils/util/Utils$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method removeOnAppStatusChangedListener(Lcom/cloud/tmc/miniutils/util/Utils$OnAppStatusChangedListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->mStatusListeners:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method unInit(Landroid/app/Application;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->mActivityList:Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
