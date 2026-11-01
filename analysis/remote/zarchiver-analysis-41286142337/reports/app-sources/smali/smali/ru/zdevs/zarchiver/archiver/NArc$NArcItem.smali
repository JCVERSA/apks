.class public Lru/zdevs/zarchiver/archiver/NArc$NArcItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/zdevs/zarchiver/archiver/NArc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NArcItem"
.end annotation


# instance fields
.field private final mMTime:J

.field private final mPath:Ljava/lang/String;

.field private final mSize:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lru/zdevs/zarchiver/archiver/NArc$NArcItem;->mPath:Ljava/lang/String;

    .line 5
    .line 6
    iput-wide p2, p0, Lru/zdevs/zarchiver/archiver/NArc$NArcItem;->mSize:J

    .line 7
    .line 8
    iput-wide p4, p0, Lru/zdevs/zarchiver/archiver/NArc$NArcItem;->mMTime:J

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public getModifyTime()J
    .locals 2

    iget-wide v0, p0, Lru/zdevs/zarchiver/archiver/NArc$NArcItem;->mMTime:J

    return-wide v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/zdevs/zarchiver/archiver/NArc$NArcItem;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    invoke-virtual {p0}, Lru/zdevs/zarchiver/archiver/NArc$NArcItem;->isDir()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lru/zdevs/zarchiver/archiver/NArc$NArcItem;->mSize:J

    :goto_0
    return-wide v0
.end method

.method public isDir()Z
    .locals 5

    iget-wide v0, p0, Lru/zdevs/zarchiver/archiver/NArc$NArcItem;->mSize:J

    const-wide/16 v2, -0x2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
