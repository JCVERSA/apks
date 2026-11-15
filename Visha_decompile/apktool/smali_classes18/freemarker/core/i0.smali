.class public Lfreemarker/core/i0;
.super Lfreemarker/core/m;
.source "SourceFile"


# instance fields
.field public k:Lfreemarker/core/t0;

.field public l:Lfreemarker/core/t0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lfreemarker/core/m;-><init>()V

    return-void
.end method


# virtual methods
.method public F(Lfreemarker/core/Environment;)Lzfa;
    .locals 1

    iget-object v0, p0, Lfreemarker/core/j;->h:Lfreemarker/core/t0;

    invoke-virtual {v0, p1}, Lfreemarker/core/t0;->O(Lfreemarker/core/Environment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lfreemarker/core/i0;->k:Lfreemarker/core/t0;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lfreemarker/core/i0;->l:Lfreemarker/core/t0;

    :goto_0
    invoke-virtual {p0, p1}, Lfreemarker/core/t0;->Q(Lfreemarker/core/Environment;)Lzfa;

    move-result-object p0

    return-object p0
.end method

.method public h0(Ljava/util/List;Lfreemarker/core/Token;Lfreemarker/core/Token;)V
    .locals 2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lfreemarker/core/t0;

    iput-object p2, p0, Lfreemarker/core/i0;->k:Lfreemarker/core/t0;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfreemarker/core/t0;

    iput-object p1, p0, Lfreemarker/core/i0;->l:Lfreemarker/core/t0;

    return-void

    :cond_0
    const-string p1, "requires exactly 2"

    invoke-virtual {p0, p1, p2, p3}, Lfreemarker/core/m;->m0(Ljava/lang/String;Lfreemarker/core/Token;Lfreemarker/core/Token;)Lfreemarker/core/ParseException;

    move-result-object p0

    throw p0
.end method

.method public i0(Lfreemarker/core/t0;Ljava/lang/String;Lfreemarker/core/t0;Lfreemarker/core/t0$a;)V
    .locals 1

    check-cast p1, Lfreemarker/core/i0;

    iget-object v0, p0, Lfreemarker/core/i0;->k:Lfreemarker/core/t0;

    invoke-virtual {v0, p2, p3, p4}, Lfreemarker/core/t0;->I(Ljava/lang/String;Lfreemarker/core/t0;Lfreemarker/core/t0$a;)Lfreemarker/core/t0;

    move-result-object v0

    iput-object v0, p1, Lfreemarker/core/i0;->k:Lfreemarker/core/t0;

    iget-object p0, p0, Lfreemarker/core/i0;->l:Lfreemarker/core/t0;

    invoke-virtual {p0, p2, p3, p4}, Lfreemarker/core/t0;->I(Ljava/lang/String;Lfreemarker/core/t0;Lfreemarker/core/t0$a;)Lfreemarker/core/t0;

    move-result-object p0

    iput-object p0, p1, Lfreemarker/core/i0;->l:Lfreemarker/core/t0;

    return-void
.end method

.method public j0(I)Lfreemarker/core/t0;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lfreemarker/core/i0;->l:Lfreemarker/core/t0;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    :cond_1
    iget-object p0, p0, Lfreemarker/core/i0;->k:Lfreemarker/core/t0;

    return-object p0
.end method

.method public k0()Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lfreemarker/core/i0;->k:Lfreemarker/core/t0;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lfreemarker/core/i0;->l:Lfreemarker/core/t0;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public l0()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method
