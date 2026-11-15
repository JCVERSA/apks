.class public final Lfreemarker/core/i;
.super Lfreemarker/core/t0;
.source "SourceFile"


# instance fields
.field public final h:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lfreemarker/core/t0;-><init>()V

    iput-boolean p1, p0, Lfreemarker/core/i;->h:Z

    return-void
.end method


# virtual methods
.method public F(Lfreemarker/core/Environment;)Lzfa;
    .locals 0

    iget-boolean p0, p0, Lfreemarker/core/i;->h:Z

    if-eqz p0, :cond_0

    sget-object p0, Lfreemarker/template/a;->z6:Lfreemarker/template/a;

    goto :goto_0

    :cond_0
    sget-object p0, Lfreemarker/template/a;->y6:Lfreemarker/template/a;

    :goto_0
    return-object p0
.end method

.method public J(Ljava/lang/String;Lfreemarker/core/t0;Lfreemarker/core/t0$a;)Lfreemarker/core/t0;
    .locals 0

    new-instance p1, Lfreemarker/core/i;

    iget-boolean p0, p0, Lfreemarker/core/i;->h:Z

    invoke-direct {p1, p0}, Lfreemarker/core/i;-><init>(Z)V

    return-object p1
.end method

.method public O(Lfreemarker/core/Environment;)Z
    .locals 0

    iget-boolean p0, p0, Lfreemarker/core/i;->h:Z

    return p0
.end method

.method public T()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o()Ljava/lang/String;
    .locals 0

    iget-boolean p0, p0, Lfreemarker/core/i;->h:Z

    if-eqz p0, :cond_0

    const-string p0, "true"

    goto :goto_0

    :cond_0
    const-string p0, "false"

    :goto_0
    return-object p0
.end method

.method public r()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lfreemarker/core/i;->o()Ljava/lang/String;

    move-result-object p0

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

.method public toString()Ljava/lang/String;
    .locals 0

    iget-boolean p0, p0, Lfreemarker/core/i;->h:Z

    if-eqz p0, :cond_0

    const-string p0, "true"

    goto :goto_0

    :cond_0
    const-string p0, "false"

    :goto_0
    return-object p0
.end method

.method public u(I)Ljava/lang/Object;
    .locals 0

    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method
