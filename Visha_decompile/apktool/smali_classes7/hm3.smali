.class public final synthetic Lhm3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/lang3/function/FailableConsumer;


# instance fields
.field public final synthetic a:Lorg/apache/commons/lang3/function/FailableConsumer;

.field public final synthetic b:Lorg/apache/commons/lang3/function/FailableConsumer;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/function/FailableConsumer;Lorg/apache/commons/lang3/function/FailableConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhm3;->a:Lorg/apache/commons/lang3/function/FailableConsumer;

    iput-object p2, p0, Lhm3;->b:Lorg/apache/commons/lang3/function/FailableConsumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lhm3;->a:Lorg/apache/commons/lang3/function/FailableConsumer;

    iget-object p0, p0, Lhm3;->b:Lorg/apache/commons/lang3/function/FailableConsumer;

    invoke-static {v0, p0, p1}, Lorg/apache/commons/lang3/function/FailableConsumer;->b(Lorg/apache/commons/lang3/function/FailableConsumer;Lorg/apache/commons/lang3/function/FailableConsumer;Ljava/lang/Object;)V

    return-void
.end method
