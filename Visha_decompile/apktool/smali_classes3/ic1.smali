.class public interface abstract Lic1;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lvk8;->b(Ljava/lang/Class;)Lvk8;

    move-result-object p1

    invoke-interface {p0, p1}, Lic1;->d(Lvk8;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public abstract b(Lvk8;)Lpj8;
.end method

.method public c(Ljava/lang/Class;)Ljava/util/Set;
    .locals 0

    invoke-static {p1}, Lvk8;->b(Ljava/lang/Class;)Lvk8;

    move-result-object p1

    invoke-interface {p0, p1}, Lic1;->g(Lvk8;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public d(Lvk8;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p1}, Lic1;->f(Lvk8;)Lpj8;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lpj8;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public e(Ljava/lang/Class;)Lpj8;
    .locals 0

    invoke-static {p1}, Lvk8;->b(Ljava/lang/Class;)Lvk8;

    move-result-object p1

    invoke-interface {p0, p1}, Lic1;->f(Lvk8;)Lpj8;

    move-result-object p0

    return-object p0
.end method

.method public abstract f(Lvk8;)Lpj8;
.end method

.method public g(Lvk8;)Ljava/util/Set;
    .locals 0

    invoke-interface {p0, p1}, Lic1;->b(Lvk8;)Lpj8;

    move-result-object p0

    invoke-interface {p0}, Lpj8;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method
