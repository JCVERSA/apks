.class final Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$loadFile$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->loadFile(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
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

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.cloud.tmc.miniapp.ui.ImagePreviewActivity$loadFile$1"
    f = "ImagePreviewActivity.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $block:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/io/File;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic $imagePath:Ljava/lang/String;

.field public label:I

.field public final synthetic this$0:Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/io/File;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$loadFile$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$loadFile$1;->this$0:Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$loadFile$1;->$imagePath:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$loadFile$1;->$block:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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
    new-instance p1, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$loadFile$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$loadFile$1;->this$0:Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$loadFile$1;->$imagePath:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$loadFile$1;->$block:Lkotlin/jvm/functions/Function1;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$loadFile$1;-><init>(Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$loadFile$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$loadFile$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$loadFile$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$loadFile$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$loadFile$1;->label:I

    .line 7
    .line 8
    if-nez v1, :cond_4

    .line 9
    .line 10
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    :try_start_0
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$loadFile$1;->this$0:Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;

    .line 15
    .line 16
    invoke-static {v1}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->access$getAdapter(Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;)Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;->getImageLoder()Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$loadFile$1;->this$0:Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;

    .line 25
    .line 26
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$loadFile$1;->$imagePath:Ljava/lang/String;

    .line 27
    .line 28
    invoke-interface {v1, v2, v3}, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;->loadImgFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    if-nez v4, :cond_0

    .line 33
    .line 34
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$loadFile$1;->$block:Lkotlin/jvm/functions/Function1;

    .line 35
    .line 36
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 40
    .line 41
    return-object p1

    .line 42
    :catchall_0
    move-exception v0

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$loadFile$1;->$imagePath:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v1}, Lkotlin/text/StringsKt;->n1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    const-string v2, "/"

    .line 55
    .line 56
    invoke-static {v1, v2, v0}, Lkotlin/text/StringsKt;->d1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    const/16 v2, 0x2e

    .line 61
    .line 62
    invoke-static {v1, v2, v0}, Lkotlin/text/StringsKt;->c1(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-nez v0, :cond_1

    .line 71
    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 73
    .line 74
    .line 75
    move-result-wide v0

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    const-string v3, "IMG_"

    .line 82
    .line 83
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v0, ".png"

    .line 90
    .line 91
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    :cond_1
    new-instance v0, Ljava/io/File;

    .line 99
    .line 100
    new-instance v2, Ljava/io/File;

    .line 101
    .line 102
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$loadFile$1;->this$0:Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;

    .line 103
    .line 104
    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    const-string v5, "downloadFile"

    .line 109
    .line 110
    invoke-direct {v2, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-eqz v1, :cond_2

    .line 121
    .line 122
    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/ext/FileExtKt;->getDelete(Ljava/io/File;)Z

    .line 123
    .line 124
    .line 125
    :cond_2
    const/4 v8, 0x6

    .line 126
    const/4 v9, 0x0

    .line 127
    const/4 v6, 0x0

    .line 128
    const/4 v7, 0x0

    .line 129
    move-object v5, v0

    .line 130
    invoke-static/range {v4 .. v9}, Lcom/cloud/tmc/integration/utils/ext/FileExtKt;->moveTo$default(Ljava/io/File;Ljava/io/File;ZZILjava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$loadFile$1;->$block:Lkotlin/jvm/functions/Function1;

    .line 135
    .line 136
    if-eqz v1, :cond_3

    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_3
    move-object v0, p1

    .line 140
    :goto_0
    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    .line 142
    .line 143
    goto :goto_2

    .line 144
    :goto_1
    const-string v1, "ImagePreviewActivity"

    .line 145
    .line 146
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 147
    .line 148
    .line 149
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$loadFile$1;->$block:Lkotlin/jvm/functions/Function1;

    .line 150
    .line 151
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 155
    .line 156
    return-object p1

    .line 157
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 158
    .line 159
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 160
    .line 161
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    throw p1
.end method
