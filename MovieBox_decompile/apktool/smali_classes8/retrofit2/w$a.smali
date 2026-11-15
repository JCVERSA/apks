.class Lretrofit2/w$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lretrofit2/w;->f(Lretrofit2/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lretrofit2/f;

.field final synthetic b:Lretrofit2/w;


# direct methods
.method constructor <init>(Lretrofit2/w;Lretrofit2/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lretrofit2/w$a;->b:Lretrofit2/w;

    .line 2
    .line 3
    iput-object p2, p0, Lretrofit2/w$a;->a:Lretrofit2/f;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private a(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lretrofit2/w$a;->a:Lretrofit2/f;

    .line 2
    .line 3
    iget-object v1, p0, Lretrofit2/w$a;->b:Lretrofit2/w;

    .line 4
    .line 5
    invoke-interface {v0, v1, p1}, Lretrofit2/f;->a(Lretrofit2/d;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    invoke-static {p1}, Lretrofit2/o0;->t(Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lretrofit2/w$a;->a(Ljava/lang/Throwable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p1, p0, Lretrofit2/w$a;->b:Lretrofit2/w;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Lretrofit2/w;->d(Lokhttp3/Response;)Lretrofit2/j0;

    .line 4
    .line 5
    .line 6
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    iget-object p2, p0, Lretrofit2/w$a;->a:Lretrofit2/f;

    .line 8
    .line 9
    iget-object v0, p0, Lretrofit2/w$a;->b:Lretrofit2/w;

    .line 10
    .line 11
    invoke-interface {p2, v0, p1}, Lretrofit2/f;->b(Lretrofit2/d;Lretrofit2/j0;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    invoke-static {p1}, Lretrofit2/o0;->t(Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void

    .line 23
    :catchall_1
    move-exception p1

    .line 24
    invoke-static {p1}, Lretrofit2/o0;->t(Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, p1}, Lretrofit2/w$a;->a(Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
