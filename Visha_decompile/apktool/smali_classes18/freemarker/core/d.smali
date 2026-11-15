.class public final Lfreemarker/core/d;
.super Lfreemarker/core/t0;
.source "SourceFile"


# static fields
.field public static final k:[C


# instance fields
.field public final h:Lfreemarker/core/t0;

.field public final i:Lfreemarker/core/t0;

.field public final j:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lfreemarker/core/d;->k:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x2ds
        0x2as
        0x2fs
        0x25s
    .end array-data
.end method

.method public constructor <init>(Lfreemarker/core/t0;Lfreemarker/core/t0;I)V
    .locals 0

    invoke-direct {p0}, Lfreemarker/core/t0;-><init>()V

    iput-object p1, p0, Lfreemarker/core/d;->h:Lfreemarker/core/t0;

    iput-object p2, p0, Lfreemarker/core/d;->i:Lfreemarker/core/t0;

    iput p3, p0, Lfreemarker/core/d;->j:I

    return-void
.end method

.method public static X(Lfreemarker/core/Environment;Lfreemarker/core/t1;Ljava/lang/Number;ILjava/lang/Number;)Lzfa;
    .locals 1

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
    if-eqz p3, :cond_5

    const/4 v0, 0x1

    if-eq p3, v0, :cond_4

    const/4 v0, 0x2

    if-eq p3, v0, :cond_3

    const/4 v0, 0x3

    if-eq p3, v0, :cond_2

    instance-of p0, p1, Lfreemarker/core/t0;

    const-string p2, "Unknown operation: "

    if-eqz p0, :cond_1

    new-instance p0, Lfreemarker/core/_MiscTemplateException;

    check-cast p1, Lfreemarker/core/t0;

    new-instance p4, Ljava/lang/Integer;

    invoke-direct {p4, p3}, Ljava/lang/Integer;-><init>(I)V

    filled-new-array {p2, p4}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/t0;[Ljava/lang/Object;)V

    throw p0

    :cond_1
    new-instance p0, Lfreemarker/core/_MiscTemplateException;

    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, p3}, Ljava/lang/Integer;-><init>(I)V

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lfreemarker/core/_MiscTemplateException;-><init>([Ljava/lang/Object;)V

    throw p0

    :cond_2
    new-instance p1, Lfreemarker/template/SimpleNumber;

    invoke-virtual {p0, p2, p4}, Lfreemarker/core/c;->g(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p0

    invoke-direct {p1, p0}, Lfreemarker/template/SimpleNumber;-><init>(Ljava/lang/Number;)V

    return-object p1

    :cond_3
    new-instance p1, Lfreemarker/template/SimpleNumber;

    invoke-virtual {p0, p2, p4}, Lfreemarker/core/c;->f(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p0

    invoke-direct {p1, p0}, Lfreemarker/template/SimpleNumber;-><init>(Ljava/lang/Number;)V

    return-object p1

    :cond_4
    new-instance p1, Lfreemarker/template/SimpleNumber;

    invoke-virtual {p0, p2, p4}, Lfreemarker/core/c;->h(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p0

    invoke-direct {p1, p0}, Lfreemarker/template/SimpleNumber;-><init>(Ljava/lang/Number;)V

    return-object p1

    :cond_5
    new-instance p1, Lfreemarker/template/SimpleNumber;

    invoke-virtual {p0, p2, p4}, Lfreemarker/core/c;->i(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p0

    invoke-direct {p1, p0}, Lfreemarker/template/SimpleNumber;-><init>(Ljava/lang/Number;)V

    return-object p1
.end method

.method public static Y(I)C
    .locals 1

    sget-object v0, Lfreemarker/core/d;->k:[C

    aget-char p0, v0, p0

    return p0
.end method


# virtual methods
.method public F(Lfreemarker/core/Environment;)Lzfa;
    .locals 3

    iget-object v0, p0, Lfreemarker/core/d;->h:Lfreemarker/core/t0;

    invoke-virtual {v0, p1}, Lfreemarker/core/t0;->R(Lfreemarker/core/Environment;)Ljava/lang/Number;

    move-result-object v0

    iget v1, p0, Lfreemarker/core/d;->j:I

    iget-object v2, p0, Lfreemarker/core/d;->i:Lfreemarker/core/t0;

    invoke-virtual {v2, p1}, Lfreemarker/core/t0;->R(Lfreemarker/core/Environment;)Ljava/lang/Number;

    move-result-object v2

    invoke-static {p1, p0, v0, v1, v2}, Lfreemarker/core/d;->X(Lfreemarker/core/Environment;Lfreemarker/core/t1;Ljava/lang/Number;ILjava/lang/Number;)Lzfa;

    move-result-object p0

    return-object p0
.end method

.method public J(Ljava/lang/String;Lfreemarker/core/t0;Lfreemarker/core/t0$a;)Lfreemarker/core/t0;
    .locals 3

    new-instance v0, Lfreemarker/core/d;

    iget-object v1, p0, Lfreemarker/core/d;->h:Lfreemarker/core/t0;

    invoke-virtual {v1, p1, p2, p3}, Lfreemarker/core/t0;->I(Ljava/lang/String;Lfreemarker/core/t0;Lfreemarker/core/t0$a;)Lfreemarker/core/t0;

    move-result-object v1

    iget-object v2, p0, Lfreemarker/core/d;->i:Lfreemarker/core/t0;

    invoke-virtual {v2, p1, p2, p3}, Lfreemarker/core/t0;->I(Ljava/lang/String;Lfreemarker/core/t0;Lfreemarker/core/t0$a;)Lfreemarker/core/t0;

    move-result-object p1

    iget p0, p0, Lfreemarker/core/d;->j:I

    invoke-direct {v0, v1, p1, p0}, Lfreemarker/core/d;-><init>(Lfreemarker/core/t0;Lfreemarker/core/t0;I)V

    return-object v0
.end method

.method public T()Z
    .locals 1

    iget-object v0, p0, Lfreemarker/core/t0;->g:Lzfa;

    if-nez v0, :cond_1

    iget-object v0, p0, Lfreemarker/core/d;->h:Lfreemarker/core/t0;

    invoke-virtual {v0}, Lfreemarker/core/t0;->T()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lfreemarker/core/d;->i:Lfreemarker/core/t0;

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
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lfreemarker/core/d;->h:Lfreemarker/core/t0;

    invoke-virtual {v1}, Lfreemarker/core/t1;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v2, p0, Lfreemarker/core/d;->j:I

    invoke-static {v2}, Lfreemarker/core/d;->Y(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lfreemarker/core/d;->i:Lfreemarker/core/t0;

    invoke-virtual {p0}, Lfreemarker/core/t1;->o()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public r()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lfreemarker/core/d;->j:I

    invoke-static {p0}, Lfreemarker/core/d;->Y(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public s()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public t(I)Ljw7;
    .locals 0

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

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

    :cond_2
    sget-object p0, Ljw7;->c:Ljw7;

    return-object p0
.end method

.method public u(I)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    new-instance p1, Ljava/lang/Integer;

    iget p0, p0, Lfreemarker/core/d;->j:I

    invoke-direct {p1, p0}, Ljava/lang/Integer;-><init>(I)V

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    :cond_1
    iget-object p0, p0, Lfreemarker/core/d;->i:Lfreemarker/core/t0;

    return-object p0

    :cond_2
    iget-object p0, p0, Lfreemarker/core/d;->h:Lfreemarker/core/t0;

    return-object p0
.end method
