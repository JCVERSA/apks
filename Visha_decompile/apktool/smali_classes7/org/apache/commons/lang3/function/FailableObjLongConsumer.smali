.class public interface abstract Lorg/apache/commons/lang3/function/FailableObjLongConsumer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Throwable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# static fields
.field public static final NOP:Lorg/apache/commons/lang3/function/FailableObjLongConsumer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Leo3;

    invoke-direct {v0}, Leo3;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/function/FailableObjLongConsumer;->NOP:Lorg/apache/commons/lang3/function/FailableObjLongConsumer;

    return-void
.end method

.method public static synthetic a(Ljava/lang/Object;J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/function/FailableObjLongConsumer;->lambda$static$0(Ljava/lang/Object;J)V

    return-void
.end method

.method private static synthetic lambda$static$0(Ljava/lang/Object;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    return-void
.end method

.method public static nop()Lorg/apache/commons/lang3/function/FailableObjLongConsumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Throwable;",
            ">()",
            "Lorg/apache/commons/lang3/function/FailableObjLongConsumer<",
            "TT;TE;>;"
        }
    .end annotation

    sget-object v0, Lorg/apache/commons/lang3/function/FailableObjLongConsumer;->NOP:Lorg/apache/commons/lang3/function/FailableObjLongConsumer;

    return-object v0
.end method


# virtual methods
.method public abstract accept(Ljava/lang/Object;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
