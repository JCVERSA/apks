.class public Lcom/cloud/tmc/miniutils/util/SDCardUtils$SDCardInfo;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniutils/util/SDCardUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SDCardInfo"
.end annotation


# instance fields
.field private availableSize:J

.field private isRemovable:Z

.field private path:Ljava/lang/String;

.field private state:Ljava/lang/String;

.field private totalSize:J


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/tmc/miniutils/util/SDCardUtils$SDCardInfo;->path:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/cloud/tmc/miniutils/util/SDCardUtils$SDCardInfo;->state:Ljava/lang/String;

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/cloud/tmc/miniutils/util/SDCardUtils$SDCardInfo;->isRemovable:Z

    .line 9
    .line 10
    invoke-static {p1}, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->getFsTotalSize(Ljava/lang/String;)J

    .line 11
    .line 12
    .line 13
    move-result-wide p2

    .line 14
    iput-wide p2, p0, Lcom/cloud/tmc/miniutils/util/SDCardUtils$SDCardInfo;->totalSize:J

    .line 15
    .line 16
    invoke-static {p1}, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->getFsAvailableSize(Ljava/lang/String;)J

    .line 17
    .line 18
    .line 19
    move-result-wide p1

    .line 20
    iput-wide p1, p0, Lcom/cloud/tmc/miniutils/util/SDCardUtils$SDCardInfo;->availableSize:J

    .line 21
    .line 22
    return-void
.end method

.method static bridge synthetic a(Lcom/cloud/tmc/miniutils/util/SDCardUtils$SDCardInfo;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/miniutils/util/SDCardUtils$SDCardInfo;->path:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic b(Lcom/cloud/tmc/miniutils/util/SDCardUtils$SDCardInfo;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/miniutils/util/SDCardUtils$SDCardInfo;->state:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public getAvailableSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloud/tmc/miniutils/util/SDCardUtils$SDCardInfo;->availableSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniutils/util/SDCardUtils$SDCardInfo;->path:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniutils/util/SDCardUtils$SDCardInfo;->state:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTotalSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloud/tmc/miniutils/util/SDCardUtils$SDCardInfo;->totalSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public isRemovable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/miniutils/util/SDCardUtils$SDCardInfo;->isRemovable:Z

    .line 2
    .line 3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "SDCardInfo {path = "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/cloud/tmc/miniutils/util/SDCardUtils$SDCardInfo;->path:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", state = "

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/cloud/tmc/miniutils/util/SDCardUtils$SDCardInfo;->state:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", isRemovable = "

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-boolean v1, p0, Lcom/cloud/tmc/miniutils/util/SDCardUtils$SDCardInfo;->isRemovable:Z

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", totalSize = "

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iget-wide v2, p0, Lcom/cloud/tmc/miniutils/util/SDCardUtils$SDCardInfo;->totalSize:J

    .line 46
    .line 47
    invoke-static {v1, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v1, ", availableSize = "

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    iget-wide v2, p0, Lcom/cloud/tmc/miniutils/util/SDCardUtils$SDCardInfo;->availableSize:J

    .line 64
    .line 65
    invoke-static {v1, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const/16 v1, 0x7d

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    return-object v0
.end method
