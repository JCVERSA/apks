.class public final Lju8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lic1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lju8$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/Set;

.field public final b:Ljava/util/Set;

.field public final c:Ljava/util/Set;

.field public final d:Ljava/util/Set;

.field public final e:Ljava/util/Set;

.field public final f:Ljava/util/Set;

.field public final g:Lic1;


# direct methods
.method public constructor <init>(Lzb1;Lic1;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p1}, Lzb1;->g()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lk82;

    invoke-virtual {v6}, Lk82;->d()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Lk82;->f()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Lk82;->b()Lvk8;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v6}, Lk82;->b()Lvk8;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Lk82;->c()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v6}, Lk82;->b()Lvk8;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v6}, Lk82;->f()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v6}, Lk82;->b()Lvk8;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v6}, Lk82;->b()Lvk8;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lzb1;->k()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    const-class v5, Lkk8;

    invoke-static {v5}, Lvk8;->b(Ljava/lang/Class;)Lvk8;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lju8;->a:Ljava/util/Set;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lju8;->b:Ljava/util/Set;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lju8;->c:Ljava/util/Set;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lju8;->d:Ljava/util/Set;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lju8;->e:Ljava/util/Set;

    invoke-virtual {p1}, Lzb1;->k()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lju8;->f:Ljava/util/Set;

    iput-object p2, p0, Lju8;->g:Lic1;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lju8;->a:Ljava/util/Set;

    invoke-static {p1}, Lvk8;->b(Ljava/lang/Class;)Lvk8;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lju8;->g:Lic1;

    invoke-interface {v0, p1}, Lic1;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-class v1, Lkk8;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance p1, Lju8$a;

    iget-object p0, p0, Lju8;->f:Ljava/util/Set;

    check-cast v0, Lkk8;

    invoke-direct {p1, p0, v0}, Lju8$a;-><init>(Ljava/util/Set;Lkk8;)V

    return-object p1

    :cond_1
    new-instance p0, Lcom/google/firebase/components/DependencyException;

    const-string v0, "Attempting to request an undeclared dependency %s."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/firebase/components/DependencyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b(Lvk8;)Lpj8;
    .locals 1

    iget-object v0, p0, Lju8;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lju8;->g:Lic1;

    invoke-interface {p0, p1}, Lic1;->b(Lvk8;)Lpj8;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/google/firebase/components/DependencyException;

    const-string v0, "Attempting to request an undeclared dependency Provider<Set<%s>>."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/firebase/components/DependencyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public d(Lvk8;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lju8;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lju8;->g:Lic1;

    invoke-interface {p0, p1}, Lic1;->d(Lvk8;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/google/firebase/components/DependencyException;

    const-string v0, "Attempting to request an undeclared dependency %s."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/firebase/components/DependencyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public e(Ljava/lang/Class;)Lpj8;
    .locals 0

    invoke-static {p1}, Lvk8;->b(Ljava/lang/Class;)Lvk8;

    move-result-object p1

    invoke-virtual {p0, p1}, Lju8;->f(Lvk8;)Lpj8;

    move-result-object p0

    return-object p0
.end method

.method public f(Lvk8;)Lpj8;
    .locals 1

    iget-object v0, p0, Lju8;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lju8;->g:Lic1;

    invoke-interface {p0, p1}, Lic1;->f(Lvk8;)Lpj8;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/google/firebase/components/DependencyException;

    const-string v0, "Attempting to request an undeclared dependency Provider<%s>."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/firebase/components/DependencyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public g(Lvk8;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lju8;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lju8;->g:Lic1;

    invoke-interface {p0, p1}, Lic1;->g(Lvk8;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/google/firebase/components/DependencyException;

    const-string v0, "Attempting to request an undeclared dependency Set<%s>."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/firebase/components/DependencyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
