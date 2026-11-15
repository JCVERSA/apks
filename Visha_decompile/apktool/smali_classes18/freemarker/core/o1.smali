.class public final Lfreemarker/core/o1;
.super Lfreemarker/core/t0;
.source "SourceFile"


# instance fields
.field public final h:Lfreemarker/core/t0;

.field public final i:Lfreemarker/core/t0;

.field public final j:I


# direct methods
.method public constructor <init>(Lfreemarker/core/t0;Lfreemarker/core/t0;I)V
    .locals 0

    invoke-direct {p0}, Lfreemarker/core/t0;-><init>()V

    iput-object p1, p0, Lfreemarker/core/o1;->h:Lfreemarker/core/t0;

    iput-object p2, p0, Lfreemarker/core/o1;->i:Lfreemarker/core/t0;

    iput p3, p0, Lfreemarker/core/o1;->j:I

    return-void
.end method


# virtual methods
.method public F(Lfreemarker/core/Environment;)Lzfa;
    .locals 6

    iget-object v0, p0, Lfreemarker/core/o1;->h:Lfreemarker/core/t0;

    invoke-virtual {v0, p1}, Lfreemarker/core/t0;->R(Lfreemarker/core/Environment;)Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget v1, p0, Lfreemarker/core/o1;->j:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lfreemarker/core/o1;->i:Lfreemarker/core/t0;

    invoke-virtual {v1, p1}, Lfreemarker/core/t0;->R(Lfreemarker/core/Environment;)Ljava/lang/Number;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    new-instance v1, Lfreemarker/core/BoundedRangeModel;

    iget p0, p0, Lfreemarker/core/o1;->j:I

    const/4 v2, 0x3

    if-eq p0, v2, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr p1, v0

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez p0, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    if-ne p0, v2, :cond_2

    move v3, v4

    :cond_2
    invoke-direct {v1, v0, p1, v5, v3}, Lfreemarker/core/BoundedRangeModel;-><init>(IIZZ)V

    return-object v1

    :cond_3
    invoke-static {p0}, Ld1d;->e(Lfreemarker/core/t1;)I

    move-result p0

    sget p1, Ld1d;->d:I

    if-lt p0, p1, :cond_4

    new-instance p0, Lfreemarker/core/ListableRightUnboundedRangeModel;

    invoke-direct {p0, v0}, Lfreemarker/core/ListableRightUnboundedRangeModel;-><init>(I)V

    goto :goto_2

    :cond_4
    new-instance p0, Lfreemarker/core/NonListableRightUnboundedRangeModel;

    invoke-direct {p0, v0}, Lfreemarker/core/NonListableRightUnboundedRangeModel;-><init>(I)V

    :goto_2
    return-object p0
.end method

.method public J(Ljava/lang/String;Lfreemarker/core/t0;Lfreemarker/core/t0$a;)Lfreemarker/core/t0;
    .locals 3

    new-instance v0, Lfreemarker/core/o1;

    iget-object v1, p0, Lfreemarker/core/o1;->h:Lfreemarker/core/t0;

    invoke-virtual {v1, p1, p2, p3}, Lfreemarker/core/t0;->I(Ljava/lang/String;Lfreemarker/core/t0;Lfreemarker/core/t0$a;)Lfreemarker/core/t0;

    move-result-object v1

    iget-object v2, p0, Lfreemarker/core/o1;->i:Lfreemarker/core/t0;

    invoke-virtual {v2, p1, p2, p3}, Lfreemarker/core/t0;->I(Ljava/lang/String;Lfreemarker/core/t0;Lfreemarker/core/t0$a;)Lfreemarker/core/t0;

    move-result-object p1

    iget p0, p0, Lfreemarker/core/o1;->j:I

    invoke-direct {v0, v1, p1, p0}, Lfreemarker/core/o1;-><init>(Lfreemarker/core/t0;Lfreemarker/core/t0;I)V

    return-object v0
.end method

.method public O(Lfreemarker/core/Environment;)Z
    .locals 3

    new-instance v0, Lfreemarker/core/NonBooleanException;

    new-instance v1, Lfreemarker/core/BoundedRangeModel;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2, v2}, Lfreemarker/core/BoundedRangeModel;-><init>(IIZZ)V

    invoke-direct {v0, p0, v1, p1}, Lfreemarker/core/NonBooleanException;-><init>(Lfreemarker/core/t0;Lzfa;Lfreemarker/core/Environment;)V

    throw v0
.end method

.method public T()Z
    .locals 4

    iget-object v0, p0, Lfreemarker/core/o1;->i:Lfreemarker/core/t0;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lfreemarker/core/t0;->T()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    iget-object v3, p0, Lfreemarker/core/t0;->g:Lzfa;

    if-nez v3, :cond_3

    iget-object p0, p0, Lfreemarker/core/o1;->h:Lfreemarker/core/t0;

    invoke-virtual {p0}, Lfreemarker/core/t0;->T()Z

    move-result p0

    if-eqz p0, :cond_2

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :cond_3
    :goto_2
    return v1
.end method

.method public o()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lfreemarker/core/o1;->i:Lfreemarker/core/t0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lfreemarker/core/t1;->o()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lfreemarker/core/o1;->h:Lfreemarker/core/t0;

    invoke-virtual {v2}, Lfreemarker/core/t1;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lfreemarker/core/o1;->r()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public r()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lfreemarker/core/o1;->j:I

    const-string v1, ".."

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const-string p0, "..*"

    return-object p0

    :cond_0
    new-instance v0, Lfreemarker/core/BugException;

    iget p0, p0, Lfreemarker/core/o1;->j:I

    invoke-direct {v0, p0}, Lfreemarker/core/BugException;-><init>(I)V

    throw v0

    :cond_1
    return-object v1

    :cond_2
    const-string p0, "..<"

    return-object p0

    :cond_3
    return-object v1
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
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lfreemarker/core/o1;->i:Lfreemarker/core/t0;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    :cond_1
    iget-object p0, p0, Lfreemarker/core/o1;->h:Lfreemarker/core/t0;

    return-object p0
.end method
