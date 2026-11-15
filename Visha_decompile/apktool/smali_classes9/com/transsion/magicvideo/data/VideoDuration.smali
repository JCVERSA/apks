.class public Lcom/transsion/magicvideo/data/VideoDuration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/magicvideo/data/VideoDuration$IVideoDurationListener;
    }
.end annotation


# static fields
.field static final MAX_TRY:I = 0x3

.field static final TAG:Ljava/lang/String; = "VideoDuration"

.field private static sTimeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDuration:J

.field private mLoading:Z

.field private mTryCount:I

.field private mUri:Landroid/net/Uri;

.field private mUriString:Ljava/lang/String;

.field private mVideoDurationListener:Lcom/transsion/magicvideo/data/VideoDuration$IVideoDurationListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/transsion/magicvideo/data/VideoDuration;->sTimeMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/transsion/magicvideo/data/VideoDuration;->mDuration:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/magicvideo/data/VideoDuration;->mLoading:Z

    iput v0, p0, Lcom/transsion/magicvideo/data/VideoDuration;->mTryCount:I

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/magicvideo/data/VideoDuration;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/data/VideoDuration;->mUri:Landroid/net/Uri;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/transsion/magicvideo/data/VideoDuration;)Lcom/transsion/magicvideo/data/VideoDuration$IVideoDurationListener;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/data/VideoDuration;->mVideoDurationListener:Lcom/transsion/magicvideo/data/VideoDuration$IVideoDurationListener;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/transsion/magicvideo/data/VideoDuration;J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/magicvideo/data/VideoDuration;->mDuration:J

    return-void
.end method

.method public static bridge synthetic d(Lcom/transsion/magicvideo/data/VideoDuration;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/magicvideo/data/VideoDuration;->mLoading:Z

    return-void
.end method

.method public static bridge synthetic e()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/transsion/magicvideo/data/VideoDuration;->sTimeMap:Ljava/util/HashMap;

    return-object v0
.end method

.method private loadDuration()V
    .locals 6

    iget-object v0, p0, Lcom/transsion/magicvideo/data/VideoDuration;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_4

    iget-boolean v1, p0, Lcom/transsion/magicvideo/data/VideoDuration;->mLoading:Z

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget v1, p0, Lcom/transsion/magicvideo/data/VideoDuration;->mTryCount:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/transsion/magicvideo/data/VideoDuration;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/transsion/magicvideo/data/VideoDuration;->mUriString:Ljava/lang/String;

    sget-object v3, Lcom/transsion/magicvideo/data/VideoDuration;->sTimeMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/magicvideo/data/VideoDuration;->mDuration:J

    return-void

    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/transsion/magicvideo/data/VideoDuration;->mLoading:Z

    iget v4, p0, Lcom/transsion/magicvideo/data/VideoDuration;->mTryCount:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/transsion/magicvideo/data/VideoDuration;->mTryCount:I

    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/transsion/arch/threads/TaskExecutor;->e()Ljava/util/concurrent/Executor;

    move-result-object v3

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/transsion/arch/threads/TaskExecutor;->b()Ljava/util/concurrent/Executor;

    move-result-object v3

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "call-loadDuration:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ":::"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "VideoDuration"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/transsion/magicvideo/data/VideoDuration$1;

    invoke-direct {v4, p0, v0, v2, v1}, Lcom/transsion/magicvideo/data/VideoDuration$1;-><init>(Lcom/transsion/magicvideo/data/VideoDuration;Landroid/net/Uri;Ljava/lang/String;Landroid/content/Context;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public checkLoadDuration()V
    .locals 4

    iget-wide v0, p0, Lcom/transsion/magicvideo/data/VideoDuration;->mDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/magicvideo/data/VideoDuration;->loadDuration()V

    :cond_0
    return-void
.end method

.method public getDuration()J
    .locals 4

    iget-wide v0, p0, Lcom/transsion/magicvideo/data/VideoDuration;->mDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    sget-object v0, Lcom/transsion/magicvideo/data/VideoDuration;->sTimeMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/transsion/magicvideo/data/VideoDuration;->mUriString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/magicvideo/data/VideoDuration;->mDuration:J

    :cond_0
    iget-wide v0, p0, Lcom/transsion/magicvideo/data/VideoDuration;->mDuration:J

    return-wide v0
.end method

.method public setUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/transsion/magicvideo/data/VideoDuration;
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/data/VideoDuration;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/magicvideo/data/VideoDuration;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    iput-object p2, p0, Lcom/transsion/magicvideo/data/VideoDuration;->mUri:Landroid/net/Uri;

    iput-object p1, p0, Lcom/transsion/magicvideo/data/VideoDuration;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/magicvideo/data/VideoDuration;->mLoading:Z

    iput p1, p0, Lcom/transsion/magicvideo/data/VideoDuration;->mTryCount:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/transsion/magicvideo/data/VideoDuration;->mDuration:J

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/magicvideo/data/VideoDuration;->mUriString:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/magicvideo/data/VideoDuration;->mUriString:Ljava/lang/String;

    :goto_0
    invoke-direct {p0}, Lcom/transsion/magicvideo/data/VideoDuration;->loadDuration()V

    return-object p0
.end method

.method public setVideoDurationListener(Lcom/transsion/magicvideo/data/VideoDuration$IVideoDurationListener;)Lcom/transsion/magicvideo/data/VideoDuration;
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/data/VideoDuration;->mVideoDurationListener:Lcom/transsion/magicvideo/data/VideoDuration$IVideoDurationListener;

    return-object p0
.end method
