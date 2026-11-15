.class public final Lcom/vungle/ads/internal/network/d$d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/internal/network/d;->enqueue(Lcom/vungle/ads/internal/network/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $callback:Lcom/vungle/ads/internal/network/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/ads/internal/network/b;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/vungle/ads/internal/network/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/ads/internal/network/d;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/vungle/ads/internal/network/d;Lcom/vungle/ads/internal/network/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/ads/internal/network/d;",
            "Lcom/vungle/ads/internal/network/b;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/internal/network/d$d;->this$0:Lcom/vungle/ads/internal/network/d;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/vungle/ads/internal/network/d$d;->$callback:Lcom/vungle/ads/internal/network/b;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final callFailure(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/vungle/ads/internal/network/d$d;->$callback:Lcom/vungle/ads/internal/network/b;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/vungle/ads/internal/network/d$d;->this$0:Lcom/vungle/ads/internal/network/d;

    .line 4
    .line 5
    invoke-interface {v0, v1, p1}, Lcom/vungle/ads/internal/network/b;->onFailure(Lcom/vungle/ads/internal/network/a;Ljava/lang/Throwable;)V
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
    sget-object v0, Lcom/vungle/ads/internal/network/d;->Companion:Lcom/vungle/ads/internal/network/d$a;

    .line 11
    .line 12
    invoke-static {v0, p1}, Lcom/vungle/ads/internal/network/d$a;->access$throwIfFatal(Lcom/vungle/ads/internal/network/d$a;Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    sget-object v0, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    .line 16
    .line 17
    const-string v1, "OkHttpCall"

    .line 18
    .line 19
    const-string v2, "Cannot pass failure to callback"

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2, p1}, Lcom/vungle/ads/internal/util/o$a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "e"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p2}, Lcom/vungle/ads/internal/network/d$d;->callFailure(Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 2

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "response"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    iget-object p1, p0, Lcom/vungle/ads/internal/network/d$d;->this$0:Lcom/vungle/ads/internal/network/d;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lcom/vungle/ads/internal/network/d;->parseResponse(Lokhttp3/Response;)Lcom/vungle/ads/internal/network/e;

    .line 14
    .line 15
    .line 16
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    :try_start_1
    iget-object p2, p0, Lcom/vungle/ads/internal/network/d$d;->$callback:Lcom/vungle/ads/internal/network/b;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/vungle/ads/internal/network/d$d;->this$0:Lcom/vungle/ads/internal/network/d;

    .line 20
    .line 21
    invoke-interface {p2, v0, p1}, Lcom/vungle/ads/internal/network/b;->onResponse(Lcom/vungle/ads/internal/network/a;Lcom/vungle/ads/internal/network/e;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    sget-object p2, Lcom/vungle/ads/internal/network/d;->Companion:Lcom/vungle/ads/internal/network/d$a;

    .line 27
    .line 28
    invoke-static {p2, p1}, Lcom/vungle/ads/internal/network/d$a;->access$throwIfFatal(Lcom/vungle/ads/internal/network/d$a;Ljava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    sget-object p2, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    .line 32
    .line 33
    const-string v0, "OkHttpCall"

    .line 34
    .line 35
    const-string v1, "Cannot pass response to callback"

    .line 36
    .line 37
    invoke-virtual {p2, v0, v1, p1}, Lcom/vungle/ads/internal/util/o$a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 38
    .line 39
    .line 40
    :goto_0
    return-void

    .line 41
    :catchall_1
    move-exception p1

    .line 42
    sget-object p2, Lcom/vungle/ads/internal/network/d;->Companion:Lcom/vungle/ads/internal/network/d$a;

    .line 43
    .line 44
    invoke-static {p2, p1}, Lcom/vungle/ads/internal/network/d$a;->access$throwIfFatal(Lcom/vungle/ads/internal/network/d$a;Ljava/lang/Throwable;)V

    .line 45
    .line 46
    .line 47
    invoke-direct {p0, p1}, Lcom/vungle/ads/internal/network/d$d;->callFailure(Ljava/lang/Throwable;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method
