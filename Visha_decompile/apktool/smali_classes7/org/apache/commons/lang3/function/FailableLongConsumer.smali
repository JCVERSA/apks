.class public interface abstract Lorg/apache/commons/lang3/function/FailableLongConsumer;
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
.field public static final NOP:Lorg/apache/commons/lang3/function/FailableLongConsumer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lon3;

    invoke-direct {v0}, Lon3;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/function/FailableLongConsumer;->NOP:Lorg/apache/commons/lang3/function/FailableLongConsumer;

    return-void
.end method

.method public static synthetic a(Lorg/apache/commons/lang3/function/FailableLongConsumer;Lorg/apache/commons/lang3/function/FailableLongConsumer;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/lang3/function/FailableLongConsumer;->lambda$andThen$1(Lorg/apache/commons/lang3/function/FailableLongConsumer;J)V

    return-void
.end method

.method public static synthetic b(J)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/function/FailableLongConsumer;->lambda$static$0(J)V

    return-void
.end method

.method private synthetic lambda$andThen$1(Lorg/apache/commons/lang3/function/FailableLongConsumer;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-interface {p0, p2, p3}, Lorg/apache/commons/lang3/function/FailableLongConsumer;->accept(J)V

    invoke-interface {p1, p2, p3}, Lorg/apache/commons/lang3/function/FailableLongConsumer;->accept(J)V

    return-void
.end method

.method private static synthetic lambda$static$0(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    return-void
.end method

.method public static nop()Lorg/apache/commons/lang3/function/FailableLongConsumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">()",
            "Lorg/apache/commons/lang3/function/FailableLongConsumer<",
            "TE;>;"
        }
    .end annotation

    sget-object v0, Lorg/apache/commons/lang3/function/FailableLongConsumer;->NOP:Lorg/apache/commons/lang3/function/FailableLongConsumer;

    return-object v0
.end method


# virtual methods
.method public abstract accept(J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public andThen(Lorg/apache/commons/lang3/function/FailableLongConsumer;)Lorg/apache/commons/lang3/function/FailableLongConsumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/function/FailableLongConsumer<",
            "TE;>;)",
            "Lorg/apache/commons/lang3/function/FailableLongConsumer<",
            "TE;>;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lpn3;

    invoke-direct {v0, p0, p1}, Lpn3;-><init>(Lorg/apache/commons/lang3/function/FailableLongConsumer;Lorg/apache/commons/lang3/function/FailableLongConsumer;)V

    return-object v0
.end method
