.class public Lkk3;
.super Lj1;
.source "SourceFile"


# instance fields
.field public final b:Lld4;

.field public final c:Loa;

.field public final d:[B


# direct methods
.method public constructor <init>(Lkd4;Loa;[B)V
    .locals 1

    invoke-direct {p0}, Lj1;-><init>()V

    new-instance v0, Lld4;

    invoke-direct {v0, p1}, Lld4;-><init>(Lkd4;)V

    iput-object v0, p0, Lkk3;->b:Lld4;

    iput-object p2, p0, Lkk3;->c:Loa;

    invoke-static {p3}, Lci;->f([B)[B

    move-result-object p1

    iput-object p1, p0, Lkk3;->d:[B

    return-void
.end method


# virtual methods
.method public j()Lp1;
    .locals 2

    new-instance v0, Ly0;

    invoke-direct {v0}, Ly0;-><init>()V

    iget-object v1, p0, Lkk3;->b:Lld4;

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    iget-object v1, p0, Lkk3;->c:Loa;

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    new-instance v1, Lwp1;

    iget-object p0, p0, Lkk3;->d:[B

    invoke-direct {v1, p0}, Lwp1;-><init>([B)V

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    new-instance p0, Laq1;

    invoke-direct {p0, v0}, Laq1;-><init>(Ly0;)V

    return-object p0
.end method

.method public m()Loa;
    .locals 0

    iget-object p0, p0, Lkk3;->c:Loa;

    return-object p0
.end method

.method public n()[B
    .locals 0

    iget-object p0, p0, Lkk3;->d:[B

    invoke-static {p0}, Lci;->f([B)[B

    move-result-object p0

    return-object p0
.end method

.method public o()Lkd4;
    .locals 1

    iget-object p0, p0, Lkk3;->b:Lld4;

    invoke-virtual {p0}, Lld4;->p()[Lkd4;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0
.end method
