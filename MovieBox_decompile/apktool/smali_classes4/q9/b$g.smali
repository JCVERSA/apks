.class final Lq9/b$g;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq9/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "g"
.end annotation


# instance fields
.field private final a:I

.field private final b:J

.field private final c:I


# direct methods
.method public constructor <init>(IJI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lq9/b$g;->a:I

    .line 5
    .line 6
    iput-wide p2, p0, Lq9/b$g;->b:J

    .line 7
    .line 8
    iput p4, p0, Lq9/b$g;->c:I

    .line 9
    .line 10
    return-void
.end method

.method static synthetic a(Lq9/b$g;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lq9/b$g;->b:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic b(Lq9/b$g;)I
    .locals 0

    .line 1
    iget p0, p0, Lq9/b$g;->a:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic c(Lq9/b$g;)I
    .locals 0

    .line 1
    iget p0, p0, Lq9/b$g;->c:I

    .line 2
    .line 3
    return p0
.end method
