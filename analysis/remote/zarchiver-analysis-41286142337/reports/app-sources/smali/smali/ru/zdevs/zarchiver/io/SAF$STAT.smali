.class public Lru/zdevs/zarchiver/io/SAF$STAT;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/zdevs/zarchiver/io/SAF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "STAT"
.end annotation


# instance fields
.field public final date:J

.field public final perm:I

.field public final size:J


# direct methods
.method public constructor <init>(JJI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lru/zdevs/zarchiver/io/SAF$STAT;->size:J

    .line 5
    .line 6
    iput-wide p3, p0, Lru/zdevs/zarchiver/io/SAF$STAT;->date:J

    .line 7
    .line 8
    iput p5, p0, Lru/zdevs/zarchiver/io/SAF$STAT;->perm:I

    .line 9
    .line 10
    return-void
.end method
