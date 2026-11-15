.class public abstract Lu7i;
.super Ls7i;
.source "SourceFile"

# interfaces
.implements Lim5;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ls7i;-><init>()V

    return-void
.end method


# virtual methods
.method public final addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-virtual {p0}, Lu7i;->e()Lim5;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lim5;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public abstract e()Lim5;
.end method
