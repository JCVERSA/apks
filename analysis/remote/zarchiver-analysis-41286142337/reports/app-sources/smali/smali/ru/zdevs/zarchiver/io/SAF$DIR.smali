.class public Lru/zdevs/zarchiver/io/SAF$DIR;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/zdevs/zarchiver/io/SAF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DIR"
.end annotation


# instance fields
.field public final name:Ljava/lang/String;

.field public final size:J

.field public final time:J

.field public final type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lru/zdevs/zarchiver/io/SAF$DIR;->name:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, Lru/zdevs/zarchiver/io/SAF$DIR;->type:I

    .line 7
    .line 8
    iput-wide p3, p0, Lru/zdevs/zarchiver/io/SAF$DIR;->size:J

    .line 9
    .line 10
    iput-wide p5, p0, Lru/zdevs/zarchiver/io/SAF$DIR;->time:J

    .line 11
    .line 12
    return-void
.end method
