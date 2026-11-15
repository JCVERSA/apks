.class public final Lorg/libtorrent4j/WebSeedEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final e:Lorg/libtorrent4j/swig/web_seed_entry;


# direct methods
.method public constructor <init>(Lorg/libtorrent4j/swig/web_seed_entry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/libtorrent4j/WebSeedEntry;->e:Lorg/libtorrent4j/swig/web_seed_entry;

    return-void
.end method


# virtual methods
.method public auth()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/WebSeedEntry;->e:Lorg/libtorrent4j/swig/web_seed_entry;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/web_seed_entry;->getAuth()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public extraHeaders()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/libtorrent4j/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/libtorrent4j/WebSeedEntry;->e:Lorg/libtorrent4j/swig/web_seed_entry;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/web_seed_entry;->getExtra_headers()Lorg/libtorrent4j/swig/string_string_pair_vector;

    move-result-object p0

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/string_string_pair_vector;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Lorg/libtorrent4j/swig/string_string_pair_vector;->get(I)Lorg/libtorrent4j/swig/string_string_pair;

    move-result-object v3

    new-instance v4, Lorg/libtorrent4j/Pair;

    invoke-virtual {v3}, Lorg/libtorrent4j/swig/string_string_pair;->getFirst()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lorg/libtorrent4j/swig/string_string_pair;->getSecond()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lorg/libtorrent4j/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public swig()Lorg/libtorrent4j/swig/web_seed_entry;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/WebSeedEntry;->e:Lorg/libtorrent4j/swig/web_seed_entry;

    return-object p0
.end method

.method public url()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/WebSeedEntry;->e:Lorg/libtorrent4j/swig/web_seed_entry;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/web_seed_entry;->getUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
