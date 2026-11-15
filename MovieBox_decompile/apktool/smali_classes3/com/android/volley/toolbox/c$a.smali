.class Lcom/android/volley/toolbox/c$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/toolbox/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:J

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field final d:J

.field final e:J

.field final f:J

.field final g:J

.field final h:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/android/volley/c$a;)V
    .locals 12

    .line 9
    iget-object v2, p2, Lcom/android/volley/c$a;->b:Ljava/lang/String;

    iget-wide v3, p2, Lcom/android/volley/c$a;->c:J

    iget-wide v5, p2, Lcom/android/volley/c$a;->d:J

    iget-wide v7, p2, Lcom/android/volley/c$a;->e:J

    iget-wide v9, p2, Lcom/android/volley/c$a;->f:J

    .line 10
    invoke-static {p2}, Lcom/android/volley/toolbox/c$a;->a(Lcom/android/volley/c$a;)Ljava/util/List;

    move-result-object v11

    move-object v0, p0

    move-object v1, p1

    .line 11
    invoke-direct/range {v0 .. v11}, Lcom/android/volley/toolbox/c$a;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/util/List;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/volley/toolbox/c$a;->b:Ljava/lang/String;

    .line 3
    const-string p1, ""

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    :cond_0
    iput-object p2, p0, Lcom/android/volley/toolbox/c$a;->c:Ljava/lang/String;

    .line 4
    iput-wide p3, p0, Lcom/android/volley/toolbox/c$a;->d:J

    .line 5
    iput-wide p5, p0, Lcom/android/volley/toolbox/c$a;->e:J

    .line 6
    iput-wide p7, p0, Lcom/android/volley/toolbox/c$a;->f:J

    .line 7
    iput-wide p9, p0, Lcom/android/volley/toolbox/c$a;->g:J

    .line 8
    iput-object p11, p0, Lcom/android/volley/toolbox/c$a;->h:Ljava/util/List;

    return-void
.end method

.method private static a(Lcom/android/volley/c$a;)Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/volley/c$a;->h:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/android/volley/c$a;->g:Ljava/util/Map;

    .line 7
    .line 8
    invoke-static {p0}, Lcom/android/volley/toolbox/d;->h(Ljava/util/Map;)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method static b(Lcom/android/volley/toolbox/c$b;)Lcom/android/volley/toolbox/c$a;
    .locals 14

    .line 1
    invoke-static {p0}, Lcom/android/volley/toolbox/c;->m(Ljava/io/InputStream;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0x20150306

    .line 6
    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    invoke-static {p0}, Lcom/android/volley/toolbox/c;->o(Lcom/android/volley/toolbox/c$b;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-static {p0}, Lcom/android/volley/toolbox/c;->o(Lcom/android/volley/toolbox/c$b;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    invoke-static {p0}, Lcom/android/volley/toolbox/c;->n(Ljava/io/InputStream;)J

    .line 19
    .line 20
    .line 21
    move-result-wide v5

    .line 22
    invoke-static {p0}, Lcom/android/volley/toolbox/c;->n(Ljava/io/InputStream;)J

    .line 23
    .line 24
    .line 25
    move-result-wide v7

    .line 26
    invoke-static {p0}, Lcom/android/volley/toolbox/c;->n(Ljava/io/InputStream;)J

    .line 27
    .line 28
    .line 29
    move-result-wide v9

    .line 30
    invoke-static {p0}, Lcom/android/volley/toolbox/c;->n(Ljava/io/InputStream;)J

    .line 31
    .line 32
    .line 33
    move-result-wide v11

    .line 34
    invoke-static {p0}, Lcom/android/volley/toolbox/c;->l(Lcom/android/volley/toolbox/c$b;)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v13

    .line 38
    new-instance p0, Lcom/android/volley/toolbox/c$a;

    .line 39
    .line 40
    move-object v2, p0

    .line 41
    invoke-direct/range {v2 .. v13}, Lcom/android/volley/toolbox/c$a;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/util/List;)V

    .line 42
    .line 43
    .line 44
    return-object p0

    .line 45
    :cond_0
    new-instance p0, Ljava/io/IOException;

    .line 46
    .line 47
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 48
    .line 49
    .line 50
    throw p0
.end method


# virtual methods
.method c([B)Lcom/android/volley/c$a;
    .locals 3

    .line 1
    new-instance v0, Lcom/android/volley/c$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/volley/c$a;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, v0, Lcom/android/volley/c$a;->a:[B

    .line 7
    .line 8
    iget-object p1, p0, Lcom/android/volley/toolbox/c$a;->c:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p1, v0, Lcom/android/volley/c$a;->b:Ljava/lang/String;

    .line 11
    .line 12
    iget-wide v1, p0, Lcom/android/volley/toolbox/c$a;->d:J

    .line 13
    .line 14
    iput-wide v1, v0, Lcom/android/volley/c$a;->c:J

    .line 15
    .line 16
    iget-wide v1, p0, Lcom/android/volley/toolbox/c$a;->e:J

    .line 17
    .line 18
    iput-wide v1, v0, Lcom/android/volley/c$a;->d:J

    .line 19
    .line 20
    iget-wide v1, p0, Lcom/android/volley/toolbox/c$a;->f:J

    .line 21
    .line 22
    iput-wide v1, v0, Lcom/android/volley/c$a;->e:J

    .line 23
    .line 24
    iget-wide v1, p0, Lcom/android/volley/toolbox/c$a;->g:J

    .line 25
    .line 26
    iput-wide v1, v0, Lcom/android/volley/c$a;->f:J

    .line 27
    .line 28
    iget-object p1, p0, Lcom/android/volley/toolbox/c$a;->h:Ljava/util/List;

    .line 29
    .line 30
    invoke-static {p1}, Lcom/android/volley/toolbox/d;->i(Ljava/util/List;)Ljava/util/Map;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, v0, Lcom/android/volley/c$a;->g:Ljava/util/Map;

    .line 35
    .line 36
    iget-object p1, p0, Lcom/android/volley/toolbox/c$a;->h:Ljava/util/List;

    .line 37
    .line 38
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iput-object p1, v0, Lcom/android/volley/c$a;->h:Ljava/util/List;

    .line 43
    .line 44
    return-object v0
.end method

.method d(Ljava/io/OutputStream;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const v2, 0x20150306

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-static {p1, v2}, Lcom/android/volley/toolbox/c;->t(Ljava/io/OutputStream;I)V

    .line 7
    .line 8
    .line 9
    iget-object v2, p0, Lcom/android/volley/toolbox/c$a;->b:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {p1, v2}, Lcom/android/volley/toolbox/c;->v(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Lcom/android/volley/toolbox/c$a;->c:Ljava/lang/String;

    .line 15
    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    const-string v2, ""

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception p1

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    invoke-static {p1, v2}, Lcom/android/volley/toolbox/c;->v(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-wide v2, p0, Lcom/android/volley/toolbox/c$a;->d:J

    .line 27
    .line 28
    invoke-static {p1, v2, v3}, Lcom/android/volley/toolbox/c;->u(Ljava/io/OutputStream;J)V

    .line 29
    .line 30
    .line 31
    iget-wide v2, p0, Lcom/android/volley/toolbox/c$a;->e:J

    .line 32
    .line 33
    invoke-static {p1, v2, v3}, Lcom/android/volley/toolbox/c;->u(Ljava/io/OutputStream;J)V

    .line 34
    .line 35
    .line 36
    iget-wide v2, p0, Lcom/android/volley/toolbox/c$a;->f:J

    .line 37
    .line 38
    invoke-static {p1, v2, v3}, Lcom/android/volley/toolbox/c;->u(Ljava/io/OutputStream;J)V

    .line 39
    .line 40
    .line 41
    iget-wide v2, p0, Lcom/android/volley/toolbox/c$a;->g:J

    .line 42
    .line 43
    invoke-static {p1, v2, v3}, Lcom/android/volley/toolbox/c;->u(Ljava/io/OutputStream;J)V

    .line 44
    .line 45
    .line 46
    iget-object v2, p0, Lcom/android/volley/toolbox/c$a;->h:Ljava/util/List;

    .line 47
    .line 48
    invoke-static {v2, p1}, Lcom/android/volley/toolbox/c;->s(Ljava/util/List;Ljava/io/OutputStream;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    .line 54
    return v1

    .line 55
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    new-array v1, v1, [Ljava/lang/Object;

    .line 60
    .line 61
    aput-object p1, v1, v0

    .line 62
    .line 63
    const-string p1, "%s"

    .line 64
    .line 65
    invoke-static {p1, v1}, Lcom/android/volley/l;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    return v0
.end method
