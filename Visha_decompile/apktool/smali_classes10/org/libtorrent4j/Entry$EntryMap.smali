.class final Lorg/libtorrent4j/Entry$EntryMap;
.super Ljava/util/AbstractMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/libtorrent4j/Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EntryMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap<",
        "Ljava/lang/String;",
        "Lorg/libtorrent4j/Entry;",
        ">;"
    }
.end annotation


# instance fields
.field private final m:Lorg/libtorrent4j/swig/boost_string_entry_map;


# direct methods
.method public constructor <init>(Lorg/libtorrent4j/swig/boost_string_entry_map;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    iput-object p1, p0, Lorg/libtorrent4j/Entry$EntryMap;->m:Lorg/libtorrent4j/swig/boost_string_entry_map;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/Entry$EntryMap;->m:Lorg/libtorrent4j/swig/boost_string_entry_map;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/boost_string_entry_map;->clear()V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/Entry$EntryMap;->m:Lorg/libtorrent4j/swig/boost_string_entry_map;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/boost_string_entry_map;->contains(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lorg/libtorrent4j/Entry;",
            ">;>;"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/libtorrent4j/Entry$EntryMap;->get(Ljava/lang/Object;)Lorg/libtorrent4j/Entry;

    move-result-object p0

    return-object p0
.end method

.method public get(Ljava/lang/Object;)Lorg/libtorrent4j/Entry;
    .locals 2

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lorg/libtorrent4j/Entry$EntryMap;->m:Lorg/libtorrent4j/swig/boost_string_entry_map;

    invoke-virtual {v1, v0}, Lorg/libtorrent4j/swig/boost_string_entry_map;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/libtorrent4j/Entry;

    iget-object p0, p0, Lorg/libtorrent4j/Entry$EntryMap;->m:Lorg/libtorrent4j/swig/boost_string_entry_map;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/boost_string_entry_map;->get(Ljava/lang/String;)Lorg/libtorrent4j/swig/entry;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/libtorrent4j/Entry;-><init>(Lorg/libtorrent4j/swig/entry;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/Entry$EntryMap;->m:Lorg/libtorrent4j/swig/boost_string_entry_map;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/boost_string_entry_map;->empty()Z

    move-result p0

    return p0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    iget-object p0, p0, Lorg/libtorrent4j/Entry$EntryMap;->m:Lorg/libtorrent4j/swig/boost_string_entry_map;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/boost_string_entry_map;->keys()Lorg/libtorrent4j/swig/string_vector;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lorg/libtorrent4j/Entry;

    invoke-virtual {p0, p1, p2}, Lorg/libtorrent4j/Entry$EntryMap;->put(Ljava/lang/String;Lorg/libtorrent4j/Entry;)Lorg/libtorrent4j/Entry;

    move-result-object p0

    return-object p0
.end method

.method public put(Ljava/lang/String;Lorg/libtorrent4j/Entry;)Lorg/libtorrent4j/Entry;
    .locals 1

    .line 2
    invoke-virtual {p0, p1}, Lorg/libtorrent4j/Entry$EntryMap;->get(Ljava/lang/Object;)Lorg/libtorrent4j/Entry;

    move-result-object v0

    .line 3
    iget-object p0, p0, Lorg/libtorrent4j/Entry$EntryMap;->m:Lorg/libtorrent4j/swig/boost_string_entry_map;

    invoke-virtual {p2}, Lorg/libtorrent4j/Entry;->swig()Lorg/libtorrent4j/swig/entry;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/libtorrent4j/swig/boost_string_entry_map;->put(Ljava/lang/String;Lorg/libtorrent4j/swig/entry;)V

    return-object v0
.end method

.method public size()I
    .locals 2

    iget-object p0, p0, Lorg/libtorrent4j/Entry$EntryMap;->m:Lorg/libtorrent4j/swig/boost_string_entry_map;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/boost_string_entry_map;->size()J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method
