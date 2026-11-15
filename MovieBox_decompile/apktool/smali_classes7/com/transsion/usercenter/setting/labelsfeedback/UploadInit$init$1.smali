.class public final Lcom/transsion/usercenter/setting/labelsfeedback/UploadInit$init$1;
.super Luu/b;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/usercenter/setting/labelsfeedback/UploadInit;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Luu/b;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Ljg/b;->a:Ljg/b$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljg/b$a;->c()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Lyf/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lyf/a;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    invoke-virtual {v0, v1, v2, v3}, Lyf/a;->a(IJ)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 3

    .line 1
    const-string v0, "oneroom-subtitle-db"

    .line 2
    .line 3
    const-string v1, "mb-ad-plans-db"

    .line 4
    .line 5
    const-string v2, "oneroom-db"

    .line 6
    .line 7
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->o([Ljava/lang/Object;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lxf/c;->a:Lxf/c$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lxf/c$a;->b()Landroid/app/Application;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lxf/c$a;->c(Landroid/app/Application;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public e(Lkotlin/jvm/functions/Function1;)V
    .locals 3

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Lcom/transsion/usercenter/setting/labelsfeedback/UploadInit$init$1$getLogsConfig$1;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-direct {v1, p1, v2}, Lcom/transsion/usercenter/setting/labelsfeedback/UploadInit$init$1$getLogsConfig$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x2

    .line 21
    invoke-static {v0, v1, v2, p1, v2}, Lcom/transsion/baselib/net/LaunchWithErrorHandlerKt;->d(Lkotlinx/coroutines/n0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public f(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    invoke-static {p3}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 6
    .line 7
    .line 8
    move-result-object p3

    .line 9
    new-instance v0, Lcom/transsion/usercenter/setting/labelsfeedback/UploadInit$init$1$getTstToken$2;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-direct {v0, p1, p2, v1}, Lcom/transsion/usercenter/setting/labelsfeedback/UploadInit$init$1$getTstToken$2;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    new-instance p1, Lcom/transsion/usercenter/setting/labelsfeedback/UploadInit$init$1$getTstToken$3;

    .line 16
    .line 17
    invoke-direct {p1, p2, v1}, Lcom/transsion/usercenter/setting/labelsfeedback/UploadInit$init$1$getTstToken$3;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    .line 18
    .line 19
    .line 20
    invoke-static {p3, v0, p1}, Lcom/transsion/baselib/net/LaunchWithErrorHandlerKt;->c(Lkotlinx/coroutines/n0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    .line 21
    .line 22
    .line 23
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 24
    .line 25
    return-object p1
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/usercenter/setting/labelsfeedback/UploadInit;->a:Lcom/transsion/usercenter/setting/labelsfeedback/UploadInit;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/usercenter/setting/labelsfeedback/UploadInit;->c(Lcom/transsion/usercenter/setting/labelsfeedback/UploadInit;)Lqx/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Lqx/a;->i()Lcom/transsnet/loginapi/bean/UserInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    :cond_0
    const-string v0, ""

    .line 22
    .line 23
    :cond_1
    return-object v0
.end method

.method public h(Lcom/google/gson/JsonObject;Lkotlin/jvm/functions/Function1;)V
    .locals 3

    .line 1
    const-string v0, "json"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "callback"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Lcom/transsion/usercenter/setting/labelsfeedback/UploadInit$init$1$reportUploadLogsResult$1;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-direct {v1, p1, p2, v2}, Lcom/transsion/usercenter/setting/labelsfeedback/UploadInit$init$1$reportUploadLogsResult$1;-><init>(Lcom/google/gson/JsonObject;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    new-instance p1, Lcom/transsion/usercenter/setting/labelsfeedback/UploadInit$init$1$reportUploadLogsResult$2;

    .line 26
    .line 27
    invoke-direct {p1, p2, v2}, Lcom/transsion/usercenter/setting/labelsfeedback/UploadInit$init$1$reportUploadLogsResult$2;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1, p1}, Lcom/transsion/baselib/net/LaunchWithErrorHandlerKt;->c(Lkotlinx/coroutines/n0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method
