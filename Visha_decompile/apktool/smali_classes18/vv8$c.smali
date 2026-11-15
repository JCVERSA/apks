.class public Lvv8$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvv8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final b:Ljava/util/Stack;

.field public c:Lqm5;


# direct methods
.method public constructor <init>(Lpo0;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lvv8$c;->b:Ljava/util/Stack;

    .line 4
    invoke-virtual {p0, p1}, Lvv8$c;->a(Lpo0;)Lqm5;

    move-result-object p1

    iput-object p1, p0, Lvv8$c;->c:Lqm5;

    return-void
.end method

.method public synthetic constructor <init>(Lpo0;Lvv8$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lvv8$c;-><init>(Lpo0;)V

    return-void
.end method


# virtual methods
.method public final a(Lpo0;)Lqm5;
    .locals 1

    :goto_0
    instance-of v0, p1, Lvv8;

    if-eqz v0, :cond_0

    check-cast p1, Lvv8;

    iget-object v0, p0, Lvv8$c;->b:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lvv8;->z(Lvv8;)Lpo0;

    move-result-object p1

    goto :goto_0

    :cond_0
    check-cast p1, Lqm5;

    return-object p1
.end method

.method public final b()Lqm5;
    .locals 2

    :cond_0
    iget-object v0, p0, Lvv8$c;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget-object v0, p0, Lvv8$c;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvv8;

    invoke-static {v0}, Lvv8;->A(Lvv8;)Lpo0;

    move-result-object v0

    invoke-virtual {p0, v0}, Lvv8$c;->a(Lpo0;)Lqm5;

    move-result-object v0

    invoke-virtual {v0}, Lpo0;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0
.end method

.method public c()Lqm5;
    .locals 2

    iget-object v0, p0, Lvv8$c;->c:Lqm5;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lvv8$c;->b()Lqm5;

    move-result-object v1

    iput-object v1, p0, Lvv8$c;->c:Lqm5;

    return-object v0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public hasNext()Z
    .locals 0

    iget-object p0, p0, Lvv8$c;->c:Lqm5;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lvv8$c;->c()Lqm5;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
