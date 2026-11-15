.class public abstract Lfreemarker/core/m;
.super Lqu9;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lqu9;-><init>()V

    return-void
.end method


# virtual methods
.method public J(Ljava/lang/String;Lfreemarker/core/t0;Lfreemarker/core/t0$a;)Lfreemarker/core/t0;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lfreemarker/core/j;->J(Ljava/lang/String;Lfreemarker/core/t0;Lfreemarker/core/t0$a;)Lfreemarker/core/t0;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lfreemarker/core/m;->i0(Lfreemarker/core/t0;Ljava/lang/String;Lfreemarker/core/t0;Lfreemarker/core/t0$a;)V

    return-object v0
.end method

.method public abstract h0(Ljava/util/List;Lfreemarker/core/Token;Lfreemarker/core/Token;)V
.end method

.method public abstract i0(Lfreemarker/core/t0;Ljava/lang/String;Lfreemarker/core/t0;Lfreemarker/core/t0$a;)V
.end method

.method public abstract j0(I)Lfreemarker/core/t0;
.end method

.method public abstract k0()Ljava/util/List;
.end method

.method public abstract l0()I
.end method

.method public m0(Ljava/lang/String;Lfreemarker/core/Token;Lfreemarker/core/Token;)Lfreemarker/core/ParseException;
    .locals 8

    new-instance v7, Lfreemarker/core/ParseException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lfreemarker/core/j;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "(...) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, " parameters"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lfreemarker/core/t1;->y()Lfreemarker/template/Template;

    move-result-object v2

    iget v3, p2, Lfreemarker/core/Token;->beginLine:I

    iget v4, p2, Lfreemarker/core/Token;->beginColumn:I

    iget v5, p3, Lfreemarker/core/Token;->endLine:I

    iget v6, p3, Lfreemarker/core/Token;->endColumn:I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;IIII)V

    return-object v7
.end method

.method public o()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-super {p0}, Lfreemarker/core/j;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lfreemarker/core/m;->k0()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    if-eqz v2, :cond_0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfreemarker/core/t0;

    invoke-virtual {v3}, Lfreemarker/core/t1;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-super {p0}, Lfreemarker/core/j;->r()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "(...)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public s()I
    .locals 1

    invoke-super {p0}, Lfreemarker/core/j;->s()I

    move-result v0

    invoke-virtual {p0}, Lfreemarker/core/m;->l0()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public t(I)Ljw7;
    .locals 1

    invoke-super {p0}, Lfreemarker/core/j;->s()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-super {p0, p1}, Lfreemarker/core/j;->t(I)Ljw7;

    move-result-object p0

    return-object p0

    :cond_0
    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lfreemarker/core/m;->l0()I

    move-result p0

    if-ge p1, p0, :cond_1

    sget-object p0, Ljw7;->D:Ljw7;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public u(I)Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lfreemarker/core/j;->s()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-super {p0, p1}, Lfreemarker/core/j;->u(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lfreemarker/core/m;->j0(I)Lfreemarker/core/t0;

    move-result-object p0

    return-object p0
.end method
