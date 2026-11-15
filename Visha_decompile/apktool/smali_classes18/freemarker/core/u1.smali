.class public final Lfreemarker/core/u1;
.super Lfreemarker/core/t0;
.source "SourceFile"


# static fields
.field public static final l:Ljava/lang/Integer;


# instance fields
.field public final h:I

.field public final i:I

.field public final j:Lfreemarker/core/t0;

.field public final k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Integer;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lfreemarker/core/u1;->l:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Lfreemarker/core/t0;Z)V
    .locals 1

    invoke-direct {p0}, Lfreemarker/core/t0;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lfreemarker/core/u1;->h:I

    const/4 v0, 0x1

    iput v0, p0, Lfreemarker/core/u1;->i:I

    iput-object p1, p0, Lfreemarker/core/u1;->j:Lfreemarker/core/t0;

    iput-boolean p2, p0, Lfreemarker/core/u1;->k:Z

    return-void
.end method


# virtual methods
.method public F(Lfreemarker/core/Environment;)Lzfa;
    .locals 2

    iget-object v0, p0, Lfreemarker/core/u1;->j:Lfreemarker/core/t0;

    invoke-virtual {v0, p1}, Lfreemarker/core/t0;->K(Lfreemarker/core/Environment;)Lzfa;

    move-result-object v0

    :try_start_0
    check-cast v0, Lhga;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    iget-boolean v1, p0, Lfreemarker/core/u1;->k:Z

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lfreemarker/core/u1;->j:Lfreemarker/core/t0;

    invoke-virtual {p0, v0, p1}, Lfreemarker/core/t0;->G(Lzfa;Lfreemarker/core/Environment;)V

    invoke-interface {v0}, Lhga;->getAsNumber()Ljava/lang/Number;

    move-result-object p0

    sget-object p1, Lfreemarker/core/c;->e:Lfreemarker/core/c$b;

    sget-object v0, Lfreemarker/core/u1;->l:Ljava/lang/Integer;

    invoke-virtual {p1, v0, p0}, Lfreemarker/core/c$b;->h(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p0

    new-instance p1, Lfreemarker/template/SimpleNumber;

    invoke-direct {p1, p0}, Lfreemarker/template/SimpleNumber;-><init>(Ljava/lang/Number;)V

    return-object p1

    :catch_0
    new-instance v1, Lfreemarker/core/NonNumericalException;

    iget-object p0, p0, Lfreemarker/core/u1;->j:Lfreemarker/core/t0;

    invoke-direct {v1, p0, v0, p1}, Lfreemarker/core/NonNumericalException;-><init>(Lfreemarker/core/t0;Lzfa;Lfreemarker/core/Environment;)V

    throw v1
.end method

.method public J(Ljava/lang/String;Lfreemarker/core/t0;Lfreemarker/core/t0$a;)Lfreemarker/core/t0;
    .locals 2

    new-instance v0, Lfreemarker/core/u1;

    iget-object v1, p0, Lfreemarker/core/u1;->j:Lfreemarker/core/t0;

    invoke-virtual {v1, p1, p2, p3}, Lfreemarker/core/t0;->I(Ljava/lang/String;Lfreemarker/core/t0;Lfreemarker/core/t0$a;)Lfreemarker/core/t0;

    move-result-object p1

    iget-boolean p0, p0, Lfreemarker/core/u1;->k:Z

    invoke-direct {v0, p1, p0}, Lfreemarker/core/u1;-><init>(Lfreemarker/core/t0;Z)V

    return-object v0
.end method

.method public T()Z
    .locals 0

    iget-object p0, p0, Lfreemarker/core/u1;->j:Lfreemarker/core/t0;

    invoke-virtual {p0}, Lfreemarker/core/t0;->T()Z

    move-result p0

    return p0
.end method

.method public o()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lfreemarker/core/u1;->k:Z

    if-eqz v0, :cond_0

    const-string v0, "-"

    goto :goto_0

    :cond_0
    const-string v0, "+"

    :goto_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lfreemarker/core/u1;->j:Lfreemarker/core/t0;

    invoke-virtual {p0}, Lfreemarker/core/t1;->o()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public r()Ljava/lang/String;
    .locals 0

    iget-boolean p0, p0, Lfreemarker/core/u1;->k:Z

    if-eqz p0, :cond_0

    const-string p0, "-..."

    goto :goto_0

    :cond_0
    const-string p0, "+..."

    :goto_0
    return-object p0
.end method

.method public s()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public t(I)Ljw7;
    .locals 0

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    sget-object p0, Ljw7;->q:Ljw7;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    :cond_1
    sget-object p0, Ljw7;->d:Ljw7;

    return-object p0
.end method

.method public u(I)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    new-instance p1, Ljava/lang/Integer;

    iget-boolean p0, p0, Lfreemarker/core/u1;->k:Z

    xor-int/2addr p0, v0

    invoke-direct {p1, p0}, Ljava/lang/Integer;-><init>(I)V

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    :cond_1
    iget-object p0, p0, Lfreemarker/core/u1;->j:Lfreemarker/core/t0;

    return-object p0
.end method
