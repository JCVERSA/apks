.class public final Lfreemarker/core/k1;
.super Lfreemarker/core/t0;
.source "SourceFile"

# interfaces
.implements Lhga;


# instance fields
.field public final h:Ljava/lang/Number;


# direct methods
.method public constructor <init>(Ljava/lang/Number;)V
    .locals 0

    invoke-direct {p0}, Lfreemarker/core/t0;-><init>()V

    iput-object p1, p0, Lfreemarker/core/k1;->h:Ljava/lang/Number;

    return-void
.end method


# virtual methods
.method public F(Lfreemarker/core/Environment;)Lzfa;
    .locals 0

    new-instance p1, Lfreemarker/template/SimpleNumber;

    iget-object p0, p0, Lfreemarker/core/k1;->h:Ljava/lang/Number;

    invoke-direct {p1, p0}, Lfreemarker/template/SimpleNumber;-><init>(Ljava/lang/Number;)V

    return-object p1
.end method

.method public J(Ljava/lang/String;Lfreemarker/core/t0;Lfreemarker/core/t0$a;)Lfreemarker/core/t0;
    .locals 0

    new-instance p1, Lfreemarker/core/k1;

    iget-object p0, p0, Lfreemarker/core/k1;->h:Ljava/lang/Number;

    invoke-direct {p1, p0}, Lfreemarker/core/k1;-><init>(Ljava/lang/Number;)V

    return-object p1
.end method

.method public L(Lfreemarker/core/Environment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lfreemarker/core/k1;->h:Ljava/lang/Number;

    invoke-virtual {p1, p0}, Lfreemarker/core/Environment;->t0(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public T()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getAsNumber()Ljava/lang/Number;
    .locals 0

    iget-object p0, p0, Lfreemarker/core/k1;->h:Ljava/lang/Number;

    return-object p0
.end method

.method public o()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lfreemarker/core/k1;->h:Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public r()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lfreemarker/core/k1;->o()Ljava/lang/String;

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
