.class public final Lcom/transsion/shorttv/ui/adapter/provider/m;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;
.source "source.java"


# instance fields
.field private final e:Landroidx/fragment/app/Fragment;

.field private final f:Ljava/lang/String;

.field private final g:Z

.field private final h:Z

.field private final i:I

.field private j:Lcom/transsion/shorttv/ui/adapter/ShortTVBannerAdapter;

.field private final k:Lkotlin/Lazy;

.field private l:I

.field private m:J


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Ljava/lang/String;ZZ)V
    .locals 1

    .line 1
    const-string v0, "fragment"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "pageName"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/transsion/shorttv/ui/adapter/provider/m;->e:Landroidx/fragment/app/Fragment;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/transsion/shorttv/ui/adapter/provider/m;->f:Ljava/lang/String;

    .line 17
    .line 18
    iput-boolean p3, p0, Lcom/transsion/shorttv/ui/adapter/provider/m;->g:Z

    .line 19
    .line 20
    iput-boolean p4, p0, Lcom/transsion/shorttv/ui/adapter/provider/m;->h:Z

    .line 21
    .line 22
    invoke-static {}, Lcom/blankj/utilcode/util/d;->c()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    iput p1, p0, Lcom/transsion/shorttv/ui/adapter/provider/m;->i:I

    .line 27
    .line 28
    new-instance p1, Lcom/transsion/shorttv/ui/adapter/provider/l;

    .line 29
    .line 30
    invoke-direct {p1, p0}, Lcom/transsion/shorttv/ui/adapter/provider/l;-><init>(Lcom/transsion/shorttv/ui/adapter/provider/m;)V

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iput-object p1, p0, Lcom/transsion/shorttv/ui/adapter/provider/m;->k:Lkotlin/Lazy;

    .line 38
    .line 39
    const/4 p1, -0x1

    .line 40
    iput p1, p0, Lcom/transsion/shorttv/ui/adapter/provider/m;->l:I

    .line 41
    .line 42
    return-void
.end method

.method public static synthetic A(Lcom/transsion/shorttv/ui/adapter/provider/m;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/shorttv/ui/adapter/provider/m;->K(Lcom/transsion/shorttv/ui/adapter/provider/m;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic B(Lcom/transsion/shorttv/ui/adapter/provider/m;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/transsion/shorttv/ui/adapter/provider/m;->l:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic C(Lcom/transsion/shorttv/ui/adapter/provider/m;)Landroidx/fragment/app/Fragment;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv/ui/adapter/provider/m;->e:Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic D(Lcom/transsion/shorttv/ui/adapter/provider/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/adapter/provider/m;->M()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic E(Lcom/transsion/shorttv/ui/adapter/provider/m;Landroid/view/View;IIF)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/shorttv/ui/adapter/provider/m;->O(Landroid/view/View;IIF)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic F(Lcom/transsion/shorttv/ui/adapter/provider/m;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/transsion/shorttv/ui/adapter/provider/m;->m:J

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic G(Lcom/transsion/shorttv/ui/adapter/provider/m;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/shorttv/ui/adapter/provider/m;->l:I

    .line 2
    .line 3
    return-void
.end method

.method private static final H(Lcom/transsion/shorttv/ui/adapter/provider/m;)Lcom/transsion/shorttv/utils/a;
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/shorttv/utils/a;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/transsion/shorttv/ui/adapter/provider/m;->f:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/transsion/shorttv/utils/a;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method private static final J(Lcom/transsion/shorttv/ui/adapter/provider/m;Landroid/view/View;ILcom/transsion/shorttv/bean/BannerData;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "<unused var>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "item"

    .line 7
    .line 8
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p2, p3}, Lcom/transsion/shorttv/ui/adapter/provider/m;->N(ILcom/transsion/shorttv/bean/BannerData;)V

    .line 12
    .line 13
    .line 14
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    return-object p0
.end method

.method private static final K(Lcom/transsion/shorttv/ui/adapter/provider/m;Landroid/view/View;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, p1, v0, v0, v1}, Lcom/transsion/shorttv/ui/adapter/provider/m;->O(Landroid/view/View;IIF)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final L()Lcom/transsion/shorttv/utils/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/adapter/provider/m;->k:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/shorttv/utils/a;

    .line 8
    .line 9
    return-object v0
.end method

.method private final M()V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/transsion/shorttv/ui/adapter/provider/m;->l:I

    .line 4
    .line 5
    if-ltz v1, :cond_6

    .line 6
    .line 7
    iget-object v2, v0, Lcom/transsion/shorttv/ui/adapter/provider/m;->j:Lcom/transsion/shorttv/ui/adapter/ShortTVBannerAdapter;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/transsion/shorttv/ui/adapter/ShortTVBannerAdapter;->getData()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v2, 0x0

    .line 23
    :goto_0
    if-lt v1, v2, :cond_1

    .line 24
    .line 25
    goto/16 :goto_6

    .line 26
    .line 27
    :cond_1
    iget-wide v1, v0, Lcom/transsion/shorttv/ui/adapter/provider/m;->m:J

    .line 28
    .line 29
    const-wide/16 v3, 0x0

    .line 30
    .line 31
    cmp-long v1, v1, v3

    .line 32
    .line 33
    if-gtz v1, :cond_2

    .line 34
    .line 35
    :goto_1
    move-wide/from16 v16, v3

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 39
    .line 40
    .line 41
    move-result-wide v1

    .line 42
    iget-wide v3, v0, Lcom/transsion/shorttv/ui/adapter/provider/m;->m:J

    .line 43
    .line 44
    sub-long v3, v1, v3

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :goto_2
    iget-object v1, v0, Lcom/transsion/shorttv/ui/adapter/provider/m;->j:Lcom/transsion/shorttv/ui/adapter/ShortTVBannerAdapter;

    .line 48
    .line 49
    if-eqz v1, :cond_6

    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/transsion/shorttv/ui/adapter/ShortTVBannerAdapter;->getData()Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    if-eqz v1, :cond_6

    .line 56
    .line 57
    iget v2, v0, Lcom/transsion/shorttv/ui/adapter/provider/m;->l:I

    .line 58
    .line 59
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Lcom/transsion/shorttv/bean/BannerData;

    .line 64
    .line 65
    if-eqz v1, :cond_6

    .line 66
    .line 67
    invoke-direct/range {p0 .. p0}, Lcom/transsion/shorttv/ui/adapter/provider/m;->L()Lcom/transsion/shorttv/utils/a;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    iget-object v6, v0, Lcom/transsion/shorttv/ui/adapter/provider/m;->f:Ljava/lang/String;

    .line 72
    .line 73
    sget-object v2, Lcom/transsion/shorttv/bean/ShortTvItemType;->BANNER:Lcom/transsion/shorttv/bean/ShortTvItemType;

    .line 74
    .line 75
    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/ShortTvItemType;->getValue()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v8

    .line 79
    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/BannerData;->getSubjectId()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v9

    .line 83
    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/BannerData;->getOps()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    const/4 v4, 0x0

    .line 88
    if-nez v3, :cond_4

    .line 89
    .line 90
    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/BannerData;->getSubject()Lcom/transsion/shorttv/bean/Subject;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    if-eqz v3, :cond_3

    .line 95
    .line 96
    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/Subject;->getOps()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    goto :goto_3

    .line 101
    :cond_3
    move-object v3, v4

    .line 102
    :goto_3
    if-nez v3, :cond_4

    .line 103
    .line 104
    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/ShortTvItemType;->getValue()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    move-object v11, v2

    .line 109
    goto :goto_4

    .line 110
    :cond_4
    move-object v11, v3

    .line 111
    :goto_4
    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/BannerData;->getHasResource()Ljava/lang/Boolean;

    .line 112
    .line 113
    .line 114
    move-result-object v12

    .line 115
    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/BannerData;->getDeepLink()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v13

    .line 119
    iget v2, v0, Lcom/transsion/shorttv/ui/adapter/provider/m;->l:I

    .line 120
    .line 121
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    .line 123
    .line 124
    move-result-object v14

    .line 125
    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/BannerData;->getImage()Lcom/transsion/shorttv/bean/Image;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    if-eqz v2, :cond_5

    .line 130
    .line 131
    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/Image;->getUrl()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    move-object v15, v2

    .line 136
    goto :goto_5

    .line 137
    :cond_5
    move-object v15, v4

    .line 138
    :goto_5
    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/BannerData;->getBuiltIn()Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 143
    .line 144
    .line 145
    move-result-object v18

    .line 146
    const/16 v20, 0x1010

    .line 147
    .line 148
    const/16 v21, 0x0

    .line 149
    .line 150
    const-string v7, "opt"

    .line 151
    .line 152
    const/4 v10, 0x0

    .line 153
    const/16 v19, 0x0

    .line 154
    .line 155
    invoke-static/range {v5 .. v21}, Lcom/transsion/shorttv/utils/a;->b(Lcom/transsion/shorttv/utils/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;JLjava/lang/Boolean;Ljava/lang/String;ILjava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    :cond_6
    :goto_6
    return-void
.end method

.method private final N(ILcom/transsion/shorttv/bean/BannerData;)V
    .locals 18

    .line 1
    invoke-direct/range {p0 .. p0}, Lcom/transsion/shorttv/ui/adapter/provider/m;->L()Lcom/transsion/shorttv/utils/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    move-object/from16 v15, p0

    .line 6
    .line 7
    iget-object v1, v15, Lcom/transsion/shorttv/ui/adapter/provider/m;->f:Ljava/lang/String;

    .line 8
    .line 9
    sget-object v16, Lcom/transsion/shorttv/bean/ShortTvItemType;->BANNER:Lcom/transsion/shorttv/bean/ShortTvItemType;

    .line 10
    .line 11
    invoke-virtual/range {v16 .. v16}, Lcom/transsion/shorttv/bean/ShortTvItemType;->getValue()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv/bean/BannerData;->getSubjectId()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv/bean/BannerData;->getHasResource()Ljava/lang/Boolean;

    .line 20
    .line 21
    .line 22
    move-result-object v7

    .line 23
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv/bean/BannerData;->getDeepLink()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v9

    .line 27
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v10

    .line 31
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv/bean/BannerData;->getImage()Lcom/transsion/shorttv/bean/Image;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/Image;->getUrl()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    :goto_0
    move-object v11, v2

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    const/4 v2, 0x0

    .line 44
    goto :goto_0

    .line 45
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv/bean/BannerData;->getBuiltIn()Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 50
    .line 51
    .line 52
    move-result-object v12

    .line 53
    const/16 v14, 0x10b0

    .line 54
    .line 55
    const/16 v17, 0x0

    .line 56
    .line 57
    const-string v2, "opt"

    .line 58
    .line 59
    const/4 v5, 0x0

    .line 60
    const/4 v6, 0x0

    .line 61
    const/4 v8, 0x0

    .line 62
    const/4 v13, 0x0

    .line 63
    move-object/from16 v15, v17

    .line 64
    .line 65
    invoke-static/range {v0 .. v15}, Lcom/transsion/shorttv/utils/a;->d(Lcom/transsion/shorttv/utils/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;ILjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv/bean/BannerData;->getDeepLink()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    if-eqz v0, :cond_1

    .line 73
    .line 74
    sget-object v1, Ldr/a;->a:Ldr/a;

    .line 75
    .line 76
    invoke-virtual/range {v16 .. v16}, Lcom/transsion/shorttv/bean/ShortTvItemType;->getValue()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    new-instance v3, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v0, "&ops="

    .line 89
    .line 90
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v1, v0}, Ldr/a;->a(Landroid/net/Uri;)Landroid/net/Uri;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    if-eqz v0, :cond_1

    .line 109
    .line 110
    invoke-static {v0}, Lhr/c;->j(Landroid/net/Uri;)V

    .line 111
    .line 112
    .line 113
    :cond_1
    return-void
.end method

.method private final O(Landroid/view/View;IIF)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/adapter/provider/m;->j:Lcom/transsion/shorttv/ui/adapter/ShortTVBannerAdapter;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/transsion/shorttv/ui/adapter/ShortTVBannerAdapter;->getData()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/transsion/shorttv/bean/BannerData;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v0, v1

    .line 20
    :goto_0
    iget-object v2, p0, Lcom/transsion/shorttv/ui/adapter/provider/m;->j:Lcom/transsion/shorttv/ui/adapter/ShortTVBannerAdapter;

    .line 21
    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/transsion/shorttv/ui/adapter/ShortTVBannerAdapter;->getData()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Lcom/transsion/shorttv/bean/BannerData;

    .line 35
    .line 36
    :cond_1
    if-eqz v0, :cond_3

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/BannerData;->getImage()Lcom/transsion/shorttv/bean/Image;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/Image;->getAverageHueDark()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    if-eqz v1, :cond_3

    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/BannerData;->getImage()Lcom/transsion/shorttv/bean/Image;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    if-eqz v1, :cond_3

    .line 57
    .line 58
    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/Image;->getAverageHueDark()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    if-eqz v1, :cond_3

    .line 63
    .line 64
    if-ne p2, p3, :cond_2

    .line 65
    .line 66
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    goto :goto_1

    .line 71
    :cond_2
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    move-result p3

    .line 79
    invoke-static {p4, p2, p3}, Lwy/a;->a(FII)I

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    :goto_1
    const/4 p3, 0x0

    .line 84
    filled-new-array {p2, p3}, [I

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    new-instance p3, Landroid/graphics/drawable/GradientDrawable;

    .line 89
    .line 90
    sget-object p4, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 91
    .line 92
    invoke-direct {p3, p4, p2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, p3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 96
    .line 97
    .line 98
    :cond_3
    return-void
.end method

.method public static synthetic y(Lcom/transsion/shorttv/ui/adapter/provider/m;)Lcom/transsion/shorttv/utils/a;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/shorttv/ui/adapter/provider/m;->H(Lcom/transsion/shorttv/ui/adapter/provider/m;)Lcom/transsion/shorttv/utils/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic z(Lcom/transsion/shorttv/ui/adapter/provider/m;Landroid/view/View;ILcom/transsion/shorttv/bean/BannerData;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/shorttv/ui/adapter/provider/m;->J(Lcom/transsion/shorttv/ui/adapter/provider/m;Landroid/view/View;ILcom/transsion/shorttv/bean/BannerData;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public I(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv/bean/OperateItem;)V
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
    invoke-virtual {p2}, Lcom/transsion/shorttv/bean/OperateItem;->getBanner()Lcom/transsion/shorttv/bean/BannerBean;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    if-eqz p2, :cond_4

    .line 16
    .line 17
    invoke-virtual {p2}, Lcom/transsion/shorttv/bean/BannerBean;->getBanners()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    if-nez p2, :cond_0

    .line 22
    .line 23
    goto/16 :goto_3

    .line 24
    .line 25
    :cond_0
    sget v0, Lcom/transsion/shorttv/R$id;->v_banner_bg:I

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sget v1, Lcom/transsion/shorttv/R$id;->v_top_space:I

    .line 32
    .line 33
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    sget v1, Lcom/transsion/shorttv/R$id;->v_bar_space:I

    .line 37
    .line 38
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    if-eqz v2, :cond_3

    .line 47
    .line 48
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 49
    .line 50
    iget v3, p0, Lcom/transsion/shorttv/ui/adapter/provider/m;->i:I

    .line 51
    .line 52
    iget-boolean v4, p0, Lcom/transsion/shorttv/ui/adapter/provider/m;->h:Z

    .line 53
    .line 54
    if-eqz v4, :cond_1

    .line 55
    .line 56
    const/16 v4, 0x32

    .line 57
    .line 58
    :goto_0
    invoke-static {v4}, Lcr/a;->a(I)I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    const/16 v4, 0xa

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :goto_1
    add-int/2addr v3, v4

    .line 67
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 68
    .line 69
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    .line 71
    .line 72
    sget v1, Lcom/transsion/shorttv/R$id;->banner:I

    .line 73
    .line 74
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    check-cast p1, Lcom/transsion/shorttv/ui/widget/ShortTVBannerView;

    .line 79
    .line 80
    new-instance v1, Lcom/transsion/shorttv/ui/adapter/ShortTVBannerAdapter;

    .line 81
    .line 82
    invoke-direct {v1}, Lcom/transsion/shorttv/ui/adapter/ShortTVBannerAdapter;-><init>()V

    .line 83
    .line 84
    .line 85
    new-instance v2, Lcom/transsion/shorttv/ui/adapter/provider/j;

    .line 86
    .line 87
    invoke-direct {v2, p0}, Lcom/transsion/shorttv/ui/adapter/provider/j;-><init>(Lcom/transsion/shorttv/ui/adapter/provider/m;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v2}, Lcom/transsion/shorttv/ui/adapter/ShortTVBannerAdapter;->k(Lkotlin/jvm/functions/Function3;)V

    .line 91
    .line 92
    .line 93
    const-wide/16 v2, 0xfa0

    .line 94
    .line 95
    invoke-virtual {p1, v2, v3}, Lcom/to/aboomy/pager2banner/Banner;->setAutoTurningTime(J)Lcom/to/aboomy/pager2banner/Banner;

    .line 96
    .line 97
    .line 98
    const-wide/16 v2, 0x3e8

    .line 99
    .line 100
    invoke-virtual {p1, v2, v3}, Lcom/to/aboomy/pager2banner/Banner;->setPagerScrollDuration(J)Lcom/to/aboomy/pager2banner/Banner;

    .line 101
    .line 102
    .line 103
    iget-boolean v2, p0, Lcom/transsion/shorttv/ui/adapter/provider/m;->g:Z

    .line 104
    .line 105
    if-eqz v2, :cond_2

    .line 106
    .line 107
    const/4 v2, 0x3

    .line 108
    goto :goto_2

    .line 109
    :cond_2
    const/4 v2, 0x1

    .line 110
    :goto_2
    int-to-float v2, v2

    .line 111
    const/high16 v3, 0x42300000    # 44.0f

    .line 112
    .line 113
    mul-float/2addr v2, v3

    .line 114
    invoke-static {v2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    const/high16 v3, 0x41800000    # 16.0f

    .line 119
    .line 120
    invoke-static {v3}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    invoke-virtual {p1, v2, v3}, Lcom/to/aboomy/pager2banner/Banner;->setPageMargin(II)Lcom/to/aboomy/pager2banner/Banner;

    .line 125
    .line 126
    .line 127
    new-instance v2, Lcom/to/aboomy/pager2banner/b;

    .line 128
    .line 129
    invoke-direct {v2}, Lcom/to/aboomy/pager2banner/b;-><init>()V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, v2}, Lcom/to/aboomy/pager2banner/Banner;->addPageTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)Lcom/to/aboomy/pager2banner/Banner;

    .line 133
    .line 134
    .line 135
    new-instance v2, Lcom/transsion/shorttv/ui/adapter/provider/m$a;

    .line 136
    .line 137
    invoke-direct {v2, p0, v0}, Lcom/transsion/shorttv/ui/adapter/provider/m$a;-><init>(Lcom/transsion/shorttv/ui/adapter/provider/m;Landroid/view/View;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1, v2}, Lcom/to/aboomy/pager2banner/Banner;->setOuterPageChangeListener(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)Lcom/to/aboomy/pager2banner/Banner;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1, v1}, Lcom/to/aboomy/pager2banner/Banner;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 144
    .line 145
    .line 146
    new-instance v2, Ljava/util/ArrayList;

    .line 147
    .line 148
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .line 150
    .line 151
    check-cast p2, Ljava/util/Collection;

    .line 152
    .line 153
    invoke-interface {v2, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1, v2}, Lcom/transsion/shorttv/ui/adapter/ShortTVBannerAdapter;->setData(Ljava/util/List;)V

    .line 157
    .line 158
    .line 159
    new-instance p2, Lcom/transsion/shorttv/ui/adapter/provider/k;

    .line 160
    .line 161
    invoke-direct {p2, p0, v0}, Lcom/transsion/shorttv/ui/adapter/provider/k;-><init>(Lcom/transsion/shorttv/ui/adapter/provider/m;Landroid/view/View;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 165
    .line 166
    .line 167
    return-void

    .line 168
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    .line 169
    .line 170
    const-string p2, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    .line 171
    .line 172
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    throw p1

    .line 176
    :cond_4
    :goto_3
    return-void
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/shorttv/bean/OperateItem;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/ui/adapter/provider/m;->I(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv/bean/OperateItem;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public l()I
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/shorttv/bean/ShortTvItemType;->BANNER:Lcom/transsion/shorttv/bean/ShortTvItemType;

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
    sget v0, Lcom/transsion/shorttv/R$layout;->short_tv_view_banner:I

    .line 2
    .line 3
    return v0
.end method
