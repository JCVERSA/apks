.class public Ldj9;
.super Lj1;
.source "SourceFile"

# interfaces
.implements Lyu7;


# instance fields
.field public b:Lg1;

.field public c:Lt1;

.field public d:Ldg1;

.field public e:Lt1;

.field public f:Lt1;

.field public g:Lt1;


# direct methods
.method public constructor <init>(Lg1;Lt1;Ldg1;Lt1;Lt1;Lt1;)V
    .locals 0

    invoke-direct {p0}, Lj1;-><init>()V

    iput-object p1, p0, Ldj9;->b:Lg1;

    iput-object p2, p0, Ldj9;->c:Lt1;

    iput-object p3, p0, Ldj9;->d:Ldg1;

    iput-object p4, p0, Ldj9;->e:Lt1;

    iput-object p5, p0, Ldj9;->f:Lt1;

    iput-object p6, p0, Ldj9;->g:Lt1;

    return-void
.end method


# virtual methods
.method public j()Lp1;
    .locals 5

    new-instance v0, Ly0;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ly0;-><init>(I)V

    iget-object v1, p0, Ldj9;->b:Lg1;

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    iget-object v1, p0, Ldj9;->c:Lt1;

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    iget-object v1, p0, Ldj9;->d:Ldg1;

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    iget-object v1, p0, Ldj9;->e:Lt1;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v3, Ldq1;

    invoke-direct {v3, v2, v2, v1}, Ldq1;-><init>(ZILx0;)V

    invoke-virtual {v0, v3}, Ly0;->a(Lx0;)V

    :cond_0
    iget-object v1, p0, Ldj9;->f:Lt1;

    if-eqz v1, :cond_1

    new-instance v3, Ldq1;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4, v1}, Ldq1;-><init>(ZILx0;)V

    invoke-virtual {v0, v3}, Ly0;->a(Lx0;)V

    :cond_1
    iget-object p0, p0, Ldj9;->g:Lt1;

    invoke-virtual {v0, p0}, Ly0;->a(Lx0;)V

    new-instance p0, Ll40;

    invoke-direct {p0, v0}, Ll40;-><init>(Ly0;)V

    return-object p0
.end method
