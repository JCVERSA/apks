.class final Lcom/android/net/toolbox/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/net/toolbox/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/net/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/net/b$a;)V
    .locals 12

    .line 1
    iget-object v2, p2, Lcom/android/net/b$a;->b:Ljava/lang/String;

    iget-wide v3, p2, Lcom/android/net/b$a;->c:J

    iget-wide v5, p2, Lcom/android/net/b$a;->d:J

    iget-wide v7, p2, Lcom/android/net/b$a;->e:J

    iget-wide v9, p2, Lcom/android/net/b$a;->f:J

    iget-object v0, p2, Lcom/android/net/b$a;->h:Ljava/util/List;

    if-eqz v0, :cond_0

    :goto_0
    move-object v11, v0

    goto :goto_1

    :cond_0
    iget-object v0, p2, Lcom/android/net/b$a;->g:Ljava/util/Map;

    invoke-static {v0}, Lcom/android/net/toolbox/g;->b(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :goto_1
    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/android/net/toolbox/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/util/List;)V

    iget-object p1, p2, Lcom/android/net/b$a;->a:[B

    array-length p1, p1

    int-to-long p1, p1

    iput-wide p1, p0, Lcom/android/net/toolbox/e$a;->a:J

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJJJ",
            "Ljava/util/List<",
            "Lcom/android/net/g;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/net/toolbox/e$a;->b:Ljava/lang/String;

    const-string p1, ""

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    :cond_0
    iput-object p2, p0, Lcom/android/net/toolbox/e$a;->c:Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/net/toolbox/e$a;->d:J

    iput-wide p5, p0, Lcom/android/net/toolbox/e$a;->e:J

    iput-wide p7, p0, Lcom/android/net/toolbox/e$a;->f:J

    iput-wide p9, p0, Lcom/android/net/toolbox/e$a;->g:J

    iput-object p11, p0, Lcom/android/net/toolbox/e$a;->h:Ljava/util/List;

    return-void
.end method

.method public static a(Lcom/android/net/toolbox/e$b;)Lcom/android/net/toolbox/e$a;
    .locals 14

    .line 1
    invoke-static {p0}, Lcom/android/net/toolbox/e;->a(Ljava/io/InputStream;)I

    move-result v0

    const v1, 0x20150306

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/android/net/toolbox/e;->a(Lcom/android/net/toolbox/e$b;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/android/net/toolbox/e;->a(Lcom/android/net/toolbox/e$b;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Lcom/android/net/toolbox/e;->b(Ljava/io/InputStream;)J

    move-result-wide v5

    invoke-static {p0}, Lcom/android/net/toolbox/e;->b(Ljava/io/InputStream;)J

    move-result-wide v7

    invoke-static {p0}, Lcom/android/net/toolbox/e;->b(Ljava/io/InputStream;)J

    move-result-wide v9

    invoke-static {p0}, Lcom/android/net/toolbox/e;->b(Ljava/io/InputStream;)J

    move-result-wide v11

    invoke-static {p0}, Lcom/android/net/toolbox/e;->b(Lcom/android/net/toolbox/e$b;)Ljava/util/List;

    move-result-object v13

    new-instance p0, Lcom/android/net/toolbox/e$a;

    move-object v2, p0

    invoke-direct/range {v2 .. v13}, Lcom/android/net/toolbox/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/util/List;)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method


# virtual methods
.method public final a(Ljava/io/OutputStream;)Z
    .locals 4

    .line 2
    const v0, 0x20150306

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1, v0}, Lcom/android/net/toolbox/e;->a(Ljava/io/OutputStream;I)V

    iget-object v0, p0, Lcom/android/net/toolbox/e$a;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/net/toolbox/e;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/net/toolbox/e$a;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    invoke-static {p1, v0}, Lcom/android/net/toolbox/e;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/net/toolbox/e$a;->d:J

    invoke-static {p1, v2, v3}, Lcom/android/net/toolbox/e;->a(Ljava/io/OutputStream;J)V

    iget-wide v2, p0, Lcom/android/net/toolbox/e$a;->e:J

    invoke-static {p1, v2, v3}, Lcom/android/net/toolbox/e;->a(Ljava/io/OutputStream;J)V

    iget-wide v2, p0, Lcom/android/net/toolbox/e$a;->f:J

    invoke-static {p1, v2, v3}, Lcom/android/net/toolbox/e;->a(Ljava/io/OutputStream;J)V

    iget-wide v2, p0, Lcom/android/net/toolbox/e$a;->g:J

    invoke-static {p1, v2, v3}, Lcom/android/net/toolbox/e;->a(Ljava/io/OutputStream;J)V

    iget-object p0, p0, Lcom/android/net/toolbox/e$a;->h:Ljava/util/List;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/net/toolbox/e;->a(Ljava/io/OutputStream;I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/net/g;

    iget-object v2, v0, Lcom/android/net/g;->a:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/android/net/toolbox/e;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/net/g;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/net/toolbox/e;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-static {p1, v1}, Lcom/android/net/toolbox/e;->a(Ljava/io/OutputStream;I)V

    :cond_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%s"

    invoke-static {p1, p0}, Lcom/android/net/v;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method
