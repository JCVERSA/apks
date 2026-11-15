.class public final Lbj;
.super Lifa;
.source "SourceFile"


# instance fields
.field public l:I

.field public m:Lfreemarker/core/t0;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lifa;-><init>()V

    iput p1, p0, Lbj;->l:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lifa;->k0(I)V

    return-void
.end method


# virtual methods
.method public F(Lfreemarker/core/Environment;)V
    .locals 3

    invoke-virtual {p0}, Lifa;->W()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lifa;->V(I)Lifa;

    move-result-object v2

    check-cast v2, Lfreemarker/core/e;

    invoke-virtual {p1, v2}, Lfreemarker/core/Environment;->X1(Lifa;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public J(Z)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p1, :cond_0

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    iget v1, p0, Lbj;->l:I

    invoke-static {v1}, Lfreemarker/core/e;->l0(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p1, :cond_2

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lifa;->W()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    if-eqz v2, :cond_1

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {p0, v2}, Lifa;->V(I)Lifa;

    move-result-object v3

    check-cast v3, Lfreemarker/core/e;

    invoke-virtual {v3}, Lifa;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string v1, "-container"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    iget-object v1, p0, Lbj;->m:Lfreemarker/core/t0;

    if-eqz v1, :cond_4

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lbj;->m:Lfreemarker/core/t0;

    invoke-virtual {p0}, Lfreemarker/core/t1;->o()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    if-eqz p1, :cond_5

    const-string p0, ">"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public e0(Z)Lifa;
    .locals 0

    invoke-super {p0, p1}, Lifa;->e0(Z)Lifa;

    return-object p0
.end method

.method public l0(Lfreemarker/core/e;)V
    .locals 0

    invoke-virtual {p0, p1}, Lifa;->H(Lifa;)V

    return-void
.end method

.method public m0(Lfreemarker/core/t0;)V
    .locals 3

    iput-object p1, p0, Lbj;->m:Lfreemarker/core/t0;

    invoke-virtual {p0}, Lifa;->W()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lifa;->V(I)Lifa;

    move-result-object v2

    check-cast v2, Lfreemarker/core/e;

    invoke-virtual {v2, p1}, Lfreemarker/core/e;->n0(Lfreemarker/core/t0;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public r()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lbj;->l:I

    invoke-static {p0}, Lfreemarker/core/e;->l0(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public s()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public t(I)Ljw7;
    .locals 0

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Ljw7;->l:Ljw7;

    return-object p0

    :cond_1
    sget-object p0, Ljw7;->k:Ljw7;

    return-object p0
.end method

.method public u(I)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lbj;->m:Lfreemarker/core/t0;

    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/Integer;

    iget p0, p0, Lbj;->l:I

    invoke-direct {p1, p0}, Ljava/lang/Integer;-><init>(I)V

    return-object p1
.end method
