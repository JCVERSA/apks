.class public Lorg/mvel2/ast/Proto$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mvel2/ast/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field private a:Lorg/mvel2/ast/Proto;

.field private b:Lorg/mvel2/integration/VariableResolverFactory;

.field private c:Lorg/mvel2/util/q;

.field final synthetic d:Lorg/mvel2/ast/Proto;


# direct methods
.method public constructor <init>(Lorg/mvel2/ast/Proto;Lorg/mvel2/ast/Proto;Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lorg/mvel2/ast/Proto$b;->d:Lorg/mvel2/ast/Proto;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lorg/mvel2/ast/Proto$b;->a:Lorg/mvel2/ast/Proto;

    .line 7
    .line 8
    new-instance v0, Lorg/mvel2/util/q;

    .line 9
    .line 10
    invoke-direct {v0}, Lorg/mvel2/util/q;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lorg/mvel2/ast/Proto$b;->c:Lorg/mvel2/util/q;

    .line 14
    .line 15
    invoke-static {p2}, Lorg/mvel2/ast/Proto;->access$100(Lorg/mvel2/ast/Proto;)Ljava/util/Map;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Ljava/util/Map$Entry;

    .line 38
    .line 39
    iget-object v1, p0, Lorg/mvel2/ast/Proto$b;->c:Lorg/mvel2/util/q;

    .line 40
    .line 41
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Lorg/mvel2/ast/Proto$c;

    .line 50
    .line 51
    invoke-virtual {v0, p0, p3, p4, p5}, Lorg/mvel2/ast/Proto$c;->d(Lorg/mvel2/ast/Proto$b;Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Lorg/mvel2/ast/Proto$c;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v1, v2, v0}, Lorg/mvel2/util/q;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    new-instance p2, Lorg/mvel2/ast/Proto$ProtoContextFactory;

    .line 60
    .line 61
    iget-object p3, p0, Lorg/mvel2/ast/Proto$b;->c:Lorg/mvel2/util/q;

    .line 62
    .line 63
    invoke-direct {p2, p1, p3}, Lorg/mvel2/ast/Proto$ProtoContextFactory;-><init>(Lorg/mvel2/ast/Proto;Lorg/mvel2/util/q;)V

    .line 64
    .line 65
    .line 66
    iput-object p2, p0, Lorg/mvel2/ast/Proto$b;->b:Lorg/mvel2/integration/VariableResolverFactory;

    .line 67
    .line 68
    return-void
.end method

.method static synthetic a(Lorg/mvel2/ast/Proto$b;)Lorg/mvel2/integration/VariableResolverFactory;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mvel2/ast/Proto$b;->b:Lorg/mvel2/integration/VariableResolverFactory;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public c(Ljava/lang/Object;)Lorg/mvel2/ast/Proto$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ast/Proto$b;->c:Lorg/mvel2/util/q;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/mvel2/util/q;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lorg/mvel2/ast/Proto$c;

    .line 8
    .line 9
    return-object p1
.end method

.method public clear()V
    .locals 0

    .line 1
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ast/Proto$b;->c:Lorg/mvel2/util/q;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/mvel2/util/q;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ast/Proto$b;->c:Lorg/mvel2/util/q;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/mvel2/util/q;->containsValue(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public d(Ljava/lang/String;Lorg/mvel2/ast/Proto$c;)Lorg/mvel2/ast/Proto$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ast/Proto$b;->c:Lorg/mvel2/util/q;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lorg/mvel2/util/q;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lorg/mvel2/ast/Proto$c;

    .line 8
    .line 9
    return-object p1
.end method

.method public e(Ljava/lang/Object;)Lorg/mvel2/ast/Proto$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ast/Proto$b;->c:Lorg/mvel2/util/q;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/mvel2/util/q;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lorg/mvel2/ast/Proto$c;

    .line 8
    .line 9
    return-object p1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ast/Proto$b;->c:Lorg/mvel2/util/q;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/mvel2/util/q;->entrySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/mvel2/ast/Proto$b;->c(Ljava/lang/Object;)Lorg/mvel2/ast/Proto$c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ast/Proto$b;->c:Lorg/mvel2/util/q;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/mvel2/util/q;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ast/Proto$b;->c:Lorg/mvel2/util/q;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/mvel2/util/q;->keySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    check-cast p2, Lorg/mvel2/ast/Proto$c;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lorg/mvel2/ast/Proto$b;->d(Ljava/lang/String;Lorg/mvel2/ast/Proto$c;)Lorg/mvel2/ast/Proto$c;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/mvel2/ast/Proto$b;->e(Ljava/lang/Object;)Lorg/mvel2/ast/Proto$c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ast/Proto$b;->c:Lorg/mvel2/util/q;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/mvel2/util/q;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ast/Proto$b;->c:Lorg/mvel2/util/q;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/mvel2/util/q;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
