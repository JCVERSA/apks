.class public final Landroidx/media3/exoplayer/scheduler/PlatformScheduler;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Le2/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/scheduler/PlatformScheduler$PlatformSchedulerService;
    }
.end annotation


# static fields
.field private static final d:I


# instance fields
.field private final a:I

.field private final b:Landroid/content/ComponentName;

.field private final c:Landroid/app/job/JobScheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Landroidx/media3/common/util/a1;->a:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    const/16 v0, 0x10

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    or-int/lit8 v0, v0, 0xf

    .line 12
    .line 13
    sput v0, Landroidx/media3/exoplayer/scheduler/PlatformScheduler;->d:I

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

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
    iput p2, p0, Landroidx/media3/exoplayer/scheduler/PlatformScheduler;->a:I

    .line 9
    .line 10
    new-instance p2, Landroid/content/ComponentName;

    .line 11
    .line 12
    const-class v0, Landroidx/media3/exoplayer/scheduler/PlatformScheduler$PlatformSchedulerService;

    .line 13
    .line 14
    invoke-direct {p2, p1, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 15
    .line 16
    .line 17
    iput-object p2, p0, Landroidx/media3/exoplayer/scheduler/PlatformScheduler;->b:Landroid/content/ComponentName;

    .line 18
    .line 19
    const-string p2, "jobscheduler"

    .line 20
    .line 21
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Landroid/app/job/JobScheduler;

    .line 26
    .line 27
    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Landroid/app/job/JobScheduler;

    .line 32
    .line 33
    iput-object p1, p0, Landroidx/media3/exoplayer/scheduler/PlatformScheduler;->c:Landroid/app/job/JobScheduler;

    .line 34
    .line 35
    return-void
.end method

.method private static c(ILandroid/content/ComponentName;Landroidx/media3/exoplayer/scheduler/Requirements;Ljava/lang/String;Ljava/lang/String;)Landroid/app/job/JobInfo;
    .locals 3

    .line 1
    sget v0, Landroidx/media3/exoplayer/scheduler/PlatformScheduler;->d:I

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Landroidx/media3/exoplayer/scheduler/Requirements;->filterRequirements(I)Landroidx/media3/exoplayer/scheduler/Requirements;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p2}, Landroidx/media3/exoplayer/scheduler/Requirements;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v2, "Ignoring unsupported requirements: "

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/media3/exoplayer/scheduler/Requirements;->getRequirements()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-virtual {p2}, Landroidx/media3/exoplayer/scheduler/Requirements;->getRequirements()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    xor-int/2addr v0, v2

    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v1, "PlatformScheduler"

    .line 40
    .line 41
    invoke-static {v1, v0}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    new-instance v0, Landroid/app/job/JobInfo$Builder;

    .line 45
    .line 46
    invoke-direct {v0, p0, p1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2}, Landroidx/media3/exoplayer/scheduler/Requirements;->isUnmeteredNetworkRequired()Z

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    const/4 p1, 0x1

    .line 54
    if-eqz p0, :cond_1

    .line 55
    .line 56
    const/4 p0, 0x2

    .line 57
    invoke-virtual {v0, p0}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {p2}, Landroidx/media3/exoplayer/scheduler/Requirements;->isNetworkRequired()Z

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    if-eqz p0, :cond_2

    .line 66
    .line 67
    invoke-virtual {v0, p1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 68
    .line 69
    .line 70
    :cond_2
    :goto_0
    invoke-virtual {p2}, Landroidx/media3/exoplayer/scheduler/Requirements;->isIdleRequired()Z

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    invoke-virtual {v0, p0}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2}, Landroidx/media3/exoplayer/scheduler/Requirements;->isChargingRequired()Z

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    invoke-virtual {v0, p0}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    .line 82
    .line 83
    .line 84
    sget p0, Landroidx/media3/common/util/a1;->a:I

    .line 85
    .line 86
    const/16 v1, 0x1a

    .line 87
    .line 88
    if-lt p0, v1, :cond_3

    .line 89
    .line 90
    invoke-virtual {p2}, Landroidx/media3/exoplayer/scheduler/Requirements;->isStorageNotLowRequired()Z

    .line 91
    .line 92
    .line 93
    move-result p0

    .line 94
    if-eqz p0, :cond_3

    .line 95
    .line 96
    invoke-static {v0, p1}, Le2/a;->a(Landroid/app/job/JobInfo$Builder;Z)Landroid/app/job/JobInfo$Builder;

    .line 97
    .line 98
    .line 99
    :cond_3
    invoke-virtual {v0, p1}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    .line 100
    .line 101
    .line 102
    new-instance p0, Landroid/os/PersistableBundle;

    .line 103
    .line 104
    invoke-direct {p0}, Landroid/os/PersistableBundle;-><init>()V

    .line 105
    .line 106
    .line 107
    const-string p1, "service_action"

    .line 108
    .line 109
    invoke-virtual {p0, p1, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    const-string p1, "service_package"

    .line 113
    .line 114
    invoke-virtual {p0, p1, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    const-string p1, "requirements"

    .line 118
    .line 119
    invoke-virtual {p2}, Landroidx/media3/exoplayer/scheduler/Requirements;->getRequirements()I

    .line 120
    .line 121
    .line 122
    move-result p2

    .line 123
    invoke-virtual {p0, p1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, p0}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    return-object p0
.end method


# virtual methods
.method public a(Landroidx/media3/exoplayer/scheduler/Requirements;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/scheduler/PlatformScheduler;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/exoplayer/scheduler/PlatformScheduler;->b:Landroid/content/ComponentName;

    .line 4
    .line 5
    invoke-static {v0, v1, p1, p3, p2}, Landroidx/media3/exoplayer/scheduler/PlatformScheduler;->c(ILandroid/content/ComponentName;Landroidx/media3/exoplayer/scheduler/Requirements;Ljava/lang/String;Ljava/lang/String;)Landroid/app/job/JobInfo;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object p2, p0, Landroidx/media3/exoplayer/scheduler/PlatformScheduler;->c:Landroid/app/job/JobScheduler;

    .line 10
    .line 11
    invoke-virtual {p2, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/4 p2, 0x1

    .line 16
    if-ne p1, p2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p2, 0x0

    .line 20
    :goto_0
    return p2
.end method

.method public b(Landroidx/media3/exoplayer/scheduler/Requirements;)Landroidx/media3/exoplayer/scheduler/Requirements;
    .locals 1

    .line 1
    sget v0, Landroidx/media3/exoplayer/scheduler/PlatformScheduler;->d:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/scheduler/Requirements;->filterRequirements(I)Landroidx/media3/exoplayer/scheduler/Requirements;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public cancel()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/scheduler/PlatformScheduler;->c:Landroid/app/job/JobScheduler;

    .line 2
    .line 3
    iget v1, p0, Landroidx/media3/exoplayer/scheduler/PlatformScheduler;->a:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    return v0
.end method
