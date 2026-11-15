.class public final Lz9b;
.super Lifa;
.source "SourceFile"


# instance fields
.field public final l:I

.field public final m:I

.field public final n:I

.field public final o:I

.field public final p:Z

.field public final q:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 1

    invoke-direct {p0}, Lifa;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lz9b;->l:I

    const/4 v0, 0x1

    iput v0, p0, Lz9b;->m:I

    const/4 v0, 0x2

    iput v0, p0, Lz9b;->n:I

    const/4 v0, 0x3

    iput v0, p0, Lz9b;->o:I

    iput-boolean p1, p0, Lz9b;->p:Z

    iput-boolean p2, p0, Lz9b;->q:Z

    return-void
.end method


# virtual methods
.method public F(Lfreemarker/core/Environment;)V
    .locals 0

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
    invoke-virtual {p0}, Lz9b;->r()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p1, :cond_1

    const-string p0, "/>"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public Z()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public r()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lz9b;->p:Z

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lz9b;->q:Z

    if-eqz v1, :cond_0

    const-string p0, "#t"

    return-object p0

    :cond_0
    if-eqz v0, :cond_1

    const-string p0, "#lt"

    return-object p0

    :cond_1
    iget-boolean p0, p0, Lz9b;->q:Z

    if-eqz p0, :cond_2

    const-string p0, "#rt"

    return-object p0

    :cond_2
    const-string p0, "#nt"

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

    sget-object p0, Ljw7;->q:Ljw7;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public u(I)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lz9b;->p:Z

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lz9b;->q:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    iget-boolean p0, p0, Lz9b;->q:Z

    if-eqz p0, :cond_2

    const/4 p0, 0x2

    goto :goto_0

    :cond_2
    const/4 p0, 0x3

    :goto_0
    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, p0}, Ljava/lang/Integer;-><init>(I)V

    return-object p1

    :cond_3
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method
