.class final Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$onClientDisconnect$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;->a1()V
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
    c = "com.transsnet.downloader.fragment.TransferInnerMainFragment$onClientDisconnect$1"
    f = "TransferInnerMainFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$onClientDisconnect$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$onClientDisconnect$1;->this$0:Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;

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
    new-instance p1, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$onClientDisconnect$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$onClientDisconnect$1;->this$0:Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$onClientDisconnect$1;-><init>(Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$onClientDisconnect$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$onClientDisconnect$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$onClientDisconnect$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$onClientDisconnect$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$onClientDisconnect$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_8

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$onClientDisconnect$1;->this$0:Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;->P0(Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;)Lcom/transsion/transfer/impl/e;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/4 v0, 0x0

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-interface {p1}, Lcom/transsion/transfer/impl/e;->j()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object p1, v0

    .line 26
    :goto_0
    if-eqz p1, :cond_1

    .line 27
    .line 28
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_2

    .line 33
    .line 34
    :cond_1
    iget-object p1, p0, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$onClientDisconnect$1;->this$0:Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;

    .line 35
    .line 36
    invoke-static {p1}, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;->N0(Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    :cond_2
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 41
    .line 42
    iget-object v2, p0, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$onClientDisconnect$1;->this$0:Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;

    .line 43
    .line 44
    invoke-static {v2}, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;->O0(Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v2, " TransferMainFragment \u5ba2\u6237\u7aef ,onSocketLost, \u65ad\u5f00\u8fde\u63a5\uff0c serverInfo:"

    .line 57
    .line 58
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    const/4 v5, 0x4

    .line 69
    const/4 v6, 0x0

    .line 70
    const-string v2, "Transfer_d"

    .line 71
    .line 72
    const/4 v4, 0x0

    .line 73
    invoke-static/range {v1 .. v6}, Lwf/a$a;->v(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    iget-object v1, p0, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$onClientDisconnect$1;->this$0:Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;

    .line 77
    .line 78
    invoke-virtual {v1}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    check-cast v1, Lbx/l0;

    .line 83
    .line 84
    if-eqz v1, :cond_3

    .line 85
    .line 86
    iget-object v1, v1, Lbx/l0;->d:Lcom/transsnet/downloader/widget/TransferBottomToolsView;

    .line 87
    .line 88
    if-eqz v1, :cond_3

    .line 89
    .line 90
    const-string v2, "status_default"

    .line 91
    .line 92
    invoke-virtual {v1, v2}, Lcom/transsnet/downloader/widget/TransferBottomToolsView;->changeStatus(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    :cond_3
    iget-object v1, p0, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$onClientDisconnect$1;->this$0:Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;

    .line 96
    .line 97
    invoke-virtual {v1}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    check-cast v1, Lbx/l0;

    .line 102
    .line 103
    if-eqz v1, :cond_4

    .line 104
    .line 105
    iget-object v1, v1, Lbx/l0;->d:Lcom/transsnet/downloader/widget/TransferBottomToolsView;

    .line 106
    .line 107
    if-eqz v1, :cond_4

    .line 108
    .line 109
    const-string v2, "icon_status_close"

    .line 110
    .line 111
    invoke-virtual {v1, v2}, Lcom/transsnet/downloader/widget/TransferBottomToolsView;->setLeftIconStatus(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    :cond_4
    iget-object v1, p0, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$onClientDisconnect$1;->this$0:Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;

    .line 115
    .line 116
    invoke-virtual {v1}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    check-cast v1, Lbx/l0;

    .line 121
    .line 122
    const/4 v2, 0x0

    .line 123
    if-eqz v1, :cond_5

    .line 124
    .line 125
    iget-object v1, v1, Lbx/l0;->d:Lcom/transsnet/downloader/widget/TransferBottomToolsView;

    .line 126
    .line 127
    if-eqz v1, :cond_5

    .line 128
    .line 129
    const-string v3, "SEND_STATUS_NONE"

    .line 130
    .line 131
    const/4 v4, 0x2

    .line 132
    invoke-static {v1, v3, v2, v4, v0}, Lcom/transsnet/downloader/widget/TransferBottomToolsView;->setSendIconStatus$default(Lcom/transsnet/downloader/widget/TransferBottomToolsView;Ljava/lang/String;IILjava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    :cond_5
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$onClientDisconnect$1;->this$0:Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;

    .line 136
    .line 137
    invoke-virtual {v0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    check-cast v0, Lbx/l0;

    .line 142
    .line 143
    if-eqz v0, :cond_6

    .line 144
    .line 145
    iget-object v0, v0, Lbx/l0;->d:Lcom/transsnet/downloader/widget/TransferBottomToolsView;

    .line 146
    .line 147
    if-eqz v0, :cond_6

    .line 148
    .line 149
    const/4 v1, 0x1

    .line 150
    invoke-virtual {v0, v1}, Lcom/transsnet/downloader/widget/TransferBottomToolsView;->showConnectUI(Z)V

    .line 151
    .line 152
    .line 153
    :cond_6
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$onClientDisconnect$1;->this$0:Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;

    .line 154
    .line 155
    invoke-virtual {v0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    check-cast v0, Lbx/l0;

    .line 160
    .line 161
    if-eqz v0, :cond_7

    .line 162
    .line 163
    iget-object v0, v0, Lbx/l0;->d:Lcom/transsnet/downloader/widget/TransferBottomToolsView;

    .line 164
    .line 165
    if-eqz v0, :cond_7

    .line 166
    .line 167
    invoke-virtual {v0, v2, p1}, Lcom/transsnet/downloader/widget/TransferBottomToolsView;->showConnectContent(ZLjava/lang/String;)V

    .line 168
    .line 169
    .line 170
    :cond_7
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 171
    .line 172
    return-object p1

    .line 173
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 174
    .line 175
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 176
    .line 177
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    throw p1
.end method
