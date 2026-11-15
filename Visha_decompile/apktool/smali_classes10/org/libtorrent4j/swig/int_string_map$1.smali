.class Lorg/libtorrent4j/swig/int_string_map$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/libtorrent4j/swig/int_string_map;->entrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private iterator:Lorg/libtorrent4j/swig/int_string_map$Iterator;

.field final synthetic this$0:Lorg/libtorrent4j/swig/int_string_map;


# direct methods
.method public constructor <init>(Lorg/libtorrent4j/swig/int_string_map;)V
    .locals 0

    iput-object p1, p0, Lorg/libtorrent4j/swig/int_string_map$1;->this$0:Lorg/libtorrent4j/swig/int_string_map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$400(Lorg/libtorrent4j/swig/int_string_map$1;Lorg/libtorrent4j/swig/int_string_map$Iterator;)Ljava/util/Map$Entry;
    .locals 0

    invoke-direct {p0, p1}, Lorg/libtorrent4j/swig/int_string_map$1;->init(Lorg/libtorrent4j/swig/int_string_map$Iterator;)Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method private init(Lorg/libtorrent4j/swig/int_string_map$Iterator;)Ljava/util/Map$Entry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/libtorrent4j/swig/int_string_map$Iterator;",
            ")",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iput-object p1, p0, Lorg/libtorrent4j/swig/int_string_map$1;->iterator:Lorg/libtorrent4j/swig/int_string_map$Iterator;

    return-object p0
.end method


# virtual methods
.method public getKey()Ljava/lang/Integer;
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/libtorrent4j/swig/int_string_map$1;->iterator:Lorg/libtorrent4j/swig/int_string_map$Iterator;

    invoke-static {p0}, Lorg/libtorrent4j/swig/int_string_map$Iterator;->access$300(Lorg/libtorrent4j/swig/int_string_map$Iterator;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getKey()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/libtorrent4j/swig/int_string_map$1;->getKey()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/libtorrent4j/swig/int_string_map$1;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/libtorrent4j/swig/int_string_map$1;->iterator:Lorg/libtorrent4j/swig/int_string_map$Iterator;

    invoke-static {p0}, Lorg/libtorrent4j/swig/int_string_map$Iterator;->access$100(Lorg/libtorrent4j/swig/int_string_map$Iterator;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/int_string_map$1;->setValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/libtorrent4j/swig/int_string_map$1;->iterator:Lorg/libtorrent4j/swig/int_string_map$Iterator;

    invoke-static {v0}, Lorg/libtorrent4j/swig/int_string_map$Iterator;->access$100(Lorg/libtorrent4j/swig/int_string_map$Iterator;)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object p0, p0, Lorg/libtorrent4j/swig/int_string_map$1;->iterator:Lorg/libtorrent4j/swig/int_string_map$Iterator;

    invoke-static {p0, p1}, Lorg/libtorrent4j/swig/int_string_map$Iterator;->access$200(Lorg/libtorrent4j/swig/int_string_map$Iterator;Ljava/lang/String;)V

    return-object v0
.end method
