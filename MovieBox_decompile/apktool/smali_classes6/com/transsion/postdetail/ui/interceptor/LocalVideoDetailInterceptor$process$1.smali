.class final Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor$process$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor;->i(Lcom/therouter/router/RouteItem;Lmf/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/n0;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lkotlinx/coroutines/n0;",
        "",
        "<anonymous>",
        "(Lkotlinx/coroutines/n0;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsion.postdetail.ui.interceptor.LocalVideoDetailInterceptor$process$1"
    f = "LocalVideoDetailInterceptor.kt"
    l = {
        0x63
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $callback:Lmf/b;

.field final synthetic $postcard:Lcom/therouter/router/RouteItem;

.field final synthetic $resourceId:Ljava/lang/String;

.field final synthetic $subjectId:Ljava/lang/String;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor;Lcom/therouter/router/RouteItem;Lmf/b;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor;",
            "Lcom/therouter/router/RouteItem;",
            "Lmf/b;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor$process$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor$process$1;->$resourceId:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor$process$1;->this$0:Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor$process$1;->$postcard:Lcom/therouter/router/RouteItem;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor$process$1;->$callback:Lmf/b;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor$process$1;->$subjectId:Ljava/lang/String;

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor$process$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor$process$1;->$resourceId:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor$process$1;->this$0:Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor$process$1;->$postcard:Lcom/therouter/router/RouteItem;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor$process$1;->$callback:Lmf/b;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor$process$1;->$subjectId:Ljava/lang/String;

    .line 12
    .line 13
    move-object v0, p1

    .line 14
    move-object v6, p2

    .line 15
    invoke-direct/range {v0 .. v6}, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor$process$1;-><init>(Ljava/lang/String;Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor;Lcom/therouter/router/RouteItem;Lmf/b;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 16
    .line 17
    .line 18
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor$process$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/n0;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor$process$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor$process$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor$process$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor$process$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor$process$1;->L$1:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Ljava/lang/String;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor$process$1;->L$0:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 27
    .line 28
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p1

    .line 32
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor$process$1;->$resourceId:Ljava/lang/String;

    .line 36
    .line 37
    if-eqz v1, :cond_3

    .line 38
    .line 39
    iget-object p1, p0, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor$process$1;->$subjectId:Ljava/lang/String;

    .line 40
    .line 41
    sget-object v3, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    .line 42
    .line 43
    invoke-virtual {v3}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    iput-object v1, p0, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor$process$1;->L$0:Ljava/lang/Object;

    .line 48
    .line 49
    iput-object p1, p0, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor$process$1;->L$1:Ljava/lang/Object;

    .line 50
    .line 51
    iput v2, p0, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor$process$1;->label:I

    .line 52
    .line 53
    invoke-virtual {v3, v1, p0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->p(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    if-ne v3, v0, :cond_2

    .line 58
    .line 59
    return-object v0

    .line 60
    :cond_2
    move-object v0, p1

    .line 61
    move-object p1, v3

    .line 62
    :goto_0
    check-cast p1, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 63
    .line 64
    if-eqz p1, :cond_3

    .line 65
    .line 66
    sget-object v3, Lcom/transsnet/downloader/util/DownloadUtil;->a:Lcom/transsnet/downloader/util/DownloadUtil;

    .line 67
    .line 68
    invoke-virtual {v3, p1}, Lcom/transsnet/downloader/util/DownloadUtil;->i(Lcom/transsion/baselib/db/download/DownloadBean;)Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-eqz v3, :cond_3

    .line 73
    .line 74
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 75
    .line 76
    new-instance v4, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    const-string v5, "---\u6587\u4ef6\u4e0d\u5b58\u5728\u6216\u8005\u4e0b\u8f7d\u8fdb\u5ea6\u76f8\u5dee10M\u7684\u91cd\u65b0\u4e0b\u8f7d,resourceId:"

    .line 82
    .line 83
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v1, ", subjectId:"

    .line 90
    .line 91
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    const-string v1, "Download_LocalVideoDetailInterceptor"

    .line 102
    .line 103
    invoke-virtual {v3, v1, v0, v2}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, v2}, Lcom/transsion/baselib/db/download/DownloadBean;->setReDownload(Z)V

    .line 107
    .line 108
    .line 109
    :cond_3
    iget-object p1, p0, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor$process$1;->this$0:Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor;

    .line 110
    .line 111
    iget-object v0, p0, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor$process$1;->$postcard:Lcom/therouter/router/RouteItem;

    .line 112
    .line 113
    iget-object v1, p0, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor$process$1;->$callback:Lmf/b;

    .line 114
    .line 115
    invoke-static {p1, v0, v1}, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor;->e(Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor;Lcom/therouter/router/RouteItem;Lmf/b;)V

    .line 116
    .line 117
    .line 118
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 119
    .line 120
    return-object p1
.end method
