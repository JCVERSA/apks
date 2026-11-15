.class public abstract Lkotlin/jvm/internal/FunctionImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx74;
.implements Ljava/io/Serializable;
.implements Lc74;
.implements Le74;
.implements Ls74;
.implements Lu74;
.implements Lw74;
.implements Ly74;
.implements Lz74;
.implements La84;
.implements Lb84;
.implements Lc84;
.implements Ld74;
.implements Lf74;
.implements Lg74;
.implements Lh74;
.implements Li74;
.implements Lj74;
.implements Lk74;
.implements Ll74;
.implements Lm74;
.implements Ln74;
.implements Lp74;
.implements Lq74;
.implements Lr74;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkArity(I)V
    .locals 1

    invoke-virtual {p0}, Lkotlin/jvm/internal/FunctionImpl;->getArity()I

    move-result v0

    if-eq v0, p1, :cond_0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/FunctionImpl;->throwWrongArity(I)V

    :cond_0
    return-void
.end method

.method private throwWrongArity(I)V
    .locals 3

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong function arity, expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", actual: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlin/jvm/internal/FunctionImpl;->getArity()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract getArity()I
.end method

.method public invoke()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/FunctionImpl;->checkArity(I)V

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lkotlin/jvm/internal/FunctionImpl;->invokeVararg([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/FunctionImpl;->checkArity(I)V

    .line 4
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlin/jvm/internal/FunctionImpl;->invokeVararg([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x2

    .line 5
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/FunctionImpl;->checkArity(I)V

    .line 6
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlin/jvm/internal/FunctionImpl;->invokeVararg([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x3

    .line 7
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/FunctionImpl;->checkArity(I)V

    .line 8
    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlin/jvm/internal/FunctionImpl;->invokeVararg([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x4

    .line 9
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/FunctionImpl;->checkArity(I)V

    .line 10
    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlin/jvm/internal/FunctionImpl;->invokeVararg([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x5

    .line 11
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/FunctionImpl;->checkArity(I)V

    .line 12
    filled-new-array {p1, p2, p3, p4, p5}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlin/jvm/internal/FunctionImpl;->invokeVararg([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x6

    .line 13
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/FunctionImpl;->checkArity(I)V

    .line 14
    filled-new-array/range {p1 .. p6}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlin/jvm/internal/FunctionImpl;->invokeVararg([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x7

    .line 15
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/FunctionImpl;->checkArity(I)V

    .line 16
    filled-new-array/range {p1 .. p7}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlin/jvm/internal/FunctionImpl;->invokeVararg([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/16 v0, 0x8

    .line 17
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/FunctionImpl;->checkArity(I)V

    .line 18
    filled-new-array/range {p1 .. p8}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlin/jvm/internal/FunctionImpl;->invokeVararg([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/16 v0, 0x9

    .line 19
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/FunctionImpl;->checkArity(I)V

    .line 20
    filled-new-array/range {p1 .. p9}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlin/jvm/internal/FunctionImpl;->invokeVararg([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/16 v0, 0xa

    .line 21
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/FunctionImpl;->checkArity(I)V

    .line 22
    filled-new-array/range {p1 .. p10}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlin/jvm/internal/FunctionImpl;->invokeVararg([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/16 v0, 0xb

    .line 23
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/FunctionImpl;->checkArity(I)V

    .line 24
    filled-new-array/range {p1 .. p11}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlin/jvm/internal/FunctionImpl;->invokeVararg([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/16 v0, 0xc

    .line 25
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/FunctionImpl;->checkArity(I)V

    .line 26
    filled-new-array/range {p1 .. p12}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlin/jvm/internal/FunctionImpl;->invokeVararg([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/16 v0, 0xd

    .line 27
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/FunctionImpl;->checkArity(I)V

    .line 28
    filled-new-array/range {p1 .. p13}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlin/jvm/internal/FunctionImpl;->invokeVararg([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/16 v0, 0xe

    .line 29
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/FunctionImpl;->checkArity(I)V

    .line 30
    filled-new-array/range {p1 .. p14}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlin/jvm/internal/FunctionImpl;->invokeVararg([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    move-object v0, p0

    const/16 v1, 0xf

    .line 31
    invoke-direct {p0, v1}, Lkotlin/jvm/internal/FunctionImpl;->checkArity(I)V

    .line 32
    filled-new-array/range {p1 .. p15}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lkotlin/jvm/internal/FunctionImpl;->invokeVararg([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    move-object v0, p0

    const/16 v1, 0x10

    .line 33
    invoke-direct {p0, v1}, Lkotlin/jvm/internal/FunctionImpl;->checkArity(I)V

    .line 34
    filled-new-array/range {p1 .. p16}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lkotlin/jvm/internal/FunctionImpl;->invokeVararg([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    move-object v0, p0

    const/16 v1, 0x11

    .line 35
    invoke-direct {p0, v1}, Lkotlin/jvm/internal/FunctionImpl;->checkArity(I)V

    .line 36
    filled-new-array/range {p1 .. p17}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lkotlin/jvm/internal/FunctionImpl;->invokeVararg([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    move-object v0, p0

    const/16 v1, 0x12

    .line 37
    invoke-direct {p0, v1}, Lkotlin/jvm/internal/FunctionImpl;->checkArity(I)V

    .line 38
    filled-new-array/range {p1 .. p18}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lkotlin/jvm/internal/FunctionImpl;->invokeVararg([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    move-object v0, p0

    const/16 v1, 0x13

    .line 39
    invoke-direct {p0, v1}, Lkotlin/jvm/internal/FunctionImpl;->checkArity(I)V

    .line 40
    filled-new-array/range {p1 .. p19}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lkotlin/jvm/internal/FunctionImpl;->invokeVararg([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    move-object v0, p0

    const/16 v1, 0x14

    .line 41
    invoke-direct {p0, v1}, Lkotlin/jvm/internal/FunctionImpl;->checkArity(I)V

    .line 42
    filled-new-array/range {p1 .. p20}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lkotlin/jvm/internal/FunctionImpl;->invokeVararg([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    move-object v0, p0

    const/16 v1, 0x15

    .line 43
    invoke-direct {p0, v1}, Lkotlin/jvm/internal/FunctionImpl;->checkArity(I)V

    .line 44
    filled-new-array/range {p1 .. p21}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lkotlin/jvm/internal/FunctionImpl;->invokeVararg([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    move-object v0, p0

    const/16 v1, 0x16

    .line 45
    invoke-direct {p0, v1}, Lkotlin/jvm/internal/FunctionImpl;->checkArity(I)V

    .line 46
    filled-new-array/range {p1 .. p22}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lkotlin/jvm/internal/FunctionImpl;->invokeVararg([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public varargs invokeVararg([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
