.class final Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$insertCache$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/publish/viewmodel/LocationPlaceViewModel;->o(Ljava/util/List;)V
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
    c = "com.transsion.publish.viewmodel.LocationPlaceViewModel$insertCache$1"
    f = "LocationPlaceViewModel.kt"
    l = {
        0x7f
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/room/api/bean/LocationPlace;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/transsion/publish/viewmodel/LocationPlaceViewModel;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/transsion/publish/viewmodel/LocationPlaceViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/room/api/bean/LocationPlace;",
            ">;",
            "Lcom/transsion/publish/viewmodel/LocationPlaceViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$insertCache$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$insertCache$1;->$list:Ljava/util/List;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$insertCache$1;->this$0:Lcom/transsion/publish/viewmodel/LocationPlaceViewModel;

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
    new-instance p1, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$insertCache$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$insertCache$1;->$list:Ljava/util/List;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$insertCache$1;->this$0:Lcom/transsion/publish/viewmodel/LocationPlaceViewModel;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$insertCache$1;-><init>(Ljava/util/List;Lcom/transsion/publish/viewmodel/LocationPlaceViewModel;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$insertCache$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$insertCache$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$insertCache$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$insertCache$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

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
    iget v2, v0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$insertCache$1;->label:I

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    if-eqz v2, :cond_1

    .line 11
    .line 12
    if-ne v2, v3, :cond_0

    .line 13
    .line 14
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    goto/16 :goto_3

    .line 18
    .line 19
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 22
    .line 23
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw v1

    .line 27
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    new-instance v2, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    .line 35
    iget-object v4, v0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$insertCache$1;->$list:Ljava/util/List;

    .line 36
    .line 37
    check-cast v4, Ljava/lang/Iterable;

    .line 38
    .line 39
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-eqz v5, :cond_4

    .line 48
    .line 49
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    check-cast v5, Lcom/transsion/room/api/bean/LocationPlace;

    .line 54
    .line 55
    new-instance v14, Lcom/transsion/baselib/db/place/PlaceDBBean;

    .line 56
    .line 57
    invoke-virtual {v5}, Lcom/transsion/room/api/bean/LocationPlace;->getLat()Ljava/lang/Double;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    const-wide/16 v7, 0x0

    .line 62
    .line 63
    if-eqz v6, :cond_2

    .line 64
    .line 65
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    .line 66
    .line 67
    .line 68
    move-result-wide v9

    .line 69
    goto :goto_1

    .line 70
    :cond_2
    move-wide v9, v7

    .line 71
    :goto_1
    invoke-virtual {v5}, Lcom/transsion/room/api/bean/LocationPlace;->getLon()Ljava/lang/Double;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    if-eqz v6, :cond_3

    .line 76
    .line 77
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    .line 78
    .line 79
    .line 80
    move-result-wide v6

    .line 81
    move-wide v11, v6

    .line 82
    goto :goto_2

    .line 83
    :cond_3
    move-wide v11, v7

    .line 84
    :goto_2
    invoke-virtual {v5}, Lcom/transsion/room/api/bean/LocationPlace;->getName()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v13

    .line 88
    invoke-virtual {v5}, Lcom/transsion/room/api/bean/LocationPlace;->getAddress()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v15

    .line 92
    invoke-virtual {v5}, Lcom/transsion/room/api/bean/LocationPlace;->getDistance()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    move-object v6, v14

    .line 97
    move-wide v7, v9

    .line 98
    move-wide v9, v11

    .line 99
    move-object v11, v13

    .line 100
    move-object v12, v15

    .line 101
    move-object v13, v5

    .line 102
    invoke-direct/range {v6 .. v13}, Lcom/transsion/baselib/db/place/PlaceDBBean;-><init>(DDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    sget-object v16, Lwf/a;->a:Lwf/a$a;

    .line 106
    .line 107
    invoke-virtual {v14}, Lcom/transsion/baselib/db/place/PlaceDBBean;->getLatitude()D

    .line 108
    .line 109
    .line 110
    move-result-wide v5

    .line 111
    invoke-virtual {v14}, Lcom/transsion/baselib/db/place/PlaceDBBean;->getLongitude()D

    .line 112
    .line 113
    .line 114
    move-result-wide v7

    .line 115
    invoke-virtual {v14}, Lcom/transsion/baselib/db/place/PlaceDBBean;->getName()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v9

    .line 119
    new-instance v10, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .line 123
    .line 124
    const-string v11, "insertCache latitude:"

    .line 125
    .line 126
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v5, ", longitude:"

    .line 133
    .line 134
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string v5, ", name:"

    .line 141
    .line 142
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v18

    .line 152
    const/16 v20, 0x4

    .line 153
    .line 154
    const/16 v21, 0x0

    .line 155
    .line 156
    const-string v17, "SelectLocation"

    .line 157
    .line 158
    const/16 v19, 0x0

    .line 159
    .line 160
    invoke-static/range {v16 .. v21}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    goto :goto_0

    .line 167
    :cond_4
    iget-object v4, v0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$insertCache$1;->this$0:Lcom/transsion/publish/viewmodel/LocationPlaceViewModel;

    .line 168
    .line 169
    invoke-static {v4}, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel;->f(Lcom/transsion/publish/viewmodel/LocationPlaceViewModel;)Lcom/transsion/baselib/db/place/PlaceDao;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    iput v3, v0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$insertCache$1;->label:I

    .line 174
    .line 175
    invoke-interface {v4, v2, v0}, Lcom/transsion/baselib/db/place/PlaceDao;->c(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    if-ne v2, v1, :cond_5

    .line 180
    .line 181
    return-object v1

    .line 182
    :cond_5
    :goto_3
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 183
    .line 184
    return-object v1
.end method
