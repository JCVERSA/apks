.class final Lcom/transsnet/downloader/DownloadManagerApi$playNow$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/DownloadManagerApi;->y0(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
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
    c = "com.transsnet.downloader.DownloadManagerApi$playNow$1"
    f = "DownloadManagerApi.kt"
    l = {
        0x390
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $pageFrom:Ljava/lang/String;

.field final synthetic $resourceId:Ljava/lang/String;

.field final synthetic $subjectId:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/transsnet/downloader/DownloadManagerApi;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/transsnet/downloader/DownloadManagerApi;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/transsnet/downloader/DownloadManagerApi;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsnet/downloader/DownloadManagerApi$playNow$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/DownloadManagerApi$playNow$1;->$subjectId:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsnet/downloader/DownloadManagerApi$playNow$1;->this$0:Lcom/transsnet/downloader/DownloadManagerApi;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsnet/downloader/DownloadManagerApi$playNow$1;->$context:Landroid/content/Context;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsnet/downloader/DownloadManagerApi$playNow$1;->$pageFrom:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/transsnet/downloader/DownloadManagerApi$playNow$1;->$resourceId:Ljava/lang/String;

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

.method public static synthetic a(Lcom/transsnet/downloader/DownloadManagerApi;Landroid/content/Context;Ljava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsnet/downloader/DownloadManagerApi$playNow$1;->d(Lcom/transsnet/downloader/DownloadManagerApi;Landroid/content/Context;Ljava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final d(Lcom/transsnet/downloader/DownloadManagerApi;Landroid/content/Context;Ljava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-static {p0, p3}, Lcom/transsnet/downloader/DownloadManagerApi;->F(Lcom/transsnet/downloader/DownloadManagerApi;Lcom/transsion/baselib/db/download/DownloadBean;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lcom/transsnet/downloader/DownloadManagerApi;->w(Lcom/transsnet/downloader/DownloadManagerApi;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 5
    .line 6
    .line 7
    move-result-object p3

    .line 8
    if-eqz p3, :cond_0

    .line 9
    .line 10
    invoke-virtual {p3}, Lcom/transsion/baselib/db/download/DownloadBean;->isVideo()Z

    .line 11
    .line 12
    .line 13
    move-result p3

    .line 14
    const/4 v0, 0x1

    .line 15
    if-ne p3, v0, :cond_0

    .line 16
    .line 17
    invoke-static {p0, p1, p2}, Lcom/transsnet/downloader/DownloadManagerApi;->D(Lcom/transsnet/downloader/DownloadManagerApi;Landroid/content/Context;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-static {p0, p1}, Lcom/transsnet/downloader/DownloadManagerApi;->E(Lcom/transsnet/downloader/DownloadManagerApi;Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 25
    .line 26
    return-object p0
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
    new-instance p1, Lcom/transsnet/downloader/DownloadManagerApi$playNow$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsnet/downloader/DownloadManagerApi$playNow$1;->$subjectId:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsnet/downloader/DownloadManagerApi$playNow$1;->this$0:Lcom/transsnet/downloader/DownloadManagerApi;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsnet/downloader/DownloadManagerApi$playNow$1;->$context:Landroid/content/Context;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/transsnet/downloader/DownloadManagerApi$playNow$1;->$pageFrom:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/transsnet/downloader/DownloadManagerApi$playNow$1;->$resourceId:Ljava/lang/String;

    .line 12
    .line 13
    move-object v0, p1

    .line 14
    move-object v6, p2

    .line 15
    invoke-direct/range {v0 .. v6}, Lcom/transsnet/downloader/DownloadManagerApi$playNow$1;-><init>(Ljava/lang/String;Lcom/transsnet/downloader/DownloadManagerApi;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/DownloadManagerApi$playNow$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/DownloadManagerApi$playNow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsnet/downloader/DownloadManagerApi$playNow$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsnet/downloader/DownloadManagerApi$playNow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/transsnet/downloader/DownloadManagerApi$playNow$1;->label:I

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
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/transsnet/downloader/DownloadManagerApi$playNow$1;->$subjectId:Ljava/lang/String;

    .line 28
    .line 29
    if-eqz p1, :cond_6

    .line 30
    .line 31
    iget-object p1, p0, Lcom/transsnet/downloader/DownloadManagerApi$playNow$1;->this$0:Lcom/transsnet/downloader/DownloadManagerApi;

    .line 32
    .line 33
    invoke-static {p1}, Lcom/transsnet/downloader/DownloadManagerApi;->z(Lcom/transsnet/downloader/DownloadManagerApi;)Lcom/transsnet/downloader/manager/g;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object v1, p0, Lcom/transsnet/downloader/DownloadManagerApi$playNow$1;->$subjectId:Ljava/lang/String;

    .line 38
    .line 39
    iput v2, p0, Lcom/transsnet/downloader/DownloadManagerApi$playNow$1;->label:I

    .line 40
    .line 41
    invoke-interface {p1, v1, p0}, Lcom/transsnet/downloader/manager/g;->e(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    if-ne p1, v0, :cond_2

    .line 46
    .line 47
    return-object v0

    .line 48
    :cond_2
    :goto_0
    check-cast p1, Ljava/util/List;

    .line 49
    .line 50
    if-eqz p1, :cond_3

    .line 51
    .line 52
    check-cast p1, Ljava/lang/Iterable;

    .line 53
    .line 54
    new-instance v0, Lcom/transsnet/downloader/DownloadManagerApi$playNow$1$invokeSuspend$$inlined$sortedBy$1;

    .line 55
    .line 56
    invoke-direct {v0}, Lcom/transsnet/downloader/DownloadManagerApi$playNow$1$invokeSuspend$$inlined$sortedBy$1;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->I0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    goto :goto_1

    .line 64
    :cond_3
    const/4 p1, 0x0

    .line 65
    :goto_1
    if-eqz p1, :cond_7

    .line 66
    .line 67
    move-object v0, p1

    .line 68
    check-cast v0, Ljava/util/Collection;

    .line 69
    .line 70
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_7

    .line 75
    .line 76
    iget-object v0, p0, Lcom/transsnet/downloader/DownloadManagerApi$playNow$1;->this$0:Lcom/transsnet/downloader/DownloadManagerApi;

    .line 77
    .line 78
    const/4 v1, 0x0

    .line 79
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    check-cast p1, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 84
    .line 85
    invoke-static {v0, p1}, Lcom/transsnet/downloader/DownloadManagerApi;->F(Lcom/transsnet/downloader/DownloadManagerApi;Lcom/transsion/baselib/db/download/DownloadBean;)V

    .line 86
    .line 87
    .line 88
    iget-object p1, p0, Lcom/transsnet/downloader/DownloadManagerApi$playNow$1;->this$0:Lcom/transsnet/downloader/DownloadManagerApi;

    .line 89
    .line 90
    invoke-static {p1}, Lcom/transsnet/downloader/DownloadManagerApi;->w(Lcom/transsnet/downloader/DownloadManagerApi;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    if-nez p1, :cond_4

    .line 95
    .line 96
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 97
    .line 98
    return-object p1

    .line 99
    :cond_4
    iget-object p1, p0, Lcom/transsnet/downloader/DownloadManagerApi$playNow$1;->this$0:Lcom/transsnet/downloader/DownloadManagerApi;

    .line 100
    .line 101
    invoke-static {p1}, Lcom/transsnet/downloader/DownloadManagerApi;->w(Lcom/transsnet/downloader/DownloadManagerApi;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    if-eqz p1, :cond_5

    .line 106
    .line 107
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isVideo()Z

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    if-ne p1, v2, :cond_5

    .line 112
    .line 113
    iget-object p1, p0, Lcom/transsnet/downloader/DownloadManagerApi$playNow$1;->this$0:Lcom/transsnet/downloader/DownloadManagerApi;

    .line 114
    .line 115
    iget-object v0, p0, Lcom/transsnet/downloader/DownloadManagerApi$playNow$1;->$context:Landroid/content/Context;

    .line 116
    .line 117
    iget-object v1, p0, Lcom/transsnet/downloader/DownloadManagerApi$playNow$1;->$pageFrom:Ljava/lang/String;

    .line 118
    .line 119
    invoke-static {p1, v0, v1}, Lcom/transsnet/downloader/DownloadManagerApi;->D(Lcom/transsnet/downloader/DownloadManagerApi;Landroid/content/Context;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_5
    iget-object p1, p0, Lcom/transsnet/downloader/DownloadManagerApi$playNow$1;->this$0:Lcom/transsnet/downloader/DownloadManagerApi;

    .line 124
    .line 125
    iget-object v0, p0, Lcom/transsnet/downloader/DownloadManagerApi$playNow$1;->$context:Landroid/content/Context;

    .line 126
    .line 127
    invoke-static {p1, v0}, Lcom/transsnet/downloader/DownloadManagerApi;->E(Lcom/transsnet/downloader/DownloadManagerApi;Landroid/content/Context;)V

    .line 128
    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_6
    iget-object p1, p0, Lcom/transsnet/downloader/DownloadManagerApi$playNow$1;->this$0:Lcom/transsnet/downloader/DownloadManagerApi;

    .line 132
    .line 133
    invoke-static {p1}, Lcom/transsnet/downloader/DownloadManagerApi;->z(Lcom/transsnet/downloader/DownloadManagerApi;)Lcom/transsnet/downloader/manager/g;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    iget-object v0, p0, Lcom/transsnet/downloader/DownloadManagerApi$playNow$1;->$resourceId:Ljava/lang/String;

    .line 138
    .line 139
    iget-object v1, p0, Lcom/transsnet/downloader/DownloadManagerApi$playNow$1;->this$0:Lcom/transsnet/downloader/DownloadManagerApi;

    .line 140
    .line 141
    iget-object v2, p0, Lcom/transsnet/downloader/DownloadManagerApi$playNow$1;->$context:Landroid/content/Context;

    .line 142
    .line 143
    iget-object v3, p0, Lcom/transsnet/downloader/DownloadManagerApi$playNow$1;->$pageFrom:Ljava/lang/String;

    .line 144
    .line 145
    new-instance v4, Lcom/transsnet/downloader/t;

    .line 146
    .line 147
    invoke-direct {v4, v1, v2, v3}, Lcom/transsnet/downloader/t;-><init>(Lcom/transsnet/downloader/DownloadManagerApi;Landroid/content/Context;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-interface {p1, v0, v4}, Lcom/transsnet/downloader/manager/g;->r(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 151
    .line 152
    .line 153
    :cond_7
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 154
    .line 155
    return-object p1
.end method
