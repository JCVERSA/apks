.class public final Lorg/libtorrent4j/Entry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/libtorrent4j/Entry$EntryList;,
        Lorg/libtorrent4j/Entry$EntryMap;
    }
.end annotation


# instance fields
.field private final e:Lorg/libtorrent4j/swig/entry;


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .line 4
    new-instance v0, Lorg/libtorrent4j/swig/entry;

    invoke-direct {v0, p1, p2}, Lorg/libtorrent4j/swig/entry;-><init>(J)V

    invoke-direct {p0, v0}, Lorg/libtorrent4j/Entry;-><init>(Lorg/libtorrent4j/swig/entry;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 3
    new-instance v0, Lorg/libtorrent4j/swig/entry;

    invoke-direct {v0, p1}, Lorg/libtorrent4j/swig/entry;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/libtorrent4j/Entry;-><init>(Lorg/libtorrent4j/swig/entry;)V

    return-void
.end method

.method public constructor <init>(Lorg/libtorrent4j/swig/entry;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/libtorrent4j/Entry;->e:Lorg/libtorrent4j/swig/entry;

    return-void
.end method

.method public static bdecode(Ljava/io/File;)Lorg/libtorrent4j/Entry;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-static {p0}, Lorg/libtorrent4j/Files;->bytes(Ljava/io/File;)[B

    move-result-object p0

    .line 3
    invoke-static {p0}, Lorg/libtorrent4j/Entry;->bdecode([B)Lorg/libtorrent4j/Entry;

    move-result-object p0

    return-object p0
.end method

.method public static bdecode([B)Lorg/libtorrent4j/Entry;
    .locals 1

    .line 1
    new-instance v0, Lorg/libtorrent4j/Entry;

    invoke-static {p0}, Lorg/libtorrent4j/Vectors;->bytes2byte_vector([B)Lorg/libtorrent4j/swig/byte_vector;

    move-result-object p0

    invoke-static {p0}, Lorg/libtorrent4j/swig/entry;->bdecode(Lorg/libtorrent4j/swig/byte_vector;)Lorg/libtorrent4j/swig/entry;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/libtorrent4j/Entry;-><init>(Lorg/libtorrent4j/swig/entry;)V

    return-object v0
.end method

.method public static fromList(Ljava/util/List;)Lorg/libtorrent4j/Entry;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)",
            "Lorg/libtorrent4j/Entry;"
        }
    .end annotation

    new-instance v0, Lorg/libtorrent4j/swig/entry;

    sget-object v1, Lorg/libtorrent4j/swig/entry$data_type;->list_t:Lorg/libtorrent4j/swig/entry$data_type;

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/entry;-><init>(Lorg/libtorrent4j/swig/entry$data_type;)V

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/entry;->list()Lorg/libtorrent4j/swig/entry_vector;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_0

    new-instance v3, Lorg/libtorrent4j/swig/entry;

    check-cast v2, Ljava/lang/String;

    invoke-direct {v3, v2}, Lorg/libtorrent4j/swig/entry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lorg/libtorrent4j/swig/entry_vector;->add(Lorg/libtorrent4j/swig/entry;)Z

    goto :goto_0

    :cond_0
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_1

    new-instance v3, Lorg/libtorrent4j/swig/entry;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v4, v2

    invoke-direct {v3, v4, v5}, Lorg/libtorrent4j/swig/entry;-><init>(J)V

    invoke-virtual {v1, v3}, Lorg/libtorrent4j/swig/entry_vector;->add(Lorg/libtorrent4j/swig/entry;)Z

    goto :goto_0

    :cond_1
    instance-of v3, v2, Lorg/libtorrent4j/Entry;

    if-eqz v3, :cond_2

    check-cast v2, Lorg/libtorrent4j/Entry;

    invoke-virtual {v2}, Lorg/libtorrent4j/Entry;->swig()Lorg/libtorrent4j/swig/entry;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/libtorrent4j/swig/entry_vector;->add(Lorg/libtorrent4j/swig/entry;)Z

    goto :goto_0

    :cond_2
    instance-of v3, v2, Lorg/libtorrent4j/swig/entry;

    if-eqz v3, :cond_3

    check-cast v2, Lorg/libtorrent4j/swig/entry;

    invoke-virtual {v1, v2}, Lorg/libtorrent4j/swig/entry_vector;->add(Lorg/libtorrent4j/swig/entry;)Z

    goto :goto_0

    :cond_3
    instance-of v3, v2, Ljava/util/List;

    if-eqz v3, :cond_4

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lorg/libtorrent4j/Entry;->fromList(Ljava/util/List;)Lorg/libtorrent4j/Entry;

    move-result-object v2

    invoke-virtual {v2}, Lorg/libtorrent4j/Entry;->swig()Lorg/libtorrent4j/swig/entry;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/libtorrent4j/swig/entry_vector;->add(Lorg/libtorrent4j/swig/entry;)Z

    goto :goto_0

    :cond_4
    instance-of v3, v2, Ljava/util/Map;

    if-eqz v3, :cond_5

    check-cast v2, Ljava/util/Map;

    invoke-static {v2}, Lorg/libtorrent4j/Entry;->fromMap(Ljava/util/Map;)Lorg/libtorrent4j/Entry;

    move-result-object v2

    invoke-virtual {v2}, Lorg/libtorrent4j/Entry;->swig()Lorg/libtorrent4j/swig/entry;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/libtorrent4j/swig/entry_vector;->add(Lorg/libtorrent4j/swig/entry;)Z

    goto :goto_0

    :cond_5
    new-instance v3, Lorg/libtorrent4j/swig/entry;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/libtorrent4j/swig/entry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lorg/libtorrent4j/swig/entry_vector;->add(Lorg/libtorrent4j/swig/entry;)Z

    goto :goto_0

    :cond_6
    new-instance p0, Lorg/libtorrent4j/Entry;

    invoke-direct {p0, v0}, Lorg/libtorrent4j/Entry;-><init>(Lorg/libtorrent4j/swig/entry;)V

    return-object p0
.end method

.method public static fromMap(Ljava/util/Map;)Lorg/libtorrent4j/Entry;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lorg/libtorrent4j/Entry;"
        }
    .end annotation

    new-instance v0, Lorg/libtorrent4j/swig/entry;

    sget-object v1, Lorg/libtorrent4j/swig/entry$data_type;->dictionary_t:Lorg/libtorrent4j/swig/entry$data_type;

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/entry;-><init>(Lorg/libtorrent4j/swig/entry$data_type;)V

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/entry;->dict()Lorg/libtorrent4j/swig/boost_string_entry_map;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_0

    new-instance v5, Lorg/libtorrent4j/swig/entry;

    check-cast v4, Ljava/lang/String;

    invoke-direct {v5, v4}, Lorg/libtorrent4j/swig/entry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v5}, Lorg/libtorrent4j/swig/boost_string_entry_map;->put(Ljava/lang/String;Lorg/libtorrent4j/swig/entry;)V

    goto :goto_0

    :cond_0
    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_1

    new-instance v5, Lorg/libtorrent4j/swig/entry;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v6, v4

    invoke-direct {v5, v6, v7}, Lorg/libtorrent4j/swig/entry;-><init>(J)V

    invoke-virtual {v1, v3, v5}, Lorg/libtorrent4j/swig/boost_string_entry_map;->put(Ljava/lang/String;Lorg/libtorrent4j/swig/entry;)V

    goto :goto_0

    :cond_1
    instance-of v5, v4, Lorg/libtorrent4j/Entry;

    if-eqz v5, :cond_2

    check-cast v4, Lorg/libtorrent4j/Entry;

    invoke-virtual {v4}, Lorg/libtorrent4j/Entry;->swig()Lorg/libtorrent4j/swig/entry;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/libtorrent4j/swig/boost_string_entry_map;->put(Ljava/lang/String;Lorg/libtorrent4j/swig/entry;)V

    goto :goto_0

    :cond_2
    instance-of v5, v4, Lorg/libtorrent4j/swig/entry;

    if-eqz v5, :cond_3

    check-cast v4, Lorg/libtorrent4j/swig/entry;

    invoke-virtual {v1, v3, v4}, Lorg/libtorrent4j/swig/boost_string_entry_map;->put(Ljava/lang/String;Lorg/libtorrent4j/swig/entry;)V

    goto :goto_0

    :cond_3
    instance-of v5, v4, Ljava/util/List;

    if-eqz v5, :cond_4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lorg/libtorrent4j/Entry;->fromList(Ljava/util/List;)Lorg/libtorrent4j/Entry;

    move-result-object v4

    invoke-virtual {v4}, Lorg/libtorrent4j/Entry;->swig()Lorg/libtorrent4j/swig/entry;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/libtorrent4j/swig/boost_string_entry_map;->put(Ljava/lang/String;Lorg/libtorrent4j/swig/entry;)V

    goto :goto_0

    :cond_4
    instance-of v5, v4, Ljava/util/Map;

    if-eqz v5, :cond_5

    check-cast v4, Ljava/util/Map;

    invoke-static {v4}, Lorg/libtorrent4j/Entry;->fromMap(Ljava/util/Map;)Lorg/libtorrent4j/Entry;

    move-result-object v4

    invoke-virtual {v4}, Lorg/libtorrent4j/Entry;->swig()Lorg/libtorrent4j/swig/entry;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/libtorrent4j/swig/boost_string_entry_map;->put(Ljava/lang/String;Lorg/libtorrent4j/swig/entry;)V

    goto :goto_0

    :cond_5
    new-instance v5, Lorg/libtorrent4j/swig/entry;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Lorg/libtorrent4j/swig/entry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v5}, Lorg/libtorrent4j/swig/boost_string_entry_map;->put(Ljava/lang/String;Lorg/libtorrent4j/swig/entry;)V

    goto :goto_0

    :cond_6
    new-instance p0, Lorg/libtorrent4j/Entry;

    invoke-direct {p0, v0}, Lorg/libtorrent4j/Entry;-><init>(Lorg/libtorrent4j/swig/entry;)V

    return-object p0
.end method


# virtual methods
.method public bencode()[B
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/Entry;->e:Lorg/libtorrent4j/swig/entry;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/entry;->bencode()Lorg/libtorrent4j/swig/byte_vector;

    move-result-object p0

    invoke-static {p0}, Lorg/libtorrent4j/Vectors;->byte_vector2bytes(Lorg/libtorrent4j/swig/byte_vector;)[B

    move-result-object p0

    return-object p0
.end method

.method public dictionary()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/libtorrent4j/Entry;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/libtorrent4j/Entry$EntryMap;

    iget-object p0, p0, Lorg/libtorrent4j/Entry;->e:Lorg/libtorrent4j/swig/entry;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/entry;->dict()Lorg/libtorrent4j/swig/boost_string_entry_map;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/libtorrent4j/Entry$EntryMap;-><init>(Lorg/libtorrent4j/swig/boost_string_entry_map;)V

    return-object v0
.end method

.method public integer()J
    .locals 2

    iget-object p0, p0, Lorg/libtorrent4j/Entry;->e:Lorg/libtorrent4j/swig/entry;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/entry;->integer()J

    move-result-wide v0

    return-wide v0
.end method

.method public list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/libtorrent4j/Entry;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/libtorrent4j/Entry$EntryList;

    iget-object p0, p0, Lorg/libtorrent4j/Entry;->e:Lorg/libtorrent4j/swig/entry;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/entry;->list()Lorg/libtorrent4j/swig/entry_vector;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/libtorrent4j/Entry$EntryList;-><init>(Lorg/libtorrent4j/swig/entry_vector;)V

    return-object v0
.end method

.method public string()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/Entry;->e:Lorg/libtorrent4j/swig/entry;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/entry;->string()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public swig()Lorg/libtorrent4j/swig/entry;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/Entry;->e:Lorg/libtorrent4j/swig/entry;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/Entry;->e:Lorg/libtorrent4j/swig/entry;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/entry;->to_string()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
