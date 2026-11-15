.class public final Lcom/transsion/home/adapter/suboperate/provider/SubFeedsEducationProvider;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/home/adapter/suboperate/provider/SubFeedsEducationProvider$MyViewHolder;
    }
.end annotation


# instance fields
.field private final e:I

.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubFeedsEducationProvider;->e:I

    .line 5
    .line 6
    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    iput p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubFeedsEducationProvider;->f:I

    .line 11
    .line 12
    return-void
.end method

.method public static synthetic A(Lcom/transsion/moviedetailapi/bean/Subject;ZZJ)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/home/adapter/suboperate/provider/SubFeedsEducationProvider;->C(Lcom/transsion/moviedetailapi/bean/Subject;ZZJ)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final C(Lcom/transsion/moviedetailapi/bean/Subject;ZZJ)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/moviedetailapi/bean/Subject;->setLoadCoverSuccess(Z)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p2}, Lcom/transsion/moviedetailapi/bean/Subject;->setCoverCache(Z)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p3, p4}, Lcom/transsion/moviedetailapi/bean/Subject;->setLoadCoverDuration(J)V

    .line 8
    .line 9
    .line 10
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    return-object p0
.end method

.method private static final D(Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/adapter/suboperate/provider/SubFeedsEducationProvider;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/home/bean/OperateItem;->getFeedsSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    if-eqz p2, :cond_1

    .line 6
    .line 7
    const-string v0, "opt_sub_feeds"

    .line 8
    .line 9
    invoke-static {p2, v0}, Lzk/h;->f(Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->g()Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-interface {v0, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p0, -0x1

    .line 30
    :goto_0
    const/4 v0, 0x0

    .line 31
    invoke-direct {p1, p0, p2, v0}, Lcom/transsion/home/adapter/suboperate/provider/SubFeedsEducationProvider;->G(ILcom/transsion/moviedetailapi/bean/Subject;Z)V

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void
.end method

.method private static final E(Lcom/transsion/home/bean/OperateItem;Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/home/adapter/suboperate/provider/SubFeedsEducationProvider;Landroid/view/View;)V
    .locals 2

    .line 1
    sget-object p3, Lcom/transsion/edcation/CourseManager;->a:Lcom/transsion/edcation/CourseManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/transsion/home/bean/OperateItem;->getFeedsSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v0, 0x0

    .line 8
    const/4 v1, 0x2

    .line 9
    invoke-static {p3, p0, v0, v1, v0}, Lcom/transsion/edcation/CourseManager;->u(Lcom/transsion/edcation/CourseManager;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/Boolean;ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    sget-object p0, Lcom/transsion/home/fragment/tab/SubTabFragment;->t:Lcom/transsion/home/fragment/tab/SubTabFragment$a;

    .line 13
    .line 14
    iget p2, p2, Lcom/transsion/home/adapter/suboperate/provider/SubFeedsEducationProvider;->e:I

    .line 15
    .line 16
    invoke-virtual {p0, p2}, Lcom/transsion/home/fragment/tab/SubTabFragment$a;->a(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const-string p2, "opt_feeds"

    .line 21
    .line 22
    invoke-static {p1, p0, p2}, Lfk/a;->b(Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private final F(I)Ljava/lang/String;
    .locals 5

    .line 1
    div-int/lit16 v0, p1, 0xe10

    .line 2
    .line 3
    rem-int/lit16 v1, p1, 0xe10

    .line 4
    .line 5
    div-int/lit8 v1, v1, 0x3c

    .line 6
    .line 7
    rem-int/lit8 p1, p1, 0x3c

    .line 8
    .line 9
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    .line 10
    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const/4 v2, 0x3

    .line 24
    new-array v3, v2, [Ljava/lang/Object;

    .line 25
    .line 26
    const/4 v4, 0x0

    .line 27
    aput-object v0, v3, v4

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    aput-object v1, v3, v0

    .line 31
    .line 32
    const/4 v0, 0x2

    .line 33
    aput-object p1, v3, v0

    .line 34
    .line 35
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const-string v0, "%02d:%02d:%02d"

    .line 40
    .line 41
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const-string v0, "format(...)"

    .line 46
    .line 47
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-object p1
.end method

.method private final G(ILcom/transsion/moviedetailapi/bean/Subject;Z)V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p3, :cond_0

    .line 7
    .line 8
    const-string v1, "browse_feeds_item"

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-string v1, "click_feeds_item"

    .line 12
    .line 13
    :goto_0
    const-string v2, "event_type"

    .line 14
    .line 15
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    const-string v1, "sequence"

    .line 19
    .line 20
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    const-string p1, "item_type"

    .line 28
    .line 29
    const-string v1, "rec"

    .line 30
    .line 31
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getOps()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const-string v1, ""

    .line 39
    .line 40
    if-nez p1, :cond_1

    .line 41
    .line 42
    move-object p1, v1

    .line 43
    :cond_1
    const-string v2, "ops"

    .line 44
    .line 45
    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    if-nez p1, :cond_2

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    move-object v1, p1

    .line 56
    :goto_1
    const-string p1, "subject_id"

    .line 57
    .line 58
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getBuiltIn()Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_3

    .line 66
    .line 67
    const-string p1, "1"

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_3
    const-string p1, "0"

    .line 71
    .line 72
    :goto_2
    const-string v1, "builtin"

    .line 73
    .line 74
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    iget p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubFeedsEducationProvider;->e:I

    .line 78
    .line 79
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    const-string v1, "tabId"

    .line 84
    .line 85
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    new-instance p1, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getExplains()Ljava/util/List;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    if-eqz v1, :cond_4

    .line 98
    .line 99
    check-cast v1, Ljava/lang/Iterable;

    .line 100
    .line 101
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    if-eqz v2, :cond_4

    .line 110
    .line 111
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    check-cast v2, Lcom/transsion/moviedetailapi/bean/ExplainBean;

    .line 116
    .line 117
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/ExplainBean;->getType()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string v2, ","

    .line 125
    .line 126
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_4
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    const-string v1, "toString(...)"

    .line 135
    .line 136
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    const/4 v1, 0x1

    .line 140
    new-array v1, v1, [C

    .line 141
    .line 142
    const/16 v2, 0x2c

    .line 143
    .line 144
    const/4 v3, 0x0

    .line 145
    aput-char v2, v1, v3

    .line 146
    .line 147
    invoke-static {p1, v1}, Lkotlin/text/StringsKt;->r1(Ljava/lang/String;[C)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    const-string v1, "rec_explain_type"

    .line 152
    .line 153
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    invoke-static {p2, v0}, Lsk/b;->d(Lcom/transsion/moviedetailapi/bean/Subject;Ljava/util/Map;)V

    .line 157
    .line 158
    .line 159
    if-eqz p3, :cond_5

    .line 160
    .line 161
    sget-object p1, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    .line 162
    .line 163
    sget-object p2, Lcom/transsion/home/fragment/tab/SubTabFragment;->t:Lcom/transsion/home/fragment/tab/SubTabFragment$a;

    .line 164
    .line 165
    iget p3, p0, Lcom/transsion/home/adapter/suboperate/provider/SubFeedsEducationProvider;->e:I

    .line 166
    .line 167
    invoke-virtual {p2, p3}, Lcom/transsion/home/fragment/tab/SubTabFragment$a;->a(I)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p2

    .line 171
    invoke-virtual {p1, p2, v0}, Lcom/transsion/baselib/helper/a;->e(Ljava/lang/String;Ljava/util/Map;)V

    .line 172
    .line 173
    .line 174
    goto :goto_4

    .line 175
    :cond_5
    sget-object p1, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    .line 176
    .line 177
    sget-object p2, Lcom/transsion/home/fragment/tab/SubTabFragment;->t:Lcom/transsion/home/fragment/tab/SubTabFragment$a;

    .line 178
    .line 179
    iget p3, p0, Lcom/transsion/home/adapter/suboperate/provider/SubFeedsEducationProvider;->e:I

    .line 180
    .line 181
    invoke-virtual {p2, p3}, Lcom/transsion/home/fragment/tab/SubTabFragment$a;->a(I)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p2

    .line 185
    invoke-virtual {p1, p2, v0}, Lcom/transsion/baselib/helper/a;->f(Ljava/lang/String;Ljava/util/Map;)V

    .line 186
    .line 187
    .line 188
    :goto_4
    return-void
.end method

.method public static synthetic y(Lcom/transsion/home/bean/OperateItem;Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/home/adapter/suboperate/provider/SubFeedsEducationProvider;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/home/adapter/suboperate/provider/SubFeedsEducationProvider;->E(Lcom/transsion/home/bean/OperateItem;Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/home/adapter/suboperate/provider/SubFeedsEducationProvider;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic z(Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/adapter/suboperate/provider/SubFeedsEducationProvider;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/home/adapter/suboperate/provider/SubFeedsEducationProvider;->D(Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/adapter/suboperate/provider/SubFeedsEducationProvider;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public B(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/OperateItem;)V
    .locals 5

    .line 1
    const-string v0, "helper"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "item"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    instance-of v0, p1, Lcom/transsion/home/adapter/suboperate/provider/SubFeedsEducationProvider$MyViewHolder;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    move-object v0, p1

    .line 16
    check-cast v0, Lcom/transsion/home/adapter/suboperate/provider/SubFeedsEducationProvider$MyViewHolder;

    .line 17
    .line 18
    invoke-virtual {v0, p2}, Lcom/transsion/home/adapter/suboperate/provider/SubFeedsEducationProvider$MyViewHolder;->i(Lcom/transsion/home/bean/OperateItem;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getFeedsSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_e

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-eqz v1, :cond_e

    .line 32
    .line 33
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_1

    .line 38
    .line 39
    goto/16 :goto_6

    .line 40
    .line 41
    :cond_1
    sget v1, Lcom/transsion/home/R$id;->iv_cover:I

    .line 42
    .line 43
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 48
    .line 49
    if-eqz v1, :cond_6

    .line 50
    .line 51
    sget-object v2, Lni/f;->a:Lni/f$a;

    .line 52
    .line 53
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    const-string v4, "getContext(...)"

    .line 58
    .line 59
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, v3}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    const-string v4, ""

    .line 71
    .line 72
    if-eqz v3, :cond_2

    .line 73
    .line 74
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    if-nez v3, :cond_3

    .line 79
    .line 80
    :cond_2
    move-object v3, v4

    .line 81
    :cond_3
    invoke-virtual {v2, v3}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    if-eqz v3, :cond_5

    .line 90
    .line 91
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    if-nez v3, :cond_4

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_4
    move-object v4, v3

    .line 99
    :cond_5
    :goto_0
    invoke-virtual {v2, v4}, Lni/f$b;->l(Ljava/lang/String;)Lni/f$b;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    sget v3, Lcom/tn/lib/widget/R$color;->skeleton:I

    .line 104
    .line 105
    invoke-virtual {v2, v3}, Lni/f$b;->i(I)Lni/f$b;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    iget v3, p0, Lcom/transsion/home/adapter/suboperate/provider/SubFeedsEducationProvider;->f:I

    .line 110
    .line 111
    invoke-virtual {v2, v3}, Lni/f$b;->m(I)Lni/f$b;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    new-instance v3, Lcom/transsion/home/adapter/suboperate/provider/l;

    .line 116
    .line 117
    invoke-direct {v3, v0}, Lcom/transsion/home/adapter/suboperate/provider/l;-><init>(Lcom/transsion/moviedetailapi/bean/Subject;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2, v3}, Lni/f$b;->b(Lkotlin/jvm/functions/Function3;)Lni/f$b;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-virtual {v2, v1}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 125
    .line 126
    .line 127
    :cond_6
    sget v1, Lcom/transsion/home/R$id;->tv_subject:I

    .line 128
    .line 129
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getTitle()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-virtual {p1, v1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 134
    .line 135
    .line 136
    sget v1, Lcom/transsion/home/R$id;->tv_subject_year:I

    .line 137
    .line 138
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-static {v2, v0}, La;->b(Landroid/content/Context;Lcom/transsion/moviedetailapi/bean/Subject;)Landroid/text/SpannableStringBuilder;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    invoke-virtual {p1, v1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 147
    .line 148
    .line 149
    sget v1, Lcom/transsion/home/R$id;->tv_duration:I

    .line 150
    .line 151
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    check-cast v1, Landroid/widget/TextView;

    .line 156
    .line 157
    invoke-static {v1}, Luf/c;->k(Landroid/view/View;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getDurationSeconds()Ljava/lang/Integer;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    if-eqz v2, :cond_7

    .line 165
    .line 166
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    goto :goto_1

    .line 171
    :cond_7
    const/4 v2, 0x0

    .line 172
    :goto_1
    invoke-direct {p0, v2}, Lcom/transsion/home/adapter/suboperate/provider/SubFeedsEducationProvider;->F(I)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    .line 178
    .line 179
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 180
    .line 181
    new-instance v2, Lcom/transsion/home/adapter/suboperate/provider/m;

    .line 182
    .line 183
    invoke-direct {v2, p2, p0}, Lcom/transsion/home/adapter/suboperate/provider/m;-><init>(Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/adapter/suboperate/provider/SubFeedsEducationProvider;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    .line 188
    .line 189
    sget v1, Lcom/transsion/home/R$id;->ll_download:I

    .line 190
    .line 191
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    check-cast v1, Lcom/transsnet/downloader/widget/DownloadView;

    .line 196
    .line 197
    if-eqz v1, :cond_9

    .line 198
    .line 199
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getHasResource()Ljava/lang/Boolean;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 204
    .line 205
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result v2

    .line 209
    if-eqz v2, :cond_8

    .line 210
    .line 211
    invoke-static {v1}, Luf/c;->k(Landroid/view/View;)V

    .line 212
    .line 213
    .line 214
    goto :goto_2

    .line 215
    :cond_8
    invoke-static {v1}, Luf/c;->g(Landroid/view/View;)V

    .line 216
    .line 217
    .line 218
    :goto_2
    new-instance v2, Lcom/transsion/home/adapter/suboperate/provider/n;

    .line 219
    .line 220
    invoke-direct {v2, p2, v0, p0}, Lcom/transsion/home/adapter/suboperate/provider/n;-><init>(Lcom/transsion/home/bean/OperateItem;Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/home/adapter/suboperate/provider/SubFeedsEducationProvider;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    .line 225
    .line 226
    :cond_9
    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getFeedsSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    const/4 v2, 0x1

    .line 231
    if-eqz v1, :cond_b

    .line 232
    .line 233
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Subject;->getSeenStatus()Ljava/lang/Integer;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    if-nez v1, :cond_a

    .line 238
    .line 239
    goto :goto_3

    .line 240
    :cond_a
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 241
    .line 242
    .line 243
    move-result v1

    .line 244
    if-ne v1, v2, :cond_b

    .line 245
    .line 246
    sget v1, Lcom/transsion/home/R$id;->ll_download:I

    .line 247
    .line 248
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    check-cast p1, Lcom/transsnet/downloader/widget/DownloadView;

    .line 253
    .line 254
    if-eqz p1, :cond_c

    .line 255
    .line 256
    invoke-virtual {p1}, Lcom/transsnet/downloader/widget/DownloadView;->setCourseAdded()V

    .line 257
    .line 258
    .line 259
    goto :goto_4

    .line 260
    :cond_b
    :goto_3
    sget v1, Lcom/transsion/home/R$id;->ll_download:I

    .line 261
    .line 262
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    check-cast p1, Lcom/transsnet/downloader/widget/DownloadView;

    .line 267
    .line 268
    if-eqz p1, :cond_c

    .line 269
    .line 270
    invoke-virtual {p1}, Lcom/transsnet/downloader/widget/DownloadView;->setAddCourse()V

    .line 271
    .line 272
    .line 273
    :cond_c
    :goto_4
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->g()Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    if-eqz p1, :cond_d

    .line 278
    .line 279
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 280
    .line 281
    .line 282
    move-result-object p1

    .line 283
    if-eqz p1, :cond_d

    .line 284
    .line 285
    invoke-interface {p1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 286
    .line 287
    .line 288
    move-result p1

    .line 289
    goto :goto_5

    .line 290
    :cond_d
    const/4 p1, -0x1

    .line 291
    :goto_5
    invoke-direct {p0, p1, v0, v2}, Lcom/transsion/home/adapter/suboperate/provider/SubFeedsEducationProvider;->G(ILcom/transsion/moviedetailapi/bean/Subject;Z)V

    .line 292
    .line 293
    .line 294
    :cond_e
    :goto_6
    return-void
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/home/bean/OperateItem;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/adapter/suboperate/provider/SubFeedsEducationProvider;->B(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/OperateItem;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public l()I
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/moviedetailapi/bean/PostItemType;->EDUCATION_SUBJECT:Lcom/transsion/moviedetailapi/bean/PostItemType;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public m()I
    .locals 1

    .line 1
    sget v0, Lcom/transsion/home/R$layout;->post_list_item_subject_education:I

    .line 2
    .line 3
    return v0
.end method

.method public r(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
    .locals 2

    .line 1
    const-string p2, "parent"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p2, Lcom/transsion/home/adapter/suboperate/provider/SubFeedsEducationProvider$MyViewHolder;

    .line 7
    .line 8
    iget v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubFeedsEducationProvider;->e:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/transsion/home/adapter/suboperate/provider/SubFeedsEducationProvider;->m()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-static {p1, v1}, Lu6/a;->a(Landroid/view/ViewGroup;I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-direct {p2, v0, p1}, Lcom/transsion/home/adapter/suboperate/provider/SubFeedsEducationProvider$MyViewHolder;-><init>(ILandroid/view/View;)V

    .line 19
    .line 20
    .line 21
    return-object p2
.end method

.method public t(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 1

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->t(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    .line 7
    .line 8
    .line 9
    instance-of v0, p1, Lcom/transsion/home/adapter/suboperate/provider/SubFeedsEducationProvider$MyViewHolder;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    check-cast p1, Lcom/transsion/home/adapter/suboperate/provider/SubFeedsEducationProvider$MyViewHolder;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/transsion/home/adapter/suboperate/provider/SubFeedsEducationProvider$MyViewHolder;->h()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public u(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 1

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->u(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    .line 7
    .line 8
    .line 9
    instance-of v0, p1, Lcom/transsion/home/adapter/suboperate/provider/SubFeedsEducationProvider$MyViewHolder;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    check-cast p1, Lcom/transsion/home/adapter/suboperate/provider/SubFeedsEducationProvider$MyViewHolder;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/transsion/home/adapter/suboperate/provider/SubFeedsEducationProvider$MyViewHolder;->j()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
