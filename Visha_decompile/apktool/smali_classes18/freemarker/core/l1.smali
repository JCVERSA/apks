.class public final Lfreemarker/core/l1;
.super Lxh0;
.source "SourceFile"


# instance fields
.field public final h:Lfreemarker/core/t0;

.field public final i:Lfreemarker/core/t0;


# direct methods
.method public constructor <init>(Lfreemarker/core/t0;Lfreemarker/core/t0;)V
    .locals 0

    invoke-direct {p0}, Lxh0;-><init>()V

    iput-object p1, p0, Lfreemarker/core/l1;->h:Lfreemarker/core/t0;

    iput-object p2, p0, Lfreemarker/core/l1;->i:Lfreemarker/core/t0;

    return-void
.end method


# virtual methods
.method public J(Ljava/lang/String;Lfreemarker/core/t0;Lfreemarker/core/t0$a;)Lfreemarker/core/t0;
    .locals 2

    new-instance v0, Lfreemarker/core/l1;

    iget-object v1, p0, Lfreemarker/core/l1;->h:Lfreemarker/core/t0;

    invoke-virtual {v1, p1, p2, p3}, Lfreemarker/core/t0;->I(Ljava/lang/String;Lfreemarker/core/t0;Lfreemarker/core/t0$a;)Lfreemarker/core/t0;

    move-result-object v1

    iget-object p0, p0, Lfreemarker/core/l1;->i:Lfreemarker/core/t0;

    invoke-virtual {p0, p1, p2, p3}, Lfreemarker/core/t0;->I(Ljava/lang/String;Lfreemarker/core/t0;Lfreemarker/core/t0$a;)Lfreemarker/core/t0;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lfreemarker/core/l1;-><init>(Lfreemarker/core/t0;Lfreemarker/core/t0;)V

    return-object v0
.end method

.method public O(Lfreemarker/core/Environment;)Z
    .locals 1

    iget-object v0, p0, Lfreemarker/core/l1;->h:Lfreemarker/core/t0;

    invoke-virtual {v0, p1}, Lfreemarker/core/t0;->O(Lfreemarker/core/Environment;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lfreemarker/core/l1;->i:Lfreemarker/core/t0;

    invoke-virtual {p0, p1}, Lfreemarker/core/t0;->O(Lfreemarker/core/Environment;)Z

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

.method public T()Z
    .locals 1

    iget-object v0, p0, Lfreemarker/core/t0;->g:Lzfa;

    if-nez v0, :cond_1

    iget-object v0, p0, Lfreemarker/core/l1;->h:Lfreemarker/core/t0;

    invoke-virtual {v0}, Lfreemarker/core/t0;->T()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lfreemarker/core/l1;->i:Lfreemarker/core/t0;

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
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lfreemarker/core/l1;->h:Lfreemarker/core/t0;

    invoke-virtual {v1}, Lfreemarker/core/t1;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " || "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lfreemarker/core/l1;->i:Lfreemarker/core/t0;

    invoke-virtual {p0}, Lfreemarker/core/t1;->o()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public r()Ljava/lang/String;
    .locals 0

    const-string p0, "||"

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
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lfreemarker/core/l1;->i:Lfreemarker/core/t0;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    :cond_1
    iget-object p0, p0, Lfreemarker/core/l1;->h:Lfreemarker/core/t0;

    return-object p0
.end method
