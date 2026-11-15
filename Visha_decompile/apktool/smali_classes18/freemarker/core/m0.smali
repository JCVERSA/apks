.class public final Lfreemarker/core/m0;
.super Lfreemarker/core/t0;
.source "SourceFile"


# instance fields
.field public final h:Lfreemarker/core/t0;

.field public final i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lfreemarker/core/t0;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lfreemarker/core/t0;-><init>()V

    iput-object p1, p0, Lfreemarker/core/m0;->h:Lfreemarker/core/t0;

    iput-object p2, p0, Lfreemarker/core/m0;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public F(Lfreemarker/core/Environment;)Lzfa;
    .locals 2

    iget-object v0, p0, Lfreemarker/core/m0;->h:Lfreemarker/core/t0;

    invoke-virtual {v0, p1}, Lfreemarker/core/t0;->K(Lfreemarker/core/Environment;)Lzfa;

    move-result-object v0

    instance-of v1, v0, Lofa;

    if-eqz v1, :cond_0

    check-cast v0, Lofa;

    iget-object p0, p0, Lfreemarker/core/m0;->i:Ljava/lang/String;

    invoke-interface {v0, p0}, Lofa;->get(Ljava/lang/String;)Lzfa;

    move-result-object p0

    return-object p0

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p1}, Lfreemarker/core/Configurable;->J()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    new-instance v1, Lfreemarker/core/NonHashException;

    iget-object p0, p0, Lfreemarker/core/m0;->h:Lfreemarker/core/t0;

    invoke-direct {v1, p0, v0, p1}, Lfreemarker/core/NonHashException;-><init>(Lfreemarker/core/t0;Lzfa;Lfreemarker/core/Environment;)V

    throw v1
.end method

.method public J(Ljava/lang/String;Lfreemarker/core/t0;Lfreemarker/core/t0$a;)Lfreemarker/core/t0;
    .locals 2

    new-instance v0, Lfreemarker/core/m0;

    iget-object v1, p0, Lfreemarker/core/m0;->h:Lfreemarker/core/t0;

    invoke-virtual {v1, p1, p2, p3}, Lfreemarker/core/t0;->I(Ljava/lang/String;Lfreemarker/core/t0;Lfreemarker/core/t0$a;)Lfreemarker/core/t0;

    move-result-object p1

    iget-object p0, p0, Lfreemarker/core/m0;->i:Ljava/lang/String;

    invoke-direct {v0, p1, p0}, Lfreemarker/core/m0;-><init>(Lfreemarker/core/t0;Ljava/lang/String;)V

    return-object v0
.end method

.method public T()Z
    .locals 0

    iget-object p0, p0, Lfreemarker/core/m0;->h:Lfreemarker/core/t0;

    invoke-virtual {p0}, Lfreemarker/core/t0;->T()Z

    move-result p0

    return p0
.end method

.method public X()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lfreemarker/core/m0;->i:Ljava/lang/String;

    return-object p0
.end method

.method public Y()Z
    .locals 1

    iget-object p0, p0, Lfreemarker/core/m0;->h:Lfreemarker/core/t0;

    instance-of v0, p0, Lfreemarker/core/x0;

    if-nez v0, :cond_1

    instance-of v0, p0, Lfreemarker/core/m0;

    if-eqz v0, :cond_0

    check-cast p0, Lfreemarker/core/m0;

    invoke-virtual {p0}, Lfreemarker/core/m0;->Y()Z

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

    iget-object v1, p0, Lfreemarker/core/m0;->h:Lfreemarker/core/t0;

    invoke-virtual {v1}, Lfreemarker/core/t1;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lfreemarker/core/m0;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lfreemarker/core/m0;->i:Ljava/lang/String;

    invoke-static {p0}, Ld0d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public r()Ljava/lang/String;
    .locals 0

    const-string p0, "."

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

    iget-object p0, p0, Lfreemarker/core/m0;->h:Lfreemarker/core/t0;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lfreemarker/core/m0;->i:Ljava/lang/String;

    :goto_0
    return-object p0
.end method
