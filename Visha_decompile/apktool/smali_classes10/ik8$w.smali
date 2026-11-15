.class public Lik8$w;
.super Lik8$u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lik8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "w"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lik8$u;-><init>(Lik8$a;)V

    return-void
.end method

.method public synthetic constructor <init>(Lik8$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lik8$w;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ls1a;Ljava/lang/Object;)Ldj;
    .locals 3

    invoke-virtual {p1}, Ls1a;->m()Loa;

    move-result-object p0

    invoke-virtual {p0}, Loa;->p()Lx0;

    move-result-object p0

    invoke-static {p0}, Lcrc;->n(Ljava/lang/Object;)Lcrc;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcrc;->p()Loa;

    move-result-object p2

    invoke-virtual {p2}, Loa;->m()Ll1;

    move-result-object p2

    invoke-virtual {p1}, Ls1a;->p()Lp1;

    move-result-object p1

    invoke-static {p1}, Llrc;->m(Ljava/lang/Object;)Llrc;

    move-result-object p1

    new-instance v0, Lhrc$b;

    new-instance v1, Ldrc;

    invoke-virtual {p0}, Lcrc;->m()I

    move-result v2

    invoke-virtual {p0}, Lcrc;->o()I

    move-result p0

    invoke-static {p2}, Lslb;->j(Ll1;)Lsb2;

    move-result-object p2

    invoke-direct {v1, v2, p0, p2}, Ldrc;-><init>(IILsb2;)V

    invoke-direct {v0, v1}, Lhrc$b;-><init>(Ldrc;)V

    invoke-virtual {p1}, Llrc;->n()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Lhrc$b;->g([B)Lhrc$b;

    move-result-object p0

    invoke-virtual {p1}, Llrc;->o()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lhrc$b;->h([B)Lhrc$b;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Lhrc$b;->e()Lhrc;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ls1a;->p()Lp1;

    move-result-object p0

    invoke-static {p0}, Lm1;->y(Ljava/lang/Object;)Lm1;

    move-result-object p0

    invoke-virtual {p0}, Lm1;->z()[B

    move-result-object p0

    new-instance p1, Lhrc$b;

    const/4 p2, 0x0

    invoke-static {p0, p2}, Lcv7;->a([BI)I

    move-result p2

    invoke-static {p2}, Ldrc;->i(I)Ldrc;

    move-result-object p2

    invoke-direct {p1, p2}, Lhrc$b;-><init>(Ldrc;)V

    invoke-virtual {p1, p0}, Lhrc$b;->f([B)Lhrc$b;

    move-result-object p0

    goto :goto_0
.end method
