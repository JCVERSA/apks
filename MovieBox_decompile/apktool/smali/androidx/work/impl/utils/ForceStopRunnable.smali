.class public Landroidx/work/impl/utils/ForceStopRunnable;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/utils/ForceStopRunnable$BroadcastReceiver;
    }
.end annotation


# static fields
.field static final ACTION_FORCE_STOP_RESCHEDULE:Ljava/lang/String; = "ACTION_FORCE_STOP_RESCHEDULE"

.field private static final ALARM_ID:I = -0x1

.field private static final BACKOFF_DURATION_MS:J = 0x12cL

.field static final MAX_ATTEMPTS:I = 0x3

.field private static final TAG:Ljava/lang/String;

.field private static final TEN_YEARS:J


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPreferenceUtils:Landroidx/work/impl/utils/o;

.field private mRetryCount:I

.field private final mWorkManager:Landroidx/work/impl/d0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "ForceStopRunnable"

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/work/j;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Landroidx/work/impl/utils/ForceStopRunnable;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 10
    .line 11
    const-wide/16 v1, 0xe42

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    sput-wide v0, Landroidx/work/impl/utils/ForceStopRunnable;->TEN_YEARS:J

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/impl/d0;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/work/impl/d0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Landroidx/work/impl/utils/ForceStopRunnable;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p2, p0, Landroidx/work/impl/utils/ForceStopRunnable;->mWorkManager:Landroidx/work/impl/d0;

    .line 11
    .line 12
    invoke-virtual {p2}, Landroidx/work/impl/d0;->p()Landroidx/work/impl/utils/o;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Landroidx/work/impl/utils/ForceStopRunnable;->mPreferenceUtils:Landroidx/work/impl/utils/o;

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    iput p1, p0, Landroidx/work/impl/utils/ForceStopRunnable;->mRetryCount:I

    .line 20
    .line 21
    return-void
.end method

.method static getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroid/content/ComponentName;

    .line 7
    .line 8
    const-class v2, Landroidx/work/impl/utils/ForceStopRunnable$BroadcastReceiver;

    .line 9
    .line 10
    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    const-string p0, "ACTION_FORCE_STOP_RESCHEDULE"

    .line 17
    .line 18
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method private static getPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 2

    .line 1
    invoke-static {p0}, Landroidx/work/impl/utils/ForceStopRunnable;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, -0x1

    .line 6
    invoke-static {p0, v1, v0, p1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method static setAlarm(Landroid/content/Context;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClassVerificationFailure"
        }
    .end annotation

    .line 1
    const-string v0, "alarm"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/app/AlarmManager;

    .line 8
    .line 9
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 10
    .line 11
    const/16 v2, 0x1f

    .line 12
    .line 13
    if-lt v1, v2, :cond_0

    .line 14
    .line 15
    const/high16 v1, 0xa000000

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/high16 v1, 0x8000000

    .line 19
    .line 20
    :goto_0
    invoke-static {p0, v1}, Landroidx/work/impl/utils/ForceStopRunnable;->getPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 25
    .line 26
    .line 27
    move-result-wide v1

    .line 28
    sget-wide v3, Landroidx/work/impl/utils/ForceStopRunnable;->TEN_YEARS:J

    .line 29
    .line 30
    add-long/2addr v1, v3

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    invoke-virtual {v0, v3, v1, v2, p0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method


# virtual methods
.method public cleanUp()Z
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/work/impl/utils/ForceStopRunnable;->mWorkManager:Landroidx/work/impl/d0;

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroidx/work/impl/background/systemjob/k;->i(Landroid/content/Context;Landroidx/work/impl/d0;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Landroidx/work/impl/utils/ForceStopRunnable;->mWorkManager:Landroidx/work/impl/d0;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroidx/work/impl/d0;->t()Landroidx/work/impl/WorkDatabase;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->n0()Lj4/v;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->m0()Lj4/r;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->k()V

    .line 24
    .line 25
    .line 26
    :try_start_0
    invoke-interface {v2}, Lj4/v;->w()Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    const/4 v5, 0x0

    .line 31
    const/4 v6, 0x1

    .line 32
    if-eqz v4, :cond_0

    .line 33
    .line 34
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 35
    .line 36
    .line 37
    move-result v7

    .line 38
    if-nez v7, :cond_0

    .line 39
    .line 40
    move v7, v6

    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception v0

    .line 43
    goto :goto_2

    .line 44
    :cond_0
    move v7, v5

    .line 45
    :goto_0
    if-eqz v7, :cond_1

    .line 46
    .line 47
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v8

    .line 55
    if-eqz v8, :cond_1

    .line 56
    .line 57
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v8

    .line 61
    check-cast v8, Lj4/u;

    .line 62
    .line 63
    sget-object v9, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    .line 64
    .line 65
    iget-object v10, v8, Lj4/u;->a:Ljava/lang/String;

    .line 66
    .line 67
    invoke-interface {v2, v9, v10}, Lj4/v;->u(Landroidx/work/WorkInfo$State;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    iget-object v8, v8, Lj4/u;->a:Ljava/lang/String;

    .line 71
    .line 72
    const-wide/16 v9, -0x1

    .line 73
    .line 74
    invoke-interface {v2, v8, v9, v10}, Lj4/v;->r(Ljava/lang/String;J)I

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_1
    invoke-interface {v3}, Lj4/r;->c()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->e0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->t()V

    .line 85
    .line 86
    .line 87
    if-nez v7, :cond_2

    .line 88
    .line 89
    if-eqz v0, :cond_3

    .line 90
    .line 91
    :cond_2
    move v5, v6

    .line 92
    :cond_3
    return v5

    .line 93
    :goto_2
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->t()V

    .line 94
    .line 95
    .line 96
    throw v0
.end method

.method public forceStopRunnable()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/work/impl/utils/ForceStopRunnable;->cleanUp()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroidx/work/impl/utils/ForceStopRunnable;->shouldRescheduleWorkers()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-static {}, Landroidx/work/j;->e()Landroidx/work/j;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget-object v1, Landroidx/work/impl/utils/ForceStopRunnable;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    const-string v2, "Rescheduling Workers."

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Landroidx/work/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->mWorkManager:Landroidx/work/impl/d0;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroidx/work/impl/d0;->x()V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->mWorkManager:Landroidx/work/impl/d0;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroidx/work/impl/d0;->p()Landroidx/work/impl/utils/o;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const/4 v1, 0x0

    .line 34
    invoke-virtual {v0, v1}, Landroidx/work/impl/utils/o;->g(Z)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {p0}, Landroidx/work/impl/utils/ForceStopRunnable;->isForceStopped()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    invoke-static {}, Landroidx/work/j;->e()Landroidx/work/j;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    sget-object v1, Landroidx/work/impl/utils/ForceStopRunnable;->TAG:Ljava/lang/String;

    .line 49
    .line 50
    const-string v2, "Application was force-stopped, rescheduling."

    .line 51
    .line 52
    invoke-virtual {v0, v1, v2}, Landroidx/work/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->mWorkManager:Landroidx/work/impl/d0;

    .line 56
    .line 57
    invoke-virtual {v0}, Landroidx/work/impl/d0;->x()V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->mPreferenceUtils:Landroidx/work/impl/utils/o;

    .line 61
    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 63
    .line 64
    .line 65
    move-result-wide v1

    .line 66
    invoke-virtual {v0, v1, v2}, Landroidx/work/impl/utils/o;->f(J)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    if-eqz v0, :cond_2

    .line 71
    .line 72
    invoke-static {}, Landroidx/work/j;->e()Landroidx/work/j;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    sget-object v1, Landroidx/work/impl/utils/ForceStopRunnable;->TAG:Ljava/lang/String;

    .line 77
    .line 78
    const-string v2, "Found unfinished work, scheduling it."

    .line 79
    .line 80
    invoke-virtual {v0, v1, v2}, Landroidx/work/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->mWorkManager:Landroidx/work/impl/d0;

    .line 84
    .line 85
    invoke-virtual {v0}, Landroidx/work/impl/d0;->m()Landroidx/work/a;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    iget-object v1, p0, Landroidx/work/impl/utils/ForceStopRunnable;->mWorkManager:Landroidx/work/impl/d0;

    .line 90
    .line 91
    invoke-virtual {v1}, Landroidx/work/impl/d0;->t()Landroidx/work/impl/WorkDatabase;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    iget-object v2, p0, Landroidx/work/impl/utils/ForceStopRunnable;->mWorkManager:Landroidx/work/impl/d0;

    .line 96
    .line 97
    invoke-virtual {v2}, Landroidx/work/impl/d0;->r()Ljava/util/List;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-static {v0, v1, v2}, Landroidx/work/impl/t;->b(Landroidx/work/a;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    .line 102
    .line 103
    .line 104
    :cond_2
    :goto_0
    return-void
.end method

.method public isForceStopped()Z
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClassVerificationFailure"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    .line 4
    const/16 v2, 0x1f

    .line 5
    .line 6
    if-lt v1, v2, :cond_0

    .line 7
    .line 8
    const/high16 v2, 0x22000000

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/high16 v2, 0x20000000

    .line 12
    .line 13
    :goto_0
    iget-object v3, p0, Landroidx/work/impl/utils/ForceStopRunnable;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    invoke-static {v3, v2}, Landroidx/work/impl/utils/ForceStopRunnable;->getPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const/16 v3, 0x1e

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    if-lt v1, v3, :cond_3

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    invoke-virtual {v2}, Landroid/app/PendingIntent;->cancel()V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :catch_0
    move-exception v1

    .line 31
    goto :goto_3

    .line 32
    :catch_1
    move-exception v1

    .line 33
    goto :goto_3

    .line 34
    :cond_1
    :goto_1
    iget-object v1, p0, Landroidx/work/impl/utils/ForceStopRunnable;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    const-string v2, "activity"

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Landroid/app/ActivityManager;

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    invoke-static {v1, v2, v4, v4}, Landroidx/work/impl/utils/c;->a(Landroid/app/ActivityManager;Ljava/lang/String;II)Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    if-eqz v1, :cond_4

    .line 50
    .line 51
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-nez v2, :cond_4

    .line 56
    .line 57
    iget-object v2, p0, Landroidx/work/impl/utils/ForceStopRunnable;->mPreferenceUtils:Landroidx/work/impl/utils/o;

    .line 58
    .line 59
    invoke-virtual {v2}, Landroidx/work/impl/utils/o;->b()J

    .line 60
    .line 61
    .line 62
    move-result-wide v2

    .line 63
    move v5, v4

    .line 64
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    if-ge v5, v6, :cond_4

    .line 69
    .line 70
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    invoke-static {v6}, Landroidx/work/impl/utils/d;->a(Ljava/lang/Object;)Landroid/app/ApplicationExitInfo;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    invoke-static {v6}, Landroidx/work/impl/utils/e;->a(Landroid/app/ApplicationExitInfo;)I

    .line 79
    .line 80
    .line 81
    move-result v7

    .line 82
    const/16 v8, 0xa

    .line 83
    .line 84
    if-ne v7, v8, :cond_2

    .line 85
    .line 86
    invoke-static {v6}, Landroidx/work/impl/utils/f;->a(Landroid/app/ApplicationExitInfo;)J

    .line 87
    .line 88
    .line 89
    move-result-wide v6

    .line 90
    cmp-long v6, v6, v2

    .line 91
    .line 92
    if-ltz v6, :cond_2

    .line 93
    .line 94
    return v0

    .line 95
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_3
    if-nez v2, :cond_4

    .line 99
    .line 100
    iget-object v1, p0, Landroidx/work/impl/utils/ForceStopRunnable;->mContext:Landroid/content/Context;

    .line 101
    .line 102
    invoke-static {v1}, Landroidx/work/impl/utils/ForceStopRunnable;->setAlarm(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .line 104
    .line 105
    return v0

    .line 106
    :cond_4
    return v4

    .line 107
    :goto_3
    invoke-static {}, Landroidx/work/j;->e()Landroidx/work/j;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    sget-object v3, Landroidx/work/impl/utils/ForceStopRunnable;->TAG:Ljava/lang/String;

    .line 112
    .line 113
    const-string v4, "Ignoring exception"

    .line 114
    .line 115
    invoke-virtual {v2, v3, v4, v1}, Landroidx/work/j;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    .line 117
    .line 118
    return v0
.end method

.method public multiProcessChecks()Z
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->mWorkManager:Landroidx/work/impl/d0;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/work/impl/d0;->m()Landroidx/work/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroidx/work/a;->c()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-static {}, Landroidx/work/j;->e()Landroidx/work/j;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sget-object v1, Landroidx/work/impl/utils/ForceStopRunnable;->TAG:Ljava/lang/String;

    .line 22
    .line 23
    const-string v2, "The default process name was not specified."

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Landroidx/work/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    return v0

    .line 30
    :cond_0
    iget-object v1, p0, Landroidx/work/impl/utils/ForceStopRunnable;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    invoke-static {v1, v0}, Landroidx/work/impl/utils/p;->b(Landroid/content/Context;Landroidx/work/a;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    invoke-static {}, Landroidx/work/j;->e()Landroidx/work/j;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    sget-object v2, Landroidx/work/impl/utils/ForceStopRunnable;->TAG:Ljava/lang/String;

    .line 41
    .line 42
    new-instance v3, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v4, "Is default app process = "

    .line 48
    .line 49
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v1, v2, v3}, Landroidx/work/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return v0
.end method

.method public run()V
    .locals 9

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/work/impl/utils/ForceStopRunnable;->multiProcessChecks()Z

    .line 2
    .line 3
    .line 4
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->mWorkManager:Landroidx/work/impl/d0;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/work/impl/d0;->w()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    invoke-static {v0}, Landroidx/work/impl/z;->d(Landroid/content/Context;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    .line 17
    .line 18
    :try_start_2
    invoke-static {}, Landroidx/work/j;->e()Landroidx/work/j;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sget-object v1, Landroidx/work/impl/utils/ForceStopRunnable;->TAG:Ljava/lang/String;

    .line 23
    .line 24
    const-string v2, "Performing cleanup operations."

    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Landroidx/work/j;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 27
    .line 28
    .line 29
    :try_start_3
    invoke-virtual {p0}, Landroidx/work/impl/utils/ForceStopRunnable;->forceStopRunnable()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Landroid/database/sqlite/SQLiteTableLockedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/database/sqlite/SQLiteAccessPermException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 30
    .line 31
    .line 32
    goto/16 :goto_2

    .line 33
    .line 34
    :catchall_0
    move-exception v0

    .line 35
    goto/16 :goto_3

    .line 36
    .line 37
    :catch_0
    move-exception v0

    .line 38
    goto :goto_1

    .line 39
    :catch_1
    move-exception v0

    .line 40
    goto :goto_1

    .line 41
    :catch_2
    move-exception v0

    .line 42
    goto :goto_1

    .line 43
    :catch_3
    move-exception v0

    .line 44
    goto :goto_1

    .line 45
    :catch_4
    move-exception v0

    .line 46
    goto :goto_1

    .line 47
    :catch_5
    move-exception v0

    .line 48
    goto :goto_1

    .line 49
    :catch_6
    move-exception v0

    .line 50
    :goto_1
    :try_start_4
    iget v1, p0, Landroidx/work/impl/utils/ForceStopRunnable;->mRetryCount:I

    .line 51
    .line 52
    add-int/lit8 v1, v1, 0x1

    .line 53
    .line 54
    iput v1, p0, Landroidx/work/impl/utils/ForceStopRunnable;->mRetryCount:I

    .line 55
    .line 56
    const/4 v2, 0x3

    .line 57
    if-lt v1, v2, :cond_2

    .line 58
    .line 59
    const-string v1, "The file system on the device is in a bad state. WorkManager cannot access the app\'s internal data store."

    .line 60
    .line 61
    invoke-static {}, Landroidx/work/j;->e()Landroidx/work/j;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    sget-object v3, Landroidx/work/impl/utils/ForceStopRunnable;->TAG:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v2, v3, v1, v0}, Landroidx/work/j;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    .line 69
    .line 70
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 71
    .line 72
    invoke-direct {v2, v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->mWorkManager:Landroidx/work/impl/d0;

    .line 76
    .line 77
    invoke-virtual {v0}, Landroidx/work/impl/d0;->m()Landroidx/work/a;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v0}, Landroidx/work/a;->e()Landroidx/core/util/a;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    if-eqz v0, :cond_1

    .line 86
    .line 87
    invoke-static {}, Landroidx/work/j;->e()Landroidx/work/j;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    const-string v4, "Routing exception to the specified exception handler"

    .line 92
    .line 93
    invoke-virtual {v1, v3, v4, v2}, Landroidx/work/j;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    .line 95
    .line 96
    invoke-interface {v0, v2}, Landroidx/core/util/a;->accept(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_1
    throw v2

    .line 101
    :cond_2
    int-to-long v1, v1

    .line 102
    const-wide/16 v3, 0x12c

    .line 103
    .line 104
    mul-long/2addr v1, v3

    .line 105
    invoke-static {}, Landroidx/work/j;->e()Landroidx/work/j;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    sget-object v6, Landroidx/work/impl/utils/ForceStopRunnable;->TAG:Ljava/lang/String;

    .line 110
    .line 111
    new-instance v7, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    .line 116
    const-string v8, "Retrying after "

    .line 117
    .line 118
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-virtual {v5, v6, v1, v0}, Landroidx/work/j;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 129
    .line 130
    .line 131
    iget v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->mRetryCount:I

    .line 132
    .line 133
    int-to-long v0, v0

    .line 134
    mul-long/2addr v0, v3

    .line 135
    invoke-virtual {p0, v0, v1}, Landroidx/work/impl/utils/ForceStopRunnable;->sleep(J)V

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :catch_7
    move-exception v0

    .line 140
    const-string v1, "Unexpected SQLite exception during migrations"

    .line 141
    .line 142
    invoke-static {}, Landroidx/work/j;->e()Landroidx/work/j;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    sget-object v3, Landroidx/work/impl/utils/ForceStopRunnable;->TAG:Ljava/lang/String;

    .line 147
    .line 148
    invoke-virtual {v2, v3, v1}, Landroidx/work/j;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 152
    .line 153
    invoke-direct {v2, v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 154
    .line 155
    .line 156
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->mWorkManager:Landroidx/work/impl/d0;

    .line 157
    .line 158
    invoke-virtual {v0}, Landroidx/work/impl/d0;->m()Landroidx/work/a;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-virtual {v0}, Landroidx/work/a;->e()Landroidx/core/util/a;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    if-eqz v0, :cond_3

    .line 167
    .line 168
    invoke-interface {v0, v2}, Landroidx/core/util/a;->accept(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 169
    .line 170
    .line 171
    :goto_2
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->mWorkManager:Landroidx/work/impl/d0;

    .line 172
    .line 173
    invoke-virtual {v0}, Landroidx/work/impl/d0;->w()V

    .line 174
    .line 175
    .line 176
    return-void

    .line 177
    :cond_3
    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 178
    :goto_3
    iget-object v1, p0, Landroidx/work/impl/utils/ForceStopRunnable;->mWorkManager:Landroidx/work/impl/d0;

    .line 179
    .line 180
    invoke-virtual {v1}, Landroidx/work/impl/d0;->w()V

    .line 181
    .line 182
    .line 183
    throw v0
.end method

.method public shouldRescheduleWorkers()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->mWorkManager:Landroidx/work/impl/d0;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/work/impl/d0;->p()Landroidx/work/impl/utils/o;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroidx/work/impl/utils/o;->c()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public sleep(J)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    :catch_0
    return-void
.end method
