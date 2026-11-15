.class final Lcom/transsion/transfer/wifi/ui/ShareMbApkDialog$onViewCreated$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/wifi/ui/ShareMbApkDialog;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
    c = "com.transsion.transfer.wifi.ui.ShareMbApkDialog$onViewCreated$1"
    f = "ShareMbApkDialog.kt"
    l = {
        0x35
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/transsion/transfer/wifi/ui/ShareMbApkDialog;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/wifi/ui/ShareMbApkDialog;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/transfer/wifi/ui/ShareMbApkDialog;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/transfer/wifi/ui/ShareMbApkDialog$onViewCreated$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/wifi/ui/ShareMbApkDialog$onViewCreated$1;->this$0:Lcom/transsion/transfer/wifi/ui/ShareMbApkDialog;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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
    new-instance p1, Lcom/transsion/transfer/wifi/ui/ShareMbApkDialog$onViewCreated$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/transfer/wifi/ui/ShareMbApkDialog$onViewCreated$1;->this$0:Lcom/transsion/transfer/wifi/ui/ShareMbApkDialog;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/transsion/transfer/wifi/ui/ShareMbApkDialog$onViewCreated$1;-><init>(Lcom/transsion/transfer/wifi/ui/ShareMbApkDialog;Lkotlin/coroutines/Continuation;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/transfer/wifi/ui/ShareMbApkDialog$onViewCreated$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/transfer/wifi/ui/ShareMbApkDialog$onViewCreated$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/transfer/wifi/ui/ShareMbApkDialog$onViewCreated$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/transfer/wifi/ui/ShareMbApkDialog$onViewCreated$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/transsion/transfer/wifi/ui/ShareMbApkDialog$onViewCreated$1;->label:I

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
    sget-object p1, Lcom/transsion/transfer/wifi/qrcode/QrCodeUtil;->a:Lcom/transsion/transfer/wifi/qrcode/QrCodeUtil;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/transsion/transfer/wifi/ui/ShareMbApkDialog$onViewCreated$1;->this$0:Lcom/transsion/transfer/wifi/ui/ShareMbApkDialog;

    .line 30
    .line 31
    invoke-static {v1}, Lcom/transsion/transfer/wifi/ui/ShareMbApkDialog;->p0(Lcom/transsion/transfer/wifi/ui/ShareMbApkDialog;)Ldu/a;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {p1, v1}, Lcom/transsion/transfer/wifi/qrcode/QrCodeUtil;->b(Ldu/a;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const/high16 v3, 0x43700000    # 240.0f

    .line 40
    .line 41
    invoke-static {v3}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    invoke-static {v3}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    iput v2, p0, Lcom/transsion/transfer/wifi/ui/ShareMbApkDialog$onViewCreated$1;->label:I

    .line 50
    .line 51
    invoke-virtual {p1, v1, v4, v3, p0}, Lcom/transsion/transfer/wifi/qrcode/QrCodeUtil;->f(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    if-ne p1, v0, :cond_2

    .line 56
    .line 57
    return-object v0

    .line 58
    :cond_2
    :goto_0
    check-cast p1, Landroid/graphics/Bitmap;

    .line 59
    .line 60
    const/4 v0, 0x0

    .line 61
    if-eqz p1, :cond_4

    .line 62
    .line 63
    iget-object v1, p0, Lcom/transsion/transfer/wifi/ui/ShareMbApkDialog$onViewCreated$1;->this$0:Lcom/transsion/transfer/wifi/ui/ShareMbApkDialog;

    .line 64
    .line 65
    invoke-static {v1}, Lcom/transsion/transfer/wifi/ui/ShareMbApkDialog;->o0(Lcom/transsion/transfer/wifi/ui/ShareMbApkDialog;)Lxt/e;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    if-eqz v1, :cond_3

    .line 70
    .line 71
    iget-object v1, v1, Lxt/e;->c:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 72
    .line 73
    if-eqz v1, :cond_3

    .line 74
    .line 75
    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 76
    .line 77
    .line 78
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_3
    move-object p1, v0

    .line 82
    :goto_1
    if-nez p1, :cond_5

    .line 83
    .line 84
    :cond_4
    iget-object p1, p0, Lcom/transsion/transfer/wifi/ui/ShareMbApkDialog$onViewCreated$1;->this$0:Lcom/transsion/transfer/wifi/ui/ShareMbApkDialog;

    .line 85
    .line 86
    sget-object v1, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/transsion/baseui/dialog/BaseDialog;->getClassTag()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    new-instance v3, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v2, " --> createSuccess() --> syncEncodeQRCode() --> \u521b\u5efa\u4e8c\u7ef4\u7801\u5931\u8d25\u4e86"

    .line 101
    .line 102
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    const/4 v3, 0x0

    .line 110
    const/4 v4, 0x2

    .line 111
    invoke-static {v1, v2, v3, v4, v0}, Lcom/transsion/transfer/wifi/util/g;->d(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    sget-object v0, Lfh/b;->a:Lfh/b$a;

    .line 115
    .line 116
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    sget v2, Lcom/transsion/transfer/R$string;->transfer_fail:I

    .line 121
    .line 122
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-virtual {v0, v1}, Lfh/b$a;->e(Ljava/lang/CharSequence;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 130
    .line 131
    .line 132
    :cond_5
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 133
    .line 134
    return-object p1
.end method
