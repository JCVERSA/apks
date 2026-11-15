.class public abstract Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static synthetic a(Lcom/transsion/home/viewmodel/HomePreferencesViewModel;ILjava/lang/String;Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;Lcom/transsion/home/bean/HomePreferencesConfig;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt;->l(Lcom/transsion/home/viewmodel/HomePreferencesViewModel;ILjava/lang/String;Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;Lcom/transsion/home/bean/HomePreferencesConfig;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lcom/transsion/home/viewmodel/HomePreferencesViewModel;ILjava/lang/String;Lcom/transsion/home/bean/HomePreferencesConfig;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt;->m(Lcom/transsion/home/viewmodel/HomePreferencesViewModel;ILjava/lang/String;Lcom/transsion/home/bean/HomePreferencesConfig;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Lcom/transsion/home/viewmodel/HomePreferencesViewModel;ILjava/lang/String;Lcom/transsion/home/bean/HomePreferencesConfig;Ljava/util/List;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt;->k(Lcom/transsion/home/viewmodel/HomePreferencesViewModel;ILjava/lang/String;Lcom/transsion/home/bean/HomePreferencesConfig;Ljava/util/List;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;Lkotlin/Pair;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt;->p(Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;Lkotlin/Pair;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e(Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/functions/Function0;Lkotlin/Pair;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt;->i(Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/functions/Function0;Lkotlin/Pair;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final f(Ljava/lang/String;Lcom/transsion/home/viewmodel/HomePreferencesViewModel;Ljava/util/List;)V
    .locals 37

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
    const-string v3, "viewModel"

    .line 8
    .line 9
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v3, "baseList"

    .line 13
    .line 14
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    invoke-virtual {v1, v0, v2}, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->E(Ljava/lang/String;Ljava/util/List;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v0, v2}, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->t(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    return-void

    .line 41
    :cond_2
    check-cast v0, Ljava/lang/Iterable;

    .line 42
    .line 43
    new-instance v1, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt$applyHomePreferencesInsertToList$$inlined$sortedBy$1;

    .line 44
    .line 45
    invoke-direct {v1}, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt$applyHomePreferencesInsertToList$$inlined$sortedBy$1;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->I0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Ljava/lang/Iterable;

    .line 53
    .line 54
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_3

    .line 63
    .line 64
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    check-cast v1, Lok/a;

    .line 69
    .line 70
    invoke-virtual {v1}, Lok/a;->b()I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    const/4 v4, 0x0

    .line 75
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    invoke-static {v3, v4, v5}, Lkotlin/ranges/RangesKt;->l(III)I

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    new-instance v15, Lcom/transsion/home/bean/OperateItem;

    .line 84
    .line 85
    move-object v4, v15

    .line 86
    sget-object v5, Lcom/transsion/moviedetailapi/bean/PostItemType;->PREFERENCES:Lcom/transsion/moviedetailapi/bean/PostItemType;

    .line 87
    .line 88
    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    const v34, 0x1ffffffd

    .line 93
    .line 94
    .line 95
    const/16 v35, 0x0

    .line 96
    .line 97
    const/4 v5, 0x0

    .line 98
    const/4 v7, 0x0

    .line 99
    const/4 v8, 0x0

    .line 100
    const/4 v9, 0x0

    .line 101
    const/4 v10, 0x0

    .line 102
    const/4 v11, 0x0

    .line 103
    const/4 v12, 0x0

    .line 104
    const/4 v13, 0x0

    .line 105
    const/4 v14, 0x0

    .line 106
    const/16 v16, 0x0

    .line 107
    .line 108
    move-object/from16 v36, v15

    .line 109
    .line 110
    move-object/from16 v15, v16

    .line 111
    .line 112
    const/16 v17, 0x0

    .line 113
    .line 114
    const/16 v18, 0x0

    .line 115
    .line 116
    const/16 v19, 0x0

    .line 117
    .line 118
    const/16 v20, 0x0

    .line 119
    .line 120
    const/16 v21, 0x0

    .line 121
    .line 122
    const/16 v22, 0x0

    .line 123
    .line 124
    const/16 v23, 0x0

    .line 125
    .line 126
    const/16 v24, 0x0

    .line 127
    .line 128
    const/16 v25, 0x0

    .line 129
    .line 130
    const/16 v26, 0x0

    .line 131
    .line 132
    const/16 v27, 0x0

    .line 133
    .line 134
    const/16 v28, 0x0

    .line 135
    .line 136
    const/16 v29, 0x0

    .line 137
    .line 138
    const/16 v30, 0x0

    .line 139
    .line 140
    const/16 v31, 0x0

    .line 141
    .line 142
    const/16 v32, 0x0

    .line 143
    .line 144
    const/16 v33, 0x0

    .line 145
    .line 146
    invoke-direct/range {v4 .. v35}, Lcom/transsion/home/bean/OperateItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/transsion/home/bean/BannerBean;Ljava/util/List;Ljava/util/List;Lcom/transsion/home/bean/CustomData;Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/home/bean/SingleImagePage;Lcom/transsion/home/bean/RankingData;Lcom/transsion/home/bean/RankingListData;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/bean/HomePreferencesConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1}, Lok/a;->a()Lcom/transsion/home/bean/HomePreferencesConfig;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    move-object/from16 v4, v36

    .line 154
    .line 155
    invoke-virtual {v4, v1}, Lcom/transsion/home/bean/OperateItem;->setHomePreferencesConfig(Lcom/transsion/home/bean/HomePreferencesConfig;)V

    .line 156
    .line 157
    .line 158
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 159
    .line 160
    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    goto :goto_0

    .line 164
    :cond_3
    return-void
.end method

.method public static final g(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 48

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
    const-string v3, "data"

    .line 8
    .line 9
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v3, "blockList"

    .line 13
    .line 14
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v3, "instructions"

    .line 18
    .line 19
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-nez v3, :cond_10

    .line 27
    .line 28
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-nez v3, :cond_10

    .line 33
    .line 34
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_0

    .line 39
    .line 40
    goto/16 :goto_7

    .line 41
    .line 42
    :cond_0
    move-object v3, v0

    .line 43
    check-cast v3, Ljava/util/Collection;

    .line 44
    .line 45
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    new-instance v4, Ljava/util/LinkedHashSet;

    .line 50
    .line 51
    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 52
    .line 53
    .line 54
    move-object v5, v0

    .line 55
    check-cast v5, Ljava/lang/Iterable;

    .line 56
    .line 57
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    if-eqz v6, :cond_2

    .line 66
    .line 67
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    check-cast v6, Lcom/transsion/home/bean/OperateItem;

    .line 72
    .line 73
    invoke-virtual {v6}, Lcom/transsion/home/bean/OperateItem;->getType()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    sget-object v8, Lcom/transsion/moviedetailapi/bean/PostItemType;->PREFERENCES:Lcom/transsion/moviedetailapi/bean/PostItemType;

    .line 78
    .line 79
    invoke-virtual {v8}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v8

    .line 83
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v7

    .line 87
    if-eqz v7, :cond_1

    .line 88
    .line 89
    invoke-virtual {v6}, Lcom/transsion/home/bean/OperateItem;->getHomePreferencesConfig()Lcom/transsion/home/bean/HomePreferencesConfig;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    if-eqz v6, :cond_1

    .line 94
    .line 95
    invoke-virtual {v6}, Lcom/transsion/home/bean/HomePreferencesConfig;->getLabelId()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    if-eqz v6, :cond_1

    .line 100
    .line 101
    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_2
    check-cast v2, Ljava/lang/Iterable;

    .line 106
    .line 107
    new-instance v5, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt$applyPreferencesInsertWithBlocksForUgc$$inlined$sortedBy$1;

    .line 108
    .line 109
    invoke-direct {v5}, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt$applyPreferencesInsertWithBlocksForUgc$$inlined$sortedBy$1;-><init>()V

    .line 110
    .line 111
    .line 112
    invoke-static {v2, v5}, Lkotlin/collections/CollectionsKt;->I0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    check-cast v2, Ljava/lang/Iterable;

    .line 117
    .line 118
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 123
    .line 124
    .line 125
    move-result v5

    .line 126
    if-eqz v5, :cond_f

    .line 127
    .line 128
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    check-cast v5, Lok/a;

    .line 133
    .line 134
    invoke-virtual {v5}, Lok/a;->b()I

    .line 135
    .line 136
    .line 137
    move-result v6

    .line 138
    const/4 v7, 0x2

    .line 139
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 140
    .line 141
    .line 142
    move-result v8

    .line 143
    invoke-static {v6, v7, v8}, Lkotlin/ranges/RangesKt;->l(III)I

    .line 144
    .line 145
    .line 146
    move-result v6

    .line 147
    invoke-virtual {v5}, Lok/a;->a()Lcom/transsion/home/bean/HomePreferencesConfig;

    .line 148
    .line 149
    .line 150
    move-result-object v7

    .line 151
    invoke-virtual {v7}, Lcom/transsion/home/bean/HomePreferencesConfig;->getLabelId()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v8

    .line 155
    invoke-interface {v4, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v8

    .line 159
    if-eqz v8, :cond_3

    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_3
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 163
    .line 164
    .line 165
    move-result v8

    .line 166
    const/4 v9, 0x0

    .line 167
    if-lt v6, v8, :cond_4

    .line 168
    .line 169
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 170
    .line 171
    .line 172
    move-result v6

    .line 173
    goto/16 :goto_6

    .line 174
    .line 175
    :cond_4
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v6

    .line 179
    check-cast v6, Lcom/transsion/home/bean/OperateItem;

    .line 180
    .line 181
    invoke-virtual {v6}, Lcom/transsion/home/bean/OperateItem;->getType()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v8

    .line 185
    sget-object v10, Lcom/transsion/moviedetailapi/bean/PostItemType;->UGC_PORTRAIT_GRID:Lcom/transsion/moviedetailapi/bean/PostItemType;

    .line 186
    .line 187
    invoke-virtual {v10}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v10

    .line 191
    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v8

    .line 195
    const/4 v10, -0x1

    .line 196
    if-eqz v8, :cond_8

    .line 197
    .line 198
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 199
    .line 200
    .line 201
    move-result-object v8

    .line 202
    move v11, v9

    .line 203
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 204
    .line 205
    .line 206
    move-result v12

    .line 207
    if-eqz v12, :cond_6

    .line 208
    .line 209
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v12

    .line 213
    check-cast v12, Lcom/transsion/home/bean/OperateItem;

    .line 214
    .line 215
    if-ne v12, v6, :cond_5

    .line 216
    .line 217
    move v6, v11

    .line 218
    goto :goto_3

    .line 219
    :cond_5
    add-int/lit8 v11, v11, 0x1

    .line 220
    .line 221
    goto :goto_2

    .line 222
    :cond_6
    move v6, v10

    .line 223
    :goto_3
    if-ltz v6, :cond_7

    .line 224
    .line 225
    goto :goto_6

    .line 226
    :cond_7
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 227
    .line 228
    .line 229
    move-result v6

    .line 230
    goto :goto_6

    .line 231
    :cond_8
    invoke-virtual {v6}, Lcom/transsion/home/bean/OperateItem;->getOriginalOperateItem()Lcom/transsion/home/bean/OperateItem;

    .line 232
    .line 233
    .line 234
    move-result-object v8

    .line 235
    invoke-virtual {v6}, Lcom/transsion/home/bean/OperateItem;->getType()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v11

    .line 239
    sget-object v12, Lcom/transsion/moviedetailapi/bean/PostItemType;->FEEDS_TITLE:Lcom/transsion/moviedetailapi/bean/PostItemType;

    .line 240
    .line 241
    invoke-virtual {v12}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v12

    .line 245
    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    move-result v11

    .line 249
    if-eqz v11, :cond_9

    .line 250
    .line 251
    invoke-interface {v3, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 252
    .line 253
    .line 254
    move-result v6

    .line 255
    goto :goto_5

    .line 256
    :cond_9
    if-eqz v8, :cond_c

    .line 257
    .line 258
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 259
    .line 260
    .line 261
    move-result-object v6

    .line 262
    move v11, v9

    .line 263
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 264
    .line 265
    .line 266
    move-result v12

    .line 267
    if-eqz v12, :cond_b

    .line 268
    .line 269
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v12

    .line 273
    check-cast v12, Lcom/transsion/home/bean/OperateItem;

    .line 274
    .line 275
    invoke-virtual {v12}, Lcom/transsion/home/bean/OperateItem;->getOriginalOperateItem()Lcom/transsion/home/bean/OperateItem;

    .line 276
    .line 277
    .line 278
    move-result-object v12

    .line 279
    if-ne v12, v8, :cond_a

    .line 280
    .line 281
    move v6, v11

    .line 282
    goto :goto_5

    .line 283
    :cond_a
    add-int/lit8 v11, v11, 0x1

    .line 284
    .line 285
    goto :goto_4

    .line 286
    :cond_b
    move v6, v10

    .line 287
    goto :goto_5

    .line 288
    :cond_c
    invoke-interface {v3, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 289
    .line 290
    .line 291
    move-result v6

    .line 292
    :goto_5
    if-ltz v6, :cond_d

    .line 293
    .line 294
    goto :goto_6

    .line 295
    :cond_d
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 296
    .line 297
    .line 298
    move-result v6

    .line 299
    :goto_6
    add-int/lit8 v6, v6, -0x1

    .line 300
    .line 301
    if-ltz v6, :cond_e

    .line 302
    .line 303
    move v9, v6

    .line 304
    :cond_e
    sget-object v10, Lwf/a;->a:Lwf/a$a;

    .line 305
    .line 306
    new-instance v6, Ljava/lang/StringBuilder;

    .line 307
    .line 308
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 309
    .line 310
    .line 311
    const-string v8, "applyPreferencesInsertWithBlocksForUgc, \u63d2\u5165\u8fd0\u8425\u4f4d targetPos:"

    .line 312
    .line 313
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v12

    .line 323
    const/4 v14, 0x4

    .line 324
    const/4 v15, 0x0

    .line 325
    const-string v11, "HomePreferences"

    .line 326
    .line 327
    const/4 v13, 0x0

    .line 328
    invoke-static/range {v10 .. v15}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 329
    .line 330
    .line 331
    new-instance v6, Lcom/transsion/home/bean/OperateItem;

    .line 332
    .line 333
    move-object/from16 v16, v6

    .line 334
    .line 335
    sget-object v8, Lcom/transsion/moviedetailapi/bean/PostItemType;->PREFERENCES:Lcom/transsion/moviedetailapi/bean/PostItemType;

    .line 336
    .line 337
    invoke-virtual {v8}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v18

    .line 341
    const v46, 0x1ffffffd

    .line 342
    .line 343
    .line 344
    const/16 v47, 0x0

    .line 345
    .line 346
    const/16 v17, 0x0

    .line 347
    .line 348
    const/16 v19, 0x0

    .line 349
    .line 350
    const/16 v20, 0x0

    .line 351
    .line 352
    const/16 v21, 0x0

    .line 353
    .line 354
    const/16 v22, 0x0

    .line 355
    .line 356
    const/16 v23, 0x0

    .line 357
    .line 358
    const/16 v24, 0x0

    .line 359
    .line 360
    const/16 v25, 0x0

    .line 361
    .line 362
    const/16 v26, 0x0

    .line 363
    .line 364
    const/16 v27, 0x0

    .line 365
    .line 366
    const/16 v28, 0x0

    .line 367
    .line 368
    const/16 v29, 0x0

    .line 369
    .line 370
    const/16 v30, 0x0

    .line 371
    .line 372
    const/16 v31, 0x0

    .line 373
    .line 374
    const/16 v32, 0x0

    .line 375
    .line 376
    const/16 v33, 0x0

    .line 377
    .line 378
    const/16 v34, 0x0

    .line 379
    .line 380
    const/16 v35, 0x0

    .line 381
    .line 382
    const/16 v36, 0x0

    .line 383
    .line 384
    const/16 v37, 0x0

    .line 385
    .line 386
    const/16 v38, 0x0

    .line 387
    .line 388
    const/16 v39, 0x0

    .line 389
    .line 390
    const/16 v40, 0x0

    .line 391
    .line 392
    const/16 v41, 0x0

    .line 393
    .line 394
    const/16 v42, 0x0

    .line 395
    .line 396
    const/16 v43, 0x0

    .line 397
    .line 398
    const/16 v44, 0x0

    .line 399
    .line 400
    const/16 v45, 0x0

    .line 401
    .line 402
    invoke-direct/range {v16 .. v47}, Lcom/transsion/home/bean/OperateItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/transsion/home/bean/BannerBean;Ljava/util/List;Ljava/util/List;Lcom/transsion/home/bean/CustomData;Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/home/bean/SingleImagePage;Lcom/transsion/home/bean/RankingData;Lcom/transsion/home/bean/RankingListData;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/bean/HomePreferencesConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 403
    .line 404
    .line 405
    invoke-virtual {v5}, Lok/a;->a()Lcom/transsion/home/bean/HomePreferencesConfig;

    .line 406
    .line 407
    .line 408
    move-result-object v5

    .line 409
    invoke-virtual {v6, v5}, Lcom/transsion/home/bean/OperateItem;->setHomePreferencesConfig(Lcom/transsion/home/bean/HomePreferencesConfig;)V

    .line 410
    .line 411
    .line 412
    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 413
    .line 414
    invoke-interface {v3, v9, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 415
    .line 416
    .line 417
    invoke-virtual {v7}, Lcom/transsion/home/bean/HomePreferencesConfig;->getLabelId()Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v5

    .line 421
    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 422
    .line 423
    .line 424
    goto/16 :goto_1

    .line 425
    .line 426
    :cond_f
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->clear()V

    .line 427
    .line 428
    .line 429
    check-cast v3, Ljava/util/Collection;

    .line 430
    .line 431
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 432
    .line 433
    .line 434
    :cond_10
    :goto_7
    return-void
.end method

.method public static final h(Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$m;Lcom/transsion/home/viewmodel/HomePreferencesViewModel;Lkotlin/jvm/functions/Function0;)V
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "<this>"

    .line 4
    .line 5
    move-object/from16 v8, p0

    .line 6
    .line 7
    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "recyclerView"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v1, "layoutManager"

    .line 16
    .line 17
    move-object/from16 v9, p2

    .line 18
    .line 19
    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v1, "viewModel"

    .line 23
    .line 24
    move-object/from16 v10, p3

    .line 25
    .line 26
    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string v1, "currentListSize"

    .line 30
    .line 31
    move-object/from16 v7, p4

    .line 32
    .line 33
    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    new-instance v1, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 37
    .line 38
    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 39
    .line 40
    .line 41
    new-instance v11, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 42
    .line 43
    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 44
    .line 45
    .line 46
    new-instance v12, Lkotlin/jvm/internal/Ref$IntRef;

    .line 47
    .line 48
    invoke-direct {v12}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 49
    .line 50
    .line 51
    const v2, 0x7fffffff

    .line 52
    .line 53
    .line 54
    iput v2, v12, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 55
    .line 56
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->v()Landroidx/lifecycle/b0;

    .line 57
    .line 58
    .line 59
    move-result-object v13

    .line 60
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/u;

    .line 61
    .line 62
    .line 63
    move-result-object v14

    .line 64
    new-instance v15, Lcom/transsion/home/fragment/tab/f;

    .line 65
    .line 66
    move-object v2, v15

    .line 67
    move-object/from16 v3, p0

    .line 68
    .line 69
    move-object v4, v1

    .line 70
    move-object v5, v11

    .line 71
    move-object v6, v12

    .line 72
    invoke-direct/range {v2 .. v7}, Lcom/transsion/home/fragment/tab/f;-><init>(Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/functions/Function0;)V

    .line 73
    .line 74
    .line 75
    new-instance v2, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt$b;

    .line 76
    .line 77
    invoke-direct {v2, v15}, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v13, v14, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 81
    .line 82
    .line 83
    new-instance v13, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt$a;

    .line 84
    .line 85
    move-object v2, v13

    .line 86
    move-object v3, v1

    .line 87
    move-object/from16 v4, p2

    .line 88
    .line 89
    move-object/from16 v6, p0

    .line 90
    .line 91
    move-object/from16 v7, p3

    .line 92
    .line 93
    move-object v8, v12

    .line 94
    invoke-direct/range {v2 .. v8}, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt$a;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Landroidx/recyclerview/widget/RecyclerView$m;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;Lcom/transsion/home/viewmodel/HomePreferencesViewModel;Lkotlin/jvm/internal/Ref$IntRef;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v13}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    .line 98
    .line 99
    .line 100
    return-void
.end method

.method private static final i(Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/functions/Function0;Lkotlin/Pair;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p5}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {p5}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p5

    .line 11
    check-cast p5, Lcom/transsion/home/bean/HomePreferencesConfig;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;->d0()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-nez p0, :cond_0

    .line 22
    .line 23
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_0
    iget-boolean p0, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 27
    .line 28
    if-nez p0, :cond_5

    .line 29
    .line 30
    iget-object p0, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 31
    .line 32
    if-eqz p0, :cond_1

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_1
    invoke-virtual {p5}, Lcom/transsion/home/bean/HomePreferencesConfig;->getRefreshType()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    sget-object p1, Lcom/transsion/home/bean/HomePreferencesRefreshType;->NO_REFRESH:Lcom/transsion/home/bean/HomePreferencesRefreshType;

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/transsion/home/bean/HomePreferencesRefreshType;->getValue()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    const/4 p1, 0x0

    .line 50
    if-eqz p0, :cond_3

    .line 51
    .line 52
    iput-object p5, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 53
    .line 54
    invoke-virtual {p5}, Lcom/transsion/home/bean/HomePreferencesConfig;->getPos()Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    if-eqz p0, :cond_2

    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    goto :goto_0

    .line 65
    :cond_2
    invoke-interface {p4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    check-cast p0, Ljava/lang/Number;

    .line 70
    .line 71
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    :goto_0
    invoke-interface {p4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    check-cast p2, Ljava/lang/Number;

    .line 80
    .line 81
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 82
    .line 83
    .line 84
    move-result p2

    .line 85
    invoke-static {p0, p1, p2}, Lkotlin/ranges/RangesKt;->l(III)I

    .line 86
    .line 87
    .line 88
    move-result p0

    .line 89
    iput p0, p3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 90
    .line 91
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 92
    .line 93
    return-object p0

    .line 94
    :cond_3
    iput-object p5, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 95
    .line 96
    invoke-virtual {p5}, Lcom/transsion/home/bean/HomePreferencesConfig;->getPos()Ljava/lang/Integer;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    if-eqz p0, :cond_4

    .line 101
    .line 102
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 103
    .line 104
    .line 105
    move-result p0

    .line 106
    goto :goto_1

    .line 107
    :cond_4
    invoke-interface {p4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    check-cast p0, Ljava/lang/Number;

    .line 112
    .line 113
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 114
    .line 115
    .line 116
    move-result p0

    .line 117
    :goto_1
    invoke-interface {p4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    check-cast p2, Ljava/lang/Number;

    .line 122
    .line 123
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 124
    .line 125
    .line 126
    move-result p2

    .line 127
    invoke-static {p0, p1, p2}, Lkotlin/ranges/RangesKt;->l(III)I

    .line 128
    .line 129
    .line 130
    move-result p0

    .line 131
    iput p0, p3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 132
    .line 133
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 134
    .line 135
    return-object p0

    .line 136
    :cond_5
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 137
    .line 138
    return-object p0
.end method

.method public static final j(Lcom/transsion/home/adapter/trending/provider/e;Lcom/transsion/home/viewmodel/HomePreferencesViewModel;Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;ILjava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "provider"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "viewModel"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "adapter"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "tabCode"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Lcom/transsion/home/fragment/tab/b;

    .line 22
    .line 23
    invoke-direct {v0, p1, p3, p4}, Lcom/transsion/home/fragment/tab/b;-><init>(Lcom/transsion/home/viewmodel/HomePreferencesViewModel;ILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0}, Lcom/transsion/home/adapter/trending/provider/e;->L(Lkotlin/jvm/functions/Function3;)V

    .line 27
    .line 28
    .line 29
    new-instance v0, Lcom/transsion/home/fragment/tab/c;

    .line 30
    .line 31
    invoke-direct {v0, p1, p3, p4, p2}, Lcom/transsion/home/fragment/tab/c;-><init>(Lcom/transsion/home/viewmodel/HomePreferencesViewModel;ILjava/lang/String;Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lcom/transsion/home/adapter/trending/provider/e;->J(Lkotlin/jvm/functions/Function1;)V

    .line 35
    .line 36
    .line 37
    new-instance p2, Lcom/transsion/home/fragment/tab/d;

    .line 38
    .line 39
    invoke-direct {p2, p1, p3, p4}, Lcom/transsion/home/fragment/tab/d;-><init>(Lcom/transsion/home/viewmodel/HomePreferencesViewModel;ILjava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, p2}, Lcom/transsion/home/adapter/trending/provider/e;->K(Lkotlin/jvm/functions/Function1;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method private static final k(Lcom/transsion/home/viewmodel/HomePreferencesViewModel;ILjava/lang/String;Lcom/transsion/home/bean/HomePreferencesConfig;Ljava/util/List;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "config"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "selectOptions"

    .line 7
    .line 8
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "scene"

    .line 12
    .line 13
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p3, p4, p5}, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->M(Lcom/transsion/home/bean/HomePreferencesConfig;Ljava/util/List;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sget-object p0, Lzk/c;->a:Lzk/c;

    .line 20
    .line 21
    invoke-virtual {p0, p1, p2, p3, p4}, Lzk/c;->r(ILjava/lang/String;Lcom/transsion/home/bean/HomePreferencesConfig;Ljava/util/List;)V

    .line 22
    .line 23
    .line 24
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 25
    .line 26
    return-object p0
.end method

.method private static final l(Lcom/transsion/home/viewmodel/HomePreferencesViewModel;ILjava/lang/String;Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;Lcom/transsion/home/bean/HomePreferencesConfig;)Lkotlin/Unit;
    .locals 2

    .line 1
    const-string v0, "config"

    .line 2
    .line 3
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p4}, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->C(Lcom/transsion/home/bean/HomePreferencesConfig;)V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lzk/c;->a:Lzk/c;

    .line 10
    .line 11
    invoke-virtual {p0, p1, p2, p4}, Lzk/c;->p(ILjava/lang/String;Lcom/transsion/home/bean/HomePreferencesConfig;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const/4 p1, 0x0

    .line 23
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    if-eqz p2, :cond_2

    .line 28
    .line 29
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    check-cast p2, Lcom/transsion/home/bean/OperateItem;

    .line 34
    .line 35
    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getType()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sget-object v1, Lcom/transsion/moviedetailapi/bean/PostItemType;->PREFERENCES:Lcom/transsion/moviedetailapi/bean/PostItemType;

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getHomePreferencesConfig()Lcom/transsion/home/bean/HomePreferencesConfig;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    if-eqz p2, :cond_0

    .line 56
    .line 57
    invoke-virtual {p2}, Lcom/transsion/home/bean/HomePreferencesConfig;->getLabelId()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    goto :goto_1

    .line 62
    :cond_0
    const/4 p2, 0x0

    .line 63
    :goto_1
    invoke-virtual {p4}, Lcom/transsion/home/bean/HomePreferencesConfig;->getLabelId()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result p2

    .line 71
    if-eqz p2, :cond_1

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    const/4 p1, -0x1

    .line 78
    :goto_2
    if-ltz p1, :cond_3

    .line 79
    .line 80
    invoke-virtual {p3, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->C0(I)V

    .line 81
    .line 82
    .line 83
    :cond_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 84
    .line 85
    return-object p0
.end method

.method private static final m(Lcom/transsion/home/viewmodel/HomePreferencesViewModel;ILjava/lang/String;Lcom/transsion/home/bean/HomePreferencesConfig;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "config"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p3}, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->D(Lcom/transsion/home/bean/HomePreferencesConfig;)V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lzk/c;->a:Lzk/c;

    .line 10
    .line 11
    invoke-virtual {p0, p1, p2, p3}, Lzk/c;->q(ILjava/lang/String;Lcom/transsion/home/bean/HomePreferencesConfig;)V

    .line 12
    .line 13
    .line 14
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    return-object p0
.end method

.method public static final n(Ljava/util/List;)Ljava/util/List;
    .locals 9

    .line 1
    const-string v0, "flatList"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :cond_0
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 20
    .line 21
    .line 22
    new-instance v1, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-ge v2, v3, :cond_9

    .line 33
    .line 34
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Lcom/transsion/home/bean/OperateItem;

    .line 39
    .line 40
    invoke-virtual {v3}, Lcom/transsion/home/bean/OperateItem;->getType()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    sget-object v5, Lcom/transsion/moviedetailapi/bean/PostItemType;->TRENDING_MARGIN:Lcom/transsion/moviedetailapi/bean/PostItemType;

    .line 45
    .line 46
    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-eqz v4, :cond_2

    .line 55
    .line 56
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    invoke-virtual {v3}, Lcom/transsion/home/bean/OperateItem;->getType()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    sget-object v5, Lcom/transsion/moviedetailapi/bean/PostItemType;->FEEDS_TITLE:Lcom/transsion/moviedetailapi/bean/PostItemType;

    .line 64
    .line 65
    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    if-eqz v4, :cond_7

    .line 74
    .line 75
    add-int/lit8 v4, v2, 0x1

    .line 76
    .line 77
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    invoke-interface {p0, v4, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    check-cast v5, Ljava/lang/Iterable;

    .line 86
    .line 87
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    .line 93
    .line 94
    move-result v6

    .line 95
    const/4 v7, 0x0

    .line 96
    if-eqz v6, :cond_4

    .line 97
    .line 98
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    move-object v8, v6

    .line 103
    check-cast v8, Lcom/transsion/home/bean/OperateItem;

    .line 104
    .line 105
    invoke-virtual {v8}, Lcom/transsion/home/bean/OperateItem;->getOriginalOperateItem()Lcom/transsion/home/bean/OperateItem;

    .line 106
    .line 107
    .line 108
    move-result-object v8

    .line 109
    if-eqz v8, :cond_3

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_4
    move-object v6, v7

    .line 113
    :goto_2
    check-cast v6, Lcom/transsion/home/bean/OperateItem;

    .line 114
    .line 115
    if-eqz v6, :cond_5

    .line 116
    .line 117
    invoke-virtual {v6}, Lcom/transsion/home/bean/OperateItem;->getOriginalOperateItem()Lcom/transsion/home/bean/OperateItem;

    .line 118
    .line 119
    .line 120
    move-result-object v7

    .line 121
    :cond_5
    if-eqz v7, :cond_7

    .line 122
    .line 123
    invoke-virtual {v0, v7}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    if-eqz v2, :cond_6

    .line 128
    .line 129
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    :cond_6
    move v2, v4

    .line 133
    goto :goto_0

    .line 134
    :cond_7
    invoke-virtual {v3}, Lcom/transsion/home/bean/OperateItem;->getOriginalOperateItem()Lcom/transsion/home/bean/OperateItem;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    if-nez v4, :cond_8

    .line 139
    .line 140
    move-object v4, v3

    .line 141
    :cond_8
    invoke-virtual {v0, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v4

    .line 145
    if-eqz v4, :cond_1

    .line 146
    .line 147
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_9
    return-object v1
.end method

.method public static final o(Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;Lcom/transsion/home/viewmodel/HomePreferencesViewModel;Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;)V
    .locals 2

    .line 1
    const-string v0, "fragment"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "viewModel"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "adapter"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->u()Landroidx/lifecycle/b0;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/u;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    new-instance v1, Lcom/transsion/home/fragment/tab/e;

    .line 25
    .line 26
    invoke-direct {v1, p0, p2}, Lcom/transsion/home/fragment/tab/e;-><init>(Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;)V

    .line 27
    .line 28
    .line 29
    new-instance p0, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt$b;

    .line 30
    .line 31
    invoke-direct {p0, v1}, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0, p0}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method private static final p(Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;Lkotlin/Pair;)Lkotlin/Unit;
    .locals 38

    .line 1
    invoke-virtual/range {p2 .. p2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual/range {p2 .. p2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Ljava/util/List;

    .line 12
    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;->d0()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_8

    .line 22
    .line 23
    move-object v0, v1

    .line 24
    check-cast v0, Ljava/util/Collection;

    .line 25
    .line 26
    if-eqz v0, :cond_8

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    goto/16 :goto_4

    .line 35
    .line 36
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Ljava/lang/Iterable;

    .line 41
    .line 42
    new-instance v2, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_2

    .line 56
    .line 57
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    move-object v4, v3

    .line 62
    check-cast v4, Lcom/transsion/home/bean/OperateItem;

    .line 63
    .line 64
    invoke-virtual {v4}, Lcom/transsion/home/bean/OperateItem;->getType()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    sget-object v5, Lcom/transsion/moviedetailapi/bean/PostItemType;->PREFERENCES:Lcom/transsion/moviedetailapi/bean/PostItemType;

    .line 69
    .line 70
    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-eqz v4, :cond_1

    .line 79
    .line 80
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    if-eqz v3, :cond_5

    .line 98
    .line 99
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    check-cast v3, Lcom/transsion/home/bean/OperateItem;

    .line 104
    .line 105
    invoke-virtual {v3}, Lcom/transsion/home/bean/OperateItem;->getHomePreferencesConfig()Lcom/transsion/home/bean/HomePreferencesConfig;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    if-eqz v3, :cond_4

    .line 110
    .line 111
    invoke-virtual {v3}, Lcom/transsion/home/bean/HomePreferencesConfig;->getLabelId()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    goto :goto_2

    .line 116
    :cond_4
    const/4 v3, 0x0

    .line 117
    :goto_2
    if-eqz v3, :cond_3

    .line 118
    .line 119
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_5
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P0(Ljava/lang/Iterable;)Ljava/util/HashSet;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    check-cast v1, Ljava/lang/Iterable;

    .line 128
    .line 129
    new-instance v2, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt$observeHomePreferencesInsertInstructions$lambda$12$$inlined$sortedBy$1;

    .line 130
    .line 131
    invoke-direct {v2}, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt$observeHomePreferencesInsertInstructions$lambda$12$$inlined$sortedBy$1;-><init>()V

    .line 132
    .line 133
    .line 134
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->I0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    check-cast v1, Ljava/lang/Iterable;

    .line 139
    .line 140
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    const/4 v2, 0x0

    .line 145
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    if-eqz v3, :cond_7

    .line 150
    .line 151
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    check-cast v3, Lok/a;

    .line 156
    .line 157
    invoke-virtual {v3}, Lok/a;->a()Lcom/transsion/home/bean/HomePreferencesConfig;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    invoke-virtual {v4}, Lcom/transsion/home/bean/HomePreferencesConfig;->getLabelId()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v5

    .line 169
    if-nez v5, :cond_6

    .line 170
    .line 171
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    invoke-virtual {v3}, Lok/a;->b()I

    .line 175
    .line 176
    .line 177
    move-result v4

    .line 178
    add-int/lit8 v4, v4, -0x1

    .line 179
    .line 180
    add-int/2addr v4, v2

    .line 181
    invoke-virtual/range {p1 .. p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 182
    .line 183
    .line 184
    move-result-object v5

    .line 185
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 186
    .line 187
    .line 188
    move-result v5

    .line 189
    const/4 v6, 0x4

    .line 190
    invoke-static {v4, v6, v5}, Lkotlin/ranges/RangesKt;->l(III)I

    .line 191
    .line 192
    .line 193
    move-result v4

    .line 194
    new-instance v15, Lcom/transsion/home/bean/OperateItem;

    .line 195
    .line 196
    move-object v5, v15

    .line 197
    sget-object v6, Lcom/transsion/moviedetailapi/bean/PostItemType;->PREFERENCES:Lcom/transsion/moviedetailapi/bean/PostItemType;

    .line 198
    .line 199
    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v7

    .line 203
    const v35, 0x1ffffffd

    .line 204
    .line 205
    .line 206
    const/16 v36, 0x0

    .line 207
    .line 208
    const/4 v6, 0x0

    .line 209
    const/4 v8, 0x0

    .line 210
    const/4 v9, 0x0

    .line 211
    const/4 v10, 0x0

    .line 212
    const/4 v11, 0x0

    .line 213
    const/4 v12, 0x0

    .line 214
    const/4 v13, 0x0

    .line 215
    const/4 v14, 0x0

    .line 216
    const/16 v16, 0x0

    .line 217
    .line 218
    move-object/from16 v37, v15

    .line 219
    .line 220
    move-object/from16 v15, v16

    .line 221
    .line 222
    const/16 v17, 0x0

    .line 223
    .line 224
    const/16 v18, 0x0

    .line 225
    .line 226
    const/16 v19, 0x0

    .line 227
    .line 228
    const/16 v20, 0x0

    .line 229
    .line 230
    const/16 v21, 0x0

    .line 231
    .line 232
    const/16 v22, 0x0

    .line 233
    .line 234
    const/16 v23, 0x0

    .line 235
    .line 236
    const/16 v24, 0x0

    .line 237
    .line 238
    const/16 v25, 0x0

    .line 239
    .line 240
    const/16 v26, 0x0

    .line 241
    .line 242
    const/16 v27, 0x0

    .line 243
    .line 244
    const/16 v28, 0x0

    .line 245
    .line 246
    const/16 v29, 0x0

    .line 247
    .line 248
    const/16 v30, 0x0

    .line 249
    .line 250
    const/16 v31, 0x0

    .line 251
    .line 252
    const/16 v32, 0x0

    .line 253
    .line 254
    const/16 v33, 0x0

    .line 255
    .line 256
    const/16 v34, 0x0

    .line 257
    .line 258
    invoke-direct/range {v5 .. v36}, Lcom/transsion/home/bean/OperateItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/transsion/home/bean/BannerBean;Ljava/util/List;Ljava/util/List;Lcom/transsion/home/bean/CustomData;Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/home/bean/SingleImagePage;Lcom/transsion/home/bean/RankingData;Lcom/transsion/home/bean/RankingListData;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/bean/HomePreferencesConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v3}, Lok/a;->a()Lcom/transsion/home/bean/HomePreferencesConfig;

    .line 262
    .line 263
    .line 264
    move-result-object v3

    .line 265
    move-object/from16 v5, v37

    .line 266
    .line 267
    invoke-virtual {v5, v3}, Lcom/transsion/home/bean/OperateItem;->setHomePreferencesConfig(Lcom/transsion/home/bean/HomePreferencesConfig;)V

    .line 268
    .line 269
    .line 270
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 271
    .line 272
    move-object/from16 v3, p1

    .line 273
    .line 274
    invoke-virtual {v3, v4, v5}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n(ILjava/lang/Object;)V

    .line 275
    .line 276
    .line 277
    add-int/lit8 v2, v2, 0x1

    .line 278
    .line 279
    goto/16 :goto_3

    .line 280
    .line 281
    :cond_6
    move-object/from16 v3, p1

    .line 282
    .line 283
    goto/16 :goto_3

    .line 284
    .line 285
    :cond_7
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 286
    .line 287
    return-object v0

    .line 288
    :cond_8
    :goto_4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 289
    .line 290
    return-object v0
.end method
