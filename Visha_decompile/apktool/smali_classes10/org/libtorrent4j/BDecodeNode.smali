.class public final Lorg/libtorrent4j/BDecodeNode;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final buffer:Lorg/libtorrent4j/swig/byte_vector;

.field private final n:Lorg/libtorrent4j/swig/bdecode_node;


# direct methods
.method public constructor <init>(Lorg/libtorrent4j/swig/bdecode_node;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/libtorrent4j/BDecodeNode;-><init>(Lorg/libtorrent4j/swig/bdecode_node;Lorg/libtorrent4j/swig/byte_vector;)V

    return-void
.end method

.method public constructor <init>(Lorg/libtorrent4j/swig/bdecode_node;Lorg/libtorrent4j/swig/byte_vector;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/libtorrent4j/BDecodeNode;->n:Lorg/libtorrent4j/swig/bdecode_node;

    .line 4
    iput-object p2, p0, Lorg/libtorrent4j/BDecodeNode;->buffer:Lorg/libtorrent4j/swig/byte_vector;

    return-void
.end method

.method public static bdecode([B)Lorg/libtorrent4j/BDecodeNode;
    .locals 3

    invoke-static {p0}, Lorg/libtorrent4j/Vectors;->bytes2byte_vector([B)Lorg/libtorrent4j/swig/byte_vector;

    move-result-object p0

    new-instance v0, Lorg/libtorrent4j/swig/bdecode_node;

    invoke-direct {v0}, Lorg/libtorrent4j/swig/bdecode_node;-><init>()V

    new-instance v1, Lorg/libtorrent4j/swig/error_code;

    invoke-direct {v1}, Lorg/libtorrent4j/swig/error_code;-><init>()V

    invoke-static {p0, v0, v1}, Lorg/libtorrent4j/swig/bdecode_node;->bdecode(Lorg/libtorrent4j/swig/byte_vector;Lorg/libtorrent4j/swig/bdecode_node;Lorg/libtorrent4j/swig/error_code;)I

    move-result v2

    if-nez v2, :cond_0

    new-instance v1, Lorg/libtorrent4j/BDecodeNode;

    invoke-direct {v1, v0, p0}, Lorg/libtorrent4j/BDecodeNode;-><init>(Lorg/libtorrent4j/swig/bdecode_node;Lorg/libtorrent4j/swig/byte_vector;)V

    return-object v1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t decode data: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/error_code;->message()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public buffer()Lorg/libtorrent4j/swig/byte_vector;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/BDecodeNode;->buffer:Lorg/libtorrent4j/swig/byte_vector;

    return-object p0
.end method

.method public swig()Lorg/libtorrent4j/swig/bdecode_node;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/BDecodeNode;->n:Lorg/libtorrent4j/swig/bdecode_node;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lorg/libtorrent4j/BDecodeNode;->n:Lorg/libtorrent4j/swig/bdecode_node;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lorg/libtorrent4j/swig/bdecode_node;->to_string(Lorg/libtorrent4j/swig/bdecode_node;ZI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
