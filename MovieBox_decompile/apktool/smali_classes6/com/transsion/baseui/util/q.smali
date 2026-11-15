.class public abstract Lcom/transsion/baseui/util/q;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static synthetic a(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/baseui/util/q;->h(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static final b(Landroid/text/SpannableStringBuilder;Landroid/content/Context;I)V
    .locals 2

    .line 1
    const-string v0, "\ufffc"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p2}, Lcom/transsion/baseui/util/q;->d(Landroid/content/Context;I)Landroid/text/style/ImageSpan;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    add-int/lit8 p2, p2, -0x1

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/16 v1, 0x21

    .line 21
    .line 22
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public static final c(Landroid/view/View;F)V
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/transsion/baseui/util/q$a;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lcom/transsion/baseui/util/q$a;-><init>(F)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    invoke-virtual {p0, p1}, Landroid/view/View;->setClipToOutline(Z)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private static final d(Landroid/content/Context;I)Landroid/text/style/ImageSpan;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroid/text/style/ImageSpan;

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    invoke-direct {v0, p0, p1, v1}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;II)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Landroid/text/style/ImageSpan;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-direct {v0, p0, p1, v1}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;II)V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-object v0
.end method

.method public static final e(Ljava/util/List;Landroid/content/Context;)Landroid/text/SpannableStringBuilder;
    .locals 10

    .line 1
    const-string v0, "array"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "context"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/transsion/baseui/util/p;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/transsion/baseui/util/p;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->I(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    .line 17
    .line 18
    .line 19
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 20
    .line 21
    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    move-object v1, p0

    .line 25
    check-cast v1, Ljava/lang/Iterable;

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const/4 v2, 0x0

    .line 32
    move v3, v2

    .line 33
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-eqz v4, :cond_5

    .line 38
    .line 39
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    add-int/lit8 v5, v3, 0x1

    .line 44
    .line 45
    if-gez v3, :cond_0

    .line 46
    .line 47
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 48
    .line 49
    .line 50
    :cond_0
    check-cast v4, Ljava/lang/String;

    .line 51
    .line 52
    const-string v6, "special_#shorts_icon"

    .line 53
    .line 54
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    const-string v7, " "

    .line 59
    .line 60
    if-eqz v6, :cond_1

    .line 61
    .line 62
    sget v3, Lcom/transsion/baseui/R$drawable;->ic_tag_ugc_shorts:I

    .line 63
    .line 64
    invoke-static {v0, p1, v3}, Lcom/transsion/baseui/util/q;->b(Landroid/text/SpannableStringBuilder;Landroid/content/Context;I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_1
    const-string v6, "special_#user_icon"

    .line 72
    .line 73
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    if-eqz v6, :cond_2

    .line 78
    .line 79
    sget v3, Lcom/transsion/baseui/R$drawable;->ic_ugc_creator:I

    .line 80
    .line 81
    invoke-static {v0, p1, v3}, Lcom/transsion/baseui/util/q;->b(Landroid/text/SpannableStringBuilder;Landroid/content/Context;I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_2
    const/4 v6, 0x2

    .line 89
    const/4 v8, 0x0

    .line 90
    const-string v9, "dynamic_icon_#"

    .line 91
    .line 92
    invoke-static {v4, v9, v2, v6, v8}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    if-eqz v6, :cond_3

    .line 97
    .line 98
    invoke-static {v4, v9}, Lkotlin/text/StringsKt;->I0(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-static {v3}, Lkotlin/text/StringsKt;->v(Ljava/lang/String;)Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    if-eqz v3, :cond_4

    .line 107
    .line 108
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    invoke-static {v0, p1, v3}, Lcom/transsion/baseui/util/q;->b(Landroid/text/SpannableStringBuilder;Landroid/content/Context;I)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_3
    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    add-int/lit8 v4, v4, -0x1

    .line 127
    .line 128
    if-ge v3, v4, :cond_4

    .line 129
    .line 130
    sget v3, Lcom/transsion/baseui/R$mipmap;->ic_subtitle_split:I

    .line 131
    .line 132
    invoke-static {v0, p1, v3}, Lcom/transsion/baseui/util/q;->b(Landroid/text/SpannableStringBuilder;Landroid/content/Context;I)V

    .line 133
    .line 134
    .line 135
    :cond_4
    :goto_1
    move v3, v5

    .line 136
    goto :goto_0

    .line 137
    :cond_5
    return-object v0
.end method

.method public static final f(Ljava/util/List;Landroid/content/Context;Z)Landroid/text/SpannableStringBuilder;
    .locals 8

    .line 1
    const-string v0, "items"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "context"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    check-cast p0, Ljava/lang/Iterable;

    .line 12
    .line 13
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    move-object v2, v1

    .line 33
    check-cast v2, Lcom/transsion/baseui/util/k;

    .line 34
    .line 35
    instance-of v3, v2, Lcom/transsion/baseui/util/k$b;

    .line 36
    .line 37
    if-eqz v3, :cond_1

    .line 38
    .line 39
    check-cast v2, Lcom/transsion/baseui/util/k$b;

    .line 40
    .line 41
    invoke-virtual {v2}, Lcom/transsion/baseui/util/k$b;->a()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-lez v2, :cond_0

    .line 50
    .line 51
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    new-instance p0, Landroid/text/SpannableStringBuilder;

    .line 56
    .line 57
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    const/4 v2, 0x0

    .line 65
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-eqz v3, :cond_8

    .line 70
    .line 71
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    add-int/lit8 v4, v2, 0x1

    .line 76
    .line 77
    if-gez v2, :cond_3

    .line 78
    .line 79
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 80
    .line 81
    .line 82
    :cond_3
    check-cast v3, Lcom/transsion/baseui/util/k;

    .line 83
    .line 84
    instance-of v5, v3, Lcom/transsion/baseui/util/k$a;

    .line 85
    .line 86
    if-eqz v5, :cond_4

    .line 87
    .line 88
    check-cast v3, Lcom/transsion/baseui/util/k$a;

    .line 89
    .line 90
    invoke-virtual {v3}, Lcom/transsion/baseui/util/k$a;->a()I

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    invoke-static {p0, p1, v2}, Lcom/transsion/baseui/util/q;->b(Landroid/text/SpannableStringBuilder;Landroid/content/Context;I)V

    .line 95
    .line 96
    .line 97
    if-eqz p2, :cond_6

    .line 98
    .line 99
    const-string v2, " "

    .line 100
    .line 101
    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_4
    instance-of v5, v3, Lcom/transsion/baseui/util/k$b;

    .line 106
    .line 107
    if-eqz v5, :cond_7

    .line 108
    .line 109
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    check-cast v3, Lcom/transsion/baseui/util/k$b;

    .line 114
    .line 115
    invoke-virtual {v3}, Lcom/transsion/baseui/util/k$b;->a()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v6

    .line 119
    invoke-virtual {p0, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v3}, Lcom/transsion/baseui/util/k$b;->b()Ljava/lang/Integer;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    if-eqz v3, :cond_5

    .line 127
    .line 128
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    invoke-static {p1, v3}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    .line 137
    .line 138
    invoke-direct {v6, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 142
    .line 143
    .line 144
    move-result v3

    .line 145
    const/16 v7, 0x21

    .line 146
    .line 147
    invoke-virtual {p0, v6, v5, v3, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 148
    .line 149
    .line 150
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 151
    .line 152
    .line 153
    move-result v3

    .line 154
    add-int/lit8 v3, v3, -0x1

    .line 155
    .line 156
    if-ge v2, v3, :cond_6

    .line 157
    .line 158
    sget v2, Lcom/transsion/baseui/R$mipmap;->ic_subtitle_split:I

    .line 159
    .line 160
    invoke-static {p0, p1, v2}, Lcom/transsion/baseui/util/q;->b(Landroid/text/SpannableStringBuilder;Landroid/content/Context;I)V

    .line 161
    .line 162
    .line 163
    :cond_6
    :goto_2
    move v2, v4

    .line 164
    goto :goto_1

    .line 165
    :cond_7
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 166
    .line 167
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 168
    .line 169
    .line 170
    throw p0

    .line 171
    :cond_8
    return-object p0
.end method

.method public static synthetic g(Ljava/util/List;Landroid/content/Context;ZILjava/lang/Object;)Landroid/text/SpannableStringBuilder;
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x4

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x1

    .line 6
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/transsion/baseui/util/q;->f(Ljava/util/List;Landroid/content/Context;Z)Landroid/text/SpannableStringBuilder;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method private static final h(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    return p0
.end method
