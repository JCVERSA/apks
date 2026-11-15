.class public interface abstract Lorg/apache/commons/lang3/function/FailableDoublePredicate;
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

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# static fields
.field public static final FALSE:Lorg/apache/commons/lang3/function/FailableDoublePredicate;

.field public static final TRUE:Lorg/apache/commons/lang3/function/FailableDoublePredicate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lom3;

    invoke-direct {v0}, Lom3;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/function/FailableDoublePredicate;->FALSE:Lorg/apache/commons/lang3/function/FailableDoublePredicate;

    new-instance v0, Lpm3;

    invoke-direct {v0}, Lpm3;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/function/FailableDoublePredicate;->TRUE:Lorg/apache/commons/lang3/function/FailableDoublePredicate;

    return-void
.end method

.method public static synthetic a(D)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/function/FailableDoublePredicate;->lambda$static$0(D)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lorg/apache/commons/lang3/function/FailableDoublePredicate;Lorg/apache/commons/lang3/function/FailableDoublePredicate;D)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/lang3/function/FailableDoublePredicate;->lambda$or$4(Lorg/apache/commons/lang3/function/FailableDoublePredicate;D)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lorg/apache/commons/lang3/function/FailableDoublePredicate;D)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/function/FailableDoublePredicate;->lambda$negate$3(D)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(D)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/function/FailableDoublePredicate;->lambda$static$1(D)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Lorg/apache/commons/lang3/function/FailableDoublePredicate;Lorg/apache/commons/lang3/function/FailableDoublePredicate;D)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/lang3/function/FailableDoublePredicate;->lambda$and$2(Lorg/apache/commons/lang3/function/FailableDoublePredicate;D)Z

    move-result p0

    return p0
.end method

.method public static falsePredicate()Lorg/apache/commons/lang3/function/FailableDoublePredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">()",
            "Lorg/apache/commons/lang3/function/FailableDoublePredicate<",
            "TE;>;"
        }
    .end annotation

    sget-object v0, Lorg/apache/commons/lang3/function/FailableDoublePredicate;->FALSE:Lorg/apache/commons/lang3/function/FailableDoublePredicate;

    return-object v0
.end method

.method private synthetic lambda$and$2(Lorg/apache/commons/lang3/function/FailableDoublePredicate;D)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-interface {p0, p2, p3}, Lorg/apache/commons/lang3/function/FailableDoublePredicate;->test(D)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1, p2, p3}, Lorg/apache/commons/lang3/function/FailableDoublePredicate;->test(D)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$negate$3(D)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-interface {p0, p1, p2}, Lorg/apache/commons/lang3/function/FailableDoublePredicate;->test(D)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private synthetic lambda$or$4(Lorg/apache/commons/lang3/function/FailableDoublePredicate;D)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-interface {p0, p2, p3}, Lorg/apache/commons/lang3/function/FailableDoublePredicate;->test(D)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-interface {p1, p2, p3}, Lorg/apache/commons/lang3/function/FailableDoublePredicate;->test(D)Z

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

.method private static synthetic lambda$static$0(D)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$static$1(D)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method public static truePredicate()Lorg/apache/commons/lang3/function/FailableDoublePredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">()",
            "Lorg/apache/commons/lang3/function/FailableDoublePredicate<",
            "TE;>;"
        }
    .end annotation

    sget-object v0, Lorg/apache/commons/lang3/function/FailableDoublePredicate;->TRUE:Lorg/apache/commons/lang3/function/FailableDoublePredicate;

    return-object v0
.end method


# virtual methods
.method public and(Lorg/apache/commons/lang3/function/FailableDoublePredicate;)Lorg/apache/commons/lang3/function/FailableDoublePredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/function/FailableDoublePredicate<",
            "TE;>;)",
            "Lorg/apache/commons/lang3/function/FailableDoublePredicate<",
            "TE;>;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lmm3;

    invoke-direct {v0, p0, p1}, Lmm3;-><init>(Lorg/apache/commons/lang3/function/FailableDoublePredicate;Lorg/apache/commons/lang3/function/FailableDoublePredicate;)V

    return-object v0
.end method

.method public negate()Lorg/apache/commons/lang3/function/FailableDoublePredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/lang3/function/FailableDoublePredicate<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lnm3;

    invoke-direct {v0, p0}, Lnm3;-><init>(Lorg/apache/commons/lang3/function/FailableDoublePredicate;)V

    return-object v0
.end method

.method public or(Lorg/apache/commons/lang3/function/FailableDoublePredicate;)Lorg/apache/commons/lang3/function/FailableDoublePredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/function/FailableDoublePredicate<",
            "TE;>;)",
            "Lorg/apache/commons/lang3/function/FailableDoublePredicate<",
            "TE;>;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Llm3;

    invoke-direct {v0, p0, p1}, Llm3;-><init>(Lorg/apache/commons/lang3/function/FailableDoublePredicate;Lorg/apache/commons/lang3/function/FailableDoublePredicate;)V

    return-object v0
.end method

.method public abstract test(D)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)Z^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
