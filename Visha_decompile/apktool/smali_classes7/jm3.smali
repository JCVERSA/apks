.class public final synthetic Ljm3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/lang3/function/FailableDoubleConsumer;


# instance fields
.field public final synthetic a:Lorg/apache/commons/lang3/function/FailableDoubleConsumer;

.field public final synthetic b:Lorg/apache/commons/lang3/function/FailableDoubleConsumer;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/function/FailableDoubleConsumer;Lorg/apache/commons/lang3/function/FailableDoubleConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljm3;->a:Lorg/apache/commons/lang3/function/FailableDoubleConsumer;

    iput-object p2, p0, Ljm3;->b:Lorg/apache/commons/lang3/function/FailableDoubleConsumer;

    return-void
.end method


# virtual methods
.method public final accept(D)V
    .locals 1

    iget-object v0, p0, Ljm3;->a:Lorg/apache/commons/lang3/function/FailableDoubleConsumer;

    iget-object p0, p0, Ljm3;->b:Lorg/apache/commons/lang3/function/FailableDoubleConsumer;

    invoke-static {v0, p0, p1, p2}, Lorg/apache/commons/lang3/function/FailableDoubleConsumer;->b(Lorg/apache/commons/lang3/function/FailableDoubleConsumer;Lorg/apache/commons/lang3/function/FailableDoubleConsumer;D)V

    return-void
.end method
