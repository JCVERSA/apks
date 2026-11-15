.class public final synthetic Lzn3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;


# instance fields
.field public final synthetic a:Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;

.field public final synthetic b:Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzn3;->a:Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;

    iput-object p2, p0, Lzn3;->b:Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;

    return-void
.end method


# virtual methods
.method public final applyAsLong(J)J
    .locals 1

    iget-object v0, p0, Lzn3;->a:Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;

    iget-object p0, p0, Lzn3;->b:Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;

    invoke-static {v0, p0, p1, p2}, Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;->c(Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;J)J

    move-result-wide p0

    return-wide p0
.end method
