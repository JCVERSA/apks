.class public final Lcom/transsion/ad/ps/distribute/PsOfferProvider;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/transsion/ad/ps/distribute/PsOfferProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/ad/ps/distribute/PsOfferProvider;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/ad/ps/distribute/PsOfferProvider;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/ad/ps/distribute/PsOfferProvider;->a:Lcom/transsion/ad/ps/distribute/PsOfferProvider;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic a(Lcom/transsion/ad/ps/distribute/PsOfferProvider;Lcom/transsion/ad/monopoly/model/AdPlans;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/ad/ps/distribute/PsOfferProvider;->c(Lcom/transsion/ad/monopoly/model/AdPlans;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final b(Lcom/transsion/ad/monopoly/model/AdPlans;Lcom/transsion/ad/monopoly/model/AdMaterialList;Lcom/transsion/ad/db/pslink/PsLinkAdPlan;)V
    .locals 21

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    if-eqz p3, :cond_4

    .line 6
    .line 7
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->getPsLinkAdInfoStr()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const-class v3, Lcom/transsion/ad/ps/model/PsLinkAdInfo;

    .line 12
    .line 13
    invoke-static {v2, v3}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lcom/transsion/ad/ps/model/PsLinkAdInfo;

    .line 18
    .line 19
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->getPsInfoJson()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    const-class v4, Lcom/transsion/ad/ps/model/RecommendInfo;

    .line 24
    .line 25
    invoke-static {v3, v4}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Lcom/transsion/ad/ps/model/RecommendInfo;

    .line 30
    .line 31
    invoke-virtual/range {p2 .. p3}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->setPsLinkAdPlan(Lcom/transsion/ad/db/pslink/PsLinkAdPlan;)V

    .line 32
    .line 33
    .line 34
    const/4 v4, 0x1

    .line 35
    invoke-virtual {v1, v4}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->setDownloadMaterialSuccess(Z)V

    .line 36
    .line 37
    .line 38
    const-string v4, "TextAdMaterial"

    .line 39
    .line 40
    invoke-virtual {v1, v4}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->setType(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const/4 v4, 0x0

    .line 44
    if-eqz v2, :cond_0

    .line 45
    .line 46
    invoke-virtual {v2}, Lcom/transsion/ad/ps/model/PsLinkAdInfo;->getTitle()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    move-object v5, v4

    .line 52
    :goto_0
    invoke-virtual {v1, v5}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->setTitle(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    if-eqz v2, :cond_1

    .line 56
    .line 57
    invoke-virtual {v2}, Lcom/transsion/ad/ps/model/PsLinkAdInfo;->getDesc()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    move-object v5, v4

    .line 63
    :goto_1
    invoke-virtual {v1, v5}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->setDesc(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v3}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->setPsRecommendInfo(Lcom/transsion/ad/ps/model/RecommendInfo;)V

    .line 67
    .line 68
    .line 69
    new-instance v3, Lcom/transsion/ad/monopoly/model/MbAdImage;

    .line 70
    .line 71
    if-eqz v2, :cond_2

    .line 72
    .line 73
    invoke-virtual {v2}, Lcom/transsion/ad/ps/model/PsLinkAdInfo;->getUrl()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    :cond_2
    move-object v8, v4

    .line 78
    invoke-virtual {v2}, Lcom/transsion/ad/ps/model/PsLinkAdInfo;->getPath()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v16

    .line 82
    const/16 v19, 0xdfd

    .line 83
    .line 84
    const/16 v20, 0x0

    .line 85
    .line 86
    const/4 v7, 0x0

    .line 87
    const/4 v9, 0x0

    .line 88
    const/4 v10, 0x0

    .line 89
    const/4 v11, 0x0

    .line 90
    const/4 v12, 0x0

    .line 91
    const/4 v13, 0x0

    .line 92
    const/4 v14, 0x0

    .line 93
    const/4 v15, 0x0

    .line 94
    const/16 v17, 0x0

    .line 95
    .line 96
    const/16 v18, 0x0

    .line 97
    .line 98
    move-object v6, v3

    .line 99
    invoke-direct/range {v6 .. v20}, Lcom/transsion/ad/monopoly/model/MbAdImage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v3}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->setImage(Lcom/transsion/ad/monopoly/model/MbAdImage;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2}, Lcom/transsion/ad/ps/model/PsLinkAdInfo;->getButtonText()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    invoke-virtual {v1, v3}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->setButtonText(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    if-eqz v0, :cond_3

    .line 113
    .line 114
    invoke-virtual {v2}, Lcom/transsion/ad/ps/model/PsLinkAdInfo;->getAdvertiserName()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {v0, v1}, Lcom/transsion/ad/monopoly/model/AdPlans;->setAdvertiserName(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2}, Lcom/transsion/ad/ps/model/PsLinkAdInfo;->getAdvertiserAvatar()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-virtual {v0, v1}, Lcom/transsion/ad/monopoly/model/AdPlans;->setAdvertiserAvatar(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2}, Lcom/transsion/ad/ps/model/PsLinkAdInfo;->getAdvertiserAvatarPath()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-virtual {v0, v1}, Lcom/transsion/ad/monopoly/model/AdPlans;->setAdvertiserAvatarPath(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    :cond_3
    if-eqz v0, :cond_4

    .line 136
    .line 137
    new-instance v1, Lcom/transsion/ad/monopoly/model/MbAdImage;

    .line 138
    .line 139
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdvertiserAvatar()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdvertiserAvatarPath()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v12

    .line 147
    const/16 v15, 0xdfd

    .line 148
    .line 149
    const/16 v16, 0x0

    .line 150
    .line 151
    const/4 v3, 0x0

    .line 152
    const/4 v5, 0x0

    .line 153
    const/4 v6, 0x0

    .line 154
    const/4 v7, 0x0

    .line 155
    const/4 v8, 0x0

    .line 156
    const/4 v9, 0x0

    .line 157
    const/4 v10, 0x0

    .line 158
    const/4 v11, 0x0

    .line 159
    const/4 v13, 0x0

    .line 160
    const/4 v14, 0x0

    .line 161
    move-object v2, v1

    .line 162
    invoke-direct/range {v2 .. v16}, Lcom/transsion/ad/monopoly/model/MbAdImage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, v1}, Lcom/transsion/ad/monopoly/model/AdPlans;->setExtImage(Lcom/transsion/ad/monopoly/model/MbAdImage;)V

    .line 166
    .line 167
    .line 168
    :cond_4
    return-void
.end method

.method private final c(Lcom/transsion/ad/monopoly/model/AdPlans;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    instance-of v3, v2, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getAvailablePsOffer$1;

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    move-object v3, v2

    .line 12
    check-cast v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getAvailablePsOffer$1;

    .line 13
    .line 14
    iget v4, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getAvailablePsOffer$1;->label:I

    .line 15
    .line 16
    const/high16 v5, -0x80000000

    .line 17
    .line 18
    and-int v6, v4, v5

    .line 19
    .line 20
    if-eqz v6, :cond_0

    .line 21
    .line 22
    sub-int/2addr v4, v5

    .line 23
    iput v4, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getAvailablePsOffer$1;->label:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getAvailablePsOffer$1;

    .line 27
    .line 28
    invoke-direct {v3, v0, v2}, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getAvailablePsOffer$1;-><init>(Lcom/transsion/ad/ps/distribute/PsOfferProvider;Lkotlin/coroutines/Continuation;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v2, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getAvailablePsOffer$1;->result:Ljava/lang/Object;

    .line 32
    .line 33
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    iget v5, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getAvailablePsOffer$1;->label:I

    .line 38
    .line 39
    const/4 v6, 0x4

    .line 40
    const/4 v7, 0x3

    .line 41
    const/4 v8, 0x2

    .line 42
    const/4 v9, 0x1

    .line 43
    const/4 v10, 0x0

    .line 44
    if-eqz v5, :cond_6

    .line 45
    .line 46
    if-eq v5, v9, :cond_5

    .line 47
    .line 48
    if-eq v5, v8, :cond_4

    .line 49
    .line 50
    if-eq v5, v7, :cond_3

    .line 51
    .line 52
    if-ne v5, v6, :cond_2

    .line 53
    .line 54
    iget v1, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getAvailablePsOffer$1;->I$1:I

    .line 55
    .line 56
    iget v5, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getAvailablePsOffer$1;->I$0:I

    .line 57
    .line 58
    iget-object v11, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getAvailablePsOffer$1;->L$0:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v11, Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    move-object v13, v11

    .line 66
    :cond_1
    move v11, v1

    .line 67
    move v1, v5

    .line 68
    goto/16 :goto_8

    .line 69
    .line 70
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 71
    .line 72
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 73
    .line 74
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw v1

    .line 78
    :cond_3
    iget v1, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getAvailablePsOffer$1;->I$1:I

    .line 79
    .line 80
    iget v5, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getAvailablePsOffer$1;->I$0:I

    .line 81
    .line 82
    iget-object v11, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getAvailablePsOffer$1;->L$2:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v11, Lcom/transsion/ad/ps/model/RecommendInfo;

    .line 85
    .line 86
    iget-object v12, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getAvailablePsOffer$1;->L$1:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v12, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;

    .line 89
    .line 90
    iget-object v13, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getAvailablePsOffer$1;->L$0:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v13, Ljava/lang/String;

    .line 93
    .line 94
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    goto/16 :goto_5

    .line 98
    .line 99
    :cond_4
    iget v1, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getAvailablePsOffer$1;->I$1:I

    .line 100
    .line 101
    iget v5, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getAvailablePsOffer$1;->I$0:I

    .line 102
    .line 103
    iget-object v11, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getAvailablePsOffer$1;->L$0:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast v11, Ljava/lang/String;

    .line 106
    .line 107
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    goto :goto_4

    .line 111
    :cond_5
    iget-object v1, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getAvailablePsOffer$1;->L$1:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast v1, Ljava/lang/String;

    .line 114
    .line 115
    iget-object v5, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getAvailablePsOffer$1;->L$0:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast v5, Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 118
    .line 119
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    move-object/from16 v20, v2

    .line 123
    .line 124
    move-object v2, v1

    .line 125
    move-object v1, v5

    .line 126
    move-object/from16 v5, v20

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_6
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    if-eqz v1, :cond_7

    .line 133
    .line 134
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getExtAdSlot()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    goto :goto_1

    .line 139
    :cond_7
    move-object v2, v10

    .line 140
    :goto_1
    sget-object v5, Lcom/transsion/ad/ps/distribute/PsDbManager;->a:Lcom/transsion/ad/ps/distribute/PsDbManager;

    .line 141
    .line 142
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v11

    .line 146
    iput-object v1, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getAvailablePsOffer$1;->L$0:Ljava/lang/Object;

    .line 147
    .line 148
    iput-object v2, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getAvailablePsOffer$1;->L$1:Ljava/lang/Object;

    .line 149
    .line 150
    iput v9, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getAvailablePsOffer$1;->label:I

    .line 151
    .line 152
    invoke-virtual {v5, v11, v3}, Lcom/transsion/ad/ps/distribute/PsDbManager;->f(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v5

    .line 156
    if-ne v5, v4, :cond_8

    .line 157
    .line 158
    return-object v4

    .line 159
    :cond_8
    :goto_2
    check-cast v5, Ljava/lang/Number;

    .line 160
    .line 161
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 162
    .line 163
    .line 164
    move-result v5

    .line 165
    if-nez v5, :cond_9

    .line 166
    .line 167
    sget-object v2, Lcom/transsion/ad/ps/distribute/PsAdPlanRetryManager;->a:Lcom/transsion/ad/ps/distribute/PsAdPlanRetryManager;

    .line 168
    .line 169
    invoke-virtual {v2, v1}, Lcom/transsion/ad/ps/distribute/PsAdPlanRetryManager;->b(Lcom/transsion/ad/monopoly/model/AdPlans;)V

    .line 170
    .line 171
    .line 172
    return-object v10

    .line 173
    :cond_9
    const/16 v1, 0x64

    .line 174
    .line 175
    const/4 v11, 0x0

    .line 176
    :goto_3
    if-ge v11, v5, :cond_14

    .line 177
    .line 178
    sget-object v5, Lcom/transsion/ad/ps/distribute/PsDbManager;->a:Lcom/transsion/ad/ps/distribute/PsDbManager;

    .line 179
    .line 180
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v12

    .line 184
    iput-object v2, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getAvailablePsOffer$1;->L$0:Ljava/lang/Object;

    .line 185
    .line 186
    iput-object v10, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getAvailablePsOffer$1;->L$1:Ljava/lang/Object;

    .line 187
    .line 188
    iput v1, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getAvailablePsOffer$1;->I$0:I

    .line 189
    .line 190
    iput v11, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getAvailablePsOffer$1;->I$1:I

    .line 191
    .line 192
    iput v8, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getAvailablePsOffer$1;->label:I

    .line 193
    .line 194
    invoke-virtual {v5, v12, v3}, Lcom/transsion/ad/ps/distribute/PsDbManager;->h(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v5

    .line 198
    if-ne v5, v4, :cond_a

    .line 199
    .line 200
    return-object v4

    .line 201
    :cond_a
    move-object/from16 v20, v5

    .line 202
    .line 203
    move v5, v1

    .line 204
    move v1, v11

    .line 205
    move-object v11, v2

    .line 206
    move-object/from16 v2, v20

    .line 207
    .line 208
    :goto_4
    move-object v12, v2

    .line 209
    check-cast v12, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;

    .line 210
    .line 211
    if-nez v12, :cond_b

    .line 212
    .line 213
    return-object v10

    .line 214
    :cond_b
    invoke-virtual {v12}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->getPsInfoJson()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    const-class v13, Lcom/transsion/ad/ps/model/RecommendInfo;

    .line 219
    .line 220
    invoke-static {v2, v13}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    check-cast v2, Lcom/transsion/ad/ps/model/RecommendInfo;

    .line 225
    .line 226
    if-nez v2, :cond_c

    .line 227
    .line 228
    return-object v10

    .line 229
    :cond_c
    iput-object v11, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getAvailablePsOffer$1;->L$0:Ljava/lang/Object;

    .line 230
    .line 231
    iput-object v12, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getAvailablePsOffer$1;->L$1:Ljava/lang/Object;

    .line 232
    .line 233
    iput-object v2, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getAvailablePsOffer$1;->L$2:Ljava/lang/Object;

    .line 234
    .line 235
    iput v5, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getAvailablePsOffer$1;->I$0:I

    .line 236
    .line 237
    iput v1, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getAvailablePsOffer$1;->I$1:I

    .line 238
    .line 239
    iput v7, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getAvailablePsOffer$1;->label:I

    .line 240
    .line 241
    invoke-direct {v0, v12, v3}, Lcom/transsion/ad/ps/distribute/PsOfferProvider;->h(Lcom/transsion/ad/db/pslink/PsLinkAdPlan;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v13

    .line 245
    if-ne v13, v4, :cond_d

    .line 246
    .line 247
    return-object v4

    .line 248
    :cond_d
    move-object v13, v11

    .line 249
    move-object v11, v2

    .line 250
    :goto_5
    invoke-direct {v0, v12}, Lcom/transsion/ad/ps/distribute/PsOfferProvider;->g(Lcom/transsion/ad/db/pslink/PsLinkAdPlan;)Z

    .line 251
    .line 252
    .line 253
    move-result v2

    .line 254
    if-eqz v2, :cond_12

    .line 255
    .line 256
    invoke-virtual {v11}, Lcom/transsion/ad/ps/model/RecommendInfo;->getAdType()Ljava/lang/Integer;

    .line 257
    .line 258
    .line 259
    move-result-object v2

    .line 260
    sget-object v14, Lcom/transsion/ad/ps/model/PSAdTypeEnum;->PS_AD_TYPE_USER_ACQUISITION_0:Lcom/transsion/ad/ps/model/PSAdTypeEnum;

    .line 261
    .line 262
    invoke-virtual {v14}, Lcom/transsion/ad/ps/model/PSAdTypeEnum;->getValue()I

    .line 263
    .line 264
    .line 265
    move-result v14

    .line 266
    if-nez v2, :cond_e

    .line 267
    .line 268
    goto :goto_6

    .line 269
    :cond_e
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 270
    .line 271
    .line 272
    move-result v15

    .line 273
    if-ne v15, v14, :cond_f

    .line 274
    .line 275
    return-object v12

    .line 276
    :cond_f
    :goto_6
    sget-object v14, Lcom/transsion/ad/ps/model/PSAdTypeEnum;->PS_AD_TYPE_USER_RETENTION_1:Lcom/transsion/ad/ps/model/PSAdTypeEnum;

    .line 277
    .line 278
    invoke-virtual {v14}, Lcom/transsion/ad/ps/model/PSAdTypeEnum;->getValue()I

    .line 279
    .line 280
    .line 281
    move-result v14

    .line 282
    if-nez v2, :cond_10

    .line 283
    .line 284
    goto :goto_7

    .line 285
    :cond_10
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 286
    .line 287
    .line 288
    move-result v2

    .line 289
    if-ne v2, v14, :cond_11

    .line 290
    .line 291
    sget-object v2, Lci/e;->a:Lci/e;

    .line 292
    .line 293
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 294
    .line 295
    .line 296
    move-result-object v14

    .line 297
    invoke-virtual {v11}, Lcom/transsion/ad/ps/model/RecommendInfo;->getPackageName()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v11

    .line 301
    invoke-virtual {v2, v14, v11}, Lci/e;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 302
    .line 303
    .line 304
    move-result v2

    .line 305
    if-eqz v2, :cond_12

    .line 306
    .line 307
    return-object v12

    .line 308
    :cond_11
    :goto_7
    return-object v10

    .line 309
    :cond_12
    add-int/2addr v1, v9

    .line 310
    sget-object v2, Lcom/transsion/ad/ps/distribute/PsDbManager;->a:Lcom/transsion/ad/ps/distribute/PsDbManager;

    .line 311
    .line 312
    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v11

    .line 316
    iput-object v13, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getAvailablePsOffer$1;->L$0:Ljava/lang/Object;

    .line 317
    .line 318
    iput-object v10, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getAvailablePsOffer$1;->L$1:Ljava/lang/Object;

    .line 319
    .line 320
    iput-object v10, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getAvailablePsOffer$1;->L$2:Ljava/lang/Object;

    .line 321
    .line 322
    iput v5, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getAvailablePsOffer$1;->I$0:I

    .line 323
    .line 324
    iput v1, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getAvailablePsOffer$1;->I$1:I

    .line 325
    .line 326
    iput v6, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getAvailablePsOffer$1;->label:I

    .line 327
    .line 328
    invoke-virtual {v2, v11, v3}, Lcom/transsion/ad/ps/distribute/PsDbManager;->f(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v2

    .line 332
    if-ne v2, v4, :cond_1

    .line 333
    .line 334
    return-object v4

    .line 335
    :goto_8
    check-cast v2, Ljava/lang/Number;

    .line 336
    .line 337
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 338
    .line 339
    .line 340
    move-result v5

    .line 341
    if-le v11, v1, :cond_13

    .line 342
    .line 343
    sget-object v14, Lxh/a;->a:Lxh/a;

    .line 344
    .line 345
    invoke-direct/range {p0 .. p0}, Lcom/transsion/ad/ps/distribute/PsOfferProvider;->d()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v1

    .line 349
    new-instance v2, Ljava/lang/StringBuilder;

    .line 350
    .line 351
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 352
    .line 353
    .line 354
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    const-string v1, " --> getAvailableAdPlan() --> \u8d76\u7d27\u627e\u5f00\u53d1\uff0c\u51fa\u73b0\u6b7b\u5faa\u73af\u4e86\u3001\u8d76\u7d27\u627e\u5f00\u53d1\uff0c\u51fa\u73b0\u6b7b\u5faa\u73af\u4e86\u3001\u8d76\u7d27\u627e\u5f00\u53d1\uff0c\u51fa\u73b0\u6b7b\u5faa\u73af\u4e86"

    .line 358
    .line 359
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v15

    .line 366
    const/16 v18, 0x4

    .line 367
    .line 368
    const/16 v19, 0x0

    .line 369
    .line 370
    const/16 v16, 0x6

    .line 371
    .line 372
    const/16 v17, 0x0

    .line 373
    .line 374
    invoke-static/range {v14 .. v19}, Lxh/a;->i(Lxh/a;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 375
    .line 376
    .line 377
    return-object v10

    .line 378
    :cond_13
    move-object v2, v13

    .line 379
    goto/16 :goto_3

    .line 380
    .line 381
    :cond_14
    return-object v10
.end method

.method private final d()Ljava/lang/String;
    .locals 2

    .line 1
    const-class v0, Lcom/transsion/ad/ps/distribute/PsOfferProvider;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getSimpleName(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method private final f(Ljava/lang/String;)Z
    .locals 7

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 2
    .line 3
    if-eqz p1, :cond_3

    .line 4
    .line 5
    invoke-static {p1}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    const-string v0, ","

    .line 13
    .line 14
    filled-new-array {v0}, [Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const/4 v5, 0x6

    .line 19
    const/4 v6, 0x0

    .line 20
    const/4 v3, 0x0

    .line 21
    const/4 v4, 0x0

    .line 22
    move-object v1, p1

    .line 23
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->S0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Ljava/lang/Iterable;

    .line 28
    .line 29
    new-instance v0, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {v1}, Lkotlin/text/StringsKt;->n1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-static {v1}, Lkotlin/text/StringsKt;->v(Ljava/lang/String;)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    if-eqz v1, :cond_1

    .line 63
    .line 64
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catchall_0
    move-exception p1

    .line 69
    goto :goto_2

    .line 70
    :cond_2
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->W0(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    const/16 v1, 0xb

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    return p1

    .line 93
    :cond_3
    :goto_1
    const/4 p1, 0x1

    .line 94
    return p1

    .line 95
    :goto_2
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 96
    .line 97
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    if-nez v0, :cond_4

    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_4
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 113
    .line 114
    :goto_3
    check-cast p1, Ljava/lang/Boolean;

    .line 115
    .line 116
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    return p1
.end method

.method private final g(Lcom/transsion/ad/db/pslink/PsLinkAdPlan;)Z
    .locals 10

    .line 1
    invoke-virtual {p1}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->getShowMax()Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, " --> isTimesAvailable() --> \u4e0d\u7b26\u5408\u5c55\u793a\u6761\u4ef6 --> id = "

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    :goto_0
    invoke-virtual {p1}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->getShowedTimes()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-virtual {p1}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->getShowMax()Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move v3, v2

    .line 33
    :goto_1
    if-lt v0, v3, :cond_2

    .line 34
    .line 35
    sget-object v4, Lxh/a;->a:Lxh/a;

    .line 36
    .line 37
    invoke-direct {p0}, Lcom/transsion/ad/ps/distribute/PsOfferProvider;->d()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p1}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->getId()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    invoke-virtual {p1}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->getShowedTimes()I

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    invoke-virtual {p1}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->getShowMax()Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    new-instance v6, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v0, " --> showedTimes = "

    .line 68
    .line 69
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v0, " --> showMax = "

    .line 76
    .line 77
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    const/4 v8, 0x4

    .line 88
    const/4 v9, 0x0

    .line 89
    const/4 v6, 0x5

    .line 90
    const/4 v7, 0x0

    .line 91
    invoke-static/range {v4 .. v9}, Lxh/a;->i(Lxh/a;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    return v2

    .line 95
    :cond_2
    invoke-virtual {p1}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->getClickMax()Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    if-nez v0, :cond_3

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-eqz v0, :cond_5

    .line 107
    .line 108
    :goto_2
    invoke-virtual {p1}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->getClickedTimes()I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    invoke-virtual {p1}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->getClickMax()Ljava/lang/Integer;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    if-eqz v3, :cond_4

    .line 117
    .line 118
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    goto :goto_3

    .line 123
    :cond_4
    move v3, v2

    .line 124
    :goto_3
    if-lt v0, v3, :cond_5

    .line 125
    .line 126
    sget-object v4, Lxh/a;->a:Lxh/a;

    .line 127
    .line 128
    invoke-direct {p0}, Lcom/transsion/ad/ps/distribute/PsOfferProvider;->d()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {p1}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->getId()I

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    invoke-virtual {p1}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->getClickedTimes()I

    .line 137
    .line 138
    .line 139
    move-result v5

    .line 140
    invoke-virtual {p1}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->getClickMax()Ljava/lang/Integer;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    new-instance v6, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    const-string v0, " --> clickedTimes = "

    .line 159
    .line 160
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    const-string v0, " --> clickMax = "

    .line 167
    .line 168
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v5

    .line 178
    const/4 v8, 0x4

    .line 179
    const/4 v9, 0x0

    .line 180
    const/4 v6, 0x5

    .line 181
    const/4 v7, 0x0

    .line 182
    invoke-static/range {v4 .. v9}, Lxh/a;->i(Lxh/a;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    return v2

    .line 186
    :cond_5
    invoke-virtual {p1}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->getShowHours()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-direct {p0, v0}, Lcom/transsion/ad/ps/distribute/PsOfferProvider;->f(Ljava/lang/String;)Z

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    if-nez v0, :cond_6

    .line 195
    .line 196
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    const/16 v3, 0xb

    .line 201
    .line 202
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    sget-object v3, Lxh/a;->a:Lxh/a;

    .line 207
    .line 208
    invoke-direct {p0}, Lcom/transsion/ad/ps/distribute/PsOfferProvider;->d()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v4

    .line 212
    invoke-virtual {p1}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->getId()I

    .line 213
    .line 214
    .line 215
    move-result v5

    .line 216
    invoke-virtual {p1}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->getShowHours()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    new-instance v6, Ljava/lang/StringBuilder;

    .line 221
    .line 222
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    const-string v1, " --> showHours = "

    .line 235
    .line 236
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    const-string p1, " --> currentHour = "

    .line 243
    .line 244
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v4

    .line 254
    const/4 v7, 0x4

    .line 255
    const/4 v8, 0x0

    .line 256
    const/4 v5, 0x5

    .line 257
    const/4 v6, 0x0

    .line 258
    invoke-static/range {v3 .. v8}, Lxh/a;->i(Lxh/a;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 259
    .line 260
    .line 261
    return v2

    .line 262
    :cond_6
    const/4 p1, 0x1

    .line 263
    return p1
.end method

.method private final h(Lcom/transsion/ad/db/pslink/PsLinkAdPlan;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->getShowDate()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    sget-object v1, Lci/p;->a:Lci/p;

    .line 10
    .line 11
    invoke-virtual {v1}, Lci/p;->c()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->setShowedTimes(I)V

    .line 25
    .line 26
    .line 27
    :cond_1
    if-eqz p1, :cond_2

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->setClickedTimes(I)V

    .line 30
    .line 31
    .line 32
    :cond_2
    if-eqz p1, :cond_3

    .line 33
    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 35
    .line 36
    .line 37
    move-result-wide v0

    .line 38
    invoke-static {v0, v1}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p1, v0}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->setUpdateTimestamp(Ljava/lang/Long;)V

    .line 43
    .line 44
    .line 45
    :cond_3
    sget-object v0, Lcom/transsion/ad/ps/distribute/PsDbManager;->a:Lcom/transsion/ad/ps/distribute/PsDbManager;

    .line 46
    .line 47
    invoke-virtual {v0, p1, p2}, Lcom/transsion/ad/ps/distribute/PsDbManager;->n(Lcom/transsion/ad/db/pslink/PsLinkAdPlan;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    if-ne p1, p2, :cond_4

    .line 56
    .line 57
    return-object p1

    .line 58
    :cond_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 59
    .line 60
    return-object p1
.end method


# virtual methods
.method public final e(Lcom/transsion/ad/monopoly/model/AdPlans;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    instance-of v3, v2, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getPsAdPlans$1;

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    move-object v3, v2

    .line 12
    check-cast v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getPsAdPlans$1;

    .line 13
    .line 14
    iget v4, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getPsAdPlans$1;->label:I

    .line 15
    .line 16
    const/high16 v5, -0x80000000

    .line 17
    .line 18
    and-int v6, v4, v5

    .line 19
    .line 20
    if-eqz v6, :cond_0

    .line 21
    .line 22
    sub-int/2addr v4, v5

    .line 23
    iput v4, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getPsAdPlans$1;->label:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getPsAdPlans$1;

    .line 27
    .line 28
    invoke-direct {v3, v0, v2}, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getPsAdPlans$1;-><init>(Lcom/transsion/ad/ps/distribute/PsOfferProvider;Lkotlin/coroutines/Continuation;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v2, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getPsAdPlans$1;->result:Ljava/lang/Object;

    .line 32
    .line 33
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    iget v5, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getPsAdPlans$1;->label:I

    .line 38
    .line 39
    const/4 v6, 0x1

    .line 40
    if-eqz v5, :cond_2

    .line 41
    .line 42
    if-ne v5, v6, :cond_1

    .line 43
    .line 44
    iget-object v1, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getPsAdPlans$1;->L$0:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v1, Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 47
    .line 48
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 53
    .line 54
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 55
    .line 56
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw v1

    .line 60
    :cond_2
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    iput-object v1, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getPsAdPlans$1;->L$0:Ljava/lang/Object;

    .line 64
    .line 65
    iput v6, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getPsAdPlans$1;->label:I

    .line 66
    .line 67
    invoke-direct {v0, v1, v3}, Lcom/transsion/ad/ps/distribute/PsOfferProvider;->c(Lcom/transsion/ad/monopoly/model/AdPlans;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    if-ne v2, v4, :cond_3

    .line 72
    .line 73
    return-object v4

    .line 74
    :cond_3
    :goto_1
    check-cast v2, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;

    .line 75
    .line 76
    if-nez v2, :cond_4

    .line 77
    .line 78
    const/4 v1, 0x0

    .line 79
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    return-object v1

    .line 84
    :cond_4
    new-instance v3, Lcom/transsion/ad/monopoly/model/AdMaterialList;

    .line 85
    .line 86
    const/16 v21, 0x1fff

    .line 87
    .line 88
    const/16 v22, 0x0

    .line 89
    .line 90
    const/4 v8, 0x0

    .line 91
    const/4 v9, 0x0

    .line 92
    const/4 v10, 0x0

    .line 93
    const/4 v11, 0x0

    .line 94
    const/4 v12, 0x0

    .line 95
    const/4 v13, 0x0

    .line 96
    const/4 v14, 0x0

    .line 97
    const/4 v15, 0x0

    .line 98
    const/16 v16, 0x0

    .line 99
    .line 100
    const/16 v17, 0x0

    .line 101
    .line 102
    const/16 v18, 0x0

    .line 103
    .line 104
    const/16 v19, 0x0

    .line 105
    .line 106
    const/16 v20, 0x0

    .line 107
    .line 108
    move-object v7, v3

    .line 109
    invoke-direct/range {v7 .. v22}, Lcom/transsion/ad/monopoly/model/AdMaterialList;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ad/monopoly/model/MbAdImage;Lcom/transsion/ad/monopoly/model/MbAdVideo;ZLcom/transsion/ad/ps/model/RecommendInfo;Lcom/transsion/ad/db/pslink/PsLinkAdPlan;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 110
    .line 111
    .line 112
    if-eqz v1, :cond_5

    .line 113
    .line 114
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    invoke-virtual {v1, v4}, Lcom/transsion/ad/monopoly/model/AdPlans;->setAdMaterialList(Ljava/util/List;)V

    .line 119
    .line 120
    .line 121
    :cond_5
    invoke-direct {v0, v1, v3, v2}, Lcom/transsion/ad/ps/distribute/PsOfferProvider;->b(Lcom/transsion/ad/monopoly/model/AdPlans;Lcom/transsion/ad/monopoly/model/AdMaterialList;Lcom/transsion/ad/db/pslink/PsLinkAdPlan;)V

    .line 122
    .line 123
    .line 124
    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    return-object v1
.end method
