.class public final synthetic Lan3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/lang3/function/FailableIntConsumer;


# instance fields
.field public final synthetic a:Lorg/apache/commons/lang3/function/FailableIntConsumer;

.field public final synthetic b:Lorg/apache/commons/lang3/function/FailableIntConsumer;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/function/FailableIntConsumer;Lorg/apache/commons/lang3/function/FailableIntConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lan3;->a:Lorg/apache/commons/lang3/function/FailableIntConsumer;

    iput-object p2, p0, Lan3;->b:Lorg/apache/commons/lang3/function/FailableIntConsumer;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 1

    iget-object v0, p0, Lan3;->a:Lorg/apache/commons/lang3/function/FailableIntConsumer;

    iget-object p0, p0, Lan3;->b:Lorg/apache/commons/lang3/function/FailableIntConsumer;

    invoke-static {v0, p0, p1}, Lorg/apache/commons/lang3/function/FailableIntConsumer;->a(Lorg/apache/commons/lang3/function/FailableIntConsumer;Lorg/apache/commons/lang3/function/FailableIntConsumer;I)V

    return-void
.end method
