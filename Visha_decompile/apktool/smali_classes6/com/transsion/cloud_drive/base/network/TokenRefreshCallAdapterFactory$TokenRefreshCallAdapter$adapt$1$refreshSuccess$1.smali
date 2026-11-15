.class final Lcom/transsion/cloud_drive/base/network/TokenRefreshCallAdapterFactory$TokenRefreshCallAdapter$adapt$1$refreshSuccess$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloud_drive/base/network/TokenRefreshCallAdapterFactory$TokenRefreshCallAdapter;->d(Ljq0;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Ls74;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lnk1;",
        "",
        "<anonymous>",
        "(Lnk1;)Z"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation runtime Lnt1;
    c = "com.transsion.cloud_drive.base.network.TokenRefreshCallAdapterFactory$TokenRefreshCallAdapter$adapt$1$refreshSuccess$1"
    f = "TokenRefreshCallAdapterFactory.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/transsion/cloud_drive/base/network/TokenRefreshCallAdapterFactory$TokenRefreshCallAdapter;


# direct methods
.method public constructor <init>(Lcom/transsion/cloud_drive/base/network/TokenRefreshCallAdapterFactory$TokenRefreshCallAdapter;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/cloud_drive/base/network/TokenRefreshCallAdapterFactory$TokenRefreshCallAdapter;",
            "Lwh1<",
            "-",
            "Lcom/transsion/cloud_drive/base/network/TokenRefreshCallAdapterFactory$TokenRefreshCallAdapter$adapt$1$refreshSuccess$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/cloud_drive/base/network/TokenRefreshCallAdapterFactory$TokenRefreshCallAdapter$adapt$1$refreshSuccess$1;->this$0:Lcom/transsion/cloud_drive/base/network/TokenRefreshCallAdapterFactory$TokenRefreshCallAdapter;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILwh1;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lwh1;)Lwh1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lwh1<",
            "*>;)",
            "Lwh1<",
            "Lzfb;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/transsion/cloud_drive/base/network/TokenRefreshCallAdapterFactory$TokenRefreshCallAdapter$adapt$1$refreshSuccess$1;

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/network/TokenRefreshCallAdapterFactory$TokenRefreshCallAdapter$adapt$1$refreshSuccess$1;->this$0:Lcom/transsion/cloud_drive/base/network/TokenRefreshCallAdapterFactory$TokenRefreshCallAdapter;

    invoke-direct {p1, p0, p2}, Lcom/transsion/cloud_drive/base/network/TokenRefreshCallAdapterFactory$TokenRefreshCallAdapter$adapt$1$refreshSuccess$1;-><init>(Lcom/transsion/cloud_drive/base/network/TokenRefreshCallAdapterFactory$TokenRefreshCallAdapter;Lwh1;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud_drive/base/network/TokenRefreshCallAdapterFactory$TokenRefreshCallAdapter$adapt$1$refreshSuccess$1;->invoke(Lnk1;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lnk1;Lwh1;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnk1;",
            "Lwh1<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud_drive/base/network/TokenRefreshCallAdapterFactory$TokenRefreshCallAdapter$adapt$1$refreshSuccess$1;->create(Ljava/lang/Object;Lwh1;)Lwh1;

    move-result-object p0

    check-cast p0, Lcom/transsion/cloud_drive/base/network/TokenRefreshCallAdapterFactory$TokenRefreshCallAdapter$adapt$1$refreshSuccess$1;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1}, Lcom/transsion/cloud_drive/base/network/TokenRefreshCallAdapterFactory$TokenRefreshCallAdapter$adapt$1$refreshSuccess$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    iget v0, p0, Lcom/transsion/cloud_drive/base/network/TokenRefreshCallAdapterFactory$TokenRefreshCallAdapter$adapt$1$refreshSuccess$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    :try_start_0
    iget-object p1, p0, Lcom/transsion/cloud_drive/base/network/TokenRefreshCallAdapterFactory$TokenRefreshCallAdapter$adapt$1$refreshSuccess$1;->this$0:Lcom/transsion/cloud_drive/base/network/TokenRefreshCallAdapterFactory$TokenRefreshCallAdapter;

    invoke-static {p1}, Lcom/transsion/cloud_drive/base/network/TokenRefreshCallAdapterFactory$TokenRefreshCallAdapter;->c(Lcom/transsion/cloud_drive/base/network/TokenRefreshCallAdapterFactory$TokenRefreshCallAdapter;)Lnpa;

    move-result-object p1

    invoke-interface {p1}, Lnpa;->a()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Loq5;->a:Loq5;

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/network/TokenRefreshCallAdapterFactory$TokenRefreshCallAdapter$adapt$1$refreshSuccess$1;->this$0:Lcom/transsion/cloud_drive/base/network/TokenRefreshCallAdapterFactory$TokenRefreshCallAdapter;

    invoke-static {p0}, Lcom/transsion/cloud_drive/base/network/TokenRefreshCallAdapterFactory$TokenRefreshCallAdapter;->b(Lcom/transsion/cloud_drive/base/network/TokenRefreshCallAdapterFactory$TokenRefreshCallAdapter;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Token refresh failed"

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Loq5;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lmk0;->a(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
