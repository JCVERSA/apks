.class public final Laq6;
.super Lifa;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lifa;-><init>()V

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

    invoke-virtual {p1, v2}, Lfreemarker/core/Environment;->X1(Lifa;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public J(Z)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lifa;->W()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lifa;->V(I)Lifa;

    move-result-object v2

    invoke-virtual {v2}, Lifa;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lifa;->U()Lifa;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p0, "root"

    return-object p0

    :cond_2
    invoke-virtual {p0}, Laq6;->r()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public Z()Z
    .locals 0

    invoke-virtual {p0}, Lifa;->W()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public b0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public e0(Z)Lifa;
    .locals 1

    invoke-super {p0, p1}, Lifa;->e0(Z)Lifa;

    invoke-virtual {p0}, Lifa;->W()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lifa;->V(I)Lifa;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public l0(Lifa;)V
    .locals 0

    invoke-virtual {p0, p1}, Lifa;->H(Lifa;)V

    return-void
.end method

.method public r()Ljava/lang/String;
    .locals 0

    const-string p0, "#mixed_content"

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
