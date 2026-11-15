.class public final Lryf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lenh;

.field public final c:Landroid/os/Bundle;

.field public final d:Lwmh;

.field public final e:Liyf;

.field public final f:Loxg;

.field public final g:I


# direct methods
.method public synthetic constructor <init>(Lpyf;Lqyf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lpyf;->b(Lpyf;)Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lryf;->a:Landroid/content/Context;

    invoke-static {p1}, Lpyf;->o(Lpyf;)Lenh;

    move-result-object p2

    iput-object p2, p0, Lryf;->b:Lenh;

    invoke-static {p1}, Lpyf;->c(Lpyf;)Landroid/os/Bundle;

    move-result-object p2

    iput-object p2, p0, Lryf;->c:Landroid/os/Bundle;

    invoke-static {p1}, Lpyf;->n(Lpyf;)Lwmh;

    move-result-object p2

    iput-object p2, p0, Lryf;->d:Lwmh;

    invoke-static {p1}, Lpyf;->d(Lpyf;)Liyf;

    move-result-object p2

    iput-object p2, p0, Lryf;->e:Liyf;

    invoke-static {p1}, Lpyf;->m(Lpyf;)Loxg;

    move-result-object p2

    iput-object p2, p0, Lryf;->f:Loxg;

    invoke-static {p1}, Lpyf;->a(Lpyf;)I

    move-result p1

    iput p1, p0, Lryf;->g:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lryf;->g:I

    return p0
.end method

.method public final b(Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lryf;->a:Landroid/content/Context;

    return-object p0
.end method

.method public final c()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lryf;->c:Landroid/os/Bundle;

    return-object p0
.end method

.method public final d()Liyf;
    .locals 0

    iget-object p0, p0, Lryf;->e:Liyf;

    return-object p0
.end method

.method public final e()Lpyf;
    .locals 2

    new-instance v0, Lpyf;

    invoke-direct {v0}, Lpyf;-><init>()V

    iget-object v1, p0, Lryf;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lpyf;->f(Landroid/content/Context;)Lpyf;

    iget-object v1, p0, Lryf;->b:Lenh;

    invoke-virtual {v0, v1}, Lpyf;->k(Lenh;)Lpyf;

    iget-object v1, p0, Lryf;->c:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lpyf;->g(Landroid/os/Bundle;)Lpyf;

    iget-object v1, p0, Lryf;->e:Liyf;

    invoke-virtual {v0, v1}, Lpyf;->h(Liyf;)Lpyf;

    iget-object p0, p0, Lryf;->f:Loxg;

    invoke-virtual {v0, p0}, Lpyf;->e(Loxg;)Lpyf;

    return-object v0
.end method

.method public final f(Ljava/lang/String;)Loxg;
    .locals 0

    iget-object p0, p0, Lryf;->f:Loxg;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Loxg;

    invoke-direct {p0, p1}, Loxg;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public final g()Lwmh;
    .locals 0

    iget-object p0, p0, Lryf;->d:Lwmh;

    return-object p0
.end method

.method public final h()Lenh;
    .locals 0

    iget-object p0, p0, Lryf;->b:Lenh;

    return-object p0
.end method
