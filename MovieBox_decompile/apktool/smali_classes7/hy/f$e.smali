.class Lhy/f$e;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhy/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:Z

.field d:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lhy/f$e;->a:I

    .line 6
    .line 7
    iput v0, p0, Lhy/f$e;->b:I

    .line 8
    .line 9
    iput-boolean v0, p0, Lhy/f$e;->c:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lhy/f$e;->d:Z

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method a(Lhy/a;)I
    .locals 2

    .line 1
    iget v0, p0, Lhy/f$e;->b:I

    .line 2
    .line 3
    iget v1, p1, Lhy/a;->f:I

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lhy/f$e;->d:Z

    .line 9
    .line 10
    const/4 p1, -0x1

    .line 11
    return p1

    .line 12
    :cond_0
    iget-object p1, p1, Lhy/a;->e:[B

    .line 13
    .line 14
    add-int/lit8 v1, v0, 0x1

    .line 15
    .line 16
    iput v1, p0, Lhy/f$e;->b:I

    .line 17
    .line 18
    aget-byte p1, p1, v0

    .line 19
    .line 20
    and-int/lit16 p1, p1, 0xff

    .line 21
    .line 22
    return p1
.end method

.method b()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lhy/f$e;->a:I

    .line 3
    .line 4
    iput v0, p0, Lhy/f$e;->b:I

    .line 5
    .line 6
    iput-boolean v0, p0, Lhy/f$e;->c:Z

    .line 7
    .line 8
    iput-boolean v0, p0, Lhy/f$e;->d:Z

    .line 9
    .line 10
    return-void
.end method
