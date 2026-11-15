.class final Landroidx/datastore/preferences/protobuf/RopeByteString$c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/RopeByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/util/ArrayDeque;

.field private b:Landroidx/datastore/preferences/protobuf/ByteString$LeafByteString;


# direct methods
.method private constructor <init>(Landroidx/datastore/preferences/protobuf/ByteString;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/RopeByteString;

    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Landroidx/datastore/preferences/protobuf/RopeByteString;

    .line 5
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/RopeByteString;->getTreeDepth()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/RopeByteString$c;->a:Ljava/util/ArrayDeque;

    .line 6
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 7
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/RopeByteString;->access$400(Landroidx/datastore/preferences/protobuf/RopeByteString;)Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/RopeByteString$c;->a(Landroidx/datastore/preferences/protobuf/ByteString;)Landroidx/datastore/preferences/protobuf/ByteString$LeafByteString;

    move-result-object p1

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/RopeByteString$c;->b:Landroidx/datastore/preferences/protobuf/ByteString$LeafByteString;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/RopeByteString$c;->a:Ljava/util/ArrayDeque;

    .line 9
    check-cast p1, Landroidx/datastore/preferences/protobuf/ByteString$LeafByteString;

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/RopeByteString$c;->b:Landroidx/datastore/preferences/protobuf/ByteString$LeafByteString;

    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Landroidx/datastore/preferences/protobuf/ByteString;Landroidx/datastore/preferences/protobuf/RopeByteString$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/RopeByteString$c;-><init>(Landroidx/datastore/preferences/protobuf/ByteString;)V

    return-void
.end method

.method private a(Landroidx/datastore/preferences/protobuf/ByteString;)Landroidx/datastore/preferences/protobuf/ByteString$LeafByteString;
    .locals 1

    .line 1
    :goto_0
    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/RopeByteString;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Landroidx/datastore/preferences/protobuf/RopeByteString;

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/RopeByteString$c;->a:Ljava/util/ArrayDeque;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/RopeByteString;->access$400(Landroidx/datastore/preferences/protobuf/RopeByteString;)Landroidx/datastore/preferences/protobuf/ByteString;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    check-cast p1, Landroidx/datastore/preferences/protobuf/ByteString$LeafByteString;

    .line 18
    .line 19
    return-object p1
.end method

.method private b()Landroidx/datastore/preferences/protobuf/ByteString$LeafByteString;
    .locals 2

    .line 1
    :cond_0
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/RopeByteString$c;->a:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/RopeByteString$c;->a:Ljava/util/ArrayDeque;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Landroidx/datastore/preferences/protobuf/RopeByteString;

    .line 19
    .line 20
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/RopeByteString;->access$500(Landroidx/datastore/preferences/protobuf/RopeByteString;)Landroidx/datastore/preferences/protobuf/ByteString;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/RopeByteString$c;->a(Landroidx/datastore/preferences/protobuf/ByteString;)Landroidx/datastore/preferences/protobuf/ByteString$LeafByteString;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/ByteString;->isEmpty()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_0

    .line 33
    .line 34
    return-object v0

    .line 35
    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 36
    return-object v0
.end method


# virtual methods
.method public c()Landroidx/datastore/preferences/protobuf/ByteString$LeafByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/RopeByteString$c;->b:Landroidx/datastore/preferences/protobuf/ByteString$LeafByteString;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/RopeByteString$c;->b()Landroidx/datastore/preferences/protobuf/ByteString$LeafByteString;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iput-object v1, p0, Landroidx/datastore/preferences/protobuf/RopeByteString$c;->b:Landroidx/datastore/preferences/protobuf/ByteString$LeafByteString;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 15
    .line 16
    .line 17
    throw v0
.end method

.method public hasNext()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/RopeByteString$c;->b:Landroidx/datastore/preferences/protobuf/ByteString$LeafByteString;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/RopeByteString$c;->c()Landroidx/datastore/preferences/protobuf/ByteString$LeafByteString;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw v0
.end method
