.class public final Lrw2;
.super Lm45;
.source "SourceFile"


# instance fields
.field public final l:Lfreemarker/core/t0;

.field public final m:Lfreemarker/core/t0;


# direct methods
.method public constructor <init>(Lfreemarker/core/t0;Lfreemarker/core/t0;)V
    .locals 0

    invoke-direct {p0}, Lm45;-><init>()V

    iput-object p1, p0, Lrw2;->l:Lfreemarker/core/t0;

    iput-object p2, p0, Lrw2;->m:Lfreemarker/core/t0;

    return-void
.end method


# virtual methods
.method public F(Lfreemarker/core/Environment;)V
    .locals 1

    invoke-virtual {p1}, Lfreemarker/core/Environment;->a1()Ljava/io/Writer;

    move-result-object v0

    iget-object p0, p0, Lrw2;->m:Lfreemarker/core/t0;

    invoke-virtual {p0, p1}, Lfreemarker/core/t0;->L(Lfreemarker/core/Environment;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public X()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public Y()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public l0(ZZ)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "${"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lrw2;->l:Lfreemarker/core/t0;

    invoke-virtual {v1}, Lfreemarker/core/t1;->o()Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_0

    const/16 p2, 0x22

    invoke-static {v1, p2}, Ln0a;->b(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, "}"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-nez p1, :cond_1

    iget-object p1, p0, Lrw2;->l:Lfreemarker/core/t0;

    iget-object p0, p0, Lrw2;->m:Lfreemarker/core/t0;

    if-eq p1, p0, :cond_1

    const-string p0, " auto-escaped"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public r()Ljava/lang/String;
    .locals 0

    const-string p0, "${...}"

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

    sget-object p0, Ljw7;->E:Ljw7;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public u(I)Ljava/lang/Object;
    .locals 0

    if-nez p1, :cond_0

    iget-object p0, p0, Lrw2;->l:Lfreemarker/core/t0;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method
