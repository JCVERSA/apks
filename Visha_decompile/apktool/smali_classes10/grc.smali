.class public Lgrc;
.super Lj1;
.source "SourceFile"


# instance fields
.field public final b:[B

.field public final c:[B


# direct methods
.method public constructor <init>([B[B)V
    .locals 0

    invoke-direct {p0}, Lj1;-><init>()V

    invoke-static {p1}, Lci;->f([B)[B

    move-result-object p1

    iput-object p1, p0, Lgrc;->b:[B

    invoke-static {p2}, Lci;->f([B)[B

    move-result-object p1

    iput-object p1, p0, Lgrc;->c:[B

    return-void
.end method


# virtual methods
.method public j()Lp1;
    .locals 4

    new-instance v0, Ly0;

    invoke-direct {v0}, Ly0;-><init>()V

    new-instance v1, Lg1;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Lg1;-><init>(J)V

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    new-instance v1, Lwp1;

    iget-object v2, p0, Lgrc;->b:[B

    invoke-direct {v1, v2}, Lwp1;-><init>([B)V

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    new-instance v1, Lwp1;

    iget-object p0, p0, Lgrc;->c:[B

    invoke-direct {v1, p0}, Lwp1;-><init>([B)V

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    new-instance p0, Laq1;

    invoke-direct {p0, v0}, Laq1;-><init>(Ly0;)V

    return-object p0
.end method
