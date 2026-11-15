.class public interface abstract Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;
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
.field public static final NOP:Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkn3;

    invoke-direct {v0}, Lkn3;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;->NOP:Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;

    return-void
.end method

.method public static synthetic a(I)I
    .locals 0

    invoke-static {p0}, Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;->lambda$static$0(I)I

    move-result p0

    return p0
.end method

.method public static synthetic b(Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;I)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;->lambda$compose$3(Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;I)I

    move-result p0

    return p0
.end method

.method public static synthetic c(Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;I)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;->lambda$andThen$2(Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;I)I

    move-result p0

    return p0
.end method

.method public static synthetic d(I)I
    .locals 0

    invoke-static {p0}, Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;->lambda$identity$1(I)I

    move-result p0

    return p0
.end method

.method public static identity()Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">()",
            "Lorg/apache/commons/lang3/function/FailableIntUnaryOperator<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lnn3;

    invoke-direct {v0}, Lnn3;-><init>()V

    return-object v0
.end method

.method private synthetic lambda$andThen$2(Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-interface {p0, p2}, Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;->applyAsInt(I)I

    move-result p0

    invoke-interface {p1, p0}, Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;->applyAsInt(I)I

    move-result p0

    return p0
.end method

.method private synthetic lambda$compose$3(Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-interface {p1, p2}, Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;->applyAsInt(I)I

    move-result p1

    invoke-interface {p0, p1}, Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;->applyAsInt(I)I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$identity$1(I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    return p0
.end method

.method private static synthetic lambda$static$0(I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public static nop()Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">()",
            "Lorg/apache/commons/lang3/function/FailableIntUnaryOperator<",
            "TE;>;"
        }
    .end annotation

    sget-object v0, Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;->NOP:Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;

    return-object v0
.end method


# virtual methods
.method public andThen(Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;)Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/function/FailableIntUnaryOperator<",
            "TE;>;)",
            "Lorg/apache/commons/lang3/function/FailableIntUnaryOperator<",
            "TE;>;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lmn3;

    invoke-direct {v0, p0, p1}, Lmn3;-><init>(Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;)V

    return-object v0
.end method

.method public abstract applyAsInt(I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)I^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public compose(Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;)Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/function/FailableIntUnaryOperator<",
            "TE;>;)",
            "Lorg/apache/commons/lang3/function/FailableIntUnaryOperator<",
            "TE;>;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lln3;

    invoke-direct {v0, p0, p1}, Lln3;-><init>(Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;)V

    return-object v0
.end method
