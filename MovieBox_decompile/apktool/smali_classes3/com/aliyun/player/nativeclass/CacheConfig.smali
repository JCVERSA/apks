.class public Lcom/aliyun/player/nativeclass/CacheConfig;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field public mDir:Ljava/lang/String;

.field public mEnable:Z

.field public mMaxDurationS:J

.field public mMaxSizeMB:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/aliyun/player/nativeclass/CacheConfig;->mEnable:Z

    .line 6
    .line 7
    return-void
.end method
