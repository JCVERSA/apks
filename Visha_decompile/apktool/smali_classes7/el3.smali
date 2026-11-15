.class public final synthetic Lel3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/lang3/function/FailableRunnable;


# instance fields
.field public final synthetic a:Lorg/apache/commons/lang3/function/FailableDoubleConsumer;

.field public final synthetic b:D


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/function/FailableDoubleConsumer;D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lel3;->a:Lorg/apache/commons/lang3/function/FailableDoubleConsumer;

    iput-wide p2, p0, Lel3;->b:D

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lel3;->a:Lorg/apache/commons/lang3/function/FailableDoubleConsumer;

    iget-wide v1, p0, Lel3;->b:D

    invoke-static {v0, v1, v2}, Lorg/apache/commons/lang3/function/Failable;->f(Lorg/apache/commons/lang3/function/FailableDoubleConsumer;D)V

    return-void
.end method
