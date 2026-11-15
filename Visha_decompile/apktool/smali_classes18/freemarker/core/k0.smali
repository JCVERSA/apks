.class public final Lfreemarker/core/k0;
.super Lxh0;
.source "SourceFile"


# instance fields
.field public final h:Lfreemarker/core/t0;

.field public final i:Lfreemarker/core/t0;

.field public final j:I

.field public final k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lfreemarker/core/t0;Lfreemarker/core/t0;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lxh0;-><init>()V

    iput-object p1, p0, Lfreemarker/core/k0;->h:Lfreemarker/core/t0;

    iput-object p2, p0, Lfreemarker/core/k0;->i:Lfreemarker/core/t0;

    invoke-virtual {p3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/core/k0;->k:Ljava/lang/String;

    const-string p2, "=="

    if-eq p1, p2, :cond_a

    const-string p2, "="

    if-ne p1, p2, :cond_0

    goto/16 :goto_4

    :cond_0
    const-string p2, "!="

    if-ne p1, p2, :cond_1

    const/4 p1, 0x2

    iput p1, p0, Lfreemarker/core/k0;->j:I

    goto/16 :goto_5

    :cond_1
    const-string p2, "gt"

    if-eq p1, p2, :cond_9

    const-string p2, "\\gt"

    if-eq p1, p2, :cond_9

    const-string p2, ">"

    if-eq p1, p2, :cond_9

    const-string p2, "&gt;"

    if-ne p1, p2, :cond_2

    goto :goto_3

    :cond_2
    const-string p2, "gte"

    if-eq p1, p2, :cond_8

    const-string p2, "\\gte"

    if-eq p1, p2, :cond_8

    const-string p2, ">="

    if-eq p1, p2, :cond_8

    const-string p2, "&gt;="

    if-ne p1, p2, :cond_3

    goto :goto_2

    :cond_3
    const-string p2, "lt"

    if-eq p1, p2, :cond_7

    const-string p2, "\\lt"

    if-eq p1, p2, :cond_7

    const-string p2, "<"

    if-eq p1, p2, :cond_7

    const-string p2, "&lt;"

    if-ne p1, p2, :cond_4

    goto :goto_1

    :cond_4
    const-string p2, "lte"

    if-eq p1, p2, :cond_6

    const-string p2, "\\lte"

    if-eq p1, p2, :cond_6

    const-string p2, "<="

    if-eq p1, p2, :cond_6

    const-string p2, "&lt;="

    if-ne p1, p2, :cond_5

    goto :goto_0

    :cond_5
    new-instance p0, Lfreemarker/core/BugException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string p3, "Unknown comparison operator "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lfreemarker/core/BugException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_0
    const/4 p1, 0x5

    iput p1, p0, Lfreemarker/core/k0;->j:I

    goto :goto_5

    :cond_7
    :goto_1
    const/4 p1, 0x3

    iput p1, p0, Lfreemarker/core/k0;->j:I

    goto :goto_5

    :cond_8
    :goto_2
    const/4 p1, 0x6

    iput p1, p0, Lfreemarker/core/k0;->j:I

    goto :goto_5

    :cond_9
    :goto_3
    const/4 p1, 0x4

    iput p1, p0, Lfreemarker/core/k0;->j:I

    goto :goto_5

    :cond_a
    :goto_4
    const/4 p1, 0x1

    iput p1, p0, Lfreemarker/core/k0;->j:I

    :goto_5
    return-void
.end method


# virtual methods
.method public J(Ljava/lang/String;Lfreemarker/core/t0;Lfreemarker/core/t0$a;)Lfreemarker/core/t0;
    .locals 3

    new-instance v0, Lfreemarker/core/k0;

    iget-object v1, p0, Lfreemarker/core/k0;->h:Lfreemarker/core/t0;

    invoke-virtual {v1, p1, p2, p3}, Lfreemarker/core/t0;->I(Ljava/lang/String;Lfreemarker/core/t0;Lfreemarker/core/t0$a;)Lfreemarker/core/t0;

    move-result-object v1

    iget-object v2, p0, Lfreemarker/core/k0;->i:Lfreemarker/core/t0;

    invoke-virtual {v2, p1, p2, p3}, Lfreemarker/core/t0;->I(Ljava/lang/String;Lfreemarker/core/t0;Lfreemarker/core/t0$a;)Lfreemarker/core/t0;

    move-result-object p1

    iget-object p0, p0, Lfreemarker/core/k0;->k:Ljava/lang/String;

    invoke-direct {v0, v1, p1, p0}, Lfreemarker/core/k0;-><init>(Lfreemarker/core/t0;Lfreemarker/core/t0;Ljava/lang/String;)V

    return-object v0
.end method

.method public O(Lfreemarker/core/Environment;)Z
    .locals 6

    iget-object v0, p0, Lfreemarker/core/k0;->h:Lfreemarker/core/t0;

    iget v1, p0, Lfreemarker/core/k0;->j:I

    iget-object v2, p0, Lfreemarker/core/k0;->k:Ljava/lang/String;

    iget-object v3, p0, Lfreemarker/core/k0;->i:Lfreemarker/core/t0;

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lfreemarker/core/q0;->e(Lfreemarker/core/t0;ILjava/lang/String;Lfreemarker/core/t0;Lfreemarker/core/t0;Lfreemarker/core/Environment;)Z

    move-result p0

    return p0
.end method

.method public T()Z
    .locals 1

    iget-object v0, p0, Lfreemarker/core/t0;->g:Lzfa;

    if-nez v0, :cond_1

    iget-object v0, p0, Lfreemarker/core/k0;->h:Lfreemarker/core/t0;

    invoke-virtual {v0}, Lfreemarker/core/t0;->T()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lfreemarker/core/k0;->i:Lfreemarker/core/t0;

    invoke-virtual {p0}, Lfreemarker/core/t0;->T()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public o()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lfreemarker/core/k0;->h:Lfreemarker/core/t0;

    invoke-virtual {v1}, Lfreemarker/core/t1;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lfreemarker/core/k0;->k:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lfreemarker/core/k0;->i:Lfreemarker/core/t0;

    invoke-virtual {p0}, Lfreemarker/core/t1;->o()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public r()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lfreemarker/core/k0;->k:Ljava/lang/String;

    return-object p0
.end method

.method public s()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public t(I)Ljw7;
    .locals 0

    invoke-static {p1}, Ljw7;->a(I)Ljw7;

    move-result-object p0

    return-object p0
.end method

.method public u(I)Ljava/lang/Object;
    .locals 0

    if-nez p1, :cond_0

    iget-object p0, p0, Lfreemarker/core/k0;->h:Lfreemarker/core/t0;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lfreemarker/core/k0;->i:Lfreemarker/core/t0;

    :goto_0
    return-object p0
.end method
