.class public Lw6;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw6$b;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:Ljava/lang/String;

.field public e:D

.field public f:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lw6;->a:Ljava/lang/String;

    const/4 v1, -0x1

    .line 4
    iput v1, p0, Lw6;->b:I

    const/4 v1, 0x0

    .line 5
    iput v1, p0, Lw6;->c:I

    .line 6
    iput-object v0, p0, Lw6;->d:Ljava/lang/String;

    .line 7
    iput-boolean v1, p0, Lw6;->f:Z

    return-void
.end method

.method public synthetic constructor <init>(Lw6$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lw6;-><init>()V

    return-void
.end method

.method public static a()Lw6$b;
    .locals 1

    new-instance v0, Lw6$b;

    invoke-direct {v0}, Lw6$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public b()D
    .locals 2

    iget-wide v0, p0, Lw6;->e:D

    return-wide v0
.end method

.method public c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lw6;->a:Ljava/lang/String;

    return-object p0
.end method

.method public d()I
    .locals 0

    iget p0, p0, Lw6;->b:I

    return p0
.end method

.method public e()I
    .locals 0

    iget p0, p0, Lw6;->c:I

    return p0
.end method

.method public f()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lw6;->d:Ljava/lang/String;

    return-object p0
.end method

.method public g()Z
    .locals 0

    iget-boolean p0, p0, Lw6;->f:Z

    return p0
.end method

.method public h(D)V
    .locals 0

    iput-wide p1, p0, Lw6;->e:D

    return-void
.end method

.method public i(Z)V
    .locals 0

    iput-boolean p1, p0, Lw6;->f:Z

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lw6;->a:Ljava/lang/String;

    return-void
.end method

.method public k(I)V
    .locals 0

    iput p1, p0, Lw6;->b:I

    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lw6;->d:Ljava/lang/String;

    return-void
.end method
