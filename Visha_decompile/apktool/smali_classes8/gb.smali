.class public Lgb;
.super Lj1;
.source "SourceFile"


# instance fields
.field public final b:Ls0;


# direct methods
.method public constructor <init>(Ls0;)V
    .locals 0

    invoke-direct {p0}, Lj1;-><init>()V

    iput-object p1, p0, Lgb;->b:Ls0;

    return-void
.end method

.method public static m(Lgk3;)Lgb;
    .locals 1

    sget-object v0, Lbk3;->M:Ll1;

    invoke-static {p0, v0}, Lgk3;->r(Lgk3;Ll1;)Lx0;

    move-result-object p0

    invoke-static {p0}, Lgb;->n(Ljava/lang/Object;)Lgb;

    move-result-object p0

    return-object p0
.end method

.method public static n(Ljava/lang/Object;)Lgb;
    .locals 1

    instance-of v0, p0, Lgb;

    if-eqz v0, :cond_0

    check-cast p0, Lgb;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lgb;

    invoke-static {p0}, Ls0;->z(Ljava/lang/Object;)Ls0;

    move-result-object p0

    invoke-direct {v0, p0}, Lgb;-><init>(Ls0;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public j()Lp1;
    .locals 0

    iget-object p0, p0, Lgb;->b:Ls0;

    return-object p0
.end method
