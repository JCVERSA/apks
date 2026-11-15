.class public Ldg1;
.super Lj1;
.source "SourceFile"

# interfaces
.implements Lyu7;


# instance fields
.field public b:Ll1;

.field public c:Lx0;

.field public d:Z


# direct methods
.method public constructor <init>(Ll1;Lx0;)V
    .locals 1

    invoke-direct {p0}, Lj1;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldg1;->d:Z

    iput-object p1, p0, Ldg1;->b:Ll1;

    iput-object p2, p0, Ldg1;->c:Lx0;

    return-void
.end method


# virtual methods
.method public j()Lp1;
    .locals 5

    new-instance v0, Ly0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ly0;-><init>(I)V

    iget-object v1, p0, Ldg1;->b:Ll1;

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    iget-object v1, p0, Ldg1;->c:Lx0;

    if-eqz v1, :cond_0

    new-instance v2, Lp40;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v1}, Lp40;-><init>(ZILx0;)V

    invoke-virtual {v0, v2}, Ly0;->a(Lx0;)V

    :cond_0
    iget-boolean p0, p0, Ldg1;->d:Z

    if-eqz p0, :cond_1

    new-instance p0, Ll40;

    invoke-direct {p0, v0}, Ll40;-><init>(Ly0;)V

    return-object p0

    :cond_1
    new-instance p0, Lyq1;

    invoke-direct {p0, v0}, Lyq1;-><init>(Ly0;)V

    return-object p0
.end method
