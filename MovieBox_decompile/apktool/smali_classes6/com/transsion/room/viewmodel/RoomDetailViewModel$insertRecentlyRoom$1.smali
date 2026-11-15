.class final Lcom/transsion/room/viewmodel/RoomDetailViewModel$insertRecentlyRoom$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/room/viewmodel/RoomDetailViewModel;->v(Lcom/transsion/moviedetailapi/bean/RoomItem;)V
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
    c = "com.transsion.room.viewmodel.RoomDetailViewModel$insertRecentlyRoom$1"
    f = "RoomDetailViewModel.kt"
    l = {
        0x8e,
        0x8f,
        0x92
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $roomItem:Lcom/transsion/moviedetailapi/bean/RoomItem;

.field label:I

.field final synthetic this$0:Lcom/transsion/room/viewmodel/RoomDetailViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/moviedetailapi/bean/RoomItem;Lcom/transsion/room/viewmodel/RoomDetailViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/moviedetailapi/bean/RoomItem;",
            "Lcom/transsion/room/viewmodel/RoomDetailViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/room/viewmodel/RoomDetailViewModel$insertRecentlyRoom$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/room/viewmodel/RoomDetailViewModel$insertRecentlyRoom$1;->$roomItem:Lcom/transsion/moviedetailapi/bean/RoomItem;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/room/viewmodel/RoomDetailViewModel$insertRecentlyRoom$1;->this$0:Lcom/transsion/room/viewmodel/RoomDetailViewModel;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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
    new-instance p1, Lcom/transsion/room/viewmodel/RoomDetailViewModel$insertRecentlyRoom$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/room/viewmodel/RoomDetailViewModel$insertRecentlyRoom$1;->$roomItem:Lcom/transsion/moviedetailapi/bean/RoomItem;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsion/room/viewmodel/RoomDetailViewModel$insertRecentlyRoom$1;->this$0:Lcom/transsion/room/viewmodel/RoomDetailViewModel;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/transsion/room/viewmodel/RoomDetailViewModel$insertRecentlyRoom$1;-><init>(Lcom/transsion/moviedetailapi/bean/RoomItem;Lcom/transsion/room/viewmodel/RoomDetailViewModel;Lkotlin/coroutines/Continuation;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/room/viewmodel/RoomDetailViewModel$insertRecentlyRoom$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/room/viewmodel/RoomDetailViewModel$insertRecentlyRoom$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/room/viewmodel/RoomDetailViewModel$insertRecentlyRoom$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/room/viewmodel/RoomDetailViewModel$insertRecentlyRoom$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget v2, v0, Lcom/transsion/room/viewmodel/RoomDetailViewModel$insertRecentlyRoom$1;->label:I

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x3

    .line 11
    const/4 v5, 0x2

    .line 12
    const/4 v6, 0x1

    .line 13
    if-eqz v2, :cond_3

    .line 14
    .line 15
    if-eq v2, v6, :cond_2

    .line 16
    .line 17
    if-eq v2, v5, :cond_1

    .line 18
    .line 19
    if-ne v2, v4, :cond_0

    .line 20
    .line 21
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    goto/16 :goto_3

    .line 25
    .line 26
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 27
    .line 28
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 29
    .line 30
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw v1

    .line 34
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    move-object/from16 v2, p1

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    iget-object v2, v0, Lcom/transsion/room/viewmodel/RoomDetailViewModel$insertRecentlyRoom$1;->$roomItem:Lcom/transsion/moviedetailapi/bean/RoomItem;

    .line 48
    .line 49
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getGroupId()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v8

    .line 53
    if-eqz v8, :cond_4

    .line 54
    .line 55
    iget-object v2, v0, Lcom/transsion/room/viewmodel/RoomDetailViewModel$insertRecentlyRoom$1;->$roomItem:Lcom/transsion/moviedetailapi/bean/RoomItem;

    .line 56
    .line 57
    new-instance v19, Lcom/transsion/baselib/db/room/RoomItemBean;

    .line 58
    .line 59
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getName()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v9

    .line 63
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getAvatar()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v10

    .line 67
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getHasJoin()Ljava/lang/Boolean;

    .line 68
    .line 69
    .line 70
    move-result-object v11

    .line 71
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getNewPostCount()Ljava/lang/Long;

    .line 72
    .line 73
    .line 74
    move-result-object v12

    .line 75
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getDescription()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v13

    .line 79
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getPostCount()Ljava/lang/Long;

    .line 80
    .line 81
    .line 82
    move-result-object v14

    .line 83
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getUserCount()Ljava/lang/Long;

    .line 84
    .line 85
    .line 86
    move-result-object v15

    .line 87
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getLevel()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v16

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 92
    .line 93
    .line 94
    move-result-wide v17

    .line 95
    move-object/from16 v7, v19

    .line 96
    .line 97
    invoke-direct/range {v7 .. v18}, Lcom/transsion/baselib/db/room/RoomItemBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;J)V

    .line 98
    .line 99
    .line 100
    move-object/from16 v2, v19

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_4
    move-object v2, v3

    .line 104
    :goto_0
    if-eqz v2, :cond_5

    .line 105
    .line 106
    iget-object v7, v0, Lcom/transsion/room/viewmodel/RoomDetailViewModel$insertRecentlyRoom$1;->this$0:Lcom/transsion/room/viewmodel/RoomDetailViewModel;

    .line 107
    .line 108
    invoke-static {v7}, Lcom/transsion/room/viewmodel/RoomDetailViewModel;->i(Lcom/transsion/room/viewmodel/RoomDetailViewModel;)Laj/a;

    .line 109
    .line 110
    .line 111
    move-result-object v7

    .line 112
    if-eqz v7, :cond_5

    .line 113
    .line 114
    iput v6, v0, Lcom/transsion/room/viewmodel/RoomDetailViewModel$insertRecentlyRoom$1;->label:I

    .line 115
    .line 116
    invoke-interface {v7, v2, v0}, Laj/a;->b(Lcom/transsion/baselib/db/room/RoomItemBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    if-ne v2, v1, :cond_5

    .line 121
    .line 122
    return-object v1

    .line 123
    :cond_5
    :goto_1
    iget-object v2, v0, Lcom/transsion/room/viewmodel/RoomDetailViewModel$insertRecentlyRoom$1;->this$0:Lcom/transsion/room/viewmodel/RoomDetailViewModel;

    .line 124
    .line 125
    invoke-static {v2}, Lcom/transsion/room/viewmodel/RoomDetailViewModel;->i(Lcom/transsion/room/viewmodel/RoomDetailViewModel;)Laj/a;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    if-eqz v2, :cond_7

    .line 130
    .line 131
    iput v5, v0, Lcom/transsion/room/viewmodel/RoomDetailViewModel$insertRecentlyRoom$1;->label:I

    .line 132
    .line 133
    invoke-interface {v2, v0}, Laj/a;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    if-ne v2, v1, :cond_6

    .line 138
    .line 139
    return-object v1

    .line 140
    :cond_6
    :goto_2
    move-object v3, v2

    .line 141
    check-cast v3, Ljava/util/List;

    .line 142
    .line 143
    :cond_7
    if-eqz v3, :cond_8

    .line 144
    .line 145
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    const/4 v5, 0x5

    .line 150
    if-le v2, v5, :cond_8

    .line 151
    .line 152
    iget-object v2, v0, Lcom/transsion/room/viewmodel/RoomDetailViewModel$insertRecentlyRoom$1;->this$0:Lcom/transsion/room/viewmodel/RoomDetailViewModel;

    .line 153
    .line 154
    invoke-static {v2}, Lcom/transsion/room/viewmodel/RoomDetailViewModel;->i(Lcom/transsion/room/viewmodel/RoomDetailViewModel;)Laj/a;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    if-eqz v2, :cond_8

    .line 159
    .line 160
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 161
    .line 162
    .line 163
    move-result v5

    .line 164
    sub-int/2addr v5, v6

    .line 165
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    check-cast v3, Lcom/transsion/baselib/db/room/RoomItemBean;

    .line 170
    .line 171
    iput v4, v0, Lcom/transsion/room/viewmodel/RoomDetailViewModel$insertRecentlyRoom$1;->label:I

    .line 172
    .line 173
    invoke-interface {v2, v3, v0}, Laj/a;->c(Lcom/transsion/baselib/db/room/RoomItemBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    if-ne v2, v1, :cond_8

    .line 178
    .line 179
    return-object v1

    .line 180
    :cond_8
    :goto_3
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 181
    .line 182
    return-object v1
.end method
