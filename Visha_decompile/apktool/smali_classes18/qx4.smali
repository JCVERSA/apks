.class public final Lqx4;
.super Lifa;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lme1;)V
    .locals 1

    invoke-direct {p0}, Lifa;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lifa;->k0(I)V

    invoke-virtual {p0, p1}, Lqx4;->l0(Lme1;)V

    return-void
.end method


# virtual methods
.method public F(Lfreemarker/core/Environment;)V
    .locals 4

    invoke-virtual {p0}, Lifa;->W()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Lifa;->V(I)Lifa;

    move-result-object v2

    check-cast v2, Lme1;

    iget-object v3, v2, Lme1;->l:Lfreemarker/core/t0;

    invoke-virtual {p1, v2}, Lfreemarker/core/Environment;->K1(Lifa;)V

    if-eqz v3, :cond_1

    invoke-virtual {v3, p1}, Lfreemarker/core/t0;->O(Lfreemarker/core/Environment;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {v2}, Lifa;->S()Lifa;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {v2}, Lifa;->S()Lifa;

    move-result-object p0

    invoke-virtual {p1, p0}, Lfreemarker/core/Environment;->a2(Lifa;)V

    :cond_2
    return-void
.end method

.method public J(Z)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lifa;->W()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Lifa;->V(I)Lifa;

    move-result-object v3

    check-cast v3, Lme1;

    invoke-virtual {v3, p1}, Lme1;->J(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string p0, "</#if>"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lqx4;->r()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public b0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public e0(Z)Lifa;
    .locals 2

    invoke-virtual {p0}, Lifa;->W()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lifa;->V(I)Lifa;

    move-result-object v0

    check-cast v0, Lme1;

    iput-boolean v1, v0, Lme1;->n:Z

    invoke-virtual {p0}, Lfreemarker/core/t1;->y()Lfreemarker/template/Template;

    move-result-object v1

    invoke-virtual {v0, v1, v0, p0}, Lfreemarker/core/t1;->A(Lfreemarker/template/Template;Lfreemarker/core/t1;Lfreemarker/core/t1;)V

    invoke-virtual {v0, p1}, Lifa;->e0(Z)Lifa;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lifa;->e0(Z)Lifa;

    move-result-object p0

    return-object p0
.end method

.method public l0(Lme1;)V
    .locals 0

    invoke-virtual {p0, p1}, Lifa;->H(Lifa;)V

    return-void
.end method

.method public r()Ljava/lang/String;
    .locals 0

    const-string p0, "#if-#elseif-#else-container"

    return-object p0
.end method

.method public s()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public t(I)Ljw7;
    .locals 0

    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public u(I)Ljava/lang/Object;
    .locals 0

    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method
