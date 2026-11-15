.class public final Lc7/b$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc7/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:I

.field private e:Z


# direct methods
.method public constructor <init>(Lc7/b$b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lc7/b$a;->c:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lc7/b$a;->e:Z

    .line 8
    .line 9
    invoke-static {p1}, Lc7/b$b;->b(Lc7/b$b;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iput-boolean v0, p0, Lc7/b$a;->a:Z

    .line 14
    .line 15
    invoke-static {p1}, Lc7/b$b;->d(Lc7/b$b;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iput-boolean v0, p0, Lc7/b$a;->b:Z

    .line 20
    .line 21
    invoke-static {p1}, Lc7/b$b;->e(Lc7/b$b;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iput-boolean v0, p0, Lc7/b$a;->c:Z

    .line 26
    .line 27
    invoke-static {p1}, Lc7/b$b;->f(Lc7/b$b;)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iput v0, p0, Lc7/b$a;->d:I

    .line 32
    .line 33
    invoke-static {p1}, Lc7/b$b;->g(Lc7/b$b;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iput-boolean v0, p0, Lc7/b$a;->e:Z

    .line 38
    .line 39
    invoke-static {p1}, Lc7/b$b;->a(Lc7/b$b;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    sput-boolean p1, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->b:Z

    .line 44
    .line 45
    return-void
.end method

.method static synthetic a(Lc7/b$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lc7/b$a;->c:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic b(Lc7/b$a;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lc7/b$a;->a:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic c(Lc7/b$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lc7/b$a;->a:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic d(Lc7/b$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lc7/b$a;->e:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic e(Lc7/b$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lc7/b$a;->b:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic f(Lc7/b$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lc7/b$a;->d:I

    .line 2
    .line 3
    return p0
.end method
