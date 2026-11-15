.class public final Lfreemarker/core/a;
.super Lfreemarker/core/t0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/a$b;,
        Lfreemarker/core/a$a;,
        Lfreemarker/core/a$c;
    }
.end annotation


# instance fields
.field public final h:Lfreemarker/core/t0;

.field public final i:Lfreemarker/core/t0;


# direct methods
.method public constructor <init>(Lfreemarker/core/t0;Lfreemarker/core/t0;)V
    .locals 0

    invoke-direct {p0}, Lfreemarker/core/t0;-><init>()V

    iput-object p1, p0, Lfreemarker/core/a;->h:Lfreemarker/core/t0;

    iput-object p2, p0, Lfreemarker/core/a;->i:Lfreemarker/core/t0;

    return-void
.end method

.method public static X(Lfreemarker/core/Environment;Lfreemarker/core/t1;Lfreemarker/core/t0;Lzfa;Lfreemarker/core/t0;Lzfa;)Lzfa;
    .locals 1

    instance-of v0, p3, Lhga;

    if-eqz v0, :cond_0

    instance-of v0, p5, Lhga;

    if-eqz v0, :cond_0

    check-cast p3, Lhga;

    invoke-static {p3, p2}, Lfreemarker/core/q0;->g(Lhga;Lfreemarker/core/t0;)Ljava/lang/Number;

    move-result-object p2

    check-cast p5, Lhga;

    invoke-static {p5, p4}, Lfreemarker/core/q0;->g(Lhga;Lfreemarker/core/t0;)Ljava/lang/Number;

    move-result-object p3

    invoke-static {p0, p1, p2, p3}, Lfreemarker/core/a;->Y(Lfreemarker/core/Environment;Lfreemarker/core/t1;Ljava/lang/Number;Ljava/lang/Number;)Lzfa;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of p1, p3, Lnga;

    if-eqz p1, :cond_1

    instance-of p1, p5, Lnga;

    if-eqz p1, :cond_1

    new-instance p0, Lfreemarker/core/a$c;

    check-cast p3, Lnga;

    check-cast p5, Lnga;

    invoke-direct {p0, p3, p5}, Lfreemarker/core/a$c;-><init>(Lnga;Lnga;)V

    return-object p0

    :cond_1
    :try_start_0
    invoke-static {p3, p2, p0}, Lfreemarker/core/t0;->H(Lzfa;Lfreemarker/core/t0;Lfreemarker/core/Environment;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lfreemarker/core/NonStringException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p2, "null"

    if-nez p1, :cond_2

    move-object p1, p2

    :cond_2
    :try_start_1
    invoke-static {p5, p4, p0}, Lfreemarker/core/t0;->H(Lzfa;Lfreemarker/core/t0;Lfreemarker/core/Environment;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    move-object p2, p0

    :goto_0
    new-instance p0, Lfreemarker/template/SimpleScalar;

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lfreemarker/core/NonStringException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    instance-of p1, p3, Lofa;

    if-eqz p1, :cond_7

    instance-of p1, p5, Lofa;

    if-eqz p1, :cond_7

    instance-of p0, p3, Lpfa;

    if-eqz p0, :cond_6

    instance-of p0, p5, Lpfa;

    if-eqz p0, :cond_6

    check-cast p3, Lpfa;

    check-cast p5, Lpfa;

    invoke-interface {p3}, Lpfa;->size()I

    move-result p0

    if-nez p0, :cond_4

    return-object p5

    :cond_4
    invoke-interface {p5}, Lpfa;->size()I

    move-result p0

    if-nez p0, :cond_5

    return-object p3

    :cond_5
    new-instance p0, Lfreemarker/core/a$b;

    invoke-direct {p0, p3, p5}, Lfreemarker/core/a$b;-><init>(Lpfa;Lpfa;)V

    return-object p0

    :cond_6
    new-instance p0, Lfreemarker/core/a$a;

    check-cast p3, Lofa;

    check-cast p5, Lofa;

    invoke-direct {p0, p3, p5}, Lfreemarker/core/a$a;-><init>(Lofa;Lofa;)V

    return-object p0

    :cond_7
    throw p0
.end method

.method public static Y(Lfreemarker/core/Environment;Lfreemarker/core/t1;Ljava/lang/Number;Ljava/lang/Number;)Lzfa;
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lfreemarker/core/Configurable;->f()Lfreemarker/core/c;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lfreemarker/core/t1;->y()Lfreemarker/template/Template;

    move-result-object p0

    invoke-virtual {p0}, Lfreemarker/core/Configurable;->f()Lfreemarker/core/c;

    move-result-object p0

    :goto_0
    new-instance p1, Lfreemarker/template/SimpleNumber;

    invoke-virtual {p0, p2, p3}, Lfreemarker/core/c;->c(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p0

    invoke-direct {p1, p0}, Lfreemarker/template/SimpleNumber;-><init>(Ljava/lang/Number;)V

    return-object p1
.end method


# virtual methods
.method public F(Lfreemarker/core/Environment;)Lzfa;
    .locals 6

    iget-object v2, p0, Lfreemarker/core/a;->h:Lfreemarker/core/t0;

    invoke-virtual {v2, p1}, Lfreemarker/core/t0;->K(Lfreemarker/core/Environment;)Lzfa;

    move-result-object v3

    iget-object v4, p0, Lfreemarker/core/a;->i:Lfreemarker/core/t0;

    invoke-virtual {v4, p1}, Lfreemarker/core/t0;->K(Lfreemarker/core/Environment;)Lzfa;

    move-result-object v5

    move-object v0, p1

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lfreemarker/core/a;->X(Lfreemarker/core/Environment;Lfreemarker/core/t1;Lfreemarker/core/t0;Lzfa;Lfreemarker/core/t0;Lzfa;)Lzfa;

    move-result-object p0

    return-object p0
.end method

.method public J(Ljava/lang/String;Lfreemarker/core/t0;Lfreemarker/core/t0$a;)Lfreemarker/core/t0;
    .locals 2

    new-instance v0, Lfreemarker/core/a;

    iget-object v1, p0, Lfreemarker/core/a;->h:Lfreemarker/core/t0;

    invoke-virtual {v1, p1, p2, p3}, Lfreemarker/core/t0;->I(Ljava/lang/String;Lfreemarker/core/t0;Lfreemarker/core/t0$a;)Lfreemarker/core/t0;

    move-result-object v1

    iget-object p0, p0, Lfreemarker/core/a;->i:Lfreemarker/core/t0;

    invoke-virtual {p0, p1, p2, p3}, Lfreemarker/core/t0;->I(Ljava/lang/String;Lfreemarker/core/t0;Lfreemarker/core/t0$a;)Lfreemarker/core/t0;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lfreemarker/core/a;-><init>(Lfreemarker/core/t0;Lfreemarker/core/t0;)V

    return-object v0
.end method

.method public T()Z
    .locals 1

    iget-object v0, p0, Lfreemarker/core/t0;->g:Lzfa;

    if-nez v0, :cond_1

    iget-object v0, p0, Lfreemarker/core/a;->h:Lfreemarker/core/t0;

    invoke-virtual {v0}, Lfreemarker/core/t0;->T()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lfreemarker/core/a;->i:Lfreemarker/core/t0;

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

    iget-object v1, p0, Lfreemarker/core/a;->h:Lfreemarker/core/t0;

    invoke-virtual {v1}, Lfreemarker/core/t1;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " + "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lfreemarker/core/a;->i:Lfreemarker/core/t0;

    invoke-virtual {p0}, Lfreemarker/core/t1;->o()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public r()Ljava/lang/String;
    .locals 0

    const-string p0, "+"

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

    iget-object p0, p0, Lfreemarker/core/a;->h:Lfreemarker/core/t0;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lfreemarker/core/a;->i:Lfreemarker/core/t0;

    :goto_0
    return-object p0
.end method
