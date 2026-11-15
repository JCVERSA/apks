.class public Ltt/h;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ltt/a;


# instance fields
.field private a:Lcom/transsion/transfer/androidasync/http/Multimap;

.field private b:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic a(Ltt/h;Lcom/transsion/transfer/androidasync/http/Multimap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltt/h;->a:Lcom/transsion/transfer/androidasync/http/Multimap;

    .line 2
    .line 3
    return-void
.end method

.method private b()V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v1, p0, Ltt/h;->a:Lcom/transsion/transfer/androidasync/http/Multimap;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/transsion/transfer/androidasync/http/Multimap;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x1

    .line 13
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v3
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    const-string v4, "UTF-8"

    .line 18
    .line 19
    if-eqz v3, :cond_2

    .line 20
    .line 21
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Lcom/transsion/transfer/androidasync/http/w;

    .line 26
    .line 27
    invoke-interface {v3}, Lcom/transsion/transfer/androidasync/http/w;->getValue()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    if-nez v5, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    if-nez v2, :cond_1

    .line 35
    .line 36
    const/16 v2, 0x26

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :catch_0
    move-exception v0

    .line 43
    goto :goto_2

    .line 44
    :cond_1
    :goto_1
    invoke-interface {v3}, Lcom/transsion/transfer/androidasync/http/w;->getName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-static {v2, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const/16 v2, 0x3d

    .line 56
    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-interface {v3}, Lcom/transsion/transfer/androidasync/http/w;->getValue()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-static {v2, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const/4 v2, 0x0

    .line 72
    goto :goto_0

    .line 73
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    iput-object v0, p0, Ltt/h;->b:[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 82
    .line 83
    return-void

    .line 84
    :goto_2
    new-instance v1, Ljava/lang/AssertionError;

    .line 85
    .line 86
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    throw v1
.end method


# virtual methods
.method public H(Lcom/transsion/transfer/androidasync/p;Lst/a;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ltt/h$a;

    .line 7
    .line 8
    invoke-direct {v1, p0, v0}, Ltt/h$a;-><init>(Ltt/h;Lcom/transsion/transfer/androidasync/ByteBufferList;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, v1}, Lcom/transsion/transfer/androidasync/p;->F(Lst/d;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Ltt/h$b;

    .line 15
    .line 16
    invoke-direct {v1, p0, v0, p2}, Ltt/h$b;-><init>(Ltt/h;Lcom/transsion/transfer/androidasync/ByteBufferList;Lst/a;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p1, v1}, Lcom/transsion/transfer/androidasync/p;->h(Lst/a;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public J(Lcom/transsion/transfer/androidasync/http/j;Lcom/transsion/transfer/androidasync/s;Lst/a;)V
    .locals 0

    .line 1
    iget-object p1, p0, Ltt/h;->b:[B

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Ltt/h;->b()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object p1, p0, Ltt/h;->b:[B

    .line 9
    .line 10
    invoke-static {p2, p1, p3}, Lcom/transsion/transfer/androidasync/a0;->h(Lcom/transsion/transfer/androidasync/s;[BLst/a;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public K()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "application/x-www-form-urlencoded; charset=utf-8"

    .line 2
    .line 3
    return-object v0
.end method

.method public length()I
    .locals 1

    .line 1
    iget-object v0, p0, Ltt/h;->b:[B

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Ltt/h;->b()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Ltt/h;->b:[B

    .line 9
    .line 10
    array-length v0, v0

    .line 11
    return v0
.end method
