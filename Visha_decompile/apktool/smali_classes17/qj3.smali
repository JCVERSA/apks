.class public interface abstract Lqj3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltr8;


# virtual methods
.method public addSubscription(Lqc2;)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lqc2;->A1:Lqc2;

    if-eq p1, v0, :cond_0

    invoke-interface {p0}, Lqj3;->getSubscriptions()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public closeAllSubscription()V
    .locals 2

    invoke-interface {p0}, Lqj3;->getSubscriptions()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lqc2;

    invoke-interface {v1}, Lqc2;->close()V

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lqj3;->getSubscriptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public abstract getSubscriptions()Ljava/util/List;
.end method

.method public release()V
    .locals 0

    invoke-interface {p0}, Lqj3;->closeAllSubscription()V

    return-void
.end method
