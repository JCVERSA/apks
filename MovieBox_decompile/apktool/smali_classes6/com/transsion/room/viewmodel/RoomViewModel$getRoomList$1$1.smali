.class final Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.transsion.room.viewmodel.RoomViewModel$getRoomList$1$1"
    f = "RoomViewModel.kt"
    l = {
        0x105,
        0x107,
        0x109
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $address:Landroid/location/Address;

.field final synthetic $cid:I

.field final synthetic $lat:Ljava/lang/Double;

.field final synthetic $lon:Ljava/lang/Double;

.field final synthetic $page:Ljava/lang/String;

.field final synthetic $perPage:I

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/room/viewmodel/RoomViewModel;


# direct methods
.method constructor <init>(Ljava/lang/Double;Ljava/lang/Double;Landroid/location/Address;Ljava/lang/String;IILcom/transsion/room/viewmodel/RoomViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            "Landroid/location/Address;",
            "Ljava/lang/String;",
            "II",
            "Lcom/transsion/room/viewmodel/RoomViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$1;->$lon:Ljava/lang/Double;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$1;->$lat:Ljava/lang/Double;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$1;->$address:Landroid/location/Address;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$1;->$page:Ljava/lang/String;

    .line 8
    .line 9
    iput p5, p0, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$1;->$perPage:I

    .line 10
    .line 11
    iput p6, p0, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$1;->$cid:I

    .line 12
    .line 13
    iput-object p7, p0, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$1;->this$0:Lcom/transsion/room/viewmodel/RoomViewModel;

    .line 14
    .line 15
    const/4 p1, 0x2

    .line 16
    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 10
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
    new-instance v9, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$1;->$lon:Ljava/lang/Double;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$1;->$lat:Ljava/lang/Double;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$1;->$address:Landroid/location/Address;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$1;->$page:Ljava/lang/String;

    .line 10
    .line 11
    iget v5, p0, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$1;->$perPage:I

    .line 12
    .line 13
    iget v6, p0, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$1;->$cid:I

    .line 14
    .line 15
    iget-object v7, p0, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$1;->this$0:Lcom/transsion/room/viewmodel/RoomViewModel;

    .line 16
    .line 17
    move-object v0, v9

    .line 18
    move-object v8, p2

    .line 19
    invoke-direct/range {v0 .. v8}, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$1;-><init>(Ljava/lang/Double;Ljava/lang/Double;Landroid/location/Address;Ljava/lang/String;IILcom/transsion/room/viewmodel/RoomViewModel;Lkotlin/coroutines/Continuation;)V

    .line 20
    .line 21
    .line 22
    iput-object p1, v9, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$1;->L$0:Ljava/lang/Object;

    .line 23
    .line 24
    return-object v9
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/flow/b;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$1;->invoke(Lkotlinx/coroutines/flow/b;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 29

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
    iget v2, v0, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$1;->label:I

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
    goto/16 :goto_6

    .line 34
    .line 35
    :cond_2
    iget-object v2, v0, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$1;->L$0:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v2, Lkotlinx/coroutines/flow/b;

    .line 38
    .line 39
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    move-object/from16 v5, p1

    .line 43
    .line 44
    goto/16 :goto_5

    .line 45
    .line 46
    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    iget-object v2, v0, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$1;->L$0:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v2, Lkotlinx/coroutines/flow/b;

    .line 52
    .line 53
    iget-object v7, v0, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$1;->$lon:Ljava/lang/Double;

    .line 54
    .line 55
    if-eqz v7, :cond_7

    .line 56
    .line 57
    iget-object v7, v0, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$1;->$lat:Ljava/lang/Double;

    .line 58
    .line 59
    if-eqz v7, :cond_7

    .line 60
    .line 61
    new-instance v7, Lcom/transsion/room/api/bean/RoomGeo;

    .line 62
    .line 63
    iget-object v8, v0, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$1;->$lon:Ljava/lang/Double;

    .line 64
    .line 65
    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    .line 66
    .line 67
    .line 68
    move-result-wide v9

    .line 69
    iget-object v8, v0, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$1;->$lat:Ljava/lang/Double;

    .line 70
    .line 71
    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    .line 72
    .line 73
    .line 74
    move-result-wide v11

    .line 75
    iget-object v8, v0, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$1;->$address:Landroid/location/Address;

    .line 76
    .line 77
    if-eqz v8, :cond_4

    .line 78
    .line 79
    invoke-virtual {v8}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v8

    .line 83
    move-object v13, v8

    .line 84
    goto :goto_1

    .line 85
    :cond_4
    move-object v13, v6

    .line 86
    :goto_1
    iget-object v8, v0, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$1;->$address:Landroid/location/Address;

    .line 87
    .line 88
    if-eqz v8, :cond_5

    .line 89
    .line 90
    invoke-virtual {v8}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v8

    .line 94
    move-object v14, v8

    .line 95
    goto :goto_2

    .line 96
    :cond_5
    move-object v14, v6

    .line 97
    :goto_2
    iget-object v8, v0, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$1;->$address:Landroid/location/Address;

    .line 98
    .line 99
    if-eqz v8, :cond_6

    .line 100
    .line 101
    invoke-virtual {v8}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v8

    .line 105
    move-object v15, v8

    .line 106
    goto :goto_3

    .line 107
    :cond_6
    move-object v15, v6

    .line 108
    :goto_3
    const/16 v18, 0x60

    .line 109
    .line 110
    const/16 v19, 0x0

    .line 111
    .line 112
    const/16 v16, 0x0

    .line 113
    .line 114
    const/16 v17, 0x0

    .line 115
    .line 116
    move-object v8, v7

    .line 117
    invoke-direct/range {v8 .. v19}, Lcom/transsion/room/api/bean/RoomGeo;-><init>(DDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 118
    .line 119
    .line 120
    move-object/from16 v25, v7

    .line 121
    .line 122
    goto :goto_4

    .line 123
    :cond_7
    move-object/from16 v25, v6

    .line 124
    .line 125
    :goto_4
    sget-object v7, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    .line 126
    .line 127
    new-instance v8, Lcom/transsion/room/api/bean/RoomRequestEntity;

    .line 128
    .line 129
    iget-object v9, v0, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$1;->$page:Ljava/lang/String;

    .line 130
    .line 131
    iget v10, v0, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$1;->$perPage:I

    .line 132
    .line 133
    iget v11, v0, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$1;->$cid:I

    .line 134
    .line 135
    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 136
    .line 137
    .line 138
    move-result-object v24

    .line 139
    const/16 v27, 0x20

    .line 140
    .line 141
    const/16 v28, 0x0

    .line 142
    .line 143
    const/16 v23, 0x0

    .line 144
    .line 145
    const/16 v26, 0x0

    .line 146
    .line 147
    move-object/from16 v20, v8

    .line 148
    .line 149
    move-object/from16 v21, v9

    .line 150
    .line 151
    move/from16 v22, v10

    .line 152
    .line 153
    invoke-direct/range {v20 .. v28}, Lcom/transsion/room/api/bean/RoomRequestEntity;-><init>(Ljava/lang/String;IILjava/lang/Integer;Lcom/transsion/room/api/bean/RoomGeo;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 154
    .line 155
    .line 156
    invoke-static {v8}, Lcom/blankj/utilcode/util/o;->j(Ljava/lang/Object;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v8

    .line 160
    const-string v9, "toJson(...)"

    .line 161
    .line 162
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    sget-object v9, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    .line 166
    .line 167
    const-string v10, "application/json"

    .line 168
    .line 169
    invoke-virtual {v9, v10}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 170
    .line 171
    .line 172
    move-result-object v9

    .line 173
    invoke-virtual {v7, v8, v9}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    .line 174
    .line 175
    .line 176
    move-result-object v7

    .line 177
    iget-object v8, v0, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$1;->this$0:Lcom/transsion/room/viewmodel/RoomViewModel;

    .line 178
    .line 179
    invoke-static {v8}, Lcom/transsion/room/viewmodel/RoomViewModel;->o(Lcom/transsion/room/viewmodel/RoomViewModel;)Lip/a;

    .line 180
    .line 181
    .line 182
    move-result-object v8

    .line 183
    sget-object v9, Lgg/a;->a:Lgg/a$a;

    .line 184
    .line 185
    invoke-virtual {v9}, Lgg/a$a;->a()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v9

    .line 189
    iput-object v2, v0, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$1;->L$0:Ljava/lang/Object;

    .line 190
    .line 191
    iput v5, v0, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$1;->label:I

    .line 192
    .line 193
    invoke-interface {v8, v9, v7, v0}, Lip/a;->l(Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v5

    .line 197
    if-ne v5, v1, :cond_8

    .line 198
    .line 199
    return-object v1

    .line 200
    :cond_8
    :goto_5
    check-cast v5, Lcom/tn/lib/net/bean/BaseDto;

    .line 201
    .line 202
    invoke-virtual {v5}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v7

    .line 206
    const-string v8, "0"

    .line 207
    .line 208
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result v7

    .line 212
    if-nez v7, :cond_9

    .line 213
    .line 214
    iput-object v6, v0, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$1;->L$0:Ljava/lang/Object;

    .line 215
    .line 216
    iput v4, v0, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$1;->label:I

    .line 217
    .line 218
    invoke-interface {v2, v6, v0}, Lkotlinx/coroutines/flow/b;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    if-ne v2, v1, :cond_a

    .line 223
    .line 224
    return-object v1

    .line 225
    :cond_9
    invoke-virtual {v5}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v4

    .line 229
    iput-object v6, v0, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$1;->L$0:Ljava/lang/Object;

    .line 230
    .line 231
    iput v3, v0, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$1;->label:I

    .line 232
    .line 233
    invoke-interface {v2, v4, v0}, Lkotlinx/coroutines/flow/b;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    if-ne v2, v1, :cond_a

    .line 238
    .line 239
    return-object v1

    .line 240
    :cond_a
    :goto_6
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 241
    .line 242
    return-object v1
.end method
