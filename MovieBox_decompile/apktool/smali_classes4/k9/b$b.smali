.class Lk9/b$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Li9/b0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk9/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private final a:J

.field final synthetic b:Lk9/b;


# direct methods
.method public constructor <init>(Lk9/b;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk9/b$b;->b:Lk9/b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-wide p2, p0, Lk9/b$b;->a:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getDurationUs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lk9/b$b;->a:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getSeekPoints(J)Li9/b0$a;
    .locals 7

    .line 1
    iget-object v0, p0, Lk9/b$b;->b:Lk9/b;

    .line 2
    .line 3
    invoke-static {v0}, Lk9/b;->a(Lk9/b;)[Lk9/e;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    aget-object v0, v0, v1

    .line 9
    .line 10
    invoke-virtual {v0, p1, p2}, Lk9/e;->i(J)Li9/b0$a;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x1

    .line 15
    :goto_0
    iget-object v2, p0, Lk9/b$b;->b:Lk9/b;

    .line 16
    .line 17
    invoke-static {v2}, Lk9/b;->a(Lk9/b;)[Lk9/e;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    array-length v2, v2

    .line 22
    if-ge v1, v2, :cond_1

    .line 23
    .line 24
    iget-object v2, p0, Lk9/b$b;->b:Lk9/b;

    .line 25
    .line 26
    invoke-static {v2}, Lk9/b;->a(Lk9/b;)[Lk9/e;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    aget-object v2, v2, v1

    .line 31
    .line 32
    invoke-virtual {v2, p1, p2}, Lk9/e;->i(J)Li9/b0$a;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    iget-object v3, v2, Li9/b0$a;->a:Li9/c0;

    .line 37
    .line 38
    iget-wide v3, v3, Li9/c0;->b:J

    .line 39
    .line 40
    iget-object v5, v0, Li9/b0$a;->a:Li9/c0;

    .line 41
    .line 42
    iget-wide v5, v5, Li9/c0;->b:J

    .line 43
    .line 44
    cmp-long v3, v3, v5

    .line 45
    .line 46
    if-gez v3, :cond_0

    .line 47
    .line 48
    move-object v0, v2

    .line 49
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    return-object v0
.end method

.method public isSeekable()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method
