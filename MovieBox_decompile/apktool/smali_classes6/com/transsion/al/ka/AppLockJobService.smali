.class public Lcom/transsion/al/ka/AppLockJobService;
.super Landroid/app/job/JobService;
.source "source.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AppLockJobService"


# instance fields
.field private kJobId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    iput v0, p0, Lcom/transsion/al/ka/AppLockJobService;->kJobId:I

    .line 6
    .line 7
    return-void
.end method

.method public static synthetic a(Lcom/transsion/al/ka/AppLockJobService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/al/ka/AppLockJobService;->lambda$onStopJob$1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/transsion/al/ka/AppLockJobService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/al/ka/AppLockJobService;->lambda$onStartJob$0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$onStartJob$0()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/al/ka/JobUtils;->startAppLockJobService(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$onStopJob$1()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/al/ka/JobUtils;->startAppLockJobService(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/tn/lib/thread/ThreadPool;->e()Lcom/tn/lib/thread/ThreadPool;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Lcom/transsion/al/ka/a;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/transsion/al/ka/a;-><init>(Lcom/transsion/al/ka/AppLockJobService;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lcom/tn/lib/thread/ThreadPool;->d(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    return p1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/tn/lib/thread/ThreadPool;->e()Lcom/tn/lib/thread/ThreadPool;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Lcom/transsion/al/ka/b;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/transsion/al/ka/b;-><init>(Lcom/transsion/al/ka/AppLockJobService;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lcom/tn/lib/thread/ThreadPool;->d(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    return p1
.end method
