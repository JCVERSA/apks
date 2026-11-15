.class public Lik8$h;
.super Lik8$u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lik8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
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
    invoke-direct {p0}, Lik8$h;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ls1a;Ljava/lang/Object;)Ldj;
    .locals 2

    invoke-virtual {p1}, Ls1a;->m()Loa;

    move-result-object p0

    invoke-virtual {p0}, Loa;->m()Ll1;

    move-result-object p0

    invoke-static {p0}, Lslb;->o(Ll1;)Lrh5;

    move-result-object p0

    :try_start_0
    invoke-virtual {p1}, Ls1a;->p()Lp1;

    move-result-object p2

    invoke-static {p2}, Lth5;->m(Ljava/lang/Object;)Lth5;

    move-result-object p2

    new-instance v0, Luh5;

    invoke-virtual {p2}, Lth5;->o()[B

    move-result-object v1

    invoke-virtual {p2}, Lth5;->n()[B

    move-result-object p2

    invoke-direct {v0, p0, v1, p2}, Luh5;-><init>(Lrh5;[B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance p2, Luh5;

    invoke-virtual {p1}, Ls1a;->o()Ls0;

    move-result-object p1

    invoke-virtual {p1}, Ls0;->A()[B

    move-result-object p1

    invoke-direct {p2, p0, p1}, Luh5;-><init>(Lrh5;[B)V

    return-object p2
.end method
