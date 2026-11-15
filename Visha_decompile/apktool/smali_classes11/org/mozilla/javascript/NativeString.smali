.class final Lorg/mozilla/javascript/NativeString;
.super Lorg/mozilla/javascript/IdScriptableObject;
.source "SourceFile"


# static fields
.field public static final b:Ljava/lang/Object;

.field private static final serialVersionUID:J = 0xcc57334977d230fL


# instance fields
.field private string:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "String"

    sput-object v0, Lorg/mozilla/javascript/NativeString;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/NativeString;->string:Ljava/lang/CharSequence;

    return-void
.end method

.method public static b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 6

    array-length v0, p1

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    aget-object p1, p1, v1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    new-array v3, v0, [Ljava/lang/String;

    move v4, v1

    :goto_0
    if-eq v4, v0, :cond_2

    aget-object v5, p1, v4

    invoke-static {v5}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    if-eq v1, v0, :cond_3

    aget-object p0, v3, v1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(ILjava/lang/String;[Ljava/lang/Object;)I
    .locals 11

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lorg/mozilla/javascript/ScriptRuntime;->toString([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p2, v2}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger([Ljava/lang/Object;I)D

    move-result-wide v3

    const/16 v5, 0x2a

    const/16 v6, 0x29

    if-eq p0, v6, :cond_1

    if-eq p0, v5, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    int-to-double v0, p0

    cmpl-double p0, v3, v0

    if-lez p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    goto :goto_0

    :cond_0
    double-to-int p0, v3

    :goto_0
    return p0

    :cond_1
    const/4 v7, -0x1

    if-eq p0, v6, :cond_2

    if-eq p0, v5, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    int-to-double v8, v8

    cmpl-double v8, v3, v8

    if-lez v8, :cond_2

    return v7

    :cond_2
    const-wide/16 v8, 0x0

    cmpg-double v10, v3, v8

    if-gez v10, :cond_3

    move-wide v3, v8

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    int-to-double v8, v8

    cmpl-double v8, v3, v8

    if-lez v8, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    :goto_1
    int-to-double v3, v3

    goto :goto_2

    :cond_4
    if-ne p0, v5, :cond_6

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    int-to-double v8, v8

    cmpl-double v8, v3, v8

    if-lez v8, :cond_6

    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_1

    :cond_6
    :goto_2
    if-ne v5, p0, :cond_a

    array-length p0, p2

    if-eqz p0, :cond_7

    array-length p0, p2

    if-eq p0, v2, :cond_7

    array-length p0, p2

    const/4 v5, 0x2

    if-ne p0, v5, :cond_8

    aget-object p0, p2, v2

    sget-object p2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne p0, p2, :cond_8

    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    int-to-double v3, p0

    :cond_8
    double-to-int p0, v3

    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_3

    :cond_9
    move v0, v7

    :goto_3
    return v0

    :cond_a
    if-ne p0, v6, :cond_c

    double-to-int p0, v3

    invoke-virtual {p1, v1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_4

    :cond_b
    move v0, v7

    goto :goto_4

    :cond_c
    double-to-int p0, v3

    invoke-virtual {p1, v1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    :goto_4
    return v0
.end method

.method public static f(Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 5

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->toString([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    int-to-double v3, p1

    cmpl-double p1, v1, v3

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    cmpg-double p1, v1, v3

    if-gez p1, :cond_2

    move-wide v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    int-to-double v1, p1

    :cond_2
    :goto_1
    double-to-int p1, v1

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static init(Lorg/mozilla/javascript/Scriptable;Z)V
    .locals 2

    new-instance v0, Lorg/mozilla/javascript/NativeString;

    const-string v1, ""

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/NativeString;-><init>(Ljava/lang/CharSequence;)V

    const/16 v1, 0x32

    invoke-virtual {v0, v1, p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->exportAsJSClass(ILorg/mozilla/javascript/Scriptable;Z)Lorg/mozilla/javascript/IdFunctionObject;

    return-void
.end method

.method public static k(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;[Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 4

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntimeES6;->requireObjectCoercible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/IdFunctionObject;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p3, p1}, Lorg/mozilla/javascript/ScriptRuntime;->toLength([Ljava/lang/Object;I)J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    int-to-long v2, p2

    cmp-long p2, v0, v2

    if-gtz p2, :cond_0

    return-object p0

    :cond_0
    array-length p2, p3

    const/4 v2, 0x2

    if-lt p2, v2, :cond_1

    const/4 p2, 0x1

    aget-object v2, p3, p2

    invoke-static {v2}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    aget-object p3, p3, p2

    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, p2, :cond_2

    return-object p0

    :cond_1
    const-string p3, " "

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    int-to-long v2, p2

    sub-long/2addr v0, v2

    long-to-int p2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :cond_3
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lt v1, p2, :cond_3

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    if-eqz p4, :cond_4

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {v0, p1, p0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static l(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntimeES6;->requireObjectCoercible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/IdFunctionObject;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p3, p1}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger([Ljava/lang/Object;I)D

    move-result-wide p2

    const-wide/16 v0, 0x0

    cmpg-double v2, p2, v0

    if-ltz v2, :cond_5

    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v2, p2, v2

    if-eqz v2, :cond_5

    cmpl-double v0, p2, v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v0, v0

    double-to-long v2, p2

    mul-long/2addr v0, v2

    const-wide v2, 0x41dfffffffc00000L    # 2.147483647E9

    cmpl-double v2, p2, v2

    if-gtz v2, :cond_3

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    long-to-int v0, v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    double-to-int p2, p2

    const/4 p3, 0x1

    :goto_0
    div-int/lit8 v0, p2, 0x2

    if-gt p3, v0, :cond_1

    invoke-virtual {v2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    mul-int/lit8 p3, p3, 0x2

    goto :goto_0

    :cond_1
    if-ge p3, p2, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr p2, p3

    mul-int/2addr p0, p2

    invoke-virtual {v2, p1, p0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p0, "Invalid size or count value"

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0

    :cond_4
    :goto_1
    const-string p0, ""

    return-object p0

    :cond_5
    const-string p0, "Invalid count value"

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0
.end method

.method public static m(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 10

    array-length v0, p1

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    if-ge v0, v3, :cond_0

    move-wide v4, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide v4

    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    cmpg-double v6, v4, v1

    if-gez v6, :cond_1

    int-to-double v6, v0

    add-double/2addr v4, v6

    cmpg-double v6, v4, v1

    if-gez v6, :cond_2

    move-wide v4, v1

    goto :goto_1

    :cond_1
    int-to-double v6, v0

    cmpl-double v8, v4, v6

    if-lez v8, :cond_2

    move-wide v4, v6

    :cond_2
    :goto_1
    array-length v6, p1

    const/4 v7, 0x2

    if-lt v6, v7, :cond_6

    aget-object p1, p1, v3

    sget-object v3, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne p1, v3, :cond_3

    goto :goto_3

    :cond_3
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide v6

    cmpg-double p1, v6, v1

    if-gez p1, :cond_5

    int-to-double v8, v0

    add-double/2addr v6, v8

    cmpg-double p1, v6, v1

    if-gez p1, :cond_4

    goto :goto_2

    :cond_4
    move-wide v1, v6

    goto :goto_2

    :cond_5
    int-to-double v1, v0

    cmpl-double p1, v6, v1

    if-lez p1, :cond_4

    :goto_2
    cmpg-double p1, v1, v4

    if-gez p1, :cond_7

    move-wide v1, v4

    goto :goto_4

    :cond_6
    :goto_3
    int-to-double v1, v0

    :cond_7
    :goto_4
    double-to-int p1, v4

    double-to-int v0, v1

    invoke-interface {p0, p1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static n(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 9

    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide v2

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-wide/16 v4, 0x0

    cmpg-double v6, v2, v4

    if-gez v6, :cond_1

    int-to-double v6, v0

    add-double/2addr v2, v6

    cmpg-double v6, v2, v4

    if-gez v6, :cond_2

    move-wide v2, v4

    goto :goto_0

    :cond_1
    int-to-double v6, v0

    cmpl-double v8, v2, v6

    if-lez v8, :cond_2

    move-wide v2, v6

    :cond_2
    :goto_0
    int-to-double v6, v0

    array-length v0, p1

    if-le v0, v1, :cond_5

    aget-object p1, p1, v1

    invoke-static {p1}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide v0

    cmpg-double p1, v0, v4

    if-gez p1, :cond_3

    goto :goto_1

    :cond_3
    move-wide v4, v0

    :goto_1
    add-double/2addr v4, v2

    cmpl-double p1, v4, v6

    if-lez p1, :cond_4

    goto :goto_2

    :cond_4
    move-wide v6, v4

    :cond_5
    :goto_2
    double-to-int p1, v2

    double-to-int v0, v6

    invoke-interface {p0, p1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static o(Lorg/mozilla/javascript/Context;Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 10

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p2, v1}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger([Ljava/lang/Object;I)D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpg-double v5, v1, v3

    if-gez v5, :cond_0

    move-wide v1, v3

    goto :goto_0

    :cond_0
    int-to-double v5, v0

    cmpl-double v7, v1, v5

    if-lez v7, :cond_1

    move-wide v1, v5

    :cond_1
    :goto_0
    array-length v5, p2

    const/4 v6, 0x1

    if-le v5, v6, :cond_6

    aget-object p2, p2, v6

    sget-object v5, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne p2, v5, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide v5

    cmpg-double p2, v5, v3

    if-gez p2, :cond_3

    goto :goto_1

    :cond_3
    int-to-double v3, v0

    cmpl-double p2, v5, v3

    if-lez p2, :cond_4

    goto :goto_1

    :cond_4
    move-wide v3, v5

    :goto_1
    cmpg-double p2, v3, v1

    if-gez p2, :cond_7

    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result p0

    const/16 p2, 0x78

    if-eq p0, p2, :cond_5

    move-wide v8, v1

    move-wide v1, v3

    move-wide v3, v8

    goto :goto_3

    :cond_5
    move-wide v3, v1

    goto :goto_3

    :cond_6
    :goto_2
    int-to-double v3, v0

    :cond_7
    :goto_3
    double-to-int p0, v1

    double-to-int p2, v3

    invoke-interface {p1, p0, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static p(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/NativeString;
    .locals 1

    instance-of v0, p0, Lorg/mozilla/javascript/NativeString;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/mozilla/javascript/NativeString;

    return-object p0

    :cond_0
    invoke-static {p1}, Lorg/mozilla/javascript/IdScriptableObject;->incompatibleCallError(Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0
.end method

.method public static q(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "=\""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x0

    invoke-static {p3, p2}, Lorg/mozilla/javascript/ScriptRuntime;->toString([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x22

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    const/16 p2, 0x3e

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "</"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final defaultIndexPropertyDescriptor(Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;
    .locals 3

    invoke-virtual {p0}, Lorg/mozilla/javascript/ScriptableObject;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    new-instance v0, Lorg/mozilla/javascript/NativeObject;

    invoke-direct {v0}, Lorg/mozilla/javascript/NativeObject;-><init>()V

    sget-object v1, Lorg/mozilla/javascript/TopLevel$Builtins;->Object:Lorg/mozilla/javascript/TopLevel$Builtins;

    invoke-static {v0, p0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->setBuiltinProtoAndParent(Lorg/mozilla/javascript/ScriptableObject;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/TopLevel$Builtins;)V

    const-string p0, "value"

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string p1, "writable"

    invoke-virtual {v0, p1, p0, v1}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "enumerable"

    invoke-virtual {v0, v2, p1, v1}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    const-string p1, "configurable"

    invoke-virtual {v0, p1, p0, v1}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    return-object v0
.end method

.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Lorg/mozilla/javascript/NativeString;->b:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super/range {p0 .. p5}, Lorg/mozilla/javascript/IdScriptableObject;->execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result p0

    move-object v3, p4

    move-object v4, p5

    :goto_0
    const/4 p4, -0x2

    const-string p5, ""

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, p4, :cond_27

    const/4 p4, -0x1

    if-eq p0, p4, :cond_24

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const-string v2, "font"

    const-string v5, "a"

    const/4 v6, 0x3

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    packed-switch p0, :pswitch_data_2

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "String.prototype has no method: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->getFunctionName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance p0, Lorg/mozilla/javascript/NativeStringIterator;

    invoke-static {p2, v3, p1}, Lorg/mozilla/javascript/ScriptRuntimeES6;->requireObjectCoercible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/IdFunctionObject;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Lorg/mozilla/javascript/NativeStringIterator;-><init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    return-object p0

    :pswitch_1
    invoke-static {p2, v3, p1}, Lorg/mozilla/javascript/ScriptRuntimeES6;->requireObjectCoercible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/IdFunctionObject;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, v1}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger([Ljava/lang/Object;I)D

    move-result-wide p1

    cmpg-double p3, p1, v7

    if-ltz p3, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p3

    int-to-double p3, p3

    cmpl-double p3, p1, p3

    if-ltz p3, :cond_1

    goto :goto_1

    :cond_1
    double-to-int p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->codePointAt(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_2

    :cond_2
    :goto_1
    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_2
    return-object p0

    :pswitch_2
    invoke-static {p2, v3, p1, v4}, Lorg/mozilla/javascript/NativeString;->l(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    array-length p0, v4

    if-eqz p0, :cond_8

    aget-object p0, v4, v1

    invoke-static {p0}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_4

    :cond_3
    invoke-static {v4, v1}, Lorg/mozilla/javascript/ScriptRuntime;->toString([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object p0

    sget-object p3, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_4

    goto :goto_3

    :cond_4
    sget-object p3, Ljava/text/Normalizer$Form;->NFKC:Ljava/text/Normalizer$Form;

    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_5

    goto :goto_3

    :cond_5
    sget-object p3, Ljava/text/Normalizer$Form;->NFKD:Ljava/text/Normalizer$Form;

    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_6

    goto :goto_3

    :cond_6
    sget-object p3, Ljava/text/Normalizer$Form;->NFC:Ljava/text/Normalizer$Form;

    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    :goto_3
    invoke-static {p2, v3, p1}, Lorg/mozilla/javascript/ScriptRuntimeES6;->requireObjectCoercible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/IdFunctionObject;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p3}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    const-string p0, "The normalization form should be one of \'NFC\', \'NFD\', \'NFKC\', \'NFKD\'."

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0

    :cond_8
    :goto_4
    invoke-static {p2, v3, p1}, Lorg/mozilla/javascript/ScriptRuntimeES6;->requireObjectCoercible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/IdFunctionObject;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/text/Normalizer$Form;->NFC:Ljava/text/Normalizer$Form;

    invoke-static {p0, p1}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-static {p2, v3, p1}, Lorg/mozilla/javascript/ScriptRuntimeES6;->requireObjectCoercible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/IdFunctionObject;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    array-length p5, v4

    if-lez p5, :cond_a

    aget-object p5, v4, v1

    instance-of p5, p5, Lorg/mozilla/javascript/regexp/NativeRegExp;

    if-nez p5, :cond_9

    goto :goto_5

    :cond_9
    const-class p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->getFunctionName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "msg.first.arg.not.regexp"

    invoke-static {p2, p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError2(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0

    :cond_a
    :goto_5
    invoke-static {p0, p3, v4}, Lorg/mozilla/javascript/NativeString;->c(ILjava/lang/String;[Ljava/lang/Object;)I

    move-result p3

    const/16 p5, 0x28

    if-ne p0, p5, :cond_c

    if-eq p3, p4, :cond_b

    goto :goto_6

    :cond_b
    move v0, v1

    :goto_6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_c
    const/16 p5, 0x29

    if-ne p0, p5, :cond_e

    if-nez p3, :cond_d

    goto :goto_7

    :cond_d
    move v0, v1

    :goto_7
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_e
    const/16 p5, 0x2a

    if-ne p0, p5, :cond_10

    if-eq p3, p4, :cond_f

    goto :goto_8

    :cond_f
    move v0, v1

    :goto_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_10
    :pswitch_5
    const/16 p3, 0x2e

    if-ne p0, p3, :cond_11

    goto :goto_9

    :cond_11
    move v0, v1

    :goto_9
    invoke-static {p2, v3, p1, v4, v0}, Lorg/mozilla/javascript/NativeString;->k(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;[Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-static {p2, v3, p1}, Lorg/mozilla/javascript/ScriptRuntimeES6;->requireObjectCoercible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/IdFunctionObject;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    array-length p2, p1

    :goto_a
    if-lez p2, :cond_12

    add-int/lit8 p3, p2, -0x1

    aget-char p3, p1, p3

    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->isJSWhitespaceOrLineTerminator(I)Z

    move-result p3

    if-eqz p3, :cond_12

    add-int/lit8 p2, p2, -0x1

    goto :goto_a

    :cond_12
    invoke-virtual {p0, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-static {p2, v3, p1}, Lorg/mozilla/javascript/ScriptRuntimeES6;->requireObjectCoercible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/IdFunctionObject;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    :goto_b
    array-length p2, p1

    if-ge v1, p2, :cond_13

    aget-char p2, p1, v1

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->isJSWhitespaceOrLineTerminator(I)Z

    move-result p2

    if-eqz p2, :cond_13

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_13
    array-length p1, p1

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_8
    invoke-static {p2, v3, p1}, Lorg/mozilla/javascript/ScriptRuntimeES6;->requireObjectCoercible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/IdFunctionObject;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    :goto_c
    array-length p2, p1

    if-ge v1, p2, :cond_14

    aget-char p2, p1, v1

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->isJSWhitespaceOrLineTerminator(I)Z

    move-result p2

    if-eqz p2, :cond_14

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_14
    array-length p2, p1

    :goto_d
    if-le p2, v1, :cond_15

    add-int/lit8 p3, p2, -0x1

    aget-char p3, p1, p3

    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->isJSWhitespaceOrLineTerminator(I)Z

    move-result p3

    if-eqz p3, :cond_15

    add-int/lit8 p2, p2, -0x1

    goto :goto_d

    :cond_15
    invoke-virtual {p0, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_9
    invoke-static {p2, v3, p1}, Lorg/mozilla/javascript/ScriptRuntimeES6;->requireObjectCoercible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/IdFunctionObject;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lorg/mozilla/javascript/Context;->getLocale()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_a
    invoke-static {p2, v3, p1}, Lorg/mozilla/javascript/ScriptRuntimeES6;->requireObjectCoercible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/IdFunctionObject;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lorg/mozilla/javascript/Context;->getLocale()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_b
    invoke-static {p2, v3, p1}, Lorg/mozilla/javascript/ScriptRuntimeES6;->requireObjectCoercible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/IdFunctionObject;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lorg/mozilla/javascript/Context;->getLocale()Ljava/util/Locale;

    move-result-object p1

    invoke-static {p1}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/text/Collator;->setStrength(I)V

    invoke-virtual {p1, v0}, Ljava/text/Collator;->setDecomposition(I)V

    invoke-static {v4, v1}, Lorg/mozilla/javascript/ScriptRuntime;->toString([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    int-to-double p0, p0

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p0

    return-object p0

    :pswitch_c
    const/16 p4, 0x1f

    if-ne p0, p4, :cond_16

    move v5, v0

    goto :goto_e

    :cond_16
    const/16 p4, 0x20

    if-ne p0, p4, :cond_17

    move v5, v6

    goto :goto_e

    :cond_17
    const/4 p0, 0x2

    move v5, p0

    :goto_e
    invoke-static {p2, v3, p1}, Lorg/mozilla/javascript/ScriptRuntimeES6;->requireObjectCoercible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/IdFunctionObject;)Ljava/lang/Object;

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->checkRegExpProxy(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/RegExpProxy;

    move-result-object v0

    move-object v1, p2

    move-object v2, p3

    invoke-interface/range {v0 .. v5}, Lorg/mozilla/javascript/RegExpProxy;->action(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_d
    invoke-static {v3}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, v1}, Lorg/mozilla/javascript/ScriptRuntime;->toString([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0x1d

    if-ne p0, p3, :cond_18

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_f

    :cond_18
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    :goto_f
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_e
    const-string p0, "name"

    invoke-static {v3, v5, p0, v4}, Lorg/mozilla/javascript/NativeString;->q(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_f
    const-string p0, "href"

    invoke-static {v3, v5, p0, v4}, Lorg/mozilla/javascript/NativeString;->q(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_10
    const-string p0, "color"

    invoke-static {v3, v2, p0, v4}, Lorg/mozilla/javascript/NativeString;->q(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_11
    const-string p0, "size"

    invoke-static {v3, v2, p0, v4}, Lorg/mozilla/javascript/NativeString;->q(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_12
    const-string p0, "sub"

    invoke-static {v3, p0, v9, v9}, Lorg/mozilla/javascript/NativeString;->q(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_13
    const-string p0, "sup"

    invoke-static {v3, p0, v9, v9}, Lorg/mozilla/javascript/NativeString;->q(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_14
    const-string p0, "blink"

    invoke-static {v3, p0, v9, v9}, Lorg/mozilla/javascript/NativeString;->q(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_15
    const-string p0, "big"

    invoke-static {v3, p0, v9, v9}, Lorg/mozilla/javascript/NativeString;->q(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_16
    const-string p0, "small"

    invoke-static {v3, p0, v9, v9}, Lorg/mozilla/javascript/NativeString;->q(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_17
    const-string p0, "strike"

    invoke-static {v3, p0, v9, v9}, Lorg/mozilla/javascript/NativeString;->q(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_18
    const-string p0, "tt"

    invoke-static {v3, p0, v9, v9}, Lorg/mozilla/javascript/NativeString;->q(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_19
    const-string p0, "i"

    invoke-static {v3, p0, v9, v9}, Lorg/mozilla/javascript/NativeString;->q(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1a
    const-string p0, "b"

    invoke-static {v3, p0, v9, v9}, Lorg/mozilla/javascript/NativeString;->q(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1b
    invoke-static {p2, v3, p1}, Lorg/mozilla/javascript/ScriptRuntimeES6;->requireObjectCoercible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/IdFunctionObject;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toCharSequence(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0, v4}, Lorg/mozilla/javascript/NativeString;->m(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :pswitch_1c
    invoke-static {p2, v3, p1}, Lorg/mozilla/javascript/ScriptRuntimeES6;->requireObjectCoercible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/IdFunctionObject;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v4}, Lorg/mozilla/javascript/NativeString;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1d
    invoke-static {p2, v3, p1}, Lorg/mozilla/javascript/ScriptRuntimeES6;->requireObjectCoercible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/IdFunctionObject;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toCharSequence(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0, v4}, Lorg/mozilla/javascript/NativeString;->n(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :pswitch_1e
    invoke-static {p2, v3, p1}, Lorg/mozilla/javascript/ScriptRuntimeES6;->requireObjectCoercible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/IdFunctionObject;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1f
    invoke-static {p2, v3, p1}, Lorg/mozilla/javascript/ScriptRuntimeES6;->requireObjectCoercible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/IdFunctionObject;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_20
    invoke-static {p2, v3, p1}, Lorg/mozilla/javascript/ScriptRuntimeES6;->requireObjectCoercible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/IdFunctionObject;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toCharSequence(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p2, p0, v4}, Lorg/mozilla/javascript/NativeString;->o(Lorg/mozilla/javascript/Context;Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :pswitch_21
    invoke-static {p2, v3, p1}, Lorg/mozilla/javascript/ScriptRuntimeES6;->requireObjectCoercible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/IdFunctionObject;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->checkRegExpProxy(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/RegExpProxy;

    move-result-object p1

    invoke-interface {p1, p2, p3, p0, v4}, Lorg/mozilla/javascript/RegExpProxy;->js_split(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_22
    invoke-static {p2, v3, p1}, Lorg/mozilla/javascript/ScriptRuntimeES6;->requireObjectCoercible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/IdFunctionObject;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v4}, Lorg/mozilla/javascript/NativeString;->f(Ljava/lang/String;[Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->wrapInt(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_23
    invoke-static {p2, v3, p1}, Lorg/mozilla/javascript/ScriptRuntimeES6;->requireObjectCoercible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/IdFunctionObject;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x7

    invoke-static {p1, p0, v4}, Lorg/mozilla/javascript/NativeString;->c(ILjava/lang/String;[Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->wrapInt(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_24
    invoke-static {p2, v3, p1}, Lorg/mozilla/javascript/ScriptRuntimeES6;->requireObjectCoercible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/IdFunctionObject;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toCharSequence(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {v4, v1}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger([Ljava/lang/Object;I)D

    move-result-wide p2

    cmpg-double p4, p2, v7

    const/4 v0, 0x5

    if-ltz p4, :cond_1b

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p4

    int-to-double v1, p4

    cmpl-double p4, p2, v1

    if-ltz p4, :cond_19

    goto :goto_10

    :cond_19
    double-to-int p2, p2

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    if-ne p0, v0, :cond_1a

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1a
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapInt(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1b
    :goto_10
    if-ne p0, v0, :cond_1c

    return-object p5

    :cond_1c
    sget-object p0, Lorg/mozilla/javascript/ScriptRuntime;->NaNobj:Ljava/lang/Double;

    return-object p0

    :pswitch_25
    invoke-static {v3, p1}, Lorg/mozilla/javascript/NativeString;->p(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/NativeString;

    move-result-object p0

    iget-object p0, p0, Lorg/mozilla/javascript/NativeString;->string:Ljava/lang/CharSequence;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "(new String(\""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->escapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"))"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_26
    invoke-static {v3, p1}, Lorg/mozilla/javascript/NativeString;->p(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/NativeString;

    move-result-object p0

    iget-object p0, p0, Lorg/mozilla/javascript/NativeString;->string:Ljava/lang/CharSequence;

    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_1d

    goto :goto_11

    :cond_1d
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_11
    return-object p0

    :pswitch_27
    array-length p0, v4

    if-nez p0, :cond_1e

    goto :goto_12

    :cond_1e
    aget-object p0, v4, v1

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->isSymbol(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1f

    if-eqz v3, :cond_1f

    aget-object p0, v4, v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p5

    goto :goto_12

    :cond_1f
    aget-object p0, v4, v1

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toCharSequence(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p5

    :goto_12
    if-nez v3, :cond_20

    new-instance p0, Lorg/mozilla/javascript/NativeString;

    invoke-direct {p0, p5}, Lorg/mozilla/javascript/NativeString;-><init>(Ljava/lang/CharSequence;)V

    return-object p0

    :cond_20
    instance-of p0, p5, Ljava/lang/String;

    if-eqz p0, :cond_21

    goto :goto_13

    :cond_21
    invoke-interface {p5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p5

    :goto_13
    return-object p5

    :pswitch_28
    array-length p4, v4

    if-lez p4, :cond_23

    aget-object p4, v4, v1

    invoke-static {p4}, Lorg/mozilla/javascript/ScriptRuntime;->toCharSequence(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p4

    invoke-static {p2, p3, p4}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p4

    array-length p5, v4

    sub-int/2addr p5, v0

    new-array v0, p5, [Ljava/lang/Object;

    :goto_14
    if-ge v1, p5, :cond_22

    add-int/lit8 v2, v1, 0x1

    aget-object v3, v4, v2

    aput-object v3, v0, v1

    move v1, v2

    goto :goto_14

    :cond_22
    move-object v3, p4

    move-object v4, v0

    goto :goto_15

    :cond_23
    invoke-static {v3}, Lorg/mozilla/javascript/ScriptRuntime;->toCharSequence(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p4

    invoke-static {p2, p3, p4}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p4

    move-object v3, p4

    :goto_15
    neg-int p0, p0

    goto/16 :goto_0

    :cond_24
    array-length p0, v4

    if-ge p0, v0, :cond_25

    return-object p5

    :cond_25
    new-array p1, p0, [C

    :goto_16
    if-eq v1, p0, :cond_26

    aget-object p2, v4, v1

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toUint16(Ljava/lang/Object;)C

    move-result p2

    aput-char p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_26
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V

    return-object p0

    :cond_27
    array-length p0, v4

    if-ge p0, v0, :cond_28

    return-object p5

    :cond_28
    new-array p1, p0, [I

    move p2, v1

    :goto_17
    if-eq p2, p0, :cond_2a

    aget-object p3, v4, p2

    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(Ljava/lang/Object;)I

    move-result p4

    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-static {v2, v3, p5}, Lorg/mozilla/javascript/ScriptRuntime;->eqNumber(DLjava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_29

    invoke-static {p4}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result p5

    if-eqz p5, :cond_29

    aput p4, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_17

    :cond_29
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid code point "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0

    :cond_2a
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1, v1, p0}, Ljava/lang/String;-><init>([III)V

    return-object p2

    :pswitch_data_0
    .packed-switch -0x23
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0xf
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_26
        :pswitch_24
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public fillConstructorProperties(Lorg/mozilla/javascript/IdFunctionObject;)V
    .locals 7

    sget-object v6, Lorg/mozilla/javascript/NativeString;->b:Ljava/lang/Object;

    const-string v4, "fromCharCode"

    const/4 v5, 0x1

    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const-string v4, "fromCodePoint"

    const/4 v3, -0x2

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const-string v4, "charAt"

    const/4 v5, 0x2

    const/4 v3, -0x5

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const-string v4, "charCodeAt"

    const/4 v3, -0x6

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const-string v4, "indexOf"

    const/4 v3, -0x7

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const-string v4, "lastIndexOf"

    const/4 v3, -0x8

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const-string v4, "split"

    const/4 v5, 0x3

    const/16 v3, -0x9

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const-string v4, "substring"

    const/16 v3, -0xa

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const-string v4, "toLowerCase"

    const/4 v5, 0x1

    const/16 v3, -0xb

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const-string v4, "toUpperCase"

    const/16 v3, -0xc

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const-string v4, "substr"

    const/4 v5, 0x3

    const/16 v3, -0xd

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const-string v4, "concat"

    const/4 v5, 0x2

    const/16 v3, -0xe

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const-string v4, "slice"

    const/4 v5, 0x3

    const/16 v3, -0xf

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const-string v4, "equalsIgnoreCase"

    const/4 v5, 0x2

    const/16 v3, -0x1e

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const-string v4, "match"

    const/16 v3, -0x1f

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const-string v4, "search"

    const/16 v3, -0x20

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const-string v4, "replace"

    const/16 v3, -0x21

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const-string v4, "localeCompare"

    const/16 v3, -0x22

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const-string v4, "toLocaleLowerCase"

    const/4 v5, 0x1

    const/16 v3, -0x23

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->fillConstructorProperties(Lorg/mozilla/javascript/IdFunctionObject;)V

    return-void
.end method

.method public findInstanceIdInfo(Ljava/lang/String;)I
    .locals 1

    const-string v0, "length"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x7

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->instanceIdInfo(II)I

    move-result p0

    return p0

    :cond_0
    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->findInstanceIdInfo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public findPrototypeId(Ljava/lang/String;)I
    .locals 16

    move-object/from16 v0, p1

    .line 2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v4, 0x6

    const/16 v5, 0x64

    const/16 v6, 0x55

    const/16 v7, 0x4c

    const/16 v8, 0x8

    const/16 v11, 0x72

    const/16 v12, 0x61

    const/4 v13, 0x4

    const/16 v14, 0x63

    const/4 v15, 0x2

    const/16 v2, 0x6e

    const/16 v10, 0x73

    const/16 v3, 0x74

    const/4 v9, 0x0

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 3
    :pswitch_1
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v7, :cond_0

    .line 4
    const-string v1, "toLocaleLowerCase"

    const/16 v4, 0x23

    goto/16 :goto_1

    :cond_0
    if-ne v1, v6, :cond_2b

    .line 5
    const-string v1, "toLocaleUpperCase"

    const/16 v4, 0x24

    goto/16 :goto_1

    .line 6
    :pswitch_2
    const-string v1, "equalsIgnoreCase"

    const/16 v4, 0x1e

    goto/16 :goto_1

    .line 7
    :pswitch_3
    const-string v1, "localeCompare"

    const/16 v4, 0x22

    goto/16 :goto_1

    .line 8
    :pswitch_4
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v7, :cond_5

    if-eq v1, v6, :cond_4

    if-eq v1, v5, :cond_3

    if-eq v1, v2, :cond_2

    if-eq v1, v10, :cond_1

    goto/16 :goto_0

    .line 9
    :cond_1
    const-string v1, "lastIndexOf"

    move v4, v8

    goto/16 :goto_1

    .line 10
    :cond_2
    const-string v1, "constructor"

    const/4 v4, 0x1

    goto/16 :goto_1

    .line 11
    :cond_3
    const-string v1, "codePointAt"

    const/16 v4, 0x2d

    goto/16 :goto_1

    .line 12
    :cond_4
    const-string v1, "toUpperCase"

    const/16 v4, 0xc

    goto/16 :goto_1

    .line 13
    :cond_5
    const-string v1, "toLowerCase"

    const/16 v4, 0xb

    goto/16 :goto_1

    .line 14
    :pswitch_5
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v14, :cond_6

    .line 15
    const-string v1, "charCodeAt"

    goto/16 :goto_1

    :cond_6
    if-ne v1, v10, :cond_2b

    .line 16
    const-string v1, "startsWith"

    const/16 v4, 0x29

    goto/16 :goto_1

    .line 17
    :pswitch_6
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x52

    if-eq v1, v2, :cond_b

    const/16 v2, 0x53

    if-eq v1, v2, :cond_a

    if-eq v1, v12, :cond_9

    if-eq v1, v14, :cond_8

    if-eq v1, v3, :cond_7

    goto/16 :goto_0

    .line 18
    :cond_7
    const-string v1, "substring"

    const/16 v4, 0xa

    goto/16 :goto_1

    .line 19
    :cond_8
    const-string v1, "fontcolor"

    const/16 v4, 0x1a

    goto/16 :goto_1

    .line 20
    :cond_9
    const-string v1, "normalize"

    const/16 v4, 0x2b

    goto/16 :goto_1

    .line 21
    :cond_a
    const-string v1, "trimStart"

    const/16 v4, 0x31

    goto/16 :goto_1

    .line 22
    :cond_b
    const-string v1, "trimRight"

    const/16 v4, 0x27

    goto/16 :goto_1

    .line 23
    :pswitch_7
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v14, :cond_12

    if-eq v1, v2, :cond_11

    if-eq v1, v11, :cond_10

    if-eq v1, v3, :cond_f

    const/16 v2, 0x7a

    if-eq v1, v2, :cond_e

    const/16 v2, 0x65

    if-eq v1, v2, :cond_d

    const/16 v2, 0x66

    if-eq v1, v2, :cond_c

    goto/16 :goto_0

    .line 24
    :cond_c
    const-string v1, "trimLeft"

    const/16 v4, 0x26

    goto/16 :goto_1

    .line 25
    :cond_d
    const-string v1, "includes"

    const/16 v4, 0x28

    goto/16 :goto_1

    .line 26
    :cond_e
    const-string v1, "fontsize"

    const/16 v4, 0x19

    goto/16 :goto_1

    .line 27
    :cond_f
    const-string v1, "endsWith"

    const/16 v4, 0x2a

    goto/16 :goto_1

    .line 28
    :cond_10
    const-string v1, "padStart"

    const/16 v4, 0x2e

    goto/16 :goto_1

    .line 29
    :cond_11
    const-string v1, "toString"

    move v4, v15

    goto/16 :goto_1

    .line 30
    :cond_12
    const-string v1, "toSource"

    const/4 v4, 0x3

    goto/16 :goto_1

    :pswitch_8
    const/4 v1, 0x1

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v12, :cond_17

    const/16 v4, 0x65

    if-eq v1, v4, :cond_16

    if-eq v1, v2, :cond_15

    if-eq v1, v11, :cond_14

    if-eq v1, v3, :cond_13

    goto/16 :goto_0

    .line 32
    :cond_13
    const-string v1, "italics"

    const/16 v4, 0x11

    goto/16 :goto_1

    .line 33
    :cond_14
    const-string v1, "trimEnd"

    const/16 v4, 0x32

    goto/16 :goto_1

    .line 34
    :cond_15
    const-string v1, "indexOf"

    const/4 v4, 0x7

    goto/16 :goto_1

    .line 35
    :cond_16
    const-string v1, "replace"

    const/16 v4, 0x21

    goto/16 :goto_1

    .line 36
    :cond_17
    const-string v1, "valueOf"

    move v4, v13

    goto/16 :goto_1

    :pswitch_9
    const/4 v1, 0x1

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v12, :cond_20

    const/16 v4, 0x65

    if-eq v1, v4, :cond_1e

    const/16 v4, 0x68

    if-eq v1, v4, :cond_1d

    const/16 v4, 0x71

    if-eq v1, v4, :cond_1c

    if-eq v1, v2, :cond_1b

    const/16 v2, 0x6f

    if-eq v1, v2, :cond_1a

    if-eq v1, v3, :cond_19

    const/16 v2, 0x75

    if-eq v1, v2, :cond_18

    goto/16 :goto_0

    .line 38
    :cond_18
    const-string v1, "substr"

    const/16 v4, 0xd

    goto/16 :goto_1

    .line 39
    :cond_19
    const-string v1, "strike"

    const/16 v4, 0x13

    goto/16 :goto_1

    .line 40
    :cond_1a
    const-string v1, "concat"

    const/16 v4, 0xe

    goto/16 :goto_1

    .line 41
    :cond_1b
    const-string v1, "anchor"

    const/16 v4, 0x1c

    goto/16 :goto_1

    .line 42
    :cond_1c
    const-string v1, "equals"

    const/16 v4, 0x1d

    goto/16 :goto_1

    .line 43
    :cond_1d
    const-string v1, "charAt"

    const/4 v4, 0x5

    goto/16 :goto_1

    .line 44
    :cond_1e
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v11, :cond_1f

    .line 45
    const-string v1, "repeat"

    const/16 v4, 0x2c

    goto/16 :goto_1

    :cond_1f
    if-ne v1, v10, :cond_2b

    .line 46
    const-string v1, "search"

    const/16 v4, 0x20

    goto/16 :goto_1

    .line 47
    :cond_20
    const-string v1, "padEnd"

    const/16 v4, 0x2f

    goto/16 :goto_1

    .line 48
    :pswitch_a
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v5, :cond_26

    const/16 v2, 0x65

    if-eq v1, v2, :cond_25

    const/16 v2, 0x68

    if-eq v1, v2, :cond_24

    if-eq v1, v3, :cond_23

    const/16 v2, 0x6b

    if-eq v1, v2, :cond_22

    const/16 v2, 0x6c

    if-eq v1, v2, :cond_21

    goto/16 :goto_0

    .line 49
    :cond_21
    const-string v1, "small"

    const/16 v4, 0x14

    goto/16 :goto_1

    .line 50
    :cond_22
    const-string v1, "blink"

    const/16 v4, 0x16

    goto/16 :goto_1

    .line 51
    :cond_23
    const-string v1, "split"

    const/16 v4, 0x9

    goto/16 :goto_1

    .line 52
    :cond_24
    const-string v1, "match"

    const/16 v4, 0x1f

    goto/16 :goto_1

    .line 53
    :cond_25
    const-string v1, "slice"

    const/16 v4, 0xf

    goto/16 :goto_1

    .line 54
    :cond_26
    const-string v1, "fixed"

    const/16 v4, 0x12

    goto/16 :goto_1

    .line 55
    :pswitch_b
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x62

    if-ne v1, v2, :cond_27

    .line 56
    const-string v1, "bold"

    const/16 v4, 0x10

    goto :goto_1

    :cond_27
    const/16 v2, 0x6c

    if-ne v1, v2, :cond_28

    .line 57
    const-string v1, "link"

    const/16 v4, 0x1b

    goto :goto_1

    :cond_28
    if-ne v1, v3, :cond_2b

    .line 58
    const-string v1, "trim"

    const/16 v4, 0x25

    goto :goto_1

    .line 59
    :pswitch_c
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x62

    if-ne v1, v2, :cond_29

    .line 60
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v10, :cond_2b

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x75

    if-ne v1, v2, :cond_2b

    const/16 v9, 0x18

    goto :goto_2

    :cond_29
    const/4 v2, 0x1

    const/16 v3, 0x67

    if-ne v1, v3, :cond_2a

    .line 61
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x62

    if-ne v1, v3, :cond_2b

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x69

    if-ne v1, v2, :cond_2b

    const/16 v9, 0x15

    goto :goto_2

    :cond_2a
    const/16 v3, 0x70

    if-ne v1, v3, :cond_2b

    .line 62
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v10, :cond_2b

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x75

    if-ne v1, v2, :cond_2b

    const/16 v9, 0x17

    goto :goto_2

    :cond_2b
    :goto_0
    const/4 v1, 0x0

    move v4, v9

    :goto_1
    if-eqz v1, :cond_2c

    if-eq v1, v0, :cond_2c

    .line 63
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    goto :goto_2

    :cond_2c
    move v9, v4

    :goto_2
    return v9

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public findPrototypeId(Lorg/mozilla/javascript/Symbol;)I
    .locals 0

    .line 1
    sget-object p0, Lorg/mozilla/javascript/SymbolKey;->ITERATOR:Lorg/mozilla/javascript/SymbolKey;

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/SymbolKey;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x30

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/NativeString;->string:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lorg/mozilla/javascript/NativeString;->string:Ljava/lang/CharSequence;

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getAttributes(I)I
    .locals 1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lorg/mozilla/javascript/NativeString;->string:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p1, v0, :cond_1

    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object p0

    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result p0

    const/16 p1, 0xc8

    if-ge p0, p1, :cond_0

    const/4 p0, 0x7

    goto :goto_0

    :cond_0
    const/4 p0, 0x5

    :goto_0
    return p0

    :cond_1
    invoke-super {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getAttributes(I)I

    move-result p0

    return p0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 0

    const-string p0, "String"

    return-object p0
.end method

.method public getIds(ZZ)[Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_1

    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/IdScriptableObject;->getIds(ZZ)[Ljava/lang/Object;

    move-result-object p1

    array-length p2, p1

    iget-object v0, p0, Lorg/mozilla/javascript/NativeString;->string:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/2addr p2, v0

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lorg/mozilla/javascript/NativeString;->string:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    array-length p0, p1

    invoke-static {p1, v0, p2, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2

    :cond_1
    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/IdScriptableObject;->getIds(ZZ)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getInstanceIdName(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p0, "length"

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->getInstanceIdName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getInstanceIdValue(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lorg/mozilla/javascript/NativeString;->string:Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->wrapInt(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->getInstanceIdValue(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getLength()I
    .locals 0

    iget-object p0, p0, Lorg/mozilla/javascript/NativeString;->string:Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    return p0
.end method

.method public getMaxInstanceId()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getOwnPropertyDescriptor(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;
    .locals 3

    instance-of v0, p2, Lorg/mozilla/javascript/Symbol;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->toStringIdOrIndex(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptRuntime$c;

    move-result-object v0

    iget-object v1, v0, Lorg/mozilla/javascript/ScriptRuntime$c;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    iget v1, v0, Lorg/mozilla/javascript/ScriptRuntime$c;->b:I

    if-ltz v1, :cond_0

    iget-object v2, p0, Lorg/mozilla/javascript/NativeString;->string:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object p1, p0, Lorg/mozilla/javascript/NativeString;->string:Ljava/lang/CharSequence;

    iget p2, v0, Lorg/mozilla/javascript/ScriptRuntime$c;->b:I

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/NativeString;->defaultIndexPropertyDescriptor(Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/IdScriptableObject;->getOwnPropertyDescriptor(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object p0

    return-object p0
.end method

.method public has(ILorg/mozilla/javascript/Scriptable;)Z
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/NativeString;->string:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->has(ILorg/mozilla/javascript/Scriptable;)Z

    move-result p0

    return p0
.end method

.method public initPrototypeId(I)V
    .locals 8

    const/16 v0, 0x30

    if-ne p1, v0, :cond_0

    sget-object v2, Lorg/mozilla/javascript/NativeString;->b:Ljava/lang/Object;

    sget-object v4, Lorg/mozilla/javascript/SymbolKey;->ITERATOR:Lorg/mozilla/javascript/SymbolKey;

    const-string v5, "[Symbol.iterator]"

    const/4 v6, 0x0

    move-object v1, p0

    move v3, p1

    invoke-virtual/range {v1 .. v6}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeMethod(Ljava/lang/Object;ILorg/mozilla/javascript/Symbol;Ljava/lang/String;I)Lorg/mozilla/javascript/IdFunctionObject;

    return-void

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    const-string v0, "trimEnd"

    :goto_0
    move-object v5, v0

    move v7, v2

    goto/16 :goto_3

    :pswitch_2
    const-string v0, "trimStart"

    goto :goto_0

    :pswitch_3
    const-string v0, "padEnd"

    :goto_1
    move-object v5, v0

    move v7, v1

    goto/16 :goto_3

    :pswitch_4
    const-string v0, "padStart"

    goto :goto_1

    :pswitch_5
    const-string v0, "codePointAt"

    goto :goto_1

    :pswitch_6
    const-string v0, "repeat"

    goto :goto_1

    :pswitch_7
    const-string v0, "normalize"

    goto :goto_0

    :pswitch_8
    const-string v0, "endsWith"

    goto :goto_1

    :pswitch_9
    const-string v0, "startsWith"

    goto :goto_1

    :pswitch_a
    const-string v0, "includes"

    goto :goto_1

    :pswitch_b
    const-string v0, "trimRight"

    goto :goto_0

    :pswitch_c
    const-string v0, "trimLeft"

    goto :goto_0

    :pswitch_d
    const-string v0, "trim"

    goto :goto_0

    :pswitch_e
    const-string v0, "toLocaleUpperCase"

    goto :goto_0

    :pswitch_f
    const-string v0, "toLocaleLowerCase"

    goto :goto_0

    :pswitch_10
    const-string v0, "localeCompare"

    goto :goto_1

    :pswitch_11
    const-string v1, "replace"

    :goto_2
    move v7, v0

    move-object v5, v1

    goto/16 :goto_3

    :pswitch_12
    const-string v0, "search"

    goto :goto_1

    :pswitch_13
    const-string v0, "match"

    goto :goto_1

    :pswitch_14
    const-string v0, "equalsIgnoreCase"

    goto :goto_1

    :pswitch_15
    const-string v0, "equals"

    goto :goto_1

    :pswitch_16
    const-string v0, "anchor"

    goto :goto_0

    :pswitch_17
    const-string v0, "link"

    goto :goto_0

    :pswitch_18
    const-string v0, "fontcolor"

    goto :goto_0

    :pswitch_19
    const-string v0, "fontsize"

    goto :goto_0

    :pswitch_1a
    const-string v0, "sub"

    goto :goto_0

    :pswitch_1b
    const-string v0, "sup"

    goto :goto_0

    :pswitch_1c
    const-string v0, "blink"

    goto :goto_0

    :pswitch_1d
    const-string v0, "big"

    goto :goto_0

    :pswitch_1e
    const-string v0, "small"

    goto :goto_0

    :pswitch_1f
    const-string v0, "strike"

    goto :goto_0

    :pswitch_20
    const-string v0, "fixed"

    goto :goto_0

    :pswitch_21
    const-string v0, "italics"

    goto :goto_0

    :pswitch_22
    const-string v0, "bold"

    goto :goto_0

    :pswitch_23
    const-string v1, "slice"

    goto :goto_2

    :pswitch_24
    const-string v0, "concat"

    goto :goto_1

    :pswitch_25
    const-string v1, "substr"

    goto :goto_2

    :pswitch_26
    const-string v0, "toUpperCase"

    goto :goto_0

    :pswitch_27
    const-string v0, "toLowerCase"

    goto :goto_0

    :pswitch_28
    const-string v1, "substring"

    goto :goto_2

    :pswitch_29
    const-string v1, "split"

    goto :goto_2

    :pswitch_2a
    const-string v0, "lastIndexOf"

    goto :goto_1

    :pswitch_2b
    const-string v0, "indexOf"

    goto :goto_1

    :pswitch_2c
    const-string v0, "charCodeAt"

    goto/16 :goto_1

    :pswitch_2d
    const-string v0, "charAt"

    goto/16 :goto_1

    :pswitch_2e
    const-string v0, "valueOf"

    goto/16 :goto_0

    :pswitch_2f
    const-string v0, "toSource"

    goto/16 :goto_0

    :pswitch_30
    const-string v0, "toString"

    goto/16 :goto_0

    :pswitch_31
    const-string v0, "constructor"

    goto/16 :goto_1

    :goto_3
    sget-object v3, Lorg/mozilla/javascript/NativeString;->b:Ljava/lang/Object;

    const/4 v6, 0x0

    move-object v2, p0

    move v4, p1

    invoke-virtual/range {v2 .. v7}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeMethod(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;I)Lorg/mozilla/javascript/IdFunctionObject;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/NativeString;->string:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/mozilla/javascript/ScriptableObject;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    return-void
.end method

.method public toCharSequence()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/javascript/NativeString;->string:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lorg/mozilla/javascript/NativeString;->string:Ljava/lang/CharSequence;

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
