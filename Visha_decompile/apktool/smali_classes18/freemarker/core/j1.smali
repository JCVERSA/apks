.class public final Lfreemarker/core/j1;
.super Lxh0;
.source "SourceFile"


# instance fields
.field public final h:Lfreemarker/core/t0;


# direct methods
.method public constructor <init>(Lfreemarker/core/t0;)V
    .locals 0

    invoke-direct {p0}, Lxh0;-><init>()V

    iput-object p1, p0, Lfreemarker/core/j1;->h:Lfreemarker/core/t0;

    return-void
.end method


# virtual methods
.method public J(Ljava/lang/String;Lfreemarker/core/t0;Lfreemarker/core/t0$a;)Lfreemarker/core/t0;
    .locals 1

    new-instance v0, Lfreemarker/core/j1;

    iget-object p0, p0, Lfreemarker/core/j1;->h:Lfreemarker/core/t0;

    invoke-virtual {p0, p1, p2, p3}, Lfreemarker/core/t0;->I(Ljava/lang/String;Lfreemarker/core/t0;Lfreemarker/core/t0$a;)Lfreemarker/core/t0;

    move-result-object p0

    invoke-direct {v0, p0}, Lfreemarker/core/j1;-><init>(Lfreemarker/core/t0;)V

    return-object v0
.end method

.method public O(Lfreemarker/core/Environment;)Z
    .locals 0

    iget-object p0, p0, Lfreemarker/core/j1;->h:Lfreemarker/core/t0;

    invoke-virtual {p0, p1}, Lfreemarker/core/t0;->O(Lfreemarker/core/Environment;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public T()Z
    .locals 0

    iget-object p0, p0, Lfreemarker/core/j1;->h:Lfreemarker/core/t0;

    invoke-virtual {p0}, Lfreemarker/core/t0;->T()Z

    move-result p0

    return p0
.end method

.method public o()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lfreemarker/core/j1;->h:Lfreemarker/core/t0;

    invoke-virtual {p0}, Lfreemarker/core/t1;->o()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public r()Ljava/lang/String;
    .locals 0

    const-string p0, "!"

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

    sget-object p0, Ljw7;->d:Ljw7;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public u(I)Ljava/lang/Object;
    .locals 0

    if-nez p1, :cond_0

    iget-object p0, p0, Lfreemarker/core/j1;->h:Lfreemarker/core/t0;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method
