.class public final Lcom/transsion/cloud/upload/model/UploadProgressInfo$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/cloud/upload/model/UploadProgressInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J*\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00082\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0007\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/transsion/cloud/upload/model/UploadProgressInfo$Companion;",
        "",
        "<init>",
        "()V",
        "changeProgress",
        "Lcom/transsion/cloud/upload/model/UploadProgressInfo;",
        "progress",
        "writeSize",
        "",
        "totalSize",
        "action",
        "Lcom/transsion/cloud/upload/model/UploadProgressInfo$Action;",
        "sniffer_load_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/cloud/upload/model/UploadProgressInfo$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final changeProgress(Lcom/transsion/cloud/upload/model/UploadProgressInfo;JJLcom/transsion/cloud/upload/model/UploadProgressInfo$Action;)Lcom/transsion/cloud/upload/model/UploadProgressInfo;
    .locals 6

    const-string p0, "progress"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-wide p4, p1, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->totalSize:J

    iget-wide v0, p1, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->currentSize:J

    iput-wide v0, p1, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->lastSize:J

    add-long/2addr v0, p2

    iput-wide v0, p1, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->currentSize:J

    invoke-static {p1}, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->access$getTempSize$p(Lcom/transsion/cloud/upload/model/UploadProgressInfo;)J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-static {p1, v0, v1}, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->access$setTempSize$p(Lcom/transsion/cloud/upload/model/UploadProgressInfo;J)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    invoke-static {p1}, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->access$getLastRefreshTime$p(Lcom/transsion/cloud/upload/model/UploadProgressInfo;)J

    move-result-wide v0

    sub-long v0, p2, v0

    sget-wide v2, Lfe7;->i:J

    cmp-long p0, v0, v2

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p1, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->currentSize:J

    cmp-long p0, v0, p4

    if-nez p0, :cond_2

    :goto_0
    invoke-static {p1}, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->access$getLastRefreshTime$p(Lcom/transsion/cloud/upload/model/UploadProgressInfo;)J

    move-result-wide v0

    sub-long v0, p2, v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_1

    const-wide/16 v0, 0x1

    :cond_1
    iget-wide v4, p1, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->currentSize:J

    long-to-float p0, v4

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr p0, v4

    long-to-float p4, p4

    div-float/2addr p0, p4

    iput p0, p1, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->fraction:F

    invoke-static {p1}, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->access$getTempSize$p(Lcom/transsion/cloud/upload/model/UploadProgressInfo;)J

    move-result-wide p4

    const/16 p0, 0x3e8

    int-to-long v4, p0

    mul-long/2addr p4, v4

    div-long/2addr p4, v0

    invoke-static {p1, p4, p5}, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->access$bufferSpeed(Lcom/transsion/cloud/upload/model/UploadProgressInfo;J)J

    move-result-wide p4

    iput-wide p4, p1, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->speed:J

    invoke-static {p1, p2, p3}, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->access$setLastRefreshTime$p(Lcom/transsion/cloud/upload/model/UploadProgressInfo;J)V

    invoke-static {p1, v2, v3}, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->access$setTempSize$p(Lcom/transsion/cloud/upload/model/UploadProgressInfo;J)V

    if-eqz p6, :cond_2

    invoke-interface {p6, p1}, Lcom/transsion/cloud/upload/model/UploadProgressInfo$Action;->call(Lcom/transsion/cloud/upload/model/UploadProgressInfo;)V

    :cond_2
    return-object p1
.end method
