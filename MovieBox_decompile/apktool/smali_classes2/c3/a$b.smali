.class final Lc3/a$b;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc3/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:I

.field private final b:J


# direct methods
.method private constructor <init>(IJ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lc3/a$b;->a:I

    .line 4
    iput-wide p2, p0, Lc3/a$b;->b:J

    return-void
.end method

.method synthetic constructor <init>(IJLc3/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lc3/a$b;-><init>(IJ)V

    return-void
.end method

.method static synthetic a(Lc3/a$b;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lc3/a$b;->b:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic b(Lc3/a$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lc3/a$b;->a:I

    .line 2
    .line 3
    return p0
.end method
