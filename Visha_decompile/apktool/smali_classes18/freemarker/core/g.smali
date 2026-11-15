.class public final Lfreemarker/core/g;
.super Lifa;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/g$a;
    }
.end annotation


# instance fields
.field public final l:Ljava/lang/String;

.field public final m:Lfreemarker/core/t0;

.field public final n:I


# direct methods
.method public constructor <init>(Lifa;Ljava/lang/String;ILfreemarker/core/t0;)V
    .locals 0

    invoke-direct {p0}, Lifa;-><init>()V

    invoke-virtual {p0, p1}, Lifa;->j0(Lifa;)V

    iput-object p2, p0, Lfreemarker/core/g;->l:Ljava/lang/String;

    iput-object p4, p0, Lfreemarker/core/g;->m:Lfreemarker/core/t0;

    iput p3, p0, Lfreemarker/core/g;->n:I

    return-void
.end method

.method public static synthetic l0(Lfreemarker/core/g;)Lfreemarker/core/t0;
    .locals 0

    iget-object p0, p0, Lfreemarker/core/g;->m:Lfreemarker/core/t0;

    return-object p0
.end method

.method public static synthetic m0(Lfreemarker/core/g;)I
    .locals 0

    iget p0, p0, Lfreemarker/core/g;->n:I

    return p0
.end method

.method public static synthetic n0(Lfreemarker/core/g;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lfreemarker/core/g;->l:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public F(Lfreemarker/core/Environment;)V
    .locals 3

    invoke-virtual {p0}, Lifa;->S()Lifa;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lifa;->S()Lifa;

    move-result-object v0

    new-instance v1, Lfreemarker/core/g$a;

    invoke-direct {v1, p0, p1}, Lfreemarker/core/g$a;-><init>(Lfreemarker/core/g;Lfreemarker/core/Environment;)V

    const/4 p0, 0x0

    invoke-virtual {p1, v0, v1, p0}, Lfreemarker/core/Environment;->Y1(Lifa;Lpga;Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lfreemarker/template/SimpleScalar;

    const-string v1, ""

    invoke-direct {v0, v1}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lfreemarker/core/g;->m:Lfreemarker/core/t0;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lfreemarker/core/t0;->K(Lfreemarker/core/Environment;)Lzfa;

    move-result-object p1

    check-cast p1, Lfreemarker/core/Environment$Namespace;

    iget-object p0, p0, Lfreemarker/core/g;->l:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lfreemarker/template/SimpleHash;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget v1, p0, Lfreemarker/core/g;->n:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object p0, p0, Lfreemarker/core/g;->l:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lfreemarker/core/Environment;->T1(Ljava/lang/String;Lzfa;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    iget-object p0, p0, Lfreemarker/core/g;->l:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lfreemarker/core/Environment;->O1(Ljava/lang/String;Lzfa;)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    iget-object p0, p0, Lfreemarker/core/g;->l:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lfreemarker/core/Environment;->Q1(Ljava/lang/String;Lzfa;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public J(Z)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p1, :cond_0

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {p0}, Lfreemarker/core/g;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lfreemarker/core/g;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lfreemarker/core/g;->m:Lfreemarker/core/t0;

    if-eqz v1, :cond_1

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lfreemarker/core/g;->m:Lfreemarker/core/t0;

    invoke-virtual {v1}, Lfreemarker/core/t1;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    if-eqz p1, :cond_3

    const/16 p1, 0x3e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lifa;->S()Lifa;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, ""

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lifa;->S()Lifa;

    move-result-object v1

    invoke-virtual {v1}, Lifa;->o()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "</"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lfreemarker/core/g;->r()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    const-string p0, " = .nested_output"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public r()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lfreemarker/core/g;->n:I

    invoke-static {p0}, Lfreemarker/core/e;->l0(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public s()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public t(I)Ljw7;
    .locals 0

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-ne p1, p0, :cond_0

    sget-object p0, Ljw7;->l:Ljw7;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    :cond_1
    sget-object p0, Ljw7;->k:Ljw7;

    return-object p0

    :cond_2
    sget-object p0, Ljw7;->h:Ljw7;

    return-object p0
.end method

.method public u(I)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lfreemarker/core/g;->m:Lfreemarker/core/t0;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    :cond_1
    new-instance p1, Ljava/lang/Integer;

    iget p0, p0, Lfreemarker/core/g;->n:I

    invoke-direct {p1, p0}, Ljava/lang/Integer;-><init>(I)V

    return-object p1

    :cond_2
    iget-object p0, p0, Lfreemarker/core/g;->l:Ljava/lang/String;

    return-object p0
.end method
