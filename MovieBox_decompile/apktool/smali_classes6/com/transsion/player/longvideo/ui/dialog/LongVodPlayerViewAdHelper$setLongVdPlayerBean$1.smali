.class final Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper$setLongVdPlayerBean$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->C4(Lcom/transsion/player/longvideo/constants/LongVodContentType;Lln/a;)V
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
    c = "com.transsion.player.longvideo.ui.dialog.LongVodPlayerViewAdHelper$setLongVdPlayerBean$1"
    f = "LongVodPlayerViewAdHelper.kt"
    l = {
        0xb2
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $bean:Lln/a;

.field final synthetic $contextType:Lcom/transsion/player/longvideo/constants/LongVodContentType;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;


# direct methods
.method constructor <init>(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;Lln/a;Lcom/transsion/player/longvideo/constants/LongVodContentType;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;",
            "Lln/a;",
            "Lcom/transsion/player/longvideo/constants/LongVodContentType;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper$setLongVdPlayerBean$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper$setLongVdPlayerBean$1;->this$0:Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper$setLongVdPlayerBean$1;->$bean:Lln/a;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper$setLongVdPlayerBean$1;->$contextType:Lcom/transsion/player/longvideo/constants/LongVodContentType;

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
    new-instance p1, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper$setLongVdPlayerBean$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper$setLongVdPlayerBean$1;->this$0:Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper$setLongVdPlayerBean$1;->$bean:Lln/a;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper$setLongVdPlayerBean$1;->$contextType:Lcom/transsion/player/longvideo/constants/LongVodContentType;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper$setLongVdPlayerBean$1;-><init>(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;Lln/a;Lcom/transsion/player/longvideo/constants/LongVodContentType;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper$setLongVdPlayerBean$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper$setLongVdPlayerBean$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper$setLongVdPlayerBean$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper$setLongVdPlayerBean$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper$setLongVdPlayerBean$1;->label:I

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
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper$setLongVdPlayerBean$1;->L$0:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;

    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 23
    .line 24
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper$setLongVdPlayerBean$1;->this$0:Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper$setLongVdPlayerBean$1;->$bean:Lln/a;

    .line 34
    .line 35
    invoke-static {p1, v1}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->l3(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;Lln/a;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper$setLongVdPlayerBean$1;->this$0:Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->P2(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;)Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iget-object v3, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper$setLongVdPlayerBean$1;->$bean:Lln/a;

    .line 45
    .line 46
    invoke-virtual {v3}, Lln/a;->o()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    iget-object v4, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper$setLongVdPlayerBean$1;->$bean:Lln/a;

    .line 51
    .line 52
    invoke-virtual {v4}, Lln/a;->l()I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    iget-object v5, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper$setLongVdPlayerBean$1;->$bean:Lln/a;

    .line 57
    .line 58
    invoke-virtual {v5}, Lln/a;->e()I

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    iput-object p1, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper$setLongVdPlayerBean$1;->L$0:Ljava/lang/Object;

    .line 63
    .line 64
    iput v2, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper$setLongVdPlayerBean$1;->label:I

    .line 65
    .line 66
    invoke-interface {v1, v3, v4, v5, p0}, Lcom/transsion/baselib/db/video/VideoDetailPlayDao;->l(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    if-ne v1, v0, :cond_2

    .line 71
    .line 72
    return-object v0

    .line 73
    :cond_2
    move-object v0, p1

    .line 74
    move-object p1, v1

    .line 75
    :goto_0
    check-cast p1, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 76
    .line 77
    invoke-static {v0, p1}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->q3(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;Lcom/transsion/baselib/db/video/VideoDetailPlayBean;)V

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper$setLongVdPlayerBean$1;->this$0:Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;

    .line 81
    .line 82
    invoke-static {p1}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->O2(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;)Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    const-wide/16 v1, 0x0

    .line 87
    .line 88
    if-eqz v0, :cond_3

    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getLastAdStartTimeStamp()Ljava/lang/Long;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    if-eqz v0, :cond_3

    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 97
    .line 98
    .line 99
    move-result-wide v3

    .line 100
    goto :goto_1

    .line 101
    :cond_3
    move-wide v3, v1

    .line 102
    :goto_1
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper$setLongVdPlayerBean$1;->this$0:Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;

    .line 103
    .line 104
    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->O2(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;)Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    if-eqz v0, :cond_4

    .line 109
    .line 110
    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getLastAdEndTimeStamp()Ljava/lang/Long;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    if-eqz v0, :cond_4

    .line 115
    .line 116
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 117
    .line 118
    .line 119
    move-result-wide v1

    .line 120
    :cond_4
    invoke-static {p1, v3, v4, v1, v2}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->S2(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;JJ)V

    .line 121
    .line 122
    .line 123
    sget-object p1, Lij/o;->a:Lij/o;

    .line 124
    .line 125
    invoke-virtual {p1}, Lij/o;->g()Z

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    if-nez p1, :cond_5

    .line 130
    .line 131
    sget-object p1, Lij/g;->a:Lij/g;

    .line 132
    .line 133
    invoke-virtual {p1}, Lij/g;->b()Z

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    if-eqz p1, :cond_6

    .line 138
    .line 139
    :cond_5
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper$setLongVdPlayerBean$1;->this$0:Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;

    .line 140
    .line 141
    const/4 v0, 0x0

    .line 142
    invoke-static {p1, v0}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->p3(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;Z)V

    .line 143
    .line 144
    .line 145
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper$setLongVdPlayerBean$1;->this$0:Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;

    .line 146
    .line 147
    invoke-static {p1, v0}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->o3(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;Z)V

    .line 148
    .line 149
    .line 150
    :cond_6
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper$setLongVdPlayerBean$1;->this$0:Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;

    .line 151
    .line 152
    invoke-static {p1}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->j3(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;)V

    .line 153
    .line 154
    .line 155
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper$setLongVdPlayerBean$1;->$contextType:Lcom/transsion/player/longvideo/constants/LongVodContentType;

    .line 156
    .line 157
    sget-object v0, Lcom/transsion/player/longvideo/constants/LongVodContentType;->UGC_VIDEO_LOCAL:Lcom/transsion/player/longvideo/constants/LongVodContentType;

    .line 158
    .line 159
    if-eq p1, v0, :cond_7

    .line 160
    .line 161
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper$setLongVdPlayerBean$1;->this$0:Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;

    .line 162
    .line 163
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper$setLongVdPlayerBean$1;->$bean:Lln/a;

    .line 164
    .line 165
    invoke-static {p1, v0}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->U2(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;Lln/a;)V

    .line 166
    .line 167
    .line 168
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper$setLongVdPlayerBean$1;->this$0:Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;

    .line 169
    .line 170
    invoke-static {p1}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->M2(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-static {p1, v0}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->T2(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    :cond_7
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 178
    .line 179
    return-object p1
.end method
