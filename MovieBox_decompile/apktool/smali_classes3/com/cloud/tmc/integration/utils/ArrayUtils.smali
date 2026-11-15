.class public Lcom/cloud/tmc/integration/utils/ArrayUtils;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/integration/utils/ArrayUtils$Closure;
    }
.end annotation


# static fields
.field public static final INDEX_NOT_FOUND:I = -0x1


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 5
    .line 6
    const-string v1, "u can\'t instantiate me..."

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    throw v0
.end method

.method public static add([BB)[B
    .locals 1
    .param p0    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 4
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->realAddOne(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public static add([BIB)[B
    .locals 1
    .param p0    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 45
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, p2, v0}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->realAdd(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public static add([BI[B)[B
    .locals 1
    .param p0    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 27
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, p2, v0}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->realAddArr(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 28
    :cond_0
    check-cast p0, [B

    return-object p0
.end method

.method public static add([B[B)[B
    .locals 0
    .param p0    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 14
    invoke-static {p0, p1}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->realAddArr(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public static add([CC)[C
    .locals 1
    .param p0    # [C
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 5
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->realAddOne(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [C

    return-object p0
.end method

.method public static add([CIC)[C
    .locals 1
    .param p0    # [C
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 44
    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, p2, v0}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->realAdd(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [C

    return-object p0
.end method

.method public static add([CI[C)[C
    .locals 1
    .param p0    # [C
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # [C
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 25
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, p2, v0}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->realAddArr(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 26
    :cond_0
    check-cast p0, [C

    return-object p0
.end method

.method public static add([C[C)[C
    .locals 0
    .param p0    # [C
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # [C
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 13
    invoke-static {p0, p1}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->realAddArr(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [C

    return-object p0
.end method

.method public static add([DD)[D
    .locals 0
    .param p0    # [D
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 6
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    sget-object p2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->realAddOne(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [D

    return-object p0
.end method

.method public static add([DID)[D
    .locals 0
    .param p0    # [D
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 50
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    sget-object p3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, p2, p3}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->realAdd(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [D

    return-object p0
.end method

.method public static add([DI[D)[D
    .locals 1
    .param p0    # [D
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # [D
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 37
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, p2, v0}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->realAddArr(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 38
    :cond_0
    check-cast p0, [D

    return-object p0
.end method

.method public static add([D[D)[D
    .locals 0
    .param p0    # [D
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # [D
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 19
    invoke-static {p0, p1}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->realAddArr(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [D

    return-object p0
.end method

.method public static add([FF)[F
    .locals 1
    .param p0    # [F
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 7
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->realAddOne(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F

    return-object p0
.end method

.method public static add([FIF)[F
    .locals 1
    .param p0    # [F
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 49
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, p2, v0}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->realAdd(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F

    return-object p0
.end method

.method public static add([FI[F)[F
    .locals 1
    .param p0    # [F
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # [F
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 35
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, p2, v0}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->realAddArr(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 36
    :cond_0
    check-cast p0, [F

    return-object p0
.end method

.method public static add([F[F)[F
    .locals 0
    .param p0    # [F
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # [F
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 18
    invoke-static {p0, p1}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->realAddArr(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F

    return-object p0
.end method

.method public static add([II)[I
    .locals 1
    .param p0    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->realAddOne(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0
.end method

.method public static add([III)[I
    .locals 1
    .param p0    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 47
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, p2, v0}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->realAdd(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0
.end method

.method public static add([II[I)[I
    .locals 1
    .param p0    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 31
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, p2, v0}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->realAddArr(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 32
    :cond_0
    check-cast p0, [I

    return-object p0
.end method

.method public static add([I[I)[I
    .locals 0
    .param p0    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 16
    invoke-static {p0, p1}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->realAddArr(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0
.end method

.method public static add([JIJ)[J
    .locals 0
    .param p0    # [J
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 48
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    sget-object p3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, p2, p3}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->realAdd(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [J

    return-object p0
.end method

.method public static add([JI[J)[J
    .locals 1
    .param p0    # [J
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # [J
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 33
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, p2, v0}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->realAddArr(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 34
    :cond_0
    check-cast p0, [J

    return-object p0
.end method

.method public static add([JJ)[J
    .locals 0
    .param p0    # [J
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 9
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    sget-object p2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->realAddOne(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [J

    return-object p0
.end method

.method public static add([J[J)[J
    .locals 0
    .param p0    # [J
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # [J
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 17
    invoke-static {p0, p1}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->realAddArr(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [J

    return-object p0
.end method

.method public static add([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .param p0    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;ITT;)[TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 40
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 41
    :goto_0
    invoke-static {p0, p1, p2, v0}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->realAdd(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    return-object p0

    :cond_1
    const/4 p0, 0x1

    .line 42
    new-array p0, p0, [Ljava/lang/Object;

    const/4 p1, 0x0

    const/4 p2, 0x0

    aput-object p1, p0, p2

    return-object p0
.end method

.method public static add([Ljava/lang/Object;I[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .param p0    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I[TT;)[TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 21
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 22
    :goto_0
    invoke-static {p0, p1, p2, v0}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->realAddArr(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static add([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .param p0    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)[TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-class v0, Ljava/lang/Object;

    .line 2
    :goto_0
    invoke-static {p0, p1, v0}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->realAddOne(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    return-object p0
.end method

.method public static add([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0
    .param p0    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    .line 11
    invoke-static {p0, p1}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->realAddArr(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    return-object p0
.end method

.method public static add([SIS)[S
    .locals 1
    .param p0    # [S
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 46
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, p2, v0}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->realAdd(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [S

    return-object p0
.end method

.method public static add([SI[S)[S
    .locals 1
    .param p0    # [S
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # [S
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 29
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, p2, v0}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->realAddArr(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 30
    :cond_0
    check-cast p0, [S

    return-object p0
.end method

.method public static add([SS)[S
    .locals 1
    .param p0    # [S
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 10
    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->realAddOne(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [S

    return-object p0
.end method

.method public static add([S[S)[S
    .locals 0
    .param p0    # [S
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # [S
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 15
    invoke-static {p0, p1}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->realAddArr(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [S

    return-object p0
.end method

.method public static add([ZIZ)[Z
    .locals 1
    .param p0    # [Z
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 43
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, p2, v0}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->realAdd(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Z

    return-object p0
.end method

.method public static add([ZI[Z)[Z
    .locals 1
    .param p0    # [Z
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # [Z
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 23
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, p2, v0}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->realAddArr(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 24
    :cond_0
    check-cast p0, [Z

    return-object p0
.end method

.method public static add([ZZ)[Z
    .locals 1
    .param p0    # [Z
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->realAddOne(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Z

    return-object p0
.end method

.method public static add([Z[Z)[Z
    .locals 0
    .param p0    # [Z
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # [Z
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 12
    invoke-static {p0, p1}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->realAddArr(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Z

    return-object p0
.end method

.method public static varargs asArrayList([Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .param p0    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p0, :cond_1

    .line 7
    .line 8
    array-length v1, p0

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 17
    .line 18
    .line 19
    :cond_1
    :goto_0
    return-object v0
.end method

.method public static varargs asLinkedList([Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .param p0    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p0, :cond_1

    .line 7
    .line 8
    array-length v1, p0

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 17
    .line 18
    .line 19
    :cond_1
    :goto_0
    return-object v0
.end method

.method public static varargs asList([Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .param p0    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_1
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public static varargs asUnmodifiableList([Ljava/lang/Object;)Ljava/util/List;
    .locals 0
    .param p0    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static contains([BB)Z
    .locals 0
    .param p0    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 6
    invoke-static {p0, p1}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->indexOf([BB)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static contains([CC)Z
    .locals 0
    .param p0    # [C
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    invoke-static {p0, p1}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->indexOf([CC)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static contains([DD)Z
    .locals 0
    .param p0    # [D
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 7
    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->indexOf([DD)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static contains([DDD)Z
    .locals 6
    .param p0    # [D
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v3, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v4, p3

    .line 8
    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->indexOf([DDID)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static contains([FF)Z
    .locals 0
    .param p0    # [F
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 9
    invoke-static {p0, p1}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->indexOf([FF)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static contains([II)Z
    .locals 0
    .param p0    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-static {p0, p1}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->indexOf([II)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static contains([JJ)Z
    .locals 0
    .param p0    # [J
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->indexOf([JJ)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .param p0    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static contains([SS)Z
    .locals 0
    .param p0    # [S
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    invoke-static {p0, p1}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->indexOf([SS)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static contains([ZZ)Z
    .locals 0
    .param p0    # [Z
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 10
    invoke-static {p0, p1}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->indexOf([ZZ)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static copy([B)[B
    .locals 2
    .param p0    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 6
    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->subArray([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static copy([C)[C
    .locals 2
    .param p0    # [C
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 5
    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->subArray([CII)[C

    move-result-object p0

    return-object p0
.end method

.method public static copy([D)[D
    .locals 2
    .param p0    # [D
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 7
    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->subArray([DII)[D

    move-result-object p0

    return-object p0
.end method

.method public static copy([F)[F
    .locals 2
    .param p0    # [F
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 8
    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->subArray([FII)[F

    move-result-object p0

    return-object p0
.end method

.method public static copy([I)[I
    .locals 2
    .param p0    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 3
    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->subArray([III)[I

    move-result-object p0

    return-object p0
.end method

.method public static copy([J)[J
    .locals 2
    .param p0    # [J
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 2
    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->subArray([JII)[J

    move-result-object p0

    return-object p0
.end method

.method public static copy([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .param p0    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 1
    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->subArray([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static copy([S)[S
    .locals 2
    .param p0    # [S
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 4
    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->subArray([SII)[S

    move-result-object p0

    return-object p0
.end method

.method public static copy([Z)[Z
    .locals 2
    .param p0    # [Z
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 9
    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->subArray([ZII)[Z

    move-result-object p0

    return-object p0
.end method

.method public static equals([B[B)Z
    .locals 0

    .line 3
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method public static equals([C[C)Z
    .locals 0

    .line 4
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([C[C)Z

    move-result p0

    return p0
.end method

.method public static equals([D[D)Z
    .locals 0

    .line 5
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result p0

    return p0
.end method

.method public static equals([F[F)Z
    .locals 0

    .line 6
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result p0

    return p0
.end method

.method public static equals([I[I)Z
    .locals 0

    .line 7
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p0

    return p0
.end method

.method public static equals([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 0
    .param p0    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p0, p1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static equals([S[S)Z
    .locals 0

    .line 8
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([S[S)Z

    move-result p0

    return p0
.end method

.method public static equals([Z[Z)Z
    .locals 0

    .line 2
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result p0

    return p0
.end method

.method public static forAllDo(Ljava/lang/Object;Lcom/cloud/tmc/integration/utils/ArrayUtils$Closure;)V
    .locals 4
    .param p0    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/cloud/tmc/integration/utils/ArrayUtils$Closure;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lcom/cloud/tmc/integration/utils/ArrayUtils$Closure<",
            "TE;>;)V"
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_c

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    goto/16 :goto_a

    .line 6
    .line 7
    :cond_0
    instance-of v0, p0, [Ljava/lang/Object;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    check-cast p0, [Ljava/lang/Object;

    .line 13
    .line 14
    array-length v0, p0

    .line 15
    :goto_0
    if-ge v1, v0, :cond_a

    .line 16
    .line 17
    aget-object v2, p0, v1

    .line 18
    .line 19
    invoke-interface {p1, v1, v2}, Lcom/cloud/tmc/integration/utils/ArrayUtils$Closure;->execute(ILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    instance-of v0, p0, [Z

    .line 26
    .line 27
    if-eqz v0, :cond_3

    .line 28
    .line 29
    check-cast p0, [Z

    .line 30
    .line 31
    array-length v0, p0

    .line 32
    :goto_1
    if-ge v1, v0, :cond_a

    .line 33
    .line 34
    aget-boolean v2, p0, v1

    .line 35
    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_2
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 42
    .line 43
    :goto_2
    invoke-interface {p1, v1, v2}, Lcom/cloud/tmc/integration/utils/ArrayUtils$Closure;->execute(ILjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    add-int/lit8 v1, v1, 0x1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_3
    instance-of v0, p0, [B

    .line 50
    .line 51
    if-eqz v0, :cond_4

    .line 52
    .line 53
    check-cast p0, [B

    .line 54
    .line 55
    array-length v0, p0

    .line 56
    :goto_3
    if-ge v1, v0, :cond_a

    .line 57
    .line 58
    aget-byte v2, p0, v1

    .line 59
    .line 60
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-interface {p1, v1, v2}, Lcom/cloud/tmc/integration/utils/ArrayUtils$Closure;->execute(ILjava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    add-int/lit8 v1, v1, 0x1

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_4
    instance-of v0, p0, [C

    .line 71
    .line 72
    if-eqz v0, :cond_5

    .line 73
    .line 74
    check-cast p0, [C

    .line 75
    .line 76
    array-length v0, p0

    .line 77
    :goto_4
    if-ge v1, v0, :cond_a

    .line 78
    .line 79
    aget-char v2, p0, v1

    .line 80
    .line 81
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-interface {p1, v1, v2}, Lcom/cloud/tmc/integration/utils/ArrayUtils$Closure;->execute(ILjava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    add-int/lit8 v1, v1, 0x1

    .line 89
    .line 90
    goto :goto_4

    .line 91
    :cond_5
    instance-of v0, p0, [S

    .line 92
    .line 93
    if-eqz v0, :cond_6

    .line 94
    .line 95
    check-cast p0, [S

    .line 96
    .line 97
    array-length v0, p0

    .line 98
    :goto_5
    if-ge v1, v0, :cond_a

    .line 99
    .line 100
    aget-short v2, p0, v1

    .line 101
    .line 102
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-interface {p1, v1, v2}, Lcom/cloud/tmc/integration/utils/ArrayUtils$Closure;->execute(ILjava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    add-int/lit8 v1, v1, 0x1

    .line 110
    .line 111
    goto :goto_5

    .line 112
    :cond_6
    instance-of v0, p0, [I

    .line 113
    .line 114
    if-eqz v0, :cond_7

    .line 115
    .line 116
    check-cast p0, [I

    .line 117
    .line 118
    array-length v0, p0

    .line 119
    :goto_6
    if-ge v1, v0, :cond_a

    .line 120
    .line 121
    aget v2, p0, v1

    .line 122
    .line 123
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-interface {p1, v1, v2}, Lcom/cloud/tmc/integration/utils/ArrayUtils$Closure;->execute(ILjava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    add-int/lit8 v1, v1, 0x1

    .line 131
    .line 132
    goto :goto_6

    .line 133
    :cond_7
    instance-of v0, p0, [J

    .line 134
    .line 135
    if-eqz v0, :cond_8

    .line 136
    .line 137
    check-cast p0, [J

    .line 138
    .line 139
    array-length v0, p0

    .line 140
    :goto_7
    if-ge v1, v0, :cond_a

    .line 141
    .line 142
    aget-wide v2, p0, v1

    .line 143
    .line 144
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    invoke-interface {p1, v1, v2}, Lcom/cloud/tmc/integration/utils/ArrayUtils$Closure;->execute(ILjava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    add-int/lit8 v1, v1, 0x1

    .line 152
    .line 153
    goto :goto_7

    .line 154
    :cond_8
    instance-of v0, p0, [F

    .line 155
    .line 156
    if-eqz v0, :cond_9

    .line 157
    .line 158
    check-cast p0, [F

    .line 159
    .line 160
    array-length v0, p0

    .line 161
    :goto_8
    if-ge v1, v0, :cond_a

    .line 162
    .line 163
    aget v2, p0, v1

    .line 164
    .line 165
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    invoke-interface {p1, v1, v2}, Lcom/cloud/tmc/integration/utils/ArrayUtils$Closure;->execute(ILjava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    add-int/lit8 v1, v1, 0x1

    .line 173
    .line 174
    goto :goto_8

    .line 175
    :cond_9
    instance-of v0, p0, [D

    .line 176
    .line 177
    if-eqz v0, :cond_b

    .line 178
    .line 179
    check-cast p0, [D

    .line 180
    .line 181
    array-length v0, p0

    .line 182
    :goto_9
    if-ge v1, v0, :cond_a

    .line 183
    .line 184
    aget-wide v2, p0, v1

    .line 185
    .line 186
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    invoke-interface {p1, v1, v2}, Lcom/cloud/tmc/integration/utils/ArrayUtils$Closure;->execute(ILjava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    add-int/lit8 v1, v1, 0x1

    .line 194
    .line 195
    goto :goto_9

    .line 196
    :cond_a
    return-void

    .line 197
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 198
    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    .line 203
    .line 204
    const-string v1, "Not an array: "

    .line 205
    .line 206
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 210
    .line 211
    .line 212
    move-result-object p0

    .line 213
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object p0

    .line 220
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    throw p1

    .line 224
    :cond_c
    :goto_a
    return-void
.end method

.method public static get(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->get(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static get(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    return-object p2

    .line 2
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object p2
.end method

.method public static getLength(Ljava/lang/Object;)I
    .locals 0
    .param p0    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static indexOf([BB)I
    .locals 1
    .param p0    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 18
    invoke-static {p0, p1, v0}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->indexOf([BBI)I

    move-result p0

    return p0
.end method

.method public static indexOf([BBI)I
    .locals 2
    .param p0    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-gez p2, :cond_1

    const/4 p2, 0x0

    .line 19
    :cond_1
    :goto_0
    array-length v1, p0

    if-ge p2, v1, :cond_3

    .line 20
    aget-byte v1, p0, p2

    if-ne p1, v1, :cond_2

    return p2

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public static indexOf([CC)I
    .locals 1
    .param p0    # [C
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 15
    invoke-static {p0, p1, v0}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->indexOf([CCI)I

    move-result p0

    return p0
.end method

.method public static indexOf([CCI)I
    .locals 2
    .param p0    # [C
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-gez p2, :cond_1

    const/4 p2, 0x0

    .line 16
    :cond_1
    :goto_0
    array-length v1, p0

    if-ge p2, v1, :cond_3

    .line 17
    aget-char v1, p0, p2

    if-ne p1, v1, :cond_2

    return p2

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public static indexOf([DD)I
    .locals 1
    .param p0    # [D
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 21
    invoke-static {p0, p1, p2, v0}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->indexOf([DDI)I

    move-result p0

    return p0
.end method

.method public static indexOf([DDD)I
    .locals 6
    .param p0    # [D
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v3, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v4, p3

    .line 22
    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->indexOf([DDID)I

    move-result p0

    return p0
.end method

.method public static indexOf([DDI)I
    .locals 4
    .param p0    # [D
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 23
    invoke-static {p0}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-gez p3, :cond_1

    const/4 p3, 0x0

    .line 24
    :cond_1
    :goto_0
    array-length v0, p0

    if-ge p3, v0, :cond_3

    .line 25
    aget-wide v2, p0, p3

    cmpl-double v0, p1, v2

    if-nez v0, :cond_2

    return p3

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public static indexOf([DDID)I
    .locals 4
    .param p0    # [D
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 26
    invoke-static {p0}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-gez p3, :cond_1

    const/4 p3, 0x0

    :cond_1
    sub-double v2, p1, p4

    add-double/2addr p1, p4

    .line 27
    :goto_0
    array-length p4, p0

    if-ge p3, p4, :cond_3

    .line 28
    aget-wide p4, p0, p3

    cmpl-double v0, p4, v2

    if-ltz v0, :cond_2

    cmpg-double p4, p4, p1

    if-gtz p4, :cond_2

    return p3

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public static indexOf([FF)I
    .locals 1
    .param p0    # [F
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 29
    invoke-static {p0, p1, v0}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->indexOf([FFI)I

    move-result p0

    return p0
.end method

.method public static indexOf([FFI)I
    .locals 2
    .param p0    # [F
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 30
    invoke-static {p0}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-gez p2, :cond_1

    const/4 p2, 0x0

    .line 31
    :cond_1
    :goto_0
    array-length v0, p0

    if-ge p2, v0, :cond_3

    .line 32
    aget v0, p0, p2

    cmpl-float v0, p1, v0

    if-nez v0, :cond_2

    return p2

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public static indexOf([II)I
    .locals 1
    .param p0    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 9
    invoke-static {p0, p1, v0}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->indexOf([III)I

    move-result p0

    return p0
.end method

.method public static indexOf([III)I
    .locals 2
    .param p0    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-gez p2, :cond_1

    const/4 p2, 0x0

    .line 10
    :cond_1
    :goto_0
    array-length v1, p0

    if-ge p2, v1, :cond_3

    .line 11
    aget v1, p0, p2

    if-ne p1, v1, :cond_2

    return p2

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public static indexOf([JJ)I
    .locals 1
    .param p0    # [J
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 6
    invoke-static {p0, p1, p2, v0}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->indexOf([JJI)I

    move-result p0

    return p0
.end method

.method public static indexOf([JJI)I
    .locals 3
    .param p0    # [J
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-gez p3, :cond_1

    const/4 p3, 0x0

    .line 7
    :cond_1
    :goto_0
    array-length v1, p0

    if-ge p3, v1, :cond_3

    .line 8
    aget-wide v1, p0, p3

    cmp-long v1, p1, v1

    if-nez v1, :cond_2

    return p3

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p0    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result p0

    return p0
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;I)I
    .locals 2
    .param p0    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-gez p2, :cond_1

    const/4 p2, 0x0

    :cond_1
    if-nez p1, :cond_3

    .line 2
    :goto_0
    array-length p1, p0

    if-ge p2, p1, :cond_5

    .line 3
    aget-object p1, p0, p2

    if-nez p1, :cond_2

    return p2

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 4
    :cond_3
    :goto_1
    array-length v1, p0

    if-ge p2, v1, :cond_5

    .line 5
    aget-object v1, p0, p2

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    return p2

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_5
    return v0
.end method

.method public static indexOf([SS)I
    .locals 1
    .param p0    # [S
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 12
    invoke-static {p0, p1, v0}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->indexOf([SSI)I

    move-result p0

    return p0
.end method

.method public static indexOf([SSI)I
    .locals 2
    .param p0    # [S
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-gez p2, :cond_1

    const/4 p2, 0x0

    .line 13
    :cond_1
    :goto_0
    array-length v1, p0

    if-ge p2, v1, :cond_3

    .line 14
    aget-short v1, p0, p2

    if-ne p1, v1, :cond_2

    return p2

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public static indexOf([ZZ)I
    .locals 1
    .param p0    # [Z
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 33
    invoke-static {p0, p1, v0}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->indexOf([ZZI)I

    move-result p0

    return p0
.end method

.method public static indexOf([ZZI)I
    .locals 2
    .param p0    # [Z
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 34
    invoke-static {p0}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-gez p2, :cond_1

    const/4 p2, 0x0

    .line 35
    :cond_1
    :goto_0
    array-length v0, p0

    if-ge p2, v0, :cond_3

    .line 36
    aget-boolean v0, p0, p2

    if-ne p1, v0, :cond_2

    return p2

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public static isEmpty(Ljava/lang/Object;)Z
    .locals 0
    .param p0    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->getLength(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method public static isSameLength(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .param p0    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->getLength(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->getLength(Ljava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-ne p0, p1, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
.end method

.method public static lastIndexOf([BB)I
    .locals 1
    .param p0    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const v0, 0x7fffffff

    .line 22
    invoke-static {p0, p1, v0}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->lastIndexOf([BBI)I

    move-result p0

    return p0
.end method

.method public static lastIndexOf([BBI)I
    .locals 2
    .param p0    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-gez p2, :cond_1

    return v0

    .line 23
    :cond_1
    array-length v1, p0

    if-lt p2, v1, :cond_2

    .line 24
    array-length p2, p0

    add-int/lit8 p2, p2, -0x1

    :cond_2
    :goto_0
    if-ltz p2, :cond_4

    .line 25
    aget-byte v1, p0, p2

    if-ne p1, v1, :cond_3

    return p2

    :cond_3
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public static lastIndexOf([CC)I
    .locals 1
    .param p0    # [C
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const v0, 0x7fffffff

    .line 18
    invoke-static {p0, p1, v0}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->lastIndexOf([CCI)I

    move-result p0

    return p0
.end method

.method public static lastIndexOf([CCI)I
    .locals 2
    .param p0    # [C
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-gez p2, :cond_1

    return v0

    .line 19
    :cond_1
    array-length v1, p0

    if-lt p2, v1, :cond_2

    .line 20
    array-length p2, p0

    add-int/lit8 p2, p2, -0x1

    :cond_2
    :goto_0
    if-ltz p2, :cond_4

    .line 21
    aget-char v1, p0, p2

    if-ne p1, v1, :cond_3

    return p2

    :cond_3
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public static lastIndexOf([DD)I
    .locals 1
    .param p0    # [D
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const v0, 0x7fffffff

    .line 26
    invoke-static {p0, p1, p2, v0}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->lastIndexOf([DDI)I

    move-result p0

    return p0
.end method

.method public static lastIndexOf([DDD)I
    .locals 6
    .param p0    # [D
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const v3, 0x7fffffff

    move-object v0, p0

    move-wide v1, p1

    move-wide v4, p3

    .line 27
    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->lastIndexOf([DDID)I

    move-result p0

    return p0
.end method

.method public static lastIndexOf([DDI)I
    .locals 4
    .param p0    # [D
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 28
    invoke-static {p0}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-gez p3, :cond_1

    return v1

    .line 29
    :cond_1
    array-length v0, p0

    if-lt p3, v0, :cond_2

    .line 30
    array-length p3, p0

    add-int/lit8 p3, p3, -0x1

    :cond_2
    :goto_0
    if-ltz p3, :cond_4

    .line 31
    aget-wide v2, p0, p3

    cmpl-double v0, p1, v2

    if-nez v0, :cond_3

    return p3

    :cond_3
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_4
    return v1
.end method

.method public static lastIndexOf([DDID)I
    .locals 4
    .param p0    # [D
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 32
    invoke-static {p0}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-gez p3, :cond_1

    return v1

    .line 33
    :cond_1
    array-length v0, p0

    if-lt p3, v0, :cond_2

    .line 34
    array-length p3, p0

    add-int/lit8 p3, p3, -0x1

    :cond_2
    sub-double v2, p1, p4

    add-double/2addr p1, p4

    :goto_0
    if-ltz p3, :cond_4

    .line 35
    aget-wide p4, p0, p3

    cmpl-double v0, p4, v2

    if-ltz v0, :cond_3

    cmpg-double p4, p4, p1

    if-gtz p4, :cond_3

    return p3

    :cond_3
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_4
    return v1
.end method

.method public static lastIndexOf([FF)I
    .locals 1
    .param p0    # [F
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const v0, 0x7fffffff

    .line 36
    invoke-static {p0, p1, v0}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->lastIndexOf([FFI)I

    move-result p0

    return p0
.end method

.method public static lastIndexOf([FFI)I
    .locals 2
    .param p0    # [F
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 37
    invoke-static {p0}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-gez p2, :cond_1

    return v1

    .line 38
    :cond_1
    array-length v0, p0

    if-lt p2, v0, :cond_2

    .line 39
    array-length p2, p0

    add-int/lit8 p2, p2, -0x1

    :cond_2
    :goto_0
    if-ltz p2, :cond_4

    .line 40
    aget v0, p0, p2

    cmpl-float v0, p1, v0

    if-nez v0, :cond_3

    return p2

    :cond_3
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_4
    return v1
.end method

.method public static lastIndexOf([II)I
    .locals 1
    .param p0    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const v0, 0x7fffffff

    .line 10
    invoke-static {p0, p1, v0}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->lastIndexOf([III)I

    move-result p0

    return p0
.end method

.method public static lastIndexOf([III)I
    .locals 2
    .param p0    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-gez p2, :cond_1

    return v0

    .line 11
    :cond_1
    array-length v1, p0

    if-lt p2, v1, :cond_2

    .line 12
    array-length p2, p0

    add-int/lit8 p2, p2, -0x1

    :cond_2
    :goto_0
    if-ltz p2, :cond_4

    .line 13
    aget v1, p0, p2

    if-ne p1, v1, :cond_3

    return p2

    :cond_3
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public static lastIndexOf([JJ)I
    .locals 1
    .param p0    # [J
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const v0, 0x7fffffff

    .line 6
    invoke-static {p0, p1, p2, v0}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->lastIndexOf([JJI)I

    move-result p0

    return p0
.end method

.method public static lastIndexOf([JJI)I
    .locals 3
    .param p0    # [J
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-gez p3, :cond_1

    return v0

    .line 7
    :cond_1
    array-length v1, p0

    if-lt p3, v1, :cond_2

    .line 8
    array-length p3, p0

    add-int/lit8 p3, p3, -0x1

    :cond_2
    :goto_0
    if-ltz p3, :cond_4

    .line 9
    aget-wide v1, p0, p3

    cmp-long v1, p1, v1

    if-nez v1, :cond_3

    return p3

    :cond_3
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public static lastIndexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p0    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const v0, 0x7fffffff

    .line 1
    invoke-static {p0, p1, v0}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->lastIndexOf([Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result p0

    return p0
.end method

.method public static lastIndexOf([Ljava/lang/Object;Ljava/lang/Object;I)I
    .locals 2
    .param p0    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-gez p2, :cond_1

    return v0

    .line 2
    :cond_1
    array-length v1, p0

    if-lt p2, v1, :cond_2

    .line 3
    array-length p2, p0

    add-int/lit8 p2, p2, -0x1

    :cond_2
    if-nez p1, :cond_4

    :goto_0
    if-ltz p2, :cond_6

    .line 4
    aget-object p1, p0, p2

    if-nez p1, :cond_3

    return p2

    :cond_3
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_4
    :goto_1
    if-ltz p2, :cond_6

    .line 5
    aget-object v1, p0, p2

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    return p2

    :cond_5
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_6
    return v0
.end method

.method public static lastIndexOf([SS)I
    .locals 1
    .param p0    # [S
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const v0, 0x7fffffff

    .line 14
    invoke-static {p0, p1, v0}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->lastIndexOf([SSI)I

    move-result p0

    return p0
.end method

.method public static lastIndexOf([SSI)I
    .locals 2
    .param p0    # [S
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-gez p2, :cond_1

    return v0

    .line 15
    :cond_1
    array-length v1, p0

    if-lt p2, v1, :cond_2

    .line 16
    array-length p2, p0

    add-int/lit8 p2, p2, -0x1

    :cond_2
    :goto_0
    if-ltz p2, :cond_4

    .line 17
    aget-short v1, p0, p2

    if-ne p1, v1, :cond_3

    return p2

    :cond_3
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public static lastIndexOf([ZZ)I
    .locals 1
    .param p0    # [Z
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const v0, 0x7fffffff

    .line 41
    invoke-static {p0, p1, v0}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->lastIndexOf([ZZI)I

    move-result p0

    return p0
.end method

.method public static lastIndexOf([ZZI)I
    .locals 2
    .param p0    # [Z
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 42
    invoke-static {p0}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-gez p2, :cond_1

    return v1

    .line 43
    :cond_1
    array-length v0, p0

    if-lt p2, v0, :cond_2

    .line 44
    array-length p2, p0

    add-int/lit8 p2, p2, -0x1

    :cond_2
    :goto_0
    if-ltz p2, :cond_4

    .line 45
    aget-boolean v0, p0, p2

    if-ne p1, v0, :cond_3

    return p2

    :cond_3
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_4
    return v1
.end method

.method public static varargs newArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 1
    return-object p0
.end method

.method public static varargs newBooleanArray([Z)[Z
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    return-object p0
.end method

.method public static varargs newByteArray([B)[B
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    return-object p0
.end method

.method public static varargs newCharArray([C)[C
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    return-object p0
.end method

.method public static varargs newDoubleArray([D)[D
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    return-object p0
.end method

.method public static varargs newFloatArray([F)[F
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    return-object p0
.end method

.method public static varargs newIntArray([I)[I
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    return-object p0
.end method

.method public static varargs newLongArray([J)[J
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    return-object p0
.end method

.method public static varargs newShortArray([S)[S
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    return-object p0
.end method

.method private static realAdd(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .param p0    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const-string v0, "Index: "

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez p0, :cond_1

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    invoke-static {p3, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-static {p0, v1, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    .line 18
    .line 19
    new-instance p2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string p1, ", Length: 0"

    .line 31
    .line 32
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p0

    .line 43
    :cond_1
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-gt p1, v2, :cond_3

    .line 48
    .line 49
    if-ltz p1, :cond_3

    .line 50
    .line 51
    add-int/lit8 v0, v2, 0x1

    .line 52
    .line 53
    invoke-static {p3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p3

    .line 57
    invoke-static {p0, v1, p3, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    .line 59
    .line 60
    invoke-static {p3, p1, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    if-ge p1, v2, :cond_2

    .line 64
    .line 65
    add-int/lit8 p2, p1, 0x1

    .line 66
    .line 67
    sub-int/2addr v2, p1

    .line 68
    invoke-static {p0, p1, p3, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    .line 70
    .line 71
    :cond_2
    return-object p3

    .line 72
    :cond_3
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    .line 73
    .line 74
    new-instance p2, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string p1, ", Length: "

    .line 86
    .line 87
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw p0
.end method

.method private static realAddArr(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .param p0    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 8
    :cond_0
    invoke-static {p0}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result p3

    .line 9
    invoke-static {p2}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 10
    const-string v1, "Index: "

    if-nez p3, :cond_2

    if-nez p1, :cond_1

    .line 11
    invoke-static {p2}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->realCopy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", array1 Length: 0"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    if-nez v0, :cond_3

    .line 13
    invoke-static {p0}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->realCopy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_3
    if-gt p1, p3, :cond_6

    if-ltz p1, :cond_6

    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    add-int v2, p3, v0

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-ne p1, p3, :cond_4

    .line 15
    invoke-static {p0, v2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    invoke-static {p2, v2, v1, p3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_4
    if-nez p1, :cond_5

    .line 17
    invoke-static {p2, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18
    invoke-static {p0, v2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 19
    :cond_5
    invoke-static {p0, v2, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    invoke-static {p2, v2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, p1

    sub-int/2addr p3, p1

    .line 21
    invoke-static {p0, p1, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-object v1

    .line 22
    :cond_6
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", array1 Length: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static realAddArr(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p0    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    .line 1
    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->realCopy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    if-nez p1, :cond_2

    .line 2
    invoke-static {p0}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->realCopy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 3
    :cond_2
    invoke-static {p0}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 4
    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    add-int v3, v0, v1

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    .line 6
    invoke-static {p0, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    invoke-static {p1, v3, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method private static realAddOne(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .param p0    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    invoke-static {p0}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->getLength(Ljava/lang/Object;)I

    .line 5
    .line 6
    .line 7
    move-result p2

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    add-int/lit8 v2, p2, 0x1

    .line 17
    .line 18
    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {p0, v0, v1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    .line 24
    .line 25
    move v0, p2

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p0, 0x1

    .line 28
    invoke-static {p2, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    :goto_0
    invoke-static {v1, v0, p1}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    return-object v1
.end method

.method private static realCopy(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    invoke-static {p0}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->getLength(Ljava/lang/Object;)I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-static {p0, v0, v1}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->realSubArray(Ljava/lang/Object;II)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method private static realSubArray(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 2
    .param p0    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    if-gez p1, :cond_1

    .line 7
    .line 8
    move p1, v0

    .line 9
    :cond_1
    invoke-static {p0}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->getLength(Ljava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-le p2, v1, :cond_2

    .line 14
    .line 15
    move p2, v1

    .line 16
    :cond_2
    sub-int/2addr p2, p1

    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-gtz p2, :cond_3

    .line 26
    .line 27
    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    :cond_3
    invoke-static {v1, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-static {p0, p1, v1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    .line 38
    .line 39
    return-object v1
.end method

.method private static remove(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 4
    .param p0    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 10
    invoke-static {p0}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-ltz p1, :cond_2

    if-ge p1, v0, :cond_2

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    .line 11
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    .line 13
    invoke-static {p0, v2, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-ge p1, v3, :cond_1

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 14
    invoke-static {p0, v2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :catchall_0
    :cond_1
    :goto_0
    return-object v1

    .line 15
    :cond_2
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Length: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static remove([BI)[B
    .locals 0
    .param p0    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    invoke-static {p0, p1}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public static remove([CI)[C
    .locals 0
    .param p0    # [C
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_0
    invoke-static {p0, p1}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [C

    return-object p0
.end method

.method public static remove([DI)[D
    .locals 0
    .param p0    # [D
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 5
    :cond_0
    invoke-static {p0, p1}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [D

    return-object p0
.end method

.method public static remove([FI)[F
    .locals 0
    .param p0    # [F
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 6
    :cond_0
    invoke-static {p0, p1}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F

    return-object p0
.end method

.method public static remove([II)[I
    .locals 0
    .param p0    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 7
    :cond_0
    invoke-static {p0, p1}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0
.end method

.method public static remove([JI)[J
    .locals 0
    .param p0    # [J
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 8
    :cond_0
    invoke-static {p0, p1}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [J

    return-object p0
.end method

.method public static remove([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 0
    .param p0    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-static {p0, p1}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    return-object p0
.end method

.method public static remove([SI)[S
    .locals 0
    .param p0    # [S
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 9
    :cond_0
    invoke-static {p0, p1}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [S

    return-object p0
.end method

.method public static remove([ZI)[Z
    .locals 0
    .param p0    # [Z
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-static {p0, p1}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Z

    return-object p0
.end method

.method public static removeElement([BB)[B
    .locals 1
    .param p0    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 7
    invoke-static {p0, p1}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->indexOf([BB)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 8
    invoke-static {p0}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->copy([B)[B

    move-result-object p0

    return-object p0

    .line 9
    :cond_0
    invoke-static {p0, p1}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->remove([BI)[B

    move-result-object p0

    return-object p0
.end method

.method public static removeElement([CC)[C
    .locals 1
    .param p0    # [C
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 10
    invoke-static {p0, p1}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->indexOf([CC)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 11
    invoke-static {p0}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->copy([C)[C

    move-result-object p0

    return-object p0

    .line 12
    :cond_0
    invoke-static {p0, p1}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->remove([CI)[C

    move-result-object p0

    return-object p0
.end method

.method public static removeElement([DD)[D
    .locals 0
    .param p0    # [D
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 13
    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->indexOf([DD)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    .line 14
    invoke-static {p0}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->copy([D)[D

    move-result-object p0

    return-object p0

    .line 15
    :cond_0
    invoke-static {p0, p1}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->remove([DI)[D

    move-result-object p0

    return-object p0
.end method

.method public static removeElement([FF)[F
    .locals 1
    .param p0    # [F
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 16
    invoke-static {p0, p1}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->indexOf([FF)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 17
    invoke-static {p0}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->copy([F)[F

    move-result-object p0

    return-object p0

    .line 18
    :cond_0
    invoke-static {p0, p1}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->remove([FI)[F

    move-result-object p0

    return-object p0
.end method

.method public static removeElement([II)[I
    .locals 1
    .param p0    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 19
    invoke-static {p0, p1}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->indexOf([II)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 20
    invoke-static {p0}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->copy([I)[I

    move-result-object p0

    return-object p0

    .line 21
    :cond_0
    invoke-static {p0, p1}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->remove([II)[I

    move-result-object p0

    return-object p0
.end method

.method public static removeElement([JJ)[J
    .locals 0
    .param p0    # [J
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 22
    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->indexOf([JJ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    .line 23
    invoke-static {p0}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->copy([J)[J

    move-result-object p0

    return-object p0

    .line 24
    :cond_0
    invoke-static {p0, p1}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->remove([JI)[J

    move-result-object p0

    return-object p0
.end method

.method public static removeElement([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .param p0    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->copy([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-static {p0, p1}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->remove([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static removeElement([SS)[S
    .locals 1
    .param p0    # [S
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 25
    invoke-static {p0, p1}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->indexOf([SS)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 26
    invoke-static {p0}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->copy([S)[S

    move-result-object p0

    return-object p0

    .line 27
    :cond_0
    invoke-static {p0, p1}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->remove([SI)[S

    move-result-object p0

    return-object p0
.end method

.method public static removeElement([ZZ)[Z
    .locals 1
    .param p0    # [Z
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 4
    invoke-static {p0, p1}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->indexOf([ZZ)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 5
    invoke-static {p0}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->copy([Z)[Z

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    invoke-static {p0, p1}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->remove([ZI)[Z

    move-result-object p0

    return-object p0
.end method

.method public static reverse([B)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    .line 21
    :cond_0
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-le v0, v1, :cond_1

    .line 22
    aget-byte v2, p0, v0

    .line 23
    aget-byte v3, p0, v1

    aput-byte v3, p0, v0

    .line 24
    aput-byte v2, p0, v1

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static reverse([C)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    .line 17
    :cond_0
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-le v0, v1, :cond_1

    .line 18
    aget-char v2, p0, v0

    .line 19
    aget-char v3, p0, v1

    aput-char v3, p0, v0

    .line 20
    aput-char v2, p0, v1

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static reverse([D)V
    .locals 6

    if-nez p0, :cond_0

    return-void

    .line 25
    :cond_0
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-le v0, v1, :cond_1

    .line 26
    aget-wide v2, p0, v0

    .line 27
    aget-wide v4, p0, v1

    aput-wide v4, p0, v0

    .line 28
    aput-wide v2, p0, v1

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static reverse([F)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    .line 29
    :cond_0
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-le v0, v1, :cond_1

    .line 30
    aget v2, p0, v0

    .line 31
    aget v3, p0, v1

    aput v3, p0, v0

    .line 32
    aput v2, p0, v1

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static reverse([I)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    .line 9
    :cond_0
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-le v0, v1, :cond_1

    .line 10
    aget v2, p0, v0

    .line 11
    aget v3, p0, v1

    aput v3, p0, v0

    .line 12
    aput v2, p0, v1

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static reverse([J)V
    .locals 6

    if-nez p0, :cond_0

    return-void

    .line 5
    :cond_0
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-le v0, v1, :cond_1

    .line 6
    aget-wide v2, p0, v0

    .line 7
    aget-wide v4, p0, v1

    aput-wide v4, p0, v0

    .line 8
    aput-wide v2, p0, v1

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static reverse([Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-le v0, v1, :cond_1

    .line 2
    aget-object v2, p0, v0

    .line 3
    aget-object v3, p0, v1

    aput-object v3, p0, v0

    .line 4
    aput-object v2, p0, v1

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static reverse([S)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    .line 13
    :cond_0
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-le v0, v1, :cond_1

    .line 14
    aget-short v2, p0, v0

    .line 15
    aget-short v3, p0, v1

    aput-short v3, p0, v0

    .line 16
    aput-short v2, p0, v1

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static reverse([Z)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    .line 33
    :cond_0
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-le v0, v1, :cond_1

    .line 34
    aget-boolean v2, p0, v0

    .line 35
    aget-boolean v3, p0, v1

    aput-boolean v3, p0, v0

    .line 36
    aput-boolean v2, p0, v1

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static set(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0
    .param p0    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-static {p0, p1, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static sort([B)V
    .locals 2
    .param p0    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_1

    .line 3
    array-length v0, p0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->sort([B)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static sort([C)V
    .locals 2
    .param p0    # [C
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_1

    .line 5
    array-length v0, p0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->sort([C)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static sort([D)V
    .locals 2
    .param p0    # [D
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_1

    .line 7
    array-length v0, p0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->sort([D)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static sort([F)V
    .locals 2
    .param p0    # [F
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_1

    .line 9
    array-length v0, p0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->sort([F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static sort([I)V
    .locals 2
    .param p0    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_1

    .line 11
    array-length v0, p0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->sort([I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static sort([J)V
    .locals 2
    .param p0    # [J
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_1

    .line 13
    array-length v0, p0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->sort([J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static sort([Ljava/lang/Object;Ljava/util/Comparator;)V
    .locals 2
    .param p0    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 1
    array-length v0, p0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p0, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static sort([S)V
    .locals 2
    .param p0    # [S
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_1

    .line 15
    array-length v0, p0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->sort([S)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static subArray([BII)[B
    .locals 0
    .param p0    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 6
    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->realSubArray(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public static subArray([CII)[C
    .locals 0
    .param p0    # [C
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 5
    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->realSubArray(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [C

    return-object p0
.end method

.method public static subArray([DII)[D
    .locals 0
    .param p0    # [D
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 7
    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->realSubArray(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [D

    return-object p0
.end method

.method public static subArray([FII)[F
    .locals 0
    .param p0    # [F
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 8
    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->realSubArray(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F

    return-object p0
.end method

.method public static subArray([III)[I
    .locals 0
    .param p0    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 3
    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->realSubArray(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0
.end method

.method public static subArray([JII)[J
    .locals 0
    .param p0    # [J
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2
    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->realSubArray(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [J

    return-object p0
.end method

.method public static subArray([Ljava/lang/Object;II)[Ljava/lang/Object;
    .locals 0
    .param p0    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)[TT;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->realSubArray(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    return-object p0
.end method

.method public static subArray([SII)[S
    .locals 0
    .param p0    # [S
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 4
    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->realSubArray(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [S

    return-object p0
.end method

.method public static subArray([ZII)[Z
    .locals 0
    .param p0    # [Z
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 9
    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->realSubArray(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Z

    return-object p0
.end method

.method public static toObject([Z)[Ljava/lang/Boolean;
    .locals 3
    .param p0    # [Z
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 36
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 37
    new-array p0, v1, [Ljava/lang/Boolean;

    return-object p0

    .line 38
    :cond_1
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Boolean;

    .line 39
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 40
    aget-boolean v2, p0, v1

    if-eqz v2, :cond_2

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_2
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1
    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static toObject([B)[Ljava/lang/Byte;
    .locals 4
    .param p0    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 21
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 22
    new-array p0, v1, [Ljava/lang/Byte;

    return-object p0

    .line 23
    :cond_1
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Byte;

    .line 24
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 25
    new-instance v2, Ljava/lang/Byte;

    aget-byte v3, p0, v1

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static toObject([C)[Ljava/lang/Character;
    .locals 4
    .param p0    # [C
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2
    new-array p0, v1, [Ljava/lang/Character;

    return-object p0

    .line 3
    :cond_1
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Character;

    .line 4
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 5
    new-instance v2, Ljava/lang/Character;

    aget-char v3, p0, v1

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static toObject([D)[Ljava/lang/Double;
    .locals 5
    .param p0    # [D
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 26
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 27
    new-array p0, v1, [Ljava/lang/Double;

    return-object p0

    .line 28
    :cond_1
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Double;

    .line 29
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 30
    new-instance v2, Ljava/lang/Double;

    aget-wide v3, p0, v1

    invoke-direct {v2, v3, v4}, Ljava/lang/Double;-><init>(D)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static toObject([F)[Ljava/lang/Float;
    .locals 4
    .param p0    # [F
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 31
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 32
    new-array p0, v1, [Ljava/lang/Float;

    return-object p0

    .line 33
    :cond_1
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Float;

    .line 34
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 35
    new-instance v2, Ljava/lang/Float;

    aget v3, p0, v1

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(F)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static toObject([I)[Ljava/lang/Integer;
    .locals 4
    .param p0    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 11
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 12
    new-array p0, v1, [Ljava/lang/Integer;

    return-object p0

    .line 13
    :cond_1
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Integer;

    .line 14
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 15
    new-instance v2, Ljava/lang/Integer;

    aget v3, p0, v1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static toObject([J)[Ljava/lang/Long;
    .locals 5
    .param p0    # [J
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 6
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 7
    new-array p0, v1, [Ljava/lang/Long;

    return-object p0

    .line 8
    :cond_1
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Long;

    .line 9
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 10
    new-instance v2, Ljava/lang/Long;

    aget-wide v3, p0, v1

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static toObject([S)[Ljava/lang/Short;
    .locals 4
    .param p0    # [S
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 16
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 17
    new-array p0, v1, [Ljava/lang/Short;

    return-object p0

    .line 18
    :cond_1
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Short;

    .line 19
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 20
    new-instance v2, Ljava/lang/Short;

    aget-short v3, p0, v1

    invoke-direct {v2, v3}, Ljava/lang/Short;-><init>(S)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Byte;)[B
    .locals 3
    .param p0    # [Ljava/lang/Byte;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 45
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 46
    new-array p0, v1, [B

    return-object p0

    .line 47
    :cond_1
    array-length v0, p0

    new-array v0, v0, [B

    .line 48
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 49
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Byte;B)[B
    .locals 3
    .param p0    # [Ljava/lang/Byte;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 50
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 51
    new-array p0, v1, [B

    return-object p0

    .line 52
    :cond_1
    array-length v0, p0

    new-array v0, v0, [B

    .line 53
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 54
    aget-object v2, p0, v1

    if-nez v2, :cond_2

    move v2, p1

    goto :goto_1

    .line 55
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    :goto_1
    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Character;)[C
    .locals 3
    .param p0    # [Ljava/lang/Character;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2
    new-array p0, v1, [C

    return-object p0

    .line 3
    :cond_1
    array-length v0, p0

    new-array v0, v0, [C

    .line 4
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 5
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Character;C)[C
    .locals 3
    .param p0    # [Ljava/lang/Character;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 6
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 7
    new-array p0, v1, [C

    return-object p0

    .line 8
    :cond_1
    array-length v0, p0

    new-array v0, v0, [C

    .line 9
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 10
    aget-object v2, p0, v1

    if-nez v2, :cond_2

    move v2, p1

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    :goto_1
    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Double;)[D
    .locals 4
    .param p0    # [Ljava/lang/Double;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 56
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 57
    new-array p0, v1, [D

    return-object p0

    .line 58
    :cond_1
    array-length v0, p0

    new-array v0, v0, [D

    .line 59
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 60
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Double;D)[D
    .locals 4
    .param p0    # [Ljava/lang/Double;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 61
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 62
    new-array p0, v1, [D

    return-object p0

    .line 63
    :cond_1
    array-length v0, p0

    new-array v0, v0, [D

    .line 64
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 65
    aget-object v2, p0, v1

    if-nez v2, :cond_2

    move-wide v2, p1

    goto :goto_1

    .line 66
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    :goto_1
    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Float;)[F
    .locals 3
    .param p0    # [Ljava/lang/Float;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 67
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 68
    new-array p0, v1, [F

    return-object p0

    .line 69
    :cond_1
    array-length v0, p0

    new-array v0, v0, [F

    .line 70
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 71
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Float;F)[F
    .locals 3
    .param p0    # [Ljava/lang/Float;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 72
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 73
    new-array p0, v1, [F

    return-object p0

    .line 74
    :cond_1
    array-length v0, p0

    new-array v0, v0, [F

    .line 75
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 76
    aget-object v2, p0, v1

    if-nez v2, :cond_2

    move v2, p1

    goto :goto_1

    .line 77
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    :goto_1
    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Integer;)[I
    .locals 3
    .param p0    # [Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 23
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 24
    new-array p0, v1, [I

    return-object p0

    .line 25
    :cond_1
    array-length v0, p0

    new-array v0, v0, [I

    .line 26
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 27
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Integer;I)[I
    .locals 3
    .param p0    # [Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 28
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 29
    new-array p0, v1, [I

    return-object p0

    .line 30
    :cond_1
    array-length v0, p0

    new-array v0, v0, [I

    .line 31
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 32
    aget-object v2, p0, v1

    if-nez v2, :cond_2

    move v2, p1

    goto :goto_1

    .line 33
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_1
    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Long;)[J
    .locals 4
    .param p0    # [Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 12
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 13
    new-array p0, v1, [J

    return-object p0

    .line 14
    :cond_1
    array-length v0, p0

    new-array v0, v0, [J

    .line 15
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 16
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Long;J)[J
    .locals 4
    .param p0    # [Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 17
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 18
    new-array p0, v1, [J

    return-object p0

    .line 19
    :cond_1
    array-length v0, p0

    new-array v0, v0, [J

    .line 20
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 21
    aget-object v2, p0, v1

    if-nez v2, :cond_2

    move-wide v2, p1

    goto :goto_1

    .line 22
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_1
    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Short;)[S
    .locals 3
    .param p0    # [Ljava/lang/Short;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 34
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 35
    new-array p0, v1, [S

    return-object p0

    .line 36
    :cond_1
    array-length v0, p0

    new-array v0, v0, [S

    .line 37
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 38
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    aput-short v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Short;S)[S
    .locals 3
    .param p0    # [Ljava/lang/Short;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 39
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 40
    new-array p0, v1, [S

    return-object p0

    .line 41
    :cond_1
    array-length v0, p0

    new-array v0, v0, [S

    .line 42
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 43
    aget-object v2, p0, v1

    if-nez v2, :cond_2

    move v2, p1

    goto :goto_1

    .line 44
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    :goto_1
    aput-short v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Boolean;)[Z
    .locals 3
    .param p0    # [Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 78
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 79
    new-array p0, v1, [Z

    return-object p0

    .line 80
    :cond_1
    array-length v0, p0

    new-array v0, v0, [Z

    .line 81
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 82
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    aput-boolean v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Boolean;Z)[Z
    .locals 3
    .param p0    # [Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 83
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 84
    new-array p0, v1, [Z

    return-object p0

    .line 85
    :cond_1
    array-length v0, p0

    new-array v0, v0, [Z

    .line 86
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 87
    aget-object v2, p0, v1

    if-nez v2, :cond_2

    move v2, p1

    goto :goto_1

    .line 88
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_1
    aput-boolean v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p0    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const-string p0, "null"

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    instance-of v0, p0, [Ljava/lang/Object;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    check-cast p0, [Ljava/lang/Object;

    .line 11
    .line 12
    invoke-static {p0}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :cond_1
    instance-of v0, p0, [Z

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    check-cast p0, [Z

    .line 22
    .line 23
    invoke-static {p0}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    :cond_2
    instance-of v0, p0, [B

    .line 29
    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    check-cast p0, [B

    .line 33
    .line 34
    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0

    .line 39
    :cond_3
    instance-of v0, p0, [C

    .line 40
    .line 41
    if-eqz v0, :cond_4

    .line 42
    .line 43
    check-cast p0, [C

    .line 44
    .line 45
    invoke-static {p0}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0

    .line 50
    :cond_4
    instance-of v0, p0, [D

    .line 51
    .line 52
    if-eqz v0, :cond_5

    .line 53
    .line 54
    check-cast p0, [D

    .line 55
    .line 56
    invoke-static {p0}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    return-object p0

    .line 61
    :cond_5
    instance-of v0, p0, [F

    .line 62
    .line 63
    if-eqz v0, :cond_6

    .line 64
    .line 65
    check-cast p0, [F

    .line 66
    .line 67
    invoke-static {p0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    return-object p0

    .line 72
    :cond_6
    instance-of v0, p0, [I

    .line 73
    .line 74
    if-eqz v0, :cond_7

    .line 75
    .line 76
    check-cast p0, [I

    .line 77
    .line 78
    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    return-object p0

    .line 83
    :cond_7
    instance-of v0, p0, [J

    .line 84
    .line 85
    if-eqz v0, :cond_8

    .line 86
    .line 87
    check-cast p0, [J

    .line 88
    .line 89
    invoke-static {p0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    return-object p0

    .line 94
    :cond_8
    instance-of v0, p0, [S

    .line 95
    .line 96
    if-eqz v0, :cond_9

    .line 97
    .line 98
    check-cast p0, [S

    .line 99
    .line 100
    invoke-static {p0}, Ljava/util/Arrays;->toString([S)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    return-object p0

    .line 105
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 106
    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    .line 112
    const-string v2, "Array has incompatible type: "

    .line 113
    .line 114
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    throw v0
.end method
