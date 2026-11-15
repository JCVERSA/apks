.class public abstract Lfreemarker/core/b0$a;
.super Ljl0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljl0;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lyl0;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lfreemarker/core/b0$a;-><init>()V

    return-void
.end method


# virtual methods
.method public h0(Ljava/lang/Number;Lzfa;)Lzfa;
    .locals 4

    :try_start_0
    invoke-static {p1}, La47;->h(Ljava/lang/Number;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p1, :cond_0

    new-instance p2, Lfreemarker/template/SimpleScalar;

    invoke-virtual {p0, p1}, Lfreemarker/core/b0$a;->i0(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    return-object p2

    :cond_0
    new-instance p2, Lfreemarker/core/_TemplateModelException;

    iget-object v0, p0, Lfreemarker/core/j;->h:Lfreemarker/core/t0;

    iget-object p0, p0, Lfreemarker/core/j;->i:Ljava/lang/String;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    const-string p1, "."

    const-string v2, "The left side operand of to ?"

    const-string v3, " must be at least 1, but was "

    filled-new-array {v2, p0, v3, v1, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-direct {p2, v0, p0}, Lfreemarker/core/_TemplateModelException;-><init>(Lfreemarker/core/t0;[Ljava/lang/Object;)V

    throw p2

    :catch_0
    move-exception p1

    new-instance p2, Lfreemarker/core/_TemplateModelException;

    iget-object v0, p0, Lfreemarker/core/j;->h:Lfreemarker/core/t0;

    iget-object p0, p0, Lfreemarker/core/j;->i:Ljava/lang/String;

    const-string v1, ": "

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v2, "The left side operand value isn\'t compatible with ?"

    filled-new-array {v2, p0, v1, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-direct {p2, v0, p0}, Lfreemarker/core/_TemplateModelException;-><init>(Lfreemarker/core/t0;[Ljava/lang/Object;)V

    throw p2
.end method

.method public abstract i0(I)Ljava/lang/String;
.end method
