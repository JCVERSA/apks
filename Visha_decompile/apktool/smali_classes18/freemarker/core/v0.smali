.class public final Lfreemarker/core/v0;
.super Lfreemarker/core/t0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/v0$a;
    }
.end annotation


# instance fields
.field public final h:Ljava/util/ArrayList;

.field public final i:Ljava/util/ArrayList;

.field public final j:I


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1

    invoke-direct {p0}, Lfreemarker/core/t0;-><init>()V

    iput-object p1, p0, Lfreemarker/core/v0;->h:Ljava/util/ArrayList;

    iput-object p2, p0, Lfreemarker/core/v0;->i:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lfreemarker/core/v0;->j:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->trimToSize()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->trimToSize()V

    return-void
.end method

.method public static synthetic X(Lfreemarker/core/v0;)I
    .locals 0

    iget p0, p0, Lfreemarker/core/v0;->j:I

    return p0
.end method

.method public static synthetic Y(Lfreemarker/core/v0;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lfreemarker/core/v0;->h:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic Z(Lfreemarker/core/v0;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lfreemarker/core/v0;->i:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public F(Lfreemarker/core/Environment;)Lzfa;
    .locals 1

    new-instance v0, Lfreemarker/core/v0$a;

    invoke-direct {v0, p0, p1}, Lfreemarker/core/v0$a;-><init>(Lfreemarker/core/v0;Lfreemarker/core/Environment;)V

    return-object v0
.end method

.method public J(Ljava/lang/String;Lfreemarker/core/t0;Lfreemarker/core/t0$a;)Lfreemarker/core/t0;
    .locals 3

    iget-object v0, p0, Lfreemarker/core/v0;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfreemarker/core/t0;

    invoke-virtual {v2, p1, p2, p3}, Lfreemarker/core/t0;->I(Ljava/lang/String;Lfreemarker/core/t0;Lfreemarker/core/t0$a;)Lfreemarker/core/t0;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lfreemarker/core/v0;->i:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfreemarker/core/t0;

    invoke-virtual {v2, p1, p2, p3}, Lfreemarker/core/t0;->I(Ljava/lang/String;Lfreemarker/core/t0;Lfreemarker/core/t0$a;)Lfreemarker/core/t0;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Lfreemarker/core/v0;

    invoke-direct {p1, v0, p0}, Lfreemarker/core/v0;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-object p1
.end method

.method public T()Z
    .locals 5

    iget-object v0, p0, Lfreemarker/core/t0;->g:Lzfa;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget v3, p0, Lfreemarker/core/v0;->j:I

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lfreemarker/core/v0;->h:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfreemarker/core/t0;

    iget-object v4, p0, Lfreemarker/core/v0;->i:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lfreemarker/core/t0;

    invoke-virtual {v3}, Lfreemarker/core/t0;->T()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v4}, Lfreemarker/core/t0;->T()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0

    :cond_3
    return v1
.end method

.method public final a0(I)V
    .locals 0

    iget p0, p0, Lfreemarker/core/v0;->j:I

    mul-int/lit8 p0, p0, 0x2

    if-ge p1, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public o()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lfreemarker/core/v0;->j:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lfreemarker/core/v0;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfreemarker/core/t0;

    iget-object v3, p0, Lfreemarker/core/v0;->i:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfreemarker/core/t0;

    invoke-virtual {v2}, Lfreemarker/core/t1;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Lfreemarker/core/t1;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lfreemarker/core/v0;->j:I

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public r()Ljava/lang/String;
    .locals 0

    const-string p0, "{...}"

    return-object p0
.end method

.method public s()I
    .locals 0

    iget p0, p0, Lfreemarker/core/v0;->j:I

    mul-int/lit8 p0, p0, 0x2

    return p0
.end method

.method public t(I)Ljw7;
    .locals 0

    invoke-virtual {p0, p1}, Lfreemarker/core/v0;->a0(I)V

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    sget-object p0, Ljw7;->g:Ljw7;

    goto :goto_0

    :cond_0
    sget-object p0, Ljw7;->f:Ljw7;

    :goto_0
    return-object p0
.end method

.method public u(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lfreemarker/core/v0;->a0(I)V

    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_0

    iget-object p0, p0, Lfreemarker/core/v0;->h:Ljava/util/ArrayList;

    :goto_0
    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lfreemarker/core/v0;->i:Ljava/util/ArrayList;

    goto :goto_0

    :goto_1
    return-object p0
.end method
