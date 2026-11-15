.class final Lorg/mozilla/javascript/NativeError$ProtoProps;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/NativeError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProtoProps"
.end annotation


# static fields
.field static final GET_PREPARE_STACK:Ljava/lang/reflect/Method;

.field static final GET_STACK_LIMIT:Ljava/lang/reflect/Method;

.field static final KEY:Ljava/lang/String; = "_ErrorPrototypeProps"

.field static final SET_PREPARE_STACK:Ljava/lang/reflect/Method;

.field static final SET_STACK_LIMIT:Ljava/lang/reflect/Method;

.field private static final serialVersionUID:J = 0x1a77aa91307f85d3L


# instance fields
.field private prepareStackTrace:Lorg/mozilla/javascript/Function;

.field private stackTraceLimit:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-class v0, Ljava/lang/Object;

    const-class v1, Lorg/mozilla/javascript/Scriptable;

    const-class v2, Lorg/mozilla/javascript/NativeError$ProtoProps;

    :try_start_0
    const-string v3, "getStackTraceLimit"

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lorg/mozilla/javascript/NativeError$ProtoProps;->GET_STACK_LIMIT:Ljava/lang/reflect/Method;

    const-string v3, "setStackTraceLimit"

    filled-new-array {v1, v0}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lorg/mozilla/javascript/NativeError$ProtoProps;->SET_STACK_LIMIT:Ljava/lang/reflect/Method;

    const-string v3, "getPrepareStackTrace"

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lorg/mozilla/javascript/NativeError$ProtoProps;->GET_PREPARE_STACK:Ljava/lang/reflect/Method;

    const-string v3, "setPrepareStackTrace"

    filled-new-array {v1, v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/NativeError$ProtoProps;->SET_PREPARE_STACK:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lorg/mozilla/javascript/NativeError$ProtoProps;->stackTraceLimit:I

    return-void
.end method

.method public synthetic constructor <init>(Lorg/mozilla/javascript/NativeError$a;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lorg/mozilla/javascript/NativeError$ProtoProps;-><init>()V

    return-void
.end method


# virtual methods
.method public getPrepareStackTrace(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeError$ProtoProps;->getPrepareStackTrace()Lorg/mozilla/javascript/Function;

    move-result-object p0

    if-nez p0, :cond_0

    .line 2
    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public getPrepareStackTrace()Lorg/mozilla/javascript/Function;
    .locals 0

    .line 3
    iget-object p0, p0, Lorg/mozilla/javascript/NativeError$ProtoProps;->prepareStackTrace:Lorg/mozilla/javascript/Function;

    return-object p0
.end method

.method public getStackTraceLimit()I
    .locals 0

    .line 4
    iget p0, p0, Lorg/mozilla/javascript/NativeError$ProtoProps;->stackTraceLimit:I

    return p0
.end method

.method public getStackTraceLimit(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget p0, p0, Lorg/mozilla/javascript/NativeError$ProtoProps;->stackTraceLimit:I

    if-ltz p0, :cond_0

    .line 2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide/high16 p0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 3
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public setPrepareStackTrace(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .locals 0

    if-eqz p2, :cond_1

    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    instance-of p1, p2, Lorg/mozilla/javascript/Function;

    if-eqz p1, :cond_2

    check-cast p2, Lorg/mozilla/javascript/Function;

    iput-object p2, p0, Lorg/mozilla/javascript/NativeError$ProtoProps;->prepareStackTrace:Lorg/mozilla/javascript/Function;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/mozilla/javascript/NativeError$ProtoProps;->prepareStackTrace:Lorg/mozilla/javascript/Function;

    :cond_2
    :goto_1
    return-void
.end method

.method public setStackTraceLimit(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .locals 1

    invoke-static {p2}, Lorg/mozilla/javascript/Context;->toNumber(Ljava/lang/Object;)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    double-to-int p1, p1

    iput p1, p0, Lorg/mozilla/javascript/NativeError$ProtoProps;->stackTraceLimit:I

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    iput p1, p0, Lorg/mozilla/javascript/NativeError$ProtoProps;->stackTraceLimit:I

    :goto_1
    return-void
.end method
