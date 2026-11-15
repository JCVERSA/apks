.class Lretrofit2/w$b$a;
.super Lokio/ForwardingSource;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lretrofit2/w$b;-><init>(Lokhttp3/ResponseBody;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lretrofit2/w$b;


# direct methods
.method constructor <init>(Lretrofit2/w$b;Lokio/Source;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lretrofit2/w$b$a;->a:Lretrofit2/w$b;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public read(Lokio/Buffer;J)J
    .locals 0

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSource;->read(Lokio/Buffer;J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-wide p1

    .line 6
    :catch_0
    move-exception p1

    .line 7
    iget-object p2, p0, Lretrofit2/w$b$a;->a:Lretrofit2/w$b;

    .line 8
    .line 9
    iput-object p1, p2, Lretrofit2/w$b;->c:Ljava/io/IOException;

    .line 10
    .line 11
    throw p1
.end method
