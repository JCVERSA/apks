.class public interface abstract Lcom/mgtv/task/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Param:",
        "Ljava/lang/Object;",
        "ResultType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract a(Lcom/mgtv/task/j;Ljava/lang/Object;)Lcom/mgtv/task/l;
    .param p1    # Lcom/mgtv/task/j;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mgtv/task/j;",
            "TParam;)",
            "Lcom/mgtv/task/l<",
            "TResultType;>;"
        }
    .end annotation
.end method
