.class public final synthetic Laa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/common/util/concurrent/AggregateFuture;

.field public final synthetic c:I

.field public final synthetic d:Lim5;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/util/concurrent/AggregateFuture;ILim5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laa;->b:Lcom/google/common/util/concurrent/AggregateFuture;

    iput p2, p0, Laa;->c:I

    iput-object p3, p0, Laa;->d:Lim5;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Laa;->b:Lcom/google/common/util/concurrent/AggregateFuture;

    iget v1, p0, Laa;->c:I

    iget-object p0, p0, Laa;->d:Lim5;

    invoke-static {v0, v1, p0}, Lcom/google/common/util/concurrent/AggregateFuture;->w(Lcom/google/common/util/concurrent/AggregateFuture;ILim5;)V

    return-void
.end method
