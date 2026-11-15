.class final Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/viewmodel/UGCFilterViewModel;->m(Ljava/lang/String;IILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Z)V
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
    c = "com.transsion.home.viewmodel.UGCFilterViewModel$getUGCContentList$1"
    f = "UGCFilterViewModel.kt"
    l = {
        0x66
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $categoryLve2:Ljava/lang/Integer;

.field final synthetic $categoryLve3:Ljava/lang/Integer;

.field final synthetic $categoryLve4:Ljava/lang/Integer;

.field final synthetic $finallyCateGory:Ljava/lang/String;

.field final synthetic $isRefresh:Z

.field final synthetic $page:I

.field final synthetic $perPage:I

.field final synthetic $selectGrade:Ljava/lang/String;

.field final synthetic $sort:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/transsion/home/viewmodel/UGCFilterViewModel;


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZLcom/transsion/home/viewmodel/UGCFilterViewModel;ILjava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Z",
            "Lcom/transsion/home/viewmodel/UGCFilterViewModel;",
            "I",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->$finallyCateGory:Ljava/lang/String;

    .line 2
    .line 3
    iput p2, p0, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->$page:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->$sort:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->$categoryLve2:Ljava/lang/Integer;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->$categoryLve3:Ljava/lang/Integer;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->$categoryLve4:Ljava/lang/Integer;

    .line 12
    .line 13
    iput-boolean p7, p0, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->$isRefresh:Z

    .line 14
    .line 15
    iput-object p8, p0, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->this$0:Lcom/transsion/home/viewmodel/UGCFilterViewModel;

    .line 16
    .line 17
    iput p9, p0, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->$perPage:I

    .line 18
    .line 19
    iput-object p10, p0, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->$selectGrade:Ljava/lang/String;

    .line 20
    .line 21
    const/4 p1, 0x2

    .line 22
    invoke-direct {p0, p1, p11}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 12
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
    new-instance p1, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->$finallyCateGory:Ljava/lang/String;

    .line 4
    .line 5
    iget v2, p0, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->$page:I

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->$sort:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->$categoryLve2:Ljava/lang/Integer;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->$categoryLve3:Ljava/lang/Integer;

    .line 12
    .line 13
    iget-object v6, p0, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->$categoryLve4:Ljava/lang/Integer;

    .line 14
    .line 15
    iget-boolean v7, p0, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->$isRefresh:Z

    .line 16
    .line 17
    iget-object v8, p0, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->this$0:Lcom/transsion/home/viewmodel/UGCFilterViewModel;

    .line 18
    .line 19
    iget v9, p0, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->$perPage:I

    .line 20
    .line 21
    iget-object v10, p0, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->$selectGrade:Ljava/lang/String;

    .line 22
    .line 23
    move-object v0, p1

    .line 24
    move-object v11, p2

    .line 25
    invoke-direct/range {v0 .. v11}, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZLcom/transsion/home/viewmodel/UGCFilterViewModel;ILjava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 26
    .line 27
    .line 28
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v12, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, v12, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->label:I

    .line 8
    .line 9
    const-string v14, ", page="

    .line 10
    .line 11
    const/4 v15, 0x0

    .line 12
    const-string v11, ", sort="

    .line 13
    .line 14
    const-string v10, "UGCFilterViewModel"

    .line 15
    .line 16
    const/4 v9, 0x1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    if-ne v1, v9, :cond_0

    .line 20
    .line 21
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    move-object/from16 v1, p1

    .line 25
    .line 26
    move-object v15, v10

    .line 27
    move-object v13, v11

    .line 28
    goto/16 :goto_0

    .line 29
    .line 30
    :catch_0
    move-exception v0

    .line 31
    move-object v15, v10

    .line 32
    move-object v13, v11

    .line 33
    goto/16 :goto_7

    .line 34
    .line 35
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 36
    .line 37
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 38
    .line 39
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw v0

    .line 43
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    :try_start_1
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 47
    .line 48
    iget-object v2, v12, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->$finallyCateGory:Ljava/lang/String;

    .line 49
    .line 50
    iget v3, v12, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->$page:I

    .line 51
    .line 52
    iget-object v4, v12, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->$sort:Ljava/lang/String;

    .line 53
    .line 54
    iget-object v5, v12, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->$categoryLve2:Ljava/lang/Integer;

    .line 55
    .line 56
    iget-object v6, v12, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->$categoryLve3:Ljava/lang/Integer;

    .line 57
    .line 58
    iget-object v7, v12, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->$categoryLve4:Ljava/lang/Integer;

    .line 59
    .line 60
    iget-boolean v8, v12, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->$isRefresh:Z

    .line 61
    .line 62
    new-instance v13, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    const-string v9, "getUGCContentList: category="

    .line 68
    .line 69
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v2, ", lv2="

    .line 88
    .line 89
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v2, ", lv3="

    .line 96
    .line 97
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v2, ", lv4="

    .line 104
    .line 105
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v2, ", isRefresh="

    .line 112
    .line 113
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-virtual {v1, v10, v2, v15}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 124
    .line 125
    .line 126
    iget-object v1, v12, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->this$0:Lcom/transsion/home/viewmodel/UGCFilterViewModel;

    .line 127
    .line 128
    invoke-static {v1}, Lcom/transsion/home/viewmodel/UGCFilterViewModel;->f(Lcom/transsion/home/viewmodel/UGCFilterViewModel;)Lyk/c;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    sget-object v2, Lgg/a;->a:Lgg/a$a;

    .line 133
    .line 134
    invoke-virtual {v2}, Lgg/a$a;->a()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    iget-object v3, v12, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->$finallyCateGory:Ljava/lang/String;

    .line 139
    .line 140
    iget v4, v12, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->$page:I

    .line 141
    .line 142
    iget v5, v12, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->$perPage:I

    .line 143
    .line 144
    iget-object v6, v12, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->$sort:Ljava/lang/String;

    .line 145
    .line 146
    iget-object v7, v12, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->$categoryLve2:Ljava/lang/Integer;

    .line 147
    .line 148
    iget-object v8, v12, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->$categoryLve3:Ljava/lang/Integer;

    .line 149
    .line 150
    iget-object v9, v12, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->$categoryLve4:Ljava/lang/Integer;

    .line 151
    .line 152
    iget-object v13, v12, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->$selectGrade:Ljava/lang/String;

    .line 153
    .line 154
    const/4 v15, 0x1

    .line 155
    iput v15, v12, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->label:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 156
    .line 157
    move-object v15, v10

    .line 158
    move-object v10, v13

    .line 159
    move-object v13, v11

    .line 160
    move-object/from16 v11, p0

    .line 161
    .line 162
    :try_start_2
    invoke-interface/range {v1 .. v11}, Lyk/c;->d(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    if-ne v1, v0, :cond_2

    .line 167
    .line 168
    return-object v0

    .line 169
    :cond_2
    :goto_0
    check-cast v1, Lcom/tn/lib/net/bean/BaseDto;

    .line 170
    .line 171
    invoke-virtual {v1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    move-object v5, v0

    .line 176
    check-cast v5, Lcom/transsion/ugcvideodetail/api/bean/UGCContentList;

    .line 177
    .line 178
    if-eqz v5, :cond_6

    .line 179
    .line 180
    invoke-virtual {v5}, Lcom/transsion/ugcvideodetail/api/bean/UGCContentList;->getItems()Ljava/util/List;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    if-eqz v0, :cond_5

    .line 185
    .line 186
    check-cast v0, Ljava/lang/Iterable;

    .line 187
    .line 188
    new-instance v2, Ljava/util/ArrayList;

    .line 189
    .line 190
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 191
    .line 192
    .line 193
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 198
    .line 199
    .line 200
    move-result v3

    .line 201
    if-eqz v3, :cond_4

    .line 202
    .line 203
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    move-object v4, v3

    .line 208
    check-cast v4, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

    .line 209
    .line 210
    invoke-virtual {v4}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getTopicType()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v6

    .line 214
    const-string v7, "UGC_VIDEO"

    .line 215
    .line 216
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result v6

    .line 220
    if-eqz v6, :cond_3

    .line 221
    .line 222
    invoke-virtual {v4}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 223
    .line 224
    .line 225
    move-result-object v4

    .line 226
    if-eqz v4, :cond_3

    .line 227
    .line 228
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    goto :goto_1

    .line 232
    :catch_1
    move-exception v0

    .line 233
    goto/16 :goto_7

    .line 234
    .line 235
    :cond_4
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    goto :goto_2

    .line 240
    :cond_5
    const/4 v0, 0x0

    .line 241
    :goto_2
    invoke-virtual {v5, v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCContentList;->setItems(Ljava/util/List;)V

    .line 242
    .line 243
    .line 244
    :cond_6
    new-instance v0, Lcom/transsion/home/bean/RefreshBaseDto;

    .line 245
    .line 246
    invoke-virtual {v1}, Lcom/tn/lib/net/bean/BaseDto;->getMsg()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 250
    const-string v3, ""

    .line 251
    .line 252
    if-nez v2, :cond_7

    .line 253
    .line 254
    move-object v4, v3

    .line 255
    goto :goto_3

    .line 256
    :cond_7
    move-object v4, v2

    .line 257
    :goto_3
    :try_start_3
    invoke-virtual {v1}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v2

    .line 261
    if-nez v2, :cond_8

    .line 262
    .line 263
    move-object v6, v3

    .line 264
    goto :goto_4

    .line 265
    :cond_8
    move-object v6, v2

    .line 266
    :goto_4
    invoke-virtual {v1}, Lcom/tn/lib/net/bean/BaseDto;->getReason()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v2

    .line 270
    if-nez v2, :cond_9

    .line 271
    .line 272
    move-object v7, v3

    .line 273
    goto :goto_5

    .line 274
    :cond_9
    move-object v7, v2

    .line 275
    :goto_5
    iget-boolean v8, v12, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->$isRefresh:Z

    .line 276
    .line 277
    move-object v2, v0

    .line 278
    move-object v3, v4

    .line 279
    move-object v4, v6

    .line 280
    move-object v6, v7

    .line 281
    move v7, v8

    .line 282
    invoke-direct/range {v2 .. v7}, Lcom/transsion/home/bean/RefreshBaseDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 283
    .line 284
    .line 285
    iget-object v2, v12, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->this$0:Lcom/transsion/home/viewmodel/UGCFilterViewModel;

    .line 286
    .line 287
    invoke-virtual {v2}, Lcom/transsion/home/viewmodel/UGCFilterViewModel;->o()Landroidx/lifecycle/b0;

    .line 288
    .line 289
    .line 290
    move-result-object v2

    .line 291
    invoke-virtual {v2, v0}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 292
    .line 293
    .line 294
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 295
    .line 296
    iget v2, v12, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->$page:I

    .line 297
    .line 298
    iget-object v3, v12, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->$sort:Ljava/lang/String;

    .line 299
    .line 300
    invoke-virtual {v1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    check-cast v1, Lcom/transsion/ugcvideodetail/api/bean/UGCContentList;

    .line 305
    .line 306
    if-eqz v1, :cond_a

    .line 307
    .line 308
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCContentList;->getItems()Ljava/util/List;

    .line 309
    .line 310
    .line 311
    move-result-object v1

    .line 312
    if-eqz v1, :cond_a

    .line 313
    .line 314
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 315
    .line 316
    .line 317
    move-result v1

    .line 318
    goto :goto_6

    .line 319
    :cond_a
    const/4 v1, 0x0

    .line 320
    :goto_6
    new-instance v4, Ljava/lang/StringBuilder;

    .line 321
    .line 322
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 323
    .line 324
    .line 325
    const-string v5, "getUGCContentList success: page="

    .line 326
    .line 327
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    const-string v2, ", size="

    .line 340
    .line 341
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v1

    .line 351
    const/4 v2, 0x0

    .line 352
    invoke-virtual {v0, v15, v1, v2}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 353
    .line 354
    .line 355
    goto :goto_8

    .line 356
    :goto_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 357
    .line 358
    .line 359
    iget-object v1, v12, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->this$0:Lcom/transsion/home/viewmodel/UGCFilterViewModel;

    .line 360
    .line 361
    invoke-virtual {v1}, Lcom/transsion/home/viewmodel/UGCFilterViewModel;->o()Landroidx/lifecycle/b0;

    .line 362
    .line 363
    .line 364
    move-result-object v1

    .line 365
    const/4 v2, 0x0

    .line 366
    invoke-virtual {v1, v2}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 367
    .line 368
    .line 369
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 370
    .line 371
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v0

    .line 375
    iget v2, v12, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->$page:I

    .line 376
    .line 377
    iget-object v3, v12, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->$sort:Ljava/lang/String;

    .line 378
    .line 379
    new-instance v4, Ljava/lang/StringBuilder;

    .line 380
    .line 381
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 382
    .line 383
    .line 384
    const-string v5, "getUGCContentList error: "

    .line 385
    .line 386
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    .line 394
    .line 395
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v0

    .line 408
    const/4 v2, 0x1

    .line 409
    invoke-virtual {v1, v15, v0, v2}, Lwf/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 410
    .line 411
    .line 412
    :goto_8
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 413
    .line 414
    return-object v0
.end method
