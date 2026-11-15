.class final Landroidx/datastore/preferences/protobuf/r0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/b1;


# instance fields
.field private final a:Landroidx/datastore/preferences/protobuf/n0;

.field private final b:Landroidx/datastore/preferences/protobuf/h1;

.field private final c:Z

.field private final d:Landroidx/datastore/preferences/protobuf/p;


# direct methods
.method private constructor <init>(Landroidx/datastore/preferences/protobuf/h1;Landroidx/datastore/preferences/protobuf/p;Landroidx/datastore/preferences/protobuf/n0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/r0;->b:Landroidx/datastore/preferences/protobuf/h1;

    .line 5
    .line 6
    invoke-virtual {p2, p3}, Landroidx/datastore/preferences/protobuf/p;->e(Landroidx/datastore/preferences/protobuf/n0;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    iput-boolean p1, p0, Landroidx/datastore/preferences/protobuf/r0;->c:Z

    .line 11
    .line 12
    iput-object p2, p0, Landroidx/datastore/preferences/protobuf/r0;->d:Landroidx/datastore/preferences/protobuf/p;

    .line 13
    .line 14
    iput-object p3, p0, Landroidx/datastore/preferences/protobuf/r0;->a:Landroidx/datastore/preferences/protobuf/n0;

    .line 15
    .line 16
    return-void
.end method

.method private d(Landroidx/datastore/preferences/protobuf/h1;Ljava/lang/Object;)I
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Landroidx/datastore/preferences/protobuf/h1;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p1, p2}, Landroidx/datastore/preferences/protobuf/h1;->i(Ljava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method private e(Landroidx/datastore/preferences/protobuf/h1;Landroidx/datastore/preferences/protobuf/p;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/a1;Landroidx/datastore/preferences/protobuf/o;)V
    .locals 9

    .line 1
    invoke-virtual {p1, p3}, Landroidx/datastore/preferences/protobuf/h1;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v7

    .line 5
    invoke-virtual {p2, p3}, Landroidx/datastore/preferences/protobuf/p;->d(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/s;

    .line 6
    .line 7
    .line 8
    move-result-object v8

    .line 9
    :goto_0
    :try_start_0
    invoke-interface {p4}, Landroidx/datastore/preferences/protobuf/a1;->getFieldNumber()I

    .line 10
    .line 11
    .line 12
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    const v1, 0x7fffffff

    .line 14
    .line 15
    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1, p3, v7}, Landroidx/datastore/preferences/protobuf/h1;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    move-object v0, p0

    .line 23
    move-object v1, p4

    .line 24
    move-object v2, p5

    .line 25
    move-object v3, p2

    .line 26
    move-object v4, v8

    .line 27
    move-object v5, p1

    .line 28
    move-object v6, v7

    .line 29
    :try_start_1
    invoke-direct/range {v0 .. v6}, Landroidx/datastore/preferences/protobuf/r0;->g(Landroidx/datastore/preferences/protobuf/a1;Landroidx/datastore/preferences/protobuf/o;Landroidx/datastore/preferences/protobuf/p;Landroidx/datastore/preferences/protobuf/s;Landroidx/datastore/preferences/protobuf/h1;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {p1, p3, v7}, Landroidx/datastore/preferences/protobuf/h1;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception p2

    .line 41
    invoke-virtual {p1, p3, v7}, Landroidx/datastore/preferences/protobuf/h1;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    throw p2
.end method

.method static f(Landroidx/datastore/preferences/protobuf/h1;Landroidx/datastore/preferences/protobuf/p;Landroidx/datastore/preferences/protobuf/n0;)Landroidx/datastore/preferences/protobuf/r0;
    .locals 1

    .line 1
    new-instance v0, Landroidx/datastore/preferences/protobuf/r0;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Landroidx/datastore/preferences/protobuf/r0;-><init>(Landroidx/datastore/preferences/protobuf/h1;Landroidx/datastore/preferences/protobuf/p;Landroidx/datastore/preferences/protobuf/n0;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private g(Landroidx/datastore/preferences/protobuf/a1;Landroidx/datastore/preferences/protobuf/o;Landroidx/datastore/preferences/protobuf/p;Landroidx/datastore/preferences/protobuf/s;Landroidx/datastore/preferences/protobuf/h1;Ljava/lang/Object;)Z
    .locals 6

    .line 1
    invoke-interface {p1}, Landroidx/datastore/preferences/protobuf/a1;->getTag()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget v1, Landroidx/datastore/preferences/protobuf/WireFormat;->a:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eq v0, v1, :cond_2

    .line 10
    .line 11
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/WireFormat;->b(I)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v4, 0x2

    .line 16
    if-ne v1, v4, :cond_1

    .line 17
    .line 18
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/r0;->a:Landroidx/datastore/preferences/protobuf/n0;

    .line 19
    .line 20
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/WireFormat;->a(I)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-virtual {p3, p2, v1, v0}, Landroidx/datastore/preferences/protobuf/p;->b(Landroidx/datastore/preferences/protobuf/o;Landroidx/datastore/preferences/protobuf/n0;I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    invoke-virtual {p3, p1, v0, p2, p4}, Landroidx/datastore/preferences/protobuf/p;->h(Landroidx/datastore/preferences/protobuf/a1;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/o;Landroidx/datastore/preferences/protobuf/s;)V

    .line 31
    .line 32
    .line 33
    return v3

    .line 34
    :cond_0
    invoke-virtual {p5, p6, p1, v2}, Landroidx/datastore/preferences/protobuf/h1;->m(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/a1;I)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    return p1

    .line 39
    :cond_1
    invoke-interface {p1}, Landroidx/datastore/preferences/protobuf/a1;->skipField()Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    return p1

    .line 44
    :cond_2
    const/4 v0, 0x0

    .line 45
    move-object v1, v0

    .line 46
    :cond_3
    :goto_0
    invoke-interface {p1}, Landroidx/datastore/preferences/protobuf/a1;->getFieldNumber()I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    const v5, 0x7fffffff

    .line 51
    .line 52
    .line 53
    if-ne v4, v5, :cond_4

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_4
    invoke-interface {p1}, Landroidx/datastore/preferences/protobuf/a1;->getTag()I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    sget v5, Landroidx/datastore/preferences/protobuf/WireFormat;->c:I

    .line 61
    .line 62
    if-ne v4, v5, :cond_5

    .line 63
    .line 64
    invoke-interface {p1}, Landroidx/datastore/preferences/protobuf/a1;->readUInt32()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/r0;->a:Landroidx/datastore/preferences/protobuf/n0;

    .line 69
    .line 70
    invoke-virtual {p3, p2, v0, v2}, Landroidx/datastore/preferences/protobuf/p;->b(Landroidx/datastore/preferences/protobuf/o;Landroidx/datastore/preferences/protobuf/n0;I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    goto :goto_0

    .line 75
    :cond_5
    sget v5, Landroidx/datastore/preferences/protobuf/WireFormat;->d:I

    .line 76
    .line 77
    if-ne v4, v5, :cond_7

    .line 78
    .line 79
    if-eqz v0, :cond_6

    .line 80
    .line 81
    invoke-virtual {p3, p1, v0, p2, p4}, Landroidx/datastore/preferences/protobuf/p;->h(Landroidx/datastore/preferences/protobuf/a1;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/o;Landroidx/datastore/preferences/protobuf/s;)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_6
    invoke-interface {p1}, Landroidx/datastore/preferences/protobuf/a1;->readBytes()Landroidx/datastore/preferences/protobuf/ByteString;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    goto :goto_0

    .line 90
    :cond_7
    invoke-interface {p1}, Landroidx/datastore/preferences/protobuf/a1;->skipField()Z

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    if-nez v4, :cond_3

    .line 95
    .line 96
    :goto_1
    invoke-interface {p1}, Landroidx/datastore/preferences/protobuf/a1;->getTag()I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    sget v4, Landroidx/datastore/preferences/protobuf/WireFormat;->b:I

    .line 101
    .line 102
    if-ne p1, v4, :cond_a

    .line 103
    .line 104
    if-eqz v1, :cond_9

    .line 105
    .line 106
    if-eqz v0, :cond_8

    .line 107
    .line 108
    invoke-virtual {p3, v1, v0, p2, p4}, Landroidx/datastore/preferences/protobuf/p;->i(Landroidx/datastore/preferences/protobuf/ByteString;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/o;Landroidx/datastore/preferences/protobuf/s;)V

    .line 109
    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_8
    invoke-virtual {p5, p6, v2, v1}, Landroidx/datastore/preferences/protobuf/h1;->d(Ljava/lang/Object;ILandroidx/datastore/preferences/protobuf/ByteString;)V

    .line 113
    .line 114
    .line 115
    :cond_9
    :goto_2
    return v3

    .line 116
    :cond_a
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidEndTag()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    throw p1
.end method

.method private h(Landroidx/datastore/preferences/protobuf/h1;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Writer;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Landroidx/datastore/preferences/protobuf/h1;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p1, p2, p3}, Landroidx/datastore/preferences/protobuf/h1;->s(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Writer;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/a1;Landroidx/datastore/preferences/protobuf/o;)V
    .locals 6

    .line 1
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/r0;->b:Landroidx/datastore/preferences/protobuf/h1;

    .line 2
    .line 3
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/r0;->d:Landroidx/datastore/preferences/protobuf/p;

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    move-object v3, p1

    .line 7
    move-object v4, p2

    .line 8
    move-object v5, p3

    .line 9
    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/r0;->e(Landroidx/datastore/preferences/protobuf/h1;Landroidx/datastore/preferences/protobuf/p;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/a1;Landroidx/datastore/preferences/protobuf/o;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public b(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Writer;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/r0;->d:Landroidx/datastore/preferences/protobuf/p;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/p;->c(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/s;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/s;->p()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/r0;->b:Landroidx/datastore/preferences/protobuf/h1;

    .line 18
    .line 19
    invoke-direct {p0, v0, p1, p2}, Landroidx/datastore/preferences/protobuf/r0;->h(Landroidx/datastore/preferences/protobuf/h1;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Writer;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Ljava/util/Map$Entry;

    .line 28
    .line 29
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {p1}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    const/4 p1, 0x0

    .line 37
    throw p1
.end method

.method public c(Ljava/lang/Object;[BIILandroidx/datastore/preferences/protobuf/e$a;)V
    .locals 8

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    .line 3
    .line 4
    iget-object v1, v0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->unknownFields:Landroidx/datastore/preferences/protobuf/i1;

    .line 5
    .line 6
    invoke-static {}, Landroidx/datastore/preferences/protobuf/i1;->c()Landroidx/datastore/preferences/protobuf/i1;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    invoke-static {}, Landroidx/datastore/preferences/protobuf/i1;->k()Landroidx/datastore/preferences/protobuf/i1;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iput-object v1, v0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->unknownFields:Landroidx/datastore/preferences/protobuf/i1;

    .line 17
    .line 18
    :cond_0
    check-cast p1, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$c;

    .line 19
    .line 20
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$c;->K()Landroidx/datastore/preferences/protobuf/s;

    .line 21
    .line 22
    .line 23
    :goto_0
    if-ge p3, p4, :cond_9

    .line 24
    .line 25
    invoke-static {p2, p3, p5}, Landroidx/datastore/preferences/protobuf/e;->I([BILandroidx/datastore/preferences/protobuf/e$a;)I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    iget v2, p5, Landroidx/datastore/preferences/protobuf/e$a;->a:I

    .line 30
    .line 31
    sget p1, Landroidx/datastore/preferences/protobuf/WireFormat;->a:I

    .line 32
    .line 33
    const/4 p3, 0x2

    .line 34
    if-eq v2, p1, :cond_2

    .line 35
    .line 36
    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/WireFormat;->b(I)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-ne p1, p3, :cond_1

    .line 41
    .line 42
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/r0;->d:Landroidx/datastore/preferences/protobuf/p;

    .line 43
    .line 44
    iget-object p3, p5, Landroidx/datastore/preferences/protobuf/e$a;->d:Landroidx/datastore/preferences/protobuf/o;

    .line 45
    .line 46
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/r0;->a:Landroidx/datastore/preferences/protobuf/n0;

    .line 47
    .line 48
    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/WireFormat;->a(I)I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    invoke-virtual {p1, p3, v0, v3}, Landroidx/datastore/preferences/protobuf/p;->b(Landroidx/datastore/preferences/protobuf/o;Landroidx/datastore/preferences/protobuf/n0;I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-static {p1}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    move-object v3, p2

    .line 60
    move v5, p4

    .line 61
    move-object v6, v1

    .line 62
    move-object v7, p5

    .line 63
    invoke-static/range {v2 .. v7}, Landroidx/datastore/preferences/protobuf/e;->G(I[BIILandroidx/datastore/preferences/protobuf/i1;Landroidx/datastore/preferences/protobuf/e$a;)I

    .line 64
    .line 65
    .line 66
    move-result p3

    .line 67
    goto :goto_0

    .line 68
    :cond_1
    invoke-static {v2, p2, v4, p4, p5}, Landroidx/datastore/preferences/protobuf/e;->P(I[BIILandroidx/datastore/preferences/protobuf/e$a;)I

    .line 69
    .line 70
    .line 71
    move-result p3

    .line 72
    goto :goto_0

    .line 73
    :cond_2
    const/4 p1, 0x0

    .line 74
    const/4 v0, 0x0

    .line 75
    :goto_1
    if-ge v4, p4, :cond_7

    .line 76
    .line 77
    invoke-static {p2, v4, p5}, Landroidx/datastore/preferences/protobuf/e;->I([BILandroidx/datastore/preferences/protobuf/e$a;)I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    iget v3, p5, Landroidx/datastore/preferences/protobuf/e$a;->a:I

    .line 82
    .line 83
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/WireFormat;->a(I)I

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/WireFormat;->b(I)I

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    if-eq v4, p3, :cond_4

    .line 92
    .line 93
    const/4 v6, 0x3

    .line 94
    if-eq v4, v6, :cond_3

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_3
    if-ne v5, p3, :cond_5

    .line 98
    .line 99
    invoke-static {p2, v2, p5}, Landroidx/datastore/preferences/protobuf/e;->c([BILandroidx/datastore/preferences/protobuf/e$a;)I

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    iget-object v0, p5, Landroidx/datastore/preferences/protobuf/e$a;->c:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast v0, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_4
    if-nez v5, :cond_5

    .line 109
    .line 110
    invoke-static {p2, v2, p5}, Landroidx/datastore/preferences/protobuf/e;->I([BILandroidx/datastore/preferences/protobuf/e$a;)I

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    iget p1, p5, Landroidx/datastore/preferences/protobuf/e$a;->a:I

    .line 115
    .line 116
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/r0;->d:Landroidx/datastore/preferences/protobuf/p;

    .line 117
    .line 118
    iget-object v3, p5, Landroidx/datastore/preferences/protobuf/e$a;->d:Landroidx/datastore/preferences/protobuf/o;

    .line 119
    .line 120
    iget-object v5, p0, Landroidx/datastore/preferences/protobuf/r0;->a:Landroidx/datastore/preferences/protobuf/n0;

    .line 121
    .line 122
    invoke-virtual {v2, v3, v5, p1}, Landroidx/datastore/preferences/protobuf/p;->b(Landroidx/datastore/preferences/protobuf/o;Landroidx/datastore/preferences/protobuf/n0;I)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-static {v2}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_5
    :goto_2
    sget v4, Landroidx/datastore/preferences/protobuf/WireFormat;->b:I

    .line 131
    .line 132
    if-ne v3, v4, :cond_6

    .line 133
    .line 134
    goto :goto_3

    .line 135
    :cond_6
    invoke-static {v3, p2, v2, p4, p5}, Landroidx/datastore/preferences/protobuf/e;->P(I[BIILandroidx/datastore/preferences/protobuf/e$a;)I

    .line 136
    .line 137
    .line 138
    move-result v4

    .line 139
    goto :goto_1

    .line 140
    :cond_7
    move v2, v4

    .line 141
    :goto_3
    if-eqz v0, :cond_8

    .line 142
    .line 143
    invoke-static {p1, p3}, Landroidx/datastore/preferences/protobuf/WireFormat;->c(II)I

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    invoke-virtual {v1, p1, v0}, Landroidx/datastore/preferences/protobuf/i1;->n(ILjava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    :cond_8
    move p3, v2

    .line 151
    goto/16 :goto_0

    .line 152
    .line 153
    :cond_9
    if-ne p3, p4, :cond_a

    .line 154
    .line 155
    return-void

    .line 156
    :cond_a
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->parseFailure()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    throw p1
.end method

.method public equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/r0;->b:Landroidx/datastore/preferences/protobuf/h1;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/h1;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/r0;->b:Landroidx/datastore/preferences/protobuf/h1;

    .line 8
    .line 9
    invoke-virtual {v1, p2}, Landroidx/datastore/preferences/protobuf/h1;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    return p1

    .line 21
    :cond_0
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/r0;->c:Z

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/r0;->d:Landroidx/datastore/preferences/protobuf/p;

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/p;->c(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/s;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/r0;->d:Landroidx/datastore/preferences/protobuf/p;

    .line 32
    .line 33
    invoke-virtual {v0, p2}, Landroidx/datastore/preferences/protobuf/p;->c(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/s;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-virtual {p1, p2}, Landroidx/datastore/preferences/protobuf/s;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    return p1

    .line 42
    :cond_1
    const/4 p1, 0x1

    .line 43
    return p1
.end method

.method public getSerializedSize(Ljava/lang/Object;)I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/r0;->b:Landroidx/datastore/preferences/protobuf/h1;

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/r0;->d(Landroidx/datastore/preferences/protobuf/h1;Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-boolean v1, p0, Landroidx/datastore/preferences/protobuf/r0;->c:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/r0;->d:Landroidx/datastore/preferences/protobuf/p;

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Landroidx/datastore/preferences/protobuf/p;->c(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/s;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/s;->g()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    add-int/2addr v0, p1

    .line 22
    :cond_0
    return v0
.end method

.method public hashCode(Ljava/lang/Object;)I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/r0;->b:Landroidx/datastore/preferences/protobuf/h1;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/h1;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-boolean v1, p0, Landroidx/datastore/preferences/protobuf/r0;->c:Z

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/r0;->d:Landroidx/datastore/preferences/protobuf/p;

    .line 16
    .line 17
    invoke-virtual {v1, p1}, Landroidx/datastore/preferences/protobuf/p;->c(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/s;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    mul-int/lit8 v0, v0, 0x35

    .line 22
    .line 23
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/s;->hashCode()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    add-int/2addr v0, p1

    .line 28
    :cond_0
    return v0
.end method

.method public final isInitialized(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/r0;->d:Landroidx/datastore/preferences/protobuf/p;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/p;->c(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/s;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/s;->m()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public makeImmutable(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/r0;->b:Landroidx/datastore/preferences/protobuf/h1;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/h1;->j(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/r0;->d:Landroidx/datastore/preferences/protobuf/p;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/p;->f(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/r0;->b:Landroidx/datastore/preferences/protobuf/h1;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/d1;->F(Landroidx/datastore/preferences/protobuf/h1;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/r0;->c:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/r0;->d:Landroidx/datastore/preferences/protobuf/p;

    .line 11
    .line 12
    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/d1;->D(Landroidx/datastore/preferences/protobuf/p;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public newInstance()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/r0;->a:Landroidx/datastore/preferences/protobuf/n0;

    .line 2
    .line 3
    instance-of v1, v0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->F()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    invoke-interface {v0}, Landroidx/datastore/preferences/protobuf/n0;->newBuilderForType()Landroidx/datastore/preferences/protobuf/n0$a;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Landroidx/datastore/preferences/protobuf/n0$a;->buildPartial()Landroidx/datastore/preferences/protobuf/n0;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method
