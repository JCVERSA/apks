.class public final Lwd1;
.super Lifa;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lifa;)V
    .locals 0

    invoke-direct {p0}, Lifa;-><init>()V

    invoke-virtual {p0, p1}, Lifa;->j0(Lifa;)V

    return-void
.end method


# virtual methods
.method public F(Lfreemarker/core/Environment;)V
    .locals 2

    invoke-virtual {p0}, Lifa;->S()Lifa;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lifa;->S()Lifa;

    move-result-object p0

    sget-object v0, Lew9;->c:Lew9;

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v0, v1}, Lfreemarker/core/Environment;->Y1(Lifa;Lpga;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public J(Z)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lifa;->S()Lifa;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lifa;->S()Lifa;

    move-result-object p1

    invoke-virtual {p1}, Lifa;->o()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lwd1;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "</"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lwd1;->r()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lwd1;->r()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public Z()Z
    .locals 1

    invoke-virtual {p0}, Lifa;->S()Lifa;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lifa;->S()Lifa;

    move-result-object p0

    invoke-virtual {p0}, Lifa;->Z()Z

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

.method public r()Ljava/lang/String;
    .locals 0

    const-string p0, "#compress"

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
