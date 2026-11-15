.class public Lfreemarker/ext/util/a;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lfreemarker/ext/util/IdentityHashMap;


# direct methods
.method public constructor <init>(Lfreemarker/ext/util/IdentityHashMap;)V
    .locals 0

    iput-object p1, p0, Lfreemarker/ext/util/a;->b:Lfreemarker/ext/util/IdentityHashMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    iget-object p0, p0, Lfreemarker/ext/util/a;->b:Lfreemarker/ext/util/IdentityHashMap;

    invoke-virtual {p0}, Lfreemarker/ext/util/IdentityHashMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    iget-object p0, p0, Lfreemarker/ext/util/a;->b:Lfreemarker/ext/util/IdentityHashMap;

    invoke-static {p0}, Lfreemarker/ext/util/IdentityHashMap;->access$200(Lfreemarker/ext/util/IdentityHashMap;)[Lfreemarker/ext/util/IdentityHashMap$b;

    move-result-object p0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    :goto_0
    const v2, 0x7fffffff

    and-int/2addr v2, v0

    array-length v3, p0

    rem-int/2addr v2, v3

    aget-object p0, p0, v2

    :goto_1
    if-eqz p0, :cond_3

    iget v2, p0, Lfreemarker/ext/util/IdentityHashMap$b;->b:I

    if-ne v2, v0, :cond_2

    invoke-virtual {p0, p1}, Lfreemarker/ext/util/IdentityHashMap$b;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    iget-object p0, p0, Lfreemarker/ext/util/IdentityHashMap$b;->e:Lfreemarker/ext/util/IdentityHashMap$b;

    goto :goto_1

    :cond_3
    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    iget-object p0, p0, Lfreemarker/ext/util/a;->b:Lfreemarker/ext/util/IdentityHashMap;

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lfreemarker/ext/util/IdentityHashMap;->access$000(Lfreemarker/ext/util/IdentityHashMap;I)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 9

    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lfreemarker/ext/util/a;->b:Lfreemarker/ext/util/IdentityHashMap;

    invoke-static {v2}, Lfreemarker/ext/util/IdentityHashMap;->access$200(Lfreemarker/ext/util/IdentityHashMap;)[Lfreemarker/ext/util/IdentityHashMap$b;

    move-result-object v2

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    :goto_0
    const v3, 0x7fffffff

    and-int/2addr v3, v0

    array-length v4, v2

    rem-int/2addr v3, v4

    aget-object v4, v2, v3

    const/4 v5, 0x0

    move-object v6, v5

    :goto_1
    if-eqz v4, :cond_4

    iget v7, v4, Lfreemarker/ext/util/IdentityHashMap$b;->b:I

    if-ne v7, v0, :cond_3

    invoke-virtual {v4, p1}, Lfreemarker/ext/util/IdentityHashMap$b;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object p1, p0, Lfreemarker/ext/util/a;->b:Lfreemarker/ext/util/IdentityHashMap;

    invoke-static {p1}, Lfreemarker/ext/util/IdentityHashMap;->access$308(Lfreemarker/ext/util/IdentityHashMap;)I

    if-eqz v6, :cond_2

    iget-object p1, v4, Lfreemarker/ext/util/IdentityHashMap$b;->e:Lfreemarker/ext/util/IdentityHashMap$b;

    iput-object p1, v6, Lfreemarker/ext/util/IdentityHashMap$b;->e:Lfreemarker/ext/util/IdentityHashMap$b;

    goto :goto_2

    :cond_2
    iget-object p1, v4, Lfreemarker/ext/util/IdentityHashMap$b;->e:Lfreemarker/ext/util/IdentityHashMap$b;

    aput-object p1, v2, v3

    :goto_2
    iget-object p0, p0, Lfreemarker/ext/util/a;->b:Lfreemarker/ext/util/IdentityHashMap;

    invoke-static {p0}, Lfreemarker/ext/util/IdentityHashMap;->access$110(Lfreemarker/ext/util/IdentityHashMap;)I

    iput-object v5, v4, Lfreemarker/ext/util/IdentityHashMap$b;->d:Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    :cond_3
    iget-object v6, v4, Lfreemarker/ext/util/IdentityHashMap$b;->e:Lfreemarker/ext/util/IdentityHashMap$b;

    move-object v8, v6

    move-object v6, v4

    move-object v4, v8

    goto :goto_1

    :cond_4
    return v1
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lfreemarker/ext/util/a;->b:Lfreemarker/ext/util/IdentityHashMap;

    invoke-static {p0}, Lfreemarker/ext/util/IdentityHashMap;->access$100(Lfreemarker/ext/util/IdentityHashMap;)I

    move-result p0

    return p0
.end method
