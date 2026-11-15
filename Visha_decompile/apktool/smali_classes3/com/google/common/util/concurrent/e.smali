.class public abstract Lcom/google/common/util/concurrent/e;
.super Ly44;
.source "SourceFile"

# interfaces
.implements Lim5;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/e$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ly44;-><init>()V

    return-void
.end method


# virtual methods
.method public addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/e;->k()Lim5;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lim5;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public abstract k()Lim5;
.end method
