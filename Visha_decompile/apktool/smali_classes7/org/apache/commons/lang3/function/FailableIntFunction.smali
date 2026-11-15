.class public interface abstract Lorg/apache/commons/lang3/function/FailableIntFunction;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
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
.field public static final NOP:Lorg/apache/commons/lang3/function/FailableIntFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn3;

    invoke-direct {v0}, Lcn3;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/function/FailableIntFunction;->NOP:Lorg/apache/commons/lang3/function/FailableIntFunction;

    return-void
.end method

.method public static synthetic a(I)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lorg/apache/commons/lang3/function/FailableIntFunction;->lambda$static$0(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$static$0(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public static nop()Lorg/apache/commons/lang3/function/FailableIntFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Throwable;",
            ">()",
            "Lorg/apache/commons/lang3/function/FailableIntFunction<",
            "TR;TE;>;"
        }
    .end annotation

    sget-object v0, Lorg/apache/commons/lang3/function/FailableIntFunction;->NOP:Lorg/apache/commons/lang3/function/FailableIntFunction;

    return-object v0
.end method


# virtual methods
.method public abstract apply(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TR;^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
