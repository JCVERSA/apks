.class public final Lcom/cloud/h5update/impl/UpdateChecker$RequestRunnable$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/h5update/impl/UpdateChecker$RequestRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/h5update/impl/UpdateChecker$RequestRunnable;


# direct methods
.method constructor <init>(Lcom/cloud/h5update/impl/UpdateChecker$RequestRunnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/h5update/impl/UpdateChecker$RequestRunnable$a;->a:Lcom/cloud/h5update/impl/UpdateChecker$RequestRunnable;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 2

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
    iget-object p1, p0, Lcom/cloud/h5update/impl/UpdateChecker$RequestRunnable$a;->a:Lcom/cloud/h5update/impl/UpdateChecker$RequestRunnable;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/cloud/h5update/impl/UpdateChecker$RequestRunnable;->getUpdateChecker()Lcom/cloud/h5update/impl/UpdateChecker;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v0, p0, Lcom/cloud/h5update/impl/UpdateChecker$RequestRunnable$a;->a:Lcom/cloud/h5update/impl/UpdateChecker$RequestRunnable;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/cloud/h5update/impl/UpdateChecker$RequestRunnable;->getUrl()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/cloud/h5update/impl/UpdateChecker$RequestRunnable$a;->a:Lcom/cloud/h5update/impl/UpdateChecker$RequestRunnable;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/cloud/h5update/impl/UpdateChecker$RequestRunnable;->getUpdateManager()Lv6/c;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {p1, v0, v1}, Lcom/cloud/h5update/impl/UpdateChecker;->a(Ljava/lang/String;Lv6/c;)V

    .line 30
    .line 31
    .line 32
    sget-object p1, Lrf/b;->a:Lrf/b;

    .line 33
    .line 34
    invoke-virtual {p1, p2}, Lrf/b;->e(Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 1

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
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iget-object p2, p0, Lcom/cloud/h5update/impl/UpdateChecker$RequestRunnable$a;->a:Lcom/cloud/h5update/impl/UpdateChecker$RequestRunnable;

    .line 30
    .line 31
    invoke-virtual {p2}, Lcom/cloud/h5update/impl/UpdateChecker$RequestRunnable;->getUpdateChecker()Lcom/cloud/h5update/impl/UpdateChecker;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    const-string v0, "result"

    .line 36
    .line 37
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/cloud/h5update/impl/UpdateChecker$RequestRunnable$a;->a:Lcom/cloud/h5update/impl/UpdateChecker$RequestRunnable;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/cloud/h5update/impl/UpdateChecker$RequestRunnable;->getUpdateManager()Lv6/c;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {p2, p1, v0}, Lcom/cloud/h5update/impl/UpdateChecker;->b(Ljava/lang/String;Lv6/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catch_0
    move-exception p1

    .line 51
    sget-object p2, Lrf/b;->a:Lrf/b;

    .line 52
    .line 53
    invoke-virtual {p2, p1}, Lrf/b;->e(Ljava/lang/Throwable;)V

    .line 54
    .line 55
    .line 56
    :goto_0
    return-void
.end method
