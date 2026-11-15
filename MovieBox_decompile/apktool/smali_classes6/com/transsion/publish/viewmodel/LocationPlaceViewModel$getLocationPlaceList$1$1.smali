.class final Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getLocationPlaceList$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getLocationPlaceList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Lcom/transsion/publish/api/bean/LocationPlaceBean;",
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
    c = "com.transsion.publish.viewmodel.LocationPlaceViewModel$getLocationPlaceList$1$1"
    f = "LocationPlaceViewModel.kt"
    l = {
        0x32,
        0x34,
        0x3e
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $lat:Ljava/lang/Double;

.field final synthetic $lon:Ljava/lang/Double;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/publish/viewmodel/LocationPlaceViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/publish/viewmodel/LocationPlaceViewModel;Ljava/lang/Double;Ljava/lang/Double;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/publish/viewmodel/LocationPlaceViewModel;",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getLocationPlaceList$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getLocationPlaceList$1$1;->this$0:Lcom/transsion/publish/viewmodel/LocationPlaceViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getLocationPlaceList$1$1;->$lat:Ljava/lang/Double;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getLocationPlaceList$1$1;->$lon:Ljava/lang/Double;

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
    .locals 4
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
    new-instance v0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getLocationPlaceList$1$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getLocationPlaceList$1$1;->this$0:Lcom/transsion/publish/viewmodel/LocationPlaceViewModel;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getLocationPlaceList$1$1;->$lat:Ljava/lang/Double;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getLocationPlaceList$1$1;->$lon:Ljava/lang/Double;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3, p2}, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getLocationPlaceList$1$1;-><init>(Lcom/transsion/publish/viewmodel/LocationPlaceViewModel;Ljava/lang/Double;Ljava/lang/Double;Lkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, v0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getLocationPlaceList$1$1;->L$0:Ljava/lang/Object;

    .line 13
    .line 14
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/flow/b;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getLocationPlaceList$1$1;->invoke(Lkotlinx/coroutines/flow/b;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getLocationPlaceList$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getLocationPlaceList$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getLocationPlaceList$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v2, v0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getLocationPlaceList$1$1;->label:I

    .line 8
    .line 9
    const/4 v3, 0x3

    .line 10
    const/4 v4, 0x2

    .line 11
    const/4 v5, 0x1

    .line 12
    if-eqz v2, :cond_3

    .line 13
    .line 14
    if-eq v2, v5, :cond_2

    .line 15
    .line 16
    if-eq v2, v4, :cond_1

    .line 17
    .line 18
    if-ne v2, v3, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 24
    .line 25
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw v1

    .line 29
    :cond_1
    :goto_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    goto/16 :goto_3

    .line 33
    .line 34
    :cond_2
    iget-object v2, v0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getLocationPlaceList$1$1;->L$0:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v2, Lkotlinx/coroutines/flow/b;

    .line 37
    .line 38
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    move-object/from16 v5, p1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    iget-object v2, v0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getLocationPlaceList$1$1;->L$0:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v2, Lkotlinx/coroutines/flow/b;

    .line 50
    .line 51
    iget-object v6, v0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getLocationPlaceList$1$1;->this$0:Lcom/transsion/publish/viewmodel/LocationPlaceViewModel;

    .line 52
    .line 53
    invoke-static {v6}, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel;->g(Lcom/transsion/publish/viewmodel/LocationPlaceViewModel;)Lpo/a;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    sget-object v7, Lgg/a;->a:Lgg/a$a;

    .line 58
    .line 59
    invoke-virtual {v7}, Lgg/a$a;->a()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    iget-object v8, v0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getLocationPlaceList$1$1;->$lat:Ljava/lang/Double;

    .line 64
    .line 65
    iget-object v9, v0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getLocationPlaceList$1$1;->$lon:Ljava/lang/Double;

    .line 66
    .line 67
    iput-object v2, v0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getLocationPlaceList$1$1;->L$0:Ljava/lang/Object;

    .line 68
    .line 69
    iput v5, v0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getLocationPlaceList$1$1;->label:I

    .line 70
    .line 71
    invoke-interface {v6, v7, v8, v9, v0}, Lpo/a;->a(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    if-ne v5, v1, :cond_4

    .line 76
    .line 77
    return-object v1

    .line 78
    :cond_4
    :goto_1
    check-cast v5, Lcom/tn/lib/net/bean/BaseDto;

    .line 79
    .line 80
    invoke-virtual {v5}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    const-string v7, "0"

    .line 85
    .line 86
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    const/4 v7, 0x0

    .line 91
    if-nez v6, :cond_5

    .line 92
    .line 93
    iput-object v7, v0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getLocationPlaceList$1$1;->L$0:Ljava/lang/Object;

    .line 94
    .line 95
    iput v4, v0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getLocationPlaceList$1$1;->label:I

    .line 96
    .line 97
    invoke-interface {v2, v7, v0}, Lkotlinx/coroutines/flow/b;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    if-ne v2, v1, :cond_8

    .line 102
    .line 103
    return-object v1

    .line 104
    :cond_5
    iget-object v4, v0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getLocationPlaceList$1$1;->$lat:Ljava/lang/Double;

    .line 105
    .line 106
    if-eqz v4, :cond_7

    .line 107
    .line 108
    iget-object v4, v0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getLocationPlaceList$1$1;->$lon:Ljava/lang/Double;

    .line 109
    .line 110
    if-eqz v4, :cond_7

    .line 111
    .line 112
    invoke-virtual {v5}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    check-cast v4, Lcom/transsion/publish/api/bean/LocationPlaceBean;

    .line 117
    .line 118
    if-eqz v4, :cond_7

    .line 119
    .line 120
    invoke-virtual {v4}, Lcom/transsion/publish/api/bean/LocationPlaceBean;->getItems()Ljava/util/List;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    if-eqz v4, :cond_7

    .line 125
    .line 126
    check-cast v4, Ljava/lang/Iterable;

    .line 127
    .line 128
    iget-object v6, v0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getLocationPlaceList$1$1;->$lat:Ljava/lang/Double;

    .line 129
    .line 130
    iget-object v8, v0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getLocationPlaceList$1$1;->$lon:Ljava/lang/Double;

    .line 131
    .line 132
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    :cond_6
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 137
    .line 138
    .line 139
    move-result v9

    .line 140
    if-eqz v9, :cond_7

    .line 141
    .line 142
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v9

    .line 146
    check-cast v9, Lcom/transsion/room/api/bean/LocationPlace;

    .line 147
    .line 148
    invoke-virtual {v9}, Lcom/transsion/room/api/bean/LocationPlace;->getLat()Ljava/lang/Double;

    .line 149
    .line 150
    .line 151
    move-result-object v10

    .line 152
    if-eqz v10, :cond_6

    .line 153
    .line 154
    invoke-virtual {v9}, Lcom/transsion/room/api/bean/LocationPlace;->getLon()Ljava/lang/Double;

    .line 155
    .line 156
    .line 157
    move-result-object v10

    .line 158
    if-eqz v10, :cond_6

    .line 159
    .line 160
    sget-object v11, Lij/s;->a:Lij/s;

    .line 161
    .line 162
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    .line 163
    .line 164
    .line 165
    move-result-wide v12

    .line 166
    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    .line 167
    .line 168
    .line 169
    move-result-wide v14

    .line 170
    invoke-virtual {v9}, Lcom/transsion/room/api/bean/LocationPlace;->getLat()Ljava/lang/Double;

    .line 171
    .line 172
    .line 173
    move-result-object v10

    .line 174
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    .line 178
    .line 179
    .line 180
    move-result-wide v16

    .line 181
    invoke-virtual {v9}, Lcom/transsion/room/api/bean/LocationPlace;->getLon()Ljava/lang/Double;

    .line 182
    .line 183
    .line 184
    move-result-object v10

    .line 185
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    .line 189
    .line 190
    .line 191
    move-result-wide v18

    .line 192
    invoke-virtual/range {v11 .. v19}, Lij/s;->a(DDDD)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v10

    .line 196
    invoke-virtual {v9, v10}, Lcom/transsion/room/api/bean/LocationPlace;->setDistance(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    goto :goto_2

    .line 200
    :cond_7
    invoke-virtual {v5}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v4

    .line 204
    iput-object v7, v0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getLocationPlaceList$1$1;->L$0:Ljava/lang/Object;

    .line 205
    .line 206
    iput v3, v0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getLocationPlaceList$1$1;->label:I

    .line 207
    .line 208
    invoke-interface {v2, v4, v0}, Lkotlinx/coroutines/flow/b;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    if-ne v2, v1, :cond_8

    .line 213
    .line 214
    return-object v1

    .line 215
    :cond_8
    :goto_3
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 216
    .line 217
    return-object v1
.end method
