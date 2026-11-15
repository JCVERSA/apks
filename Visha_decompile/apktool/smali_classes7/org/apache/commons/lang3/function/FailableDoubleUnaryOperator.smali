.class public interface abstract Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Throwable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final NOP:Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ltm3;

    invoke-direct {v0}, Ltm3;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;->NOP:Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;

    return-void
.end method

.method public static synthetic a(Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;D)D
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;->lambda$compose$3(Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic b(D)D
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;->lambda$identity$1(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic c(D)D
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;->lambda$static$0(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic d(Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;D)D
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;->lambda$andThen$2(Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static identity()Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">()",
            "Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lsm3;

    invoke-direct {v0}, Lsm3;-><init>()V

    return-object v0
.end method

.method private synthetic lambda$andThen$2(Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;D)D
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-interface {p0, p2, p3}, Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide p2

    invoke-interface {p1, p2, p3}, Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide p0

    return-wide p0
.end method

.method private synthetic lambda$compose$3(Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;D)D
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-interface {p1, p2, p3}, Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide p1

    invoke-interface {p0, p1, p2}, Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide p0

    return-wide p0
.end method

.method private static synthetic lambda$identity$1(D)D
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    return-wide p0
.end method

.method private static synthetic lambda$static$0(D)D
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public static nop()Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">()",
            "Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator<",
            "TE;>;"
        }
    .end annotation

    sget-object v0, Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;->NOP:Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;

    return-object v0
.end method


# virtual methods
.method public andThen(Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;)Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator<",
            "TE;>;)",
            "Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator<",
            "TE;>;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lvm3;

    invoke-direct {v0, p0, p1}, Lvm3;-><init>(Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;)V

    return-object v0
.end method

.method public abstract applyAsDouble(D)D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)D^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public compose(Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;)Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator<",
            "TE;>;)",
            "Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator<",
            "TE;>;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lum3;

    invoke-direct {v0, p0, p1}, Lum3;-><init>(Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;)V

    return-object v0
.end method
