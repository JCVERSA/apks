.class public Lad1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lsc5;

.field public b:Z


# direct methods
.method public constructor <init>(Lsc5;)V
    .locals 1

    const-string v0, "writer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lad1;->a:Lsc5;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lad1;->b:Z

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    iget-boolean p0, p0, Lad1;->b:Z

    return p0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lad1;->b:Z

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lad1;->b:Z

    return-void
.end method

.method public d(B)V
    .locals 2

    iget-object p0, p0, Lad1;->a:Lsc5;

    int-to-long v0, p1

    invoke-interface {p0, v0, v1}, Lsc5;->writeLong(J)V

    return-void
.end method

.method public final e(C)V
    .locals 0

    iget-object p0, p0, Lad1;->a:Lsc5;

    invoke-interface {p0, p1}, Lsc5;->a(C)V

    return-void
.end method

.method public f(D)V
    .locals 0

    iget-object p0, p0, Lad1;->a:Lsc5;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lsc5;->c(Ljava/lang/String;)V

    return-void
.end method

.method public g(F)V
    .locals 0

    iget-object p0, p0, Lad1;->a:Lsc5;

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lsc5;->c(Ljava/lang/String;)V

    return-void
.end method

.method public h(I)V
    .locals 2

    iget-object p0, p0, Lad1;->a:Lsc5;

    int-to-long v0, p1

    invoke-interface {p0, v0, v1}, Lsc5;->writeLong(J)V

    return-void
.end method

.method public i(J)V
    .locals 0

    iget-object p0, p0, Lad1;->a:Lsc5;

    invoke-interface {p0, p1, p2}, Lsc5;->writeLong(J)V

    return-void
.end method

.method public final j(Ljava/lang/String;)V
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lad1;->a:Lsc5;

    invoke-interface {p0, p1}, Lsc5;->c(Ljava/lang/String;)V

    return-void
.end method

.method public k(S)V
    .locals 2

    iget-object p0, p0, Lad1;->a:Lsc5;

    int-to-long v0, p1

    invoke-interface {p0, v0, v1}, Lsc5;->writeLong(J)V

    return-void
.end method

.method public l(Z)V
    .locals 0

    iget-object p0, p0, Lad1;->a:Lsc5;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lsc5;->c(Ljava/lang/String;)V

    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lad1;->a:Lsc5;

    invoke-interface {p0, p1}, Lsc5;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final n(Z)V
    .locals 0

    iput-boolean p1, p0, Lad1;->b:Z

    return-void
.end method

.method public o()V
    .locals 0

    return-void
.end method

.method public p()V
    .locals 0

    return-void
.end method
