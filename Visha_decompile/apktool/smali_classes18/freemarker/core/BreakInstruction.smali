.class public final Lfreemarker/core/BreakInstruction;
.super Lifa;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/BreakInstruction$Break;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lifa;-><init>()V

    return-void
.end method


# virtual methods
.method public F(Lfreemarker/core/Environment;)V
    .locals 0

    sget-object p0, Lfreemarker/core/BreakInstruction$Break;->INSTANCE:Lfreemarker/core/BreakInstruction$Break;

    throw p0
.end method

.method public J(Z)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "<"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lfreemarker/core/BreakInstruction;->r()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "/>"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lfreemarker/core/BreakInstruction;->r()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public r()Ljava/lang/String;
    .locals 0

    const-string p0, "#break"

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
