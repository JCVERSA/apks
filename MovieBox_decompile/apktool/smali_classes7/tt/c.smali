.class public Ltt/c;
.super Lcom/transsion/transfer/androidasync/http/server/p;
.source "source.java"

# interfaces
.implements Ltt/a;


# instance fields
.field i:Lcom/transsion/transfer/androidasync/v;

.field j:Lcom/transsion/transfer/androidasync/http/Headers;

.field k:Lcom/transsion/transfer/androidasync/ByteBufferList;

.field l:Ltt/d;

.field m:Ljava/lang/String;

.field n:I

.field o:I

.field private p:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Lcom/transsion/transfer/androidasync/http/server/p;-><init>()V

    .line 8
    const-string v0, "multipart/form-data"

    iput-object v0, p0, Ltt/c;->m:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/transfer/androidasync/http/server/p;-><init>()V

    .line 2
    const-string v0, "multipart/form-data"

    iput-object v0, p0, Ltt/c;->m:Ljava/lang/String;

    .line 3
    invoke-static {p1}, Lcom/transsion/transfer/androidasync/http/Multimap;->parseSemicolonDelimited(Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/Multimap;

    move-result-object p1

    .line 4
    const-string v0, "boundary"

    invoke-virtual {p1, v0}, Lcom/transsion/transfer/androidasync/http/Multimap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 5
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "No boundary found for multipart/form-data"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/transsion/transfer/androidasync/q;->M(Ljava/lang/Exception;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/transfer/androidasync/http/server/p;->T(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public H(Lcom/transsion/transfer/androidasync/p;Lst/a;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/transfer/androidasync/t;->N(Lcom/transsion/transfer/androidasync/p;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p2}, Lcom/transsion/transfer/androidasync/q;->h(Lst/a;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public J(Lcom/transsion/transfer/androidasync/http/j;Lcom/transsion/transfer/androidasync/s;Lst/a;)V
    .locals 3

    .line 1
    iget-object p1, p0, Ltt/c;->p:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p1, Lcom/transsion/transfer/androidasync/future/Continuation;

    .line 7
    .line 8
    new-instance v0, Ltt/c$b;

    .line 9
    .line 10
    invoke-direct {v0, p0, p3}, Ltt/c$b;-><init>(Ltt/c;Lst/a;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p1, v0}, Lcom/transsion/transfer/androidasync/future/Continuation;-><init>(Lst/a;)V

    .line 14
    .line 15
    .line 16
    iget-object p3, p0, Ltt/c;->p:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p3

    .line 22
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Ltt/d;

    .line 33
    .line 34
    new-instance v1, Ltt/c$e;

    .line 35
    .line 36
    invoke-direct {v1, p0, v0, p2}, Ltt/c$e;-><init>(Ltt/c;Ltt/d;Lcom/transsion/transfer/androidasync/s;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v1}, Lcom/transsion/transfer/androidasync/future/Continuation;->add(Lst/c;)Lcom/transsion/transfer/androidasync/future/Continuation;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    new-instance v2, Ltt/c$d;

    .line 44
    .line 45
    invoke-direct {v2, p0, v0, p2}, Ltt/c$d;-><init>(Ltt/c;Ltt/d;Lcom/transsion/transfer/androidasync/s;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v2}, Lcom/transsion/transfer/androidasync/future/Continuation;->add(Lst/c;)Lcom/transsion/transfer/androidasync/future/Continuation;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    new-instance v1, Ltt/c$c;

    .line 53
    .line 54
    invoke-direct {v1, p0, p2}, Ltt/c$c;-><init>(Ltt/c;Lcom/transsion/transfer/androidasync/s;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Lcom/transsion/transfer/androidasync/future/Continuation;->add(Lst/c;)Lcom/transsion/transfer/androidasync/future/Continuation;

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    new-instance p3, Ltt/c$f;

    .line 62
    .line 63
    invoke-direct {p3, p0, p2}, Ltt/c$f;-><init>(Ltt/c;Lcom/transsion/transfer/androidasync/s;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, p3}, Lcom/transsion/transfer/androidasync/future/Continuation;->add(Lst/c;)Lcom/transsion/transfer/androidasync/future/Continuation;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/future/Continuation;->start()Lcom/transsion/transfer/androidasync/future/Continuation;

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public K()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method protected R()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/transsion/transfer/androidasync/http/server/p;->R()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ltt/c;->W()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method protected S()V
    .locals 3

    .line 1
    new-instance v0, Lcom/transsion/transfer/androidasync/http/Headers;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/transfer/androidasync/http/Headers;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/transsion/transfer/androidasync/v;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/transsion/transfer/androidasync/v;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v1, p0, Ltt/c;->i:Lcom/transsion/transfer/androidasync/v;

    .line 12
    .line 13
    new-instance v2, Ltt/c$a;

    .line 14
    .line 15
    invoke-direct {v2, p0, v0}, Ltt/c$a;-><init>(Ltt/c;Lcom/transsion/transfer/androidasync/http/Headers;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Lcom/transsion/transfer/androidasync/v;->a(Lcom/transsion/transfer/androidasync/v$a;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Ltt/c;->i:Lcom/transsion/transfer/androidasync/v;

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lcom/transsion/transfer/androidasync/q;->F(Lst/d;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public U(Ltt/d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ltt/c;->p:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Ltt/c;->p:Ljava/util/ArrayList;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Ltt/c;->p:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public V()Ljava/util/List;
    .locals 2

    .line 1
    iget-object v0, p0, Ltt/c;->p:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    iget-object v1, p0, Ltt/c;->p:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method W()V
    .locals 4

    .line 1
    iget-object v0, p0, Ltt/c;->k:Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Ltt/c;->j:Lcom/transsion/transfer/androidasync/http/Headers;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    new-instance v0, Lcom/transsion/transfer/androidasync/http/Headers;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/transsion/transfer/androidasync/http/Headers;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Ltt/c;->j:Lcom/transsion/transfer/androidasync/http/Headers;

    .line 16
    .line 17
    :cond_1
    iget-object v0, p0, Ltt/c;->k:Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;->v()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Ltt/c;->l:Ltt/d;

    .line 24
    .line 25
    invoke-virtual {v1}, Ltt/d;->a()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    const-string v1, "unnamed"

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    iget-object v1, p0, Ltt/c;->l:Ltt/d;

    .line 39
    .line 40
    invoke-virtual {v1}, Ltt/d;->a()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    :goto_0
    new-instance v2, Ltt/g;

    .line 45
    .line 46
    invoke-direct {v2, v1, v0}, Ltt/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object v3, p0, Ltt/c;->l:Ltt/d;

    .line 50
    .line 51
    iget-object v3, v3, Ltt/d;->a:Lcom/transsion/transfer/androidasync/http/Headers;

    .line 52
    .line 53
    iput-object v3, v2, Ltt/d;->a:Lcom/transsion/transfer/androidasync/http/Headers;

    .line 54
    .line 55
    invoke-virtual {p0, v2}, Ltt/c;->U(Ltt/d;)V

    .line 56
    .line 57
    .line 58
    iget-object v2, p0, Ltt/c;->j:Lcom/transsion/transfer/androidasync/http/Headers;

    .line 59
    .line 60
    invoke-virtual {v2, v1, v0}, Lcom/transsion/transfer/androidasync/http/Headers;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/Headers;

    .line 61
    .line 62
    .line 63
    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Ltt/c;->l:Ltt/d;

    .line 65
    .line 66
    iput-object v0, p0, Ltt/c;->k:Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 67
    .line 68
    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/http/server/p;->O()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v1, "----------------------------"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "-"

    .line 26
    .line 27
    const-string v3, ""

    .line 28
    .line 29
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {p0, v0}, Lcom/transsion/transfer/androidasync/http/server/p;->T(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Ltt/c;->m:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, "; boundary="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/http/server/p;->O()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    return-object v0
.end method

.method public length()I
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/http/server/p;->O()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v1, "----------------------------"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "-"

    .line 26
    .line 27
    const-string v3, ""

    .line 28
    .line 29
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {p0, v0}, Lcom/transsion/transfer/androidasync/http/server/p;->T(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    iget-object v0, p0, Ltt/c;->p:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const/4 v1, 0x0

    .line 50
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_2

    .line 55
    .line 56
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    check-cast v2, Ltt/d;

    .line 61
    .line 62
    invoke-virtual {v2}, Ltt/d;->b()Lcom/transsion/transfer/androidasync/http/Headers;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/http/server/p;->Q()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-virtual {v3, v4}, Lcom/transsion/transfer/androidasync/http/Headers;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-virtual {v2}, Ltt/d;->c()J

    .line 75
    .line 76
    .line 77
    move-result-wide v4

    .line 78
    const-wide/16 v6, -0x1

    .line 79
    .line 80
    cmp-long v4, v4, v6

    .line 81
    .line 82
    if-nez v4, :cond_1

    .line 83
    .line 84
    const/4 v0, -0x1

    .line 85
    return v0

    .line 86
    :cond_1
    int-to-long v4, v1

    .line 87
    invoke-virtual {v2}, Ltt/d;->c()J

    .line 88
    .line 89
    .line 90
    move-result-wide v1

    .line 91
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    array-length v3, v3

    .line 96
    int-to-long v6, v3

    .line 97
    add-long/2addr v1, v6

    .line 98
    const/4 v3, 0x2

    .line 99
    int-to-long v6, v3

    .line 100
    add-long/2addr v1, v6

    .line 101
    add-long/2addr v4, v1

    .line 102
    long-to-int v1, v4

    .line 103
    goto :goto_0

    .line 104
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/http/server/p;->P()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    array-length v0, v0

    .line 113
    add-int/2addr v1, v0

    .line 114
    iput v1, p0, Ltt/c;->o:I

    .line 115
    .line 116
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ltt/c;->V()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ltt/d;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0

    .line 26
    :cond_0
    const-string v0, "multipart content is empty"

    .line 27
    .line 28
    return-object v0
.end method
