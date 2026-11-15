.class final Lr9/a$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Li9/b0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr9/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lr9/a;


# direct methods
.method private constructor <init>(Lr9/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lr9/a$b;->a:Lr9/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lr9/a;Lr9/a$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lr9/a$b;-><init>(Lr9/a;)V

    return-void
.end method


# virtual methods
.method public getDurationUs()J
    .locals 3

    .line 1
    iget-object v0, p0, Lr9/a$b;->a:Lr9/a;

    .line 2
    .line 3
    invoke-static {v0}, Lr9/a;->b(Lr9/a;)Lr9/i;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lr9/a$b;->a:Lr9/a;

    .line 8
    .line 9
    invoke-static {v1}, Lr9/a;->e(Lr9/a;)J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    invoke-virtual {v0, v1, v2}, Lr9/i;->b(J)J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    return-wide v0
.end method

.method public getSeekPoints(J)Li9/b0$a;
    .locals 10

    .line 1
    iget-object v0, p0, Lr9/a$b;->a:Lr9/a;

    .line 2
    .line 3
    invoke-static {v0}, Lr9/a;->b(Lr9/a;)Lr9/i;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1, p2}, Lr9/i;->c(J)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    iget-object v2, p0, Lr9/a$b;->a:Lr9/a;

    .line 12
    .line 13
    invoke-static {v2}, Lr9/a;->c(Lr9/a;)J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    iget-object v4, p0, Lr9/a$b;->a:Lr9/a;

    .line 18
    .line 19
    invoke-static {v4}, Lr9/a;->d(Lr9/a;)J

    .line 20
    .line 21
    .line 22
    move-result-wide v4

    .line 23
    iget-object v6, p0, Lr9/a$b;->a:Lr9/a;

    .line 24
    .line 25
    invoke-static {v6}, Lr9/a;->c(Lr9/a;)J

    .line 26
    .line 27
    .line 28
    move-result-wide v6

    .line 29
    sub-long/2addr v4, v6

    .line 30
    mul-long/2addr v0, v4

    .line 31
    iget-object v4, p0, Lr9/a$b;->a:Lr9/a;

    .line 32
    .line 33
    invoke-static {v4}, Lr9/a;->e(Lr9/a;)J

    .line 34
    .line 35
    .line 36
    move-result-wide v4

    .line 37
    div-long/2addr v0, v4

    .line 38
    add-long/2addr v2, v0

    .line 39
    const-wide/16 v0, 0x7530

    .line 40
    .line 41
    sub-long v4, v2, v0

    .line 42
    .line 43
    iget-object v0, p0, Lr9/a$b;->a:Lr9/a;

    .line 44
    .line 45
    invoke-static {v0}, Lr9/a;->c(Lr9/a;)J

    .line 46
    .line 47
    .line 48
    move-result-wide v6

    .line 49
    iget-object v0, p0, Lr9/a$b;->a:Lr9/a;

    .line 50
    .line 51
    invoke-static {v0}, Lr9/a;->d(Lr9/a;)J

    .line 52
    .line 53
    .line 54
    move-result-wide v0

    .line 55
    const-wide/16 v2, 0x1

    .line 56
    .line 57
    sub-long v8, v0, v2

    .line 58
    .line 59
    invoke-static/range {v4 .. v9}, Lcom/google/android/exoplayer2/util/p0;->r(JJJ)J

    .line 60
    .line 61
    .line 62
    move-result-wide v0

    .line 63
    new-instance v2, Li9/b0$a;

    .line 64
    .line 65
    new-instance v3, Li9/c0;

    .line 66
    .line 67
    invoke-direct {v3, p1, p2, v0, v1}, Li9/c0;-><init>(JJ)V

    .line 68
    .line 69
    .line 70
    invoke-direct {v2, v3}, Li9/b0$a;-><init>(Li9/c0;)V

    .line 71
    .line 72
    .line 73
    return-object v2
.end method

.method public isSeekable()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method
