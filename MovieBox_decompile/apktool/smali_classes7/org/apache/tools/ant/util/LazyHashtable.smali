.class public Lorg/apache/tools/ant/util/LazyHashtable;
.super Ljava/util/Hashtable;
.source "source.java"


# instance fields
.field protected initAllDone:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/util/Hashtable;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lorg/apache/tools/ant/util/LazyHashtable;->initAllDone:Z

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/LazyHashtable;->initAll()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Ljava/util/Hashtable;->contains(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    return p1
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/LazyHashtable;->initAll()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/util/LazyHashtable;->contains(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public elements()Ljava/util/Enumeration;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/LazyHashtable;->initAll()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method protected initAll()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/tools/ant/util/LazyHashtable;->initAllDone:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lorg/apache/tools/ant/util/LazyHashtable;->initAllDone:Z

    .line 8
    .line 9
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/LazyHashtable;->initAll()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Ljava/util/Hashtable;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public keys()Ljava/util/Enumeration;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/LazyHashtable;->initAll()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public size()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/LazyHashtable;->initAll()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Ljava/util/Hashtable;->size()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    return v0
.end method
