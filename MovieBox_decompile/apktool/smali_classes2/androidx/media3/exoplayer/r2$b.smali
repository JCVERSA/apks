.class final Landroidx/media3/exoplayer/r2$b;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/r2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Lf2/v;

.field private final c:I

.field private final d:J


# direct methods
.method private constructor <init>(Ljava/util/List;Lf2/v;IJ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroidx/media3/exoplayer/r2$b;->a:Ljava/util/List;

    .line 4
    iput-object p2, p0, Landroidx/media3/exoplayer/r2$b;->b:Lf2/v;

    .line 5
    iput p3, p0, Landroidx/media3/exoplayer/r2$b;->c:I

    .line 6
    iput-wide p4, p0, Landroidx/media3/exoplayer/r2$b;->d:J

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lf2/v;IJLandroidx/media3/exoplayer/r2$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Landroidx/media3/exoplayer/r2$b;-><init>(Ljava/util/List;Lf2/v;IJ)V

    return-void
.end method

.method static synthetic a(Landroidx/media3/exoplayer/r2$b;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/media3/exoplayer/r2$b;->c:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic b(Landroidx/media3/exoplayer/r2$b;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/r2$b;->a:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Landroidx/media3/exoplayer/r2$b;)Lf2/v;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/r2$b;->b:Lf2/v;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Landroidx/media3/exoplayer/r2$b;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/media3/exoplayer/r2$b;->d:J

    .line 2
    .line 3
    return-wide v0
.end method
