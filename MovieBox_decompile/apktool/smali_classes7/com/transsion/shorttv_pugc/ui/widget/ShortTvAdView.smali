.class public final Lcom/transsion/shorttv_pugc/ui/widget/ShortTvAdView;
.super Landroid/widget/LinearLayout;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u001b\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\u0008B#\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0004\u0010\u000bJ\u0017\u0010\u000f\u001a\u00020\u000e2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\r\u0010\u0011\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\r\u0010\u0013\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0013\u0010\u0012R\u0016\u0010\u0017\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/transsion/shorttv_pugc/ui/widget/ShortTvAdView;",
        "Landroid/widget/LinearLayout;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/util/AttributeSet;",
        "attrs",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "defStyleAttr",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "Lcom/transsion/shorttv_pugc/bean/ShortTVItem;",
        "item",
        "",
        "setData",
        "(Lcom/transsion/shorttv_pugc/bean/ShortTVItem;)V",
        "show",
        "()V",
        "hide",
        "",
        "a",
        "Z",
        "isNeedShowShortTvAdView",
        "Lqr/p0;",
        "b",
        "Lqr/p0;",
        "bind",
        "shortTvLib_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private a:Z

.field private b:Lqr/p0;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/transsion/shorttv/R$layout;->short_tv_view_ad_layout:I

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 5
    invoke-static {p1}, Lqr/p0;->a(Landroid/view/View;)Lqr/p0;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvAdView;->b:Lqr/p0;

    .line 6
    sget p1, Lcom/transsion/shorttv/R$drawable;->view_ad_short_tv_bg:I

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    const/16 p1, 0x8

    .line 7
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/shorttv_pugc/bean/ShortTVItem;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvAdView;->b(Lcom/transsion/shorttv_pugc/bean/ShortTVItem;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final b(Lcom/transsion/shorttv_pugc/bean/ShortTVItem;Landroid/view/View;)V
    .locals 2

    .line 1
    sget-object p1, Lqi/h;->a:Lqi/h;

    .line 2
    .line 3
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "short_tv_ad_btn"

    .line 9
    .line 10
    invoke-virtual {p1, v1, v0}, Lqi/h;->o(Ljava/lang/String;Ljava/util/Map;)V

    .line 11
    .line 12
    .line 13
    sget-object p1, Lcom/transsion/ad/strategy/b;->a:Lcom/transsion/ad/strategy/b;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/transsion/shorttv_pugc/bean/ShortTVItem;->getLink()Lcom/transsion/shorttv_pugc/bean/Link;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/bean/Link;->getDeeplink()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move-object v0, v1

    .line 28
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/shorttv_pugc/bean/ShortTVItem;->getLink()Lcom/transsion/shorttv_pugc/bean/Link;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    if-eqz p0, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/transsion/shorttv_pugc/bean/Link;->getUrl()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    move-object p0, v1

    .line 40
    :goto_1
    invoke-virtual {p1, v0, p0, v1}, Lcom/transsion/ad/strategy/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ad/monopoly/model/AdPlans;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public final hide()V
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setData(Lcom/transsion/shorttv_pugc/bean/ShortTVItem;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv_pugc/bean/ShortTVItem;->getLink()Lcom/transsion/shorttv_pugc/bean/Link;

    .line 11
    .line 12
    .line 13
    move-result-object v4

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v4, v3

    .line 16
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v6, "ShortTvAdView --> setData() --> link = "

    .line 22
    .line 23
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    const-string v5, "ShortTvAdView"

    .line 34
    .line 35
    const/4 v6, 0x0

    .line 36
    invoke-virtual {v2, v5, v4, v6}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 37
    .line 38
    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv_pugc/bean/ShortTVItem;->getLink()Lcom/transsion/shorttv_pugc/bean/Link;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    move-object v2, v3

    .line 47
    :goto_1
    if-nez v2, :cond_2

    .line 48
    .line 49
    iput-boolean v6, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvAdView;->a:Z

    .line 50
    .line 51
    const/16 v1, 0x8

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_2
    const/4 v2, 0x1

    .line 58
    iput-boolean v2, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvAdView;->a:Z

    .line 59
    .line 60
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 61
    .line 62
    .line 63
    iget-object v2, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvAdView;->b:Lqr/p0;

    .line 64
    .line 65
    if-eqz v2, :cond_4

    .line 66
    .line 67
    iget-object v2, v2, Lqr/p0;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 68
    .line 69
    if-eqz v2, :cond_4

    .line 70
    .line 71
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv_pugc/bean/ShortTVItem;->getLink()Lcom/transsion/shorttv_pugc/bean/Link;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    if-eqz v4, :cond_3

    .line 76
    .line 77
    invoke-virtual {v4}, Lcom/transsion/shorttv_pugc/bean/Link;->getTitle()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    goto :goto_2

    .line 82
    :cond_3
    move-object v4, v3

    .line 83
    :goto_2
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    .line 85
    .line 86
    :cond_4
    iget-object v2, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvAdView;->b:Lqr/p0;

    .line 87
    .line 88
    if-eqz v2, :cond_6

    .line 89
    .line 90
    iget-object v2, v2, Lqr/p0;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 91
    .line 92
    if-eqz v2, :cond_6

    .line 93
    .line 94
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv_pugc/bean/ShortTVItem;->getLink()Lcom/transsion/shorttv_pugc/bean/Link;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    if-eqz v4, :cond_5

    .line 99
    .line 100
    invoke-virtual {v4}, Lcom/transsion/shorttv_pugc/bean/Link;->getBtn()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    :cond_5
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    .line 106
    .line 107
    :cond_6
    iget-object v2, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvAdView;->b:Lqr/p0;

    .line 108
    .line 109
    if-eqz v2, :cond_7

    .line 110
    .line 111
    iget-object v2, v2, Lqr/p0;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 112
    .line 113
    if-eqz v2, :cond_7

    .line 114
    .line 115
    new-instance v3, Lcom/transsion/shorttv_pugc/ui/widget/g;

    .line 116
    .line 117
    invoke-direct {v3, v1}, Lcom/transsion/shorttv_pugc/ui/widget/g;-><init>(Lcom/transsion/shorttv_pugc/bean/ShortTVItem;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    .line 122
    .line 123
    :cond_7
    iget-object v2, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvAdView;->b:Lqr/p0;

    .line 124
    .line 125
    if-eqz v2, :cond_a

    .line 126
    .line 127
    iget-object v5, v2, Lqr/p0;->b:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 128
    .line 129
    if-eqz v5, :cond_a

    .line 130
    .line 131
    sget-object v3, Lis/b;->a:Lis/b$a;

    .line 132
    .line 133
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    const-string v2, "getContext(...)"

    .line 138
    .line 139
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv_pugc/bean/ShortTVItem;->getLink()Lcom/transsion/shorttv_pugc/bean/Link;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    if-eqz v1, :cond_9

    .line 147
    .line 148
    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/bean/Link;->getIcon()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    if-nez v1, :cond_8

    .line 153
    .line 154
    goto :goto_4

    .line 155
    :cond_8
    :goto_3
    move-object v6, v1

    .line 156
    goto :goto_5

    .line 157
    :cond_9
    :goto_4
    const-string v1, ""

    .line 158
    .line 159
    goto :goto_3

    .line 160
    :goto_5
    const/high16 v1, 0x41e00000    # 28.0f

    .line 161
    .line 162
    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 163
    .line 164
    .line 165
    move-result v7

    .line 166
    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 167
    .line 168
    .line 169
    move-result v8

    .line 170
    const/16 v16, 0xfe0

    .line 171
    .line 172
    const/16 v17, 0x0

    .line 173
    .line 174
    const/4 v9, 0x0

    .line 175
    const/4 v10, 0x0

    .line 176
    const/4 v11, 0x0

    .line 177
    const/4 v12, 0x0

    .line 178
    const/4 v13, 0x0

    .line 179
    const/4 v14, 0x0

    .line 180
    const/4 v15, 0x0

    .line 181
    invoke-static/range {v3 .. v17}, Lis/b$a;->n(Lis/b$a;Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IIZZZZZZIILjava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    :cond_a
    return-void
.end method

.method public final show()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvAdView;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method
