.class public final Leke;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpke;


# instance fields
.field public a:Lerj;

.field public b:Lfch;

.field public c:Lrae;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Lgpj;

    invoke-direct {p2}, Lgpj;-><init>()V

    const-string v0, "video/mp2t"

    invoke-virtual {p2, v0}, Lgpj;->e(Ljava/lang/String;)Lgpj;

    invoke-virtual {p2, p1}, Lgpj;->E(Ljava/lang/String;)Lgpj;

    invoke-virtual {p2}, Lgpj;->K()Lerj;

    move-result-object p1

    iput-object p1, p0, Leke;->a:Lerj;

    return-void
.end method


# virtual methods
.method public final a(Lu4h;)V
    .locals 8

    iget-object v0, p0, Leke;->b:Lfch;

    invoke-static {v0}, Ln7g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    sget v0, Lkfh;->a:I

    iget-object v0, p0, Leke;->b:Lfch;

    invoke-virtual {v0}, Lfch;->e()J

    move-result-wide v2

    iget-object v0, p0, Leke;->b:Lfch;

    invoke-virtual {v0}, Lfch;->f()J

    move-result-wide v0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    cmp-long v4, v0, v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v4, p0, Leke;->a:Lerj;

    iget-wide v5, v4, Lerj;->t:J

    cmp-long v5, v0, v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lerj;->b()Lgpj;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lgpj;->I(J)Lgpj;

    invoke-virtual {v4}, Lgpj;->K()Lerj;

    move-result-object v0

    iput-object v0, p0, Leke;->a:Lerj;

    iget-object v1, p0, Leke;->c:Lrae;

    invoke-interface {v1, v0}, Lrae;->f(Lerj;)V

    :cond_1
    invoke-virtual {p1}, Lu4h;->u()I

    move-result v5

    iget-object v0, p0, Leke;->c:Lrae;

    invoke-interface {v0, p1, v5}, Lrae;->d(Lu4h;I)V

    iget-object v1, p0, Leke;->c:Lrae;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x1

    invoke-interface/range {v1 .. v7}, Lrae;->g(JIIILqae;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final b(Lfch;Lf9e;Lcle;)V
    .locals 0

    iput-object p1, p0, Leke;->b:Lfch;

    invoke-virtual {p3}, Lcle;->c()V

    invoke-virtual {p3}, Lcle;->a()I

    move-result p1

    const/4 p3, 0x5

    invoke-interface {p2, p1, p3}, Lf9e;->j(II)Lrae;

    move-result-object p1

    iput-object p1, p0, Leke;->c:Lrae;

    iget-object p0, p0, Leke;->a:Lerj;

    invoke-interface {p1, p0}, Lrae;->f(Lerj;)V

    return-void
.end method
