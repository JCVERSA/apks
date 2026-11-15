.class public Lik8$d;
.super Lik8$u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lik8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lik8$u;-><init>(Lik8$a;)V

    return-void
.end method

.method public static b(Lac2;Ls0;)Lcc2;
    .locals 4

    :try_start_0
    invoke-virtual {p1}, Ls0;->A()[B

    move-result-object v0

    invoke-static {v0}, Lp1;->t([B)Lp1;

    move-result-object v0

    instance-of v1, v0, Ls1;

    if-eqz v1, :cond_0

    invoke-static {v0}, Ls1;->z(Ljava/lang/Object;)Ls1;

    move-result-object v0

    new-instance v1, Lcc2;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ls1;->A(I)Lx0;

    move-result-object v2

    invoke-static {v2}, Lm1;->y(Ljava/lang/Object;)Lm1;

    move-result-object v2

    invoke-virtual {v2}, Lm1;->z()[B

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ls1;->A(I)Lx0;

    move-result-object v0

    invoke-static {v0}, Lm1;->y(Ljava/lang/Object;)Lm1;

    move-result-object v0

    invoke-virtual {v0}, Lm1;->z()[B

    move-result-object v0

    invoke-direct {v1, p0, v2, v0}, Lcc2;-><init>(Lac2;[B[B)V

    return-object v1

    :cond_0
    invoke-static {v0}, Lm1;->y(Ljava/lang/Object;)Lm1;

    move-result-object v0

    invoke-virtual {v0}, Lm1;->z()[B

    move-result-object v0

    new-instance v1, Lcc2;

    invoke-direct {v1, p0, v0}, Lcc2;-><init>(Lac2;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    new-instance v0, Lcc2;

    invoke-virtual {p1}, Ls0;->A()[B

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcc2;-><init>(Lac2;[B)V

    return-object v0
.end method


# virtual methods
.method public a(Ls1a;Ljava/lang/Object;)Ldj;
    .locals 0

    invoke-virtual {p1}, Ls1a;->m()Loa;

    move-result-object p0

    invoke-virtual {p0}, Loa;->m()Ll1;

    move-result-object p0

    invoke-static {p0}, Lslb;->d(Ll1;)Lac2;

    move-result-object p0

    invoke-virtual {p1}, Ls1a;->o()Ls0;

    move-result-object p1

    invoke-static {p0, p1}, Lik8$d;->b(Lac2;Ls0;)Lcc2;

    move-result-object p0

    return-object p0
.end method
