.class public final Lbx3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbx3$a;
    }
.end annotation


# instance fields
.field public a:Lbx3$a;

.field public b:Lbx3$a;

.field public c:Z

.field public d:Z

.field public e:J

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lbx3$a;

    invoke-direct {v0}, Lbx3$a;-><init>()V

    iput-object v0, p0, Lbx3;->a:Lbx3$a;

    new-instance v0, Lbx3$a;

    invoke-direct {v0}, Lbx3$a;-><init>()V

    iput-object v0, p0, Lbx3;->b:Lbx3$a;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lbx3;->e:J

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    invoke-virtual {p0}, Lbx3;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lbx3;->a:Lbx3$a;

    invoke-virtual {p0}, Lbx3$a;->a()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    return-wide v0
.end method

.method public b()F
    .locals 4

    invoke-virtual {p0}, Lbx3;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lbx3;->a:Lbx3$a;

    invoke-virtual {p0}, Lbx3$a;->a()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v2, v0

    double-to-float p0, v2

    goto :goto_0

    :cond_0
    const/high16 p0, -0x40800000    # -1.0f

    :goto_0
    return p0
.end method

.method public c()I
    .locals 0

    iget p0, p0, Lbx3;->f:I

    return p0
.end method

.method public d()J
    .locals 2

    invoke-virtual {p0}, Lbx3;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lbx3;->a:Lbx3$a;

    invoke-virtual {p0}, Lbx3$a;->b()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    return-wide v0
.end method

.method public e()Z
    .locals 0

    iget-object p0, p0, Lbx3;->a:Lbx3$a;

    invoke-virtual {p0}, Lbx3$a;->e()Z

    move-result p0

    return p0
.end method

.method public f(J)V
    .locals 7

    iget-object v0, p0, Lbx3;->a:Lbx3$a;

    invoke-virtual {v0, p1, p2}, Lbx3$a;->f(J)V

    iget-object v0, p0, Lbx3;->a:Lbx3$a;

    invoke-virtual {v0}, Lbx3$a;->e()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lbx3;->d:Z

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lbx3;->c:Z

    goto :goto_0

    :cond_0
    iget-wide v3, p0, Lbx3;->e:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v5

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lbx3;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbx3;->b:Lbx3$a;

    invoke-virtual {v0}, Lbx3$a;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lbx3;->b:Lbx3$a;

    invoke-virtual {v0}, Lbx3$a;->g()V

    iget-object v0, p0, Lbx3;->b:Lbx3$a;

    iget-wide v3, p0, Lbx3;->e:J

    invoke-virtual {v0, v3, v4}, Lbx3$a;->f(J)V

    :cond_2
    iput-boolean v1, p0, Lbx3;->c:Z

    iget-object v0, p0, Lbx3;->b:Lbx3$a;

    invoke-virtual {v0, p1, p2}, Lbx3$a;->f(J)V

    :cond_3
    :goto_0
    iget-boolean v0, p0, Lbx3;->c:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lbx3;->b:Lbx3$a;

    invoke-virtual {v0}, Lbx3$a;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lbx3;->a:Lbx3$a;

    iget-object v3, p0, Lbx3;->b:Lbx3$a;

    iput-object v3, p0, Lbx3;->a:Lbx3$a;

    iput-object v0, p0, Lbx3;->b:Lbx3$a;

    iput-boolean v2, p0, Lbx3;->c:Z

    iput-boolean v2, p0, Lbx3;->d:Z

    :cond_4
    iput-wide p1, p0, Lbx3;->e:J

    iget-object p1, p0, Lbx3;->a:Lbx3$a;

    invoke-virtual {p1}, Lbx3$a;->e()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    iget p1, p0, Lbx3;->f:I

    add-int/lit8 v2, p1, 0x1

    :goto_1
    iput v2, p0, Lbx3;->f:I

    return-void
.end method

.method public g()V
    .locals 3

    iget-object v0, p0, Lbx3;->a:Lbx3$a;

    invoke-virtual {v0}, Lbx3$a;->g()V

    iget-object v0, p0, Lbx3;->b:Lbx3$a;

    invoke-virtual {v0}, Lbx3$a;->g()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbx3;->c:Z

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Lbx3;->e:J

    iput v0, p0, Lbx3;->f:I

    return-void
.end method
