.class public Lik8$c;
.super Lik8$u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lik8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
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
    invoke-direct {p0}, Lik8$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ls1a;Ljava/lang/Object;)Ldj;
    .locals 1

    :try_start_0
    invoke-virtual {p1}, Ls1a;->p()Lp1;

    move-result-object p0

    invoke-static {p0}, Lcp0;->m(Ljava/lang/Object;)Lcp0;

    move-result-object p0

    invoke-virtual {p0}, Lcp0;->n()[B

    move-result-object p0

    invoke-virtual {p1}, Ls1a;->m()Loa;

    move-result-object p2

    invoke-virtual {p2}, Loa;->m()Ll1;

    move-result-object p2

    invoke-static {p2}, Lslb;->q(Ll1;)Lzo0;

    move-result-object p2

    new-instance v0, Ldp0;

    invoke-direct {v0, p2, p0}, Ldp0;-><init>(Lzo0;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    invoke-virtual {p1}, Ls1a;->o()Ls0;

    move-result-object p0

    invoke-virtual {p0}, Ls0;->A()[B

    move-result-object p0

    invoke-virtual {p1}, Ls1a;->m()Loa;

    move-result-object p1

    invoke-virtual {p1}, Loa;->m()Ll1;

    move-result-object p1

    invoke-static {p1}, Lslb;->q(Ll1;)Lzo0;

    move-result-object p1

    new-instance p2, Ldp0;

    invoke-direct {p2, p1, p0}, Ldp0;-><init>(Lzo0;[B)V

    return-object p2
.end method
