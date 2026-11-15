.class final Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/flow/b;",
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u00020\u0002*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Lkotlinx/coroutines/flow/b;",
        "Lcom/transsion/moviedetailapi/bean/RoomBean;",
        "",
        "<anonymous>",
        "(Lkotlinx/coroutines/flow/b;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsion.postdetail.viewmodel.RoomPostViewModel$getRecommendRooms$1$1"
    f = "RoomPostViewModel.kt"
    l = {
        0x1bc,
        0x1be,
        0x1c0
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $address:Landroid/location/Address;

.field final synthetic $lat:D

.field final synthetic $lon:D

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;DDLandroid/location/Address;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;",
            "DD",
            "Landroid/location/Address;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1$1;->this$0:Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1$1;->$lat:D

    .line 4
    .line 5
    iput-wide p4, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1$1;->$lon:D

    .line 6
    .line 7
    iput-object p6, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1$1;->$address:Landroid/location/Address;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9
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
    new-instance v8, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1$1;->this$0:Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;

    .line 4
    .line 5
    iget-wide v2, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1$1;->$lat:D

    .line 6
    .line 7
    iget-wide v4, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1$1;->$lon:D

    .line 8
    .line 9
    iget-object v6, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1$1;->$address:Landroid/location/Address;

    .line 10
    .line 11
    move-object v0, v8

    .line 12
    move-object v7, p2

    .line 13
    invoke-direct/range {v0 .. v7}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1$1;-><init>(Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;DDLandroid/location/Address;Lkotlin/coroutines/Continuation;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, v8, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1$1;->L$0:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v8
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/flow/b;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1$1;->invoke(Lkotlinx/coroutines/flow/b;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/flow/b;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/b;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 30

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
    iget v2, v0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1$1;->label:I

    .line 8
    .line 9
    const/4 v3, 0x3

    .line 10
    const/4 v4, 0x2

    .line 11
    const/4 v5, 0x1

    .line 12
    const/4 v6, 0x0

    .line 13
    if-eqz v2, :cond_3

    .line 14
    .line 15
    if-eq v2, v5, :cond_2

    .line 16
    .line 17
    if-eq v2, v4, :cond_1

    .line 18
    .line 19
    if-ne v2, v3, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 25
    .line 26
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw v1

    .line 30
    :cond_1
    :goto_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    goto/16 :goto_5

    .line 34
    .line 35
    :cond_2
    iget-object v2, v0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1$1;->L$0:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v2, Lkotlinx/coroutines/flow/b;

    .line 38
    .line 39
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    move-object/from16 v3, p1

    .line 43
    .line 44
    goto/16 :goto_4

    .line 45
    .line 46
    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    iget-object v2, v0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1$1;->L$0:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v2, Lkotlinx/coroutines/flow/b;

    .line 52
    .line 53
    sget-object v7, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    .line 54
    .line 55
    new-instance v15, Lcom/transsion/room/api/bean/RoomRequestEntity;

    .line 56
    .line 57
    const/16 v16, 0x38

    .line 58
    .line 59
    const/16 v17, 0x0

    .line 60
    .line 61
    const/4 v9, 0x0

    .line 62
    const/16 v10, 0xa

    .line 63
    .line 64
    const/4 v11, 0x0

    .line 65
    const/4 v12, 0x0

    .line 66
    const/4 v13, 0x0

    .line 67
    const/4 v14, 0x0

    .line 68
    move-object v8, v15

    .line 69
    move-object v3, v15

    .line 70
    move/from16 v15, v16

    .line 71
    .line 72
    move-object/from16 v16, v17

    .line 73
    .line 74
    invoke-direct/range {v8 .. v16}, Lcom/transsion/room/api/bean/RoomRequestEntity;-><init>(Ljava/lang/String;IILjava/lang/Integer;Lcom/transsion/room/api/bean/RoomGeo;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 75
    .line 76
    .line 77
    iget-wide v8, v0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1$1;->$lat:D

    .line 78
    .line 79
    iget-wide v10, v0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1$1;->$lon:D

    .line 80
    .line 81
    iget-object v12, v0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1$1;->$address:Landroid/location/Address;

    .line 82
    .line 83
    new-instance v13, Lcom/transsion/room/api/bean/RoomGeo;

    .line 84
    .line 85
    if-eqz v12, :cond_4

    .line 86
    .line 87
    invoke-virtual {v12}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v14

    .line 91
    move-object/from16 v23, v14

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_4
    move-object/from16 v23, v6

    .line 95
    .line 96
    :goto_1
    if-eqz v12, :cond_5

    .line 97
    .line 98
    invoke-virtual {v12}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v14

    .line 102
    move-object/from16 v24, v14

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_5
    move-object/from16 v24, v6

    .line 106
    .line 107
    :goto_2
    if-eqz v12, :cond_6

    .line 108
    .line 109
    invoke-virtual {v12}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v12

    .line 113
    move-object/from16 v25, v12

    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_6
    move-object/from16 v25, v6

    .line 117
    .line 118
    :goto_3
    const/16 v28, 0x60

    .line 119
    .line 120
    const/16 v29, 0x0

    .line 121
    .line 122
    const/16 v26, 0x0

    .line 123
    .line 124
    const/16 v27, 0x0

    .line 125
    .line 126
    move-object/from16 v18, v13

    .line 127
    .line 128
    move-wide/from16 v19, v8

    .line 129
    .line 130
    move-wide/from16 v21, v10

    .line 131
    .line 132
    invoke-direct/range {v18 .. v29}, Lcom/transsion/room/api/bean/RoomGeo;-><init>(DDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v3, v13}, Lcom/transsion/room/api/bean/RoomRequestEntity;->setGeo(Lcom/transsion/room/api/bean/RoomGeo;)V

    .line 136
    .line 137
    .line 138
    invoke-static {v3}, Lcom/blankj/utilcode/util/o;->j(Ljava/lang/Object;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    const-string v8, "toJson(...)"

    .line 143
    .line 144
    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    sget-object v8, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    .line 148
    .line 149
    const-string v9, "application/json"

    .line 150
    .line 151
    invoke-virtual {v8, v9}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 152
    .line 153
    .line 154
    move-result-object v8

    .line 155
    invoke-virtual {v7, v3, v8}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    iget-object v7, v0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1$1;->this$0:Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;

    .line 160
    .line 161
    invoke-static {v7}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;->o(Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;)Lao/c;

    .line 162
    .line 163
    .line 164
    move-result-object v7

    .line 165
    sget-object v8, Lgg/a;->a:Lgg/a$a;

    .line 166
    .line 167
    invoke-virtual {v8}, Lgg/a$a;->a()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v8

    .line 171
    iput-object v2, v0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1$1;->L$0:Ljava/lang/Object;

    .line 172
    .line 173
    iput v5, v0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1$1;->label:I

    .line 174
    .line 175
    invoke-interface {v7, v8, v3, v0}, Lao/c;->b(Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    if-ne v3, v1, :cond_7

    .line 180
    .line 181
    return-object v1

    .line 182
    :cond_7
    :goto_4
    check-cast v3, Lcom/tn/lib/net/bean/BaseDto;

    .line 183
    .line 184
    invoke-virtual {v3}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v5

    .line 188
    const-string v7, "0"

    .line 189
    .line 190
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result v5

    .line 194
    if-nez v5, :cond_8

    .line 195
    .line 196
    iput-object v6, v0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1$1;->L$0:Ljava/lang/Object;

    .line 197
    .line 198
    iput v4, v0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1$1;->label:I

    .line 199
    .line 200
    invoke-interface {v2, v6, v0}, Lkotlinx/coroutines/flow/b;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    if-ne v2, v1, :cond_9

    .line 205
    .line 206
    return-object v1

    .line 207
    :cond_8
    invoke-virtual {v3}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v3

    .line 211
    iput-object v6, v0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1$1;->L$0:Ljava/lang/Object;

    .line 212
    .line 213
    const/4 v4, 0x3

    .line 214
    iput v4, v0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1$1;->label:I

    .line 215
    .line 216
    invoke-interface {v2, v3, v0}, Lkotlinx/coroutines/flow/b;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    if-ne v2, v1, :cond_9

    .line 221
    .line 222
    return-object v1

    .line 223
    :cond_9
    :goto_5
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 224
    .line 225
    return-object v1
.end method
