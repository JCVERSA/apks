.class public final synthetic Lrl3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/lang3/function/FailableRunnable;


# instance fields
.field public final synthetic a:Lorg/apache/commons/lang3/function/FailableIntConsumer;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/function/FailableIntConsumer;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrl3;->a:Lorg/apache/commons/lang3/function/FailableIntConsumer;

    iput p2, p0, Lrl3;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lrl3;->a:Lorg/apache/commons/lang3/function/FailableIntConsumer;

    iget p0, p0, Lrl3;->b:I

    invoke-static {v0, p0}, Lorg/apache/commons/lang3/function/Failable;->k(Lorg/apache/commons/lang3/function/FailableIntConsumer;I)V

    return-void
.end method
