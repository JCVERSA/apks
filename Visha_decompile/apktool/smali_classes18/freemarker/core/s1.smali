.class public final Lfreemarker/core/s1;
.super Lifa;
.source "SourceFile"


# instance fields
.field public l:Lyr0;

.field public final m:Lfreemarker/core/t0;


# direct methods
.method public constructor <init>(Lfreemarker/core/t0;)V
    .locals 0

    invoke-direct {p0}, Lifa;-><init>()V

    iput-object p1, p0, Lfreemarker/core/s1;->m:Lfreemarker/core/t0;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lifa;->k0(I)V

    return-void
.end method


# virtual methods
.method public F(Lfreemarker/core/Environment;)V
    .locals 12

    invoke-virtual {p0}, Lifa;->W()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_3

    :try_start_0
    invoke-virtual {p0, v2}, Lifa;->V(I)Lifa;

    move-result-object v4

    check-cast v4, Lyr0;

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    move v6, v5

    goto :goto_1

    :cond_0
    iget-object v10, v4, Lyr0;->n:Lfreemarker/core/t0;

    if-eqz v10, :cond_1

    iget-object v6, p0, Lfreemarker/core/s1;->m:Lfreemarker/core/t0;

    const-string v8, "case=="

    const/4 v7, 0x1

    move-object v9, v10

    move-object v11, p1

    invoke-static/range {v6 .. v11}, Lfreemarker/core/q0;->e(Lfreemarker/core/t0;ILjava/lang/String;Lfreemarker/core/t0;Lfreemarker/core/t0;Lfreemarker/core/Environment;)Z

    move-result v6

    goto :goto_1

    :cond_1
    move v6, v1

    :goto_1
    if-eqz v6, :cond_2

    invoke-virtual {p1, v4}, Lfreemarker/core/Environment;->a2(Lifa;)V

    move v3, v5

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-nez v3, :cond_4

    iget-object p0, p0, Lfreemarker/core/s1;->l:Lyr0;

    if-eqz p0, :cond_4

    invoke-virtual {p1, p0}, Lfreemarker/core/Environment;->a2(Lifa;)V
    :try_end_0
    .catch Lfreemarker/core/BreakInstruction$Break; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
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
    invoke-virtual {p0}, Lfreemarker/core/s1;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lfreemarker/core/s1;->m:Lfreemarker/core/t0;

    invoke-virtual {v1}, Lfreemarker/core/t1;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p1, :cond_2

    const/16 p1, 0x3e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lifa;->W()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Lifa;->V(I)Lifa;

    move-result-object v3

    check-cast v3, Lyr0;

    invoke-virtual {v3}, Lifa;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "</"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lfreemarker/core/s1;->r()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public l0(Lyr0;)V
    .locals 1

    iget-object v0, p1, Lyr0;->n:Lfreemarker/core/t0;

    if-nez v0, :cond_0

    iput-object p1, p0, Lfreemarker/core/s1;->l:Lyr0;

    :cond_0
    invoke-virtual {p0, p1}, Lifa;->H(Lifa;)V

    return-void
.end method

.method public r()Ljava/lang/String;
    .locals 0

    const-string p0, "#switch"

    return-object p0
.end method

.method public s()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public t(I)Ljw7;
    .locals 0

    if-nez p1, :cond_0

    sget-object p0, Ljw7;->p:Ljw7;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public u(I)Ljava/lang/Object;
    .locals 0

    if-nez p1, :cond_0

    iget-object p0, p0, Lfreemarker/core/s1;->m:Lfreemarker/core/t0;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method
