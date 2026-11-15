.class public final Lfreemarker/core/x0;
.super Lfreemarker/core/t0;
.source "SourceFile"


# instance fields
.field public final h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lfreemarker/core/t0;-><init>()V

    iput-object p1, p0, Lfreemarker/core/x0;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public F(Lfreemarker/core/Environment;)Lzfa;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lfreemarker/core/x0;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lfreemarker/core/Environment;->m1(Ljava/lang/String;)Lzfa;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    if-nez p1, :cond_0

    new-instance p1, Lfreemarker/core/_MiscTemplateException;

    const-string v0, "Variables are not available (certainly you are in a parse-time executed directive). The name of the variable you tried to read: "

    iget-object p0, p0, Lfreemarker/core/x0;->h:Ljava/lang/String;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-direct {p1, p0}, Lfreemarker/core/_MiscTemplateException;-><init>([Ljava/lang/Object;)V

    throw p1

    :cond_0
    throw v0
.end method

.method public J(Ljava/lang/String;Lfreemarker/core/t0;Lfreemarker/core/t0$a;)Lfreemarker/core/t0;
    .locals 1

    iget-object v0, p0, Lfreemarker/core/x0;->h:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p0, p3, Lfreemarker/core/t0$a;->a:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    invoke-virtual {p2, p0, p0, p3}, Lfreemarker/core/t0;->I(Ljava/lang/String;Lfreemarker/core/t0;Lfreemarker/core/t0$a;)Lfreemarker/core/t0;

    move-result-object p0

    invoke-virtual {p0, p2}, Lfreemarker/core/t1;->l(Lfreemarker/core/t1;)Lfreemarker/core/t1;

    return-object p0

    :cond_0
    const/4 p0, 0x1

    iput-boolean p0, p3, Lfreemarker/core/t0$a;->a:Z

    return-object p2

    :cond_1
    new-instance p1, Lfreemarker/core/x0;

    iget-object p0, p0, Lfreemarker/core/x0;->h:Ljava/lang/String;

    invoke-direct {p1, p0}, Lfreemarker/core/x0;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public T()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public X()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lfreemarker/core/x0;->h:Ljava/lang/String;

    return-object p0
.end method

.method public o()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lfreemarker/core/x0;->h:Ljava/lang/String;

    invoke-static {p0}, Ld0d;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public r()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lfreemarker/core/x0;->o()Ljava/lang/String;

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

.method public u(I)Ljava/lang/Object;
    .locals 0

    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method
