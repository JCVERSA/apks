.class public final Lfreemarker/core/z0;
.super Lifa;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/z0$a;
    }
.end annotation


# instance fields
.field public final l:Lfreemarker/core/t0;

.field public final m:Ljava/lang/String;

.field public final n:Z


# direct methods
.method public constructor <init>(Lfreemarker/core/t0;Ljava/lang/String;Lifa;Z)V
    .locals 0

    invoke-direct {p0}, Lifa;-><init>()V

    iput-object p1, p0, Lfreemarker/core/z0;->l:Lfreemarker/core/t0;

    iput-object p2, p0, Lfreemarker/core/z0;->m:Ljava/lang/String;

    invoke-virtual {p0, p3}, Lifa;->j0(Lifa;)V

    iput-boolean p4, p0, Lfreemarker/core/z0;->n:Z

    return-void
.end method

.method public static synthetic m0(Lfreemarker/core/z0;)Lfreemarker/core/t0;
    .locals 0

    iget-object p0, p0, Lfreemarker/core/z0;->l:Lfreemarker/core/t0;

    return-object p0
.end method

.method public static n0(Lfreemarker/core/Environment;Ljava/lang/String;)Lfreemarker/core/z0$a;
    .locals 3

    invoke-virtual {p0}, Lfreemarker/core/Environment;->Q0()Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lfreemarker/core/z0$a;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_0

    move-object v2, v1

    check-cast v2, Lfreemarker/core/z0$a;

    invoke-virtual {v2}, Lfreemarker/core/z0$a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    check-cast v1, Lfreemarker/core/z0$a;

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public F(Lfreemarker/core/Environment;)V
    .locals 0

    invoke-virtual {p0, p1}, Lfreemarker/core/z0;->l0(Lfreemarker/core/Environment;)Z

    return-void
.end method

.method public J(Z)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p1, :cond_0

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {p0}, Lfreemarker/core/z0;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-boolean v1, p0, Lfreemarker/core/z0;->n:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lfreemarker/core/z0;->m:Ljava/lang/String;

    invoke-static {v1}, Ld0d;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lfreemarker/core/z0;->l:Lfreemarker/core/t0;

    invoke-virtual {v1}, Lfreemarker/core/t1;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lfreemarker/core/z0;->l:Lfreemarker/core/t0;

    invoke-virtual {v1}, Lfreemarker/core/t1;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lfreemarker/core/z0;->m:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, " as "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lfreemarker/core/z0;->m:Ljava/lang/String;

    invoke-static {v1}, Ld0d;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    :goto_0
    if-eqz p1, :cond_4

    const-string p1, ">"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lifa;->S()Lifa;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lifa;->S()Lifa;

    move-result-object p1

    invoke-virtual {p1}, Lifa;->o()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    invoke-virtual {p0}, Lifa;->U()Lifa;

    move-result-object p1

    instance-of p1, p1, Lsl5;

    if-nez p1, :cond_4

    const-string p1, "</"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lfreemarker/core/z0;->r()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 p0, 0x3e

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public l0(Lfreemarker/core/Environment;)Z
    .locals 3

    iget-object v0, p0, Lfreemarker/core/z0;->l:Lfreemarker/core/t0;

    invoke-virtual {v0, p1}, Lfreemarker/core/t0;->K(Lfreemarker/core/Environment;)Lzfa;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lfreemarker/core/Configurable;->J()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lfreemarker/template/utility/Constants;->i:Lnga;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lfreemarker/core/z0;->l:Lfreemarker/core/t0;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lfreemarker/core/t0;->G(Lzfa;Lfreemarker/core/Environment;)V

    :cond_1
    :goto_0
    new-instance v1, Lfreemarker/core/z0$a;

    iget-object v2, p0, Lfreemarker/core/z0;->m:Ljava/lang/String;

    invoke-direct {v1, p0, v0, v2}, Lfreemarker/core/z0$a;-><init>(Lfreemarker/core/z0;Lzfa;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lfreemarker/core/Environment;->b2(Lfreemarker/core/z0$a;)Z

    move-result p0

    return p0
.end method

.method public r()Ljava/lang/String;
    .locals 0

    iget-boolean p0, p0, Lfreemarker/core/z0;->n:Z

    if-eqz p0, :cond_0

    const-string p0, "#foreach"

    goto :goto_0

    :cond_0
    const-string p0, "#list"

    :goto_0
    return-object p0
.end method

.method public s()I
    .locals 0

    iget-object p0, p0, Lfreemarker/core/z0;->m:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public t(I)Ljw7;
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lfreemarker/core/z0;->m:Ljava/lang/String;

    if-eqz p0, :cond_0

    sget-object p0, Ljw7;->u:Ljw7;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    :cond_2
    sget-object p0, Ljw7;->t:Ljw7;

    return-object p0
.end method

.method public u(I)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lfreemarker/core/z0;->m:Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    :cond_2
    iget-object p0, p0, Lfreemarker/core/z0;->l:Lfreemarker/core/t0;

    return-object p0
.end method
