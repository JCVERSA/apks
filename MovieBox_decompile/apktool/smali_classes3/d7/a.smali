.class public Ld7/a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld7/a$b;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:D

.field private f:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Ld7/a;->a:Ljava/lang/String;

    const/4 v1, -0x1

    .line 4
    iput v1, p0, Ld7/a;->b:I

    const/4 v1, 0x0

    .line 5
    iput v1, p0, Ld7/a;->c:I

    .line 6
    iput-object v0, p0, Ld7/a;->d:Ljava/lang/String;

    .line 7
    iput-boolean v1, p0, Ld7/a;->f:Z

    return-void
.end method

.method synthetic constructor <init>(Ld7/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ld7/a;-><init>()V

    return-void
.end method

.method public static a()Ld7/a$b;
    .locals 1

    .line 1
    new-instance v0, Ld7/a$b;

    .line 2
    .line 3
    invoke-direct {v0}, Ld7/a$b;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public b()D
    .locals 2

    .line 1
    iget-wide v0, p0, Ld7/a;->e:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ld7/a;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Ld7/a;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Ld7/a;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ld7/a;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ld7/a;->f:Z

    .line 2
    .line 3
    return v0
.end method

.method public h(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Ld7/a;->e:D

    .line 2
    .line 3
    return-void
.end method

.method public i(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Ld7/a;->f:Z

    .line 2
    .line 3
    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld7/a;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public k(I)V
    .locals 0

    .line 1
    iput p1, p0, Ld7/a;->b:I

    .line 2
    .line 3
    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld7/a;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
