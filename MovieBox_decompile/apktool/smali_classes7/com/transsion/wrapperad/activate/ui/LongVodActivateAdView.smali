.class public final Lcom/transsion/wrapperad/activate/ui/LongVodActivateAdView;
.super Landroid/widget/FrameLayout;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u001d\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\r\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\'\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0011\u0010\u0012R\u0018\u0010\u0010\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u00158\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/transsion/wrapperad/activate/ui/LongVodActivateAdView;",
        "Landroid/widget/FrameLayout;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "destroy",
        "()V",
        "Lcom/transsion/ad/ps/activate/PsActivateBean;",
        "activateAd",
        "Lcom/transsion/wrapperad/activate/ui/LongVodActivateDialog;",
        "longVodActivateDialog",
        "Lnw/e;",
        "listener",
        "showAd",
        "(Lcom/transsion/ad/ps/activate/PsActivateBean;Lcom/transsion/wrapperad/activate/ui/LongVodActivateDialog;Lnw/e;)V",
        "a",
        "Lnw/e;",
        "",
        "b",
        "Ljava/util/List;",
        "activateList",
        "c",
        "Lcom/transsion/ad/ps/activate/PsActivateBean;",
        "clickActivateBean",
        "wrapperad_psRelease"
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
.field private a:Lnw/e;

.field private final b:Ljava/util/List;

.field private c:Lcom/transsion/ad/ps/activate/PsActivateBean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/transsion/wrapperad/activate/ui/LongVodActivateAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/wrapperad/activate/ui/LongVodActivateAdView;->b:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/wrapperad/activate/ui/LongVodActivateAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic a(Landroid/widget/TextView;Lcom/transsion/ad/ps/activate/PsActivateBean;Lnw/e;Lcom/transsion/wrapperad/activate/ui/LongVodActivateAdView;Lcom/transsion/wrapperad/activate/ui/LongVodActivateDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/transsion/wrapperad/activate/ui/LongVodActivateAdView;->d(Landroid/widget/TextView;Lcom/transsion/ad/ps/activate/PsActivateBean;Lnw/e;Lcom/transsion/wrapperad/activate/ui/LongVodActivateAdView;Lcom/transsion/wrapperad/activate/ui/LongVodActivateDialog;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Landroid/widget/TextView;Lcom/transsion/wrapperad/activate/ui/LongVodActivateAdView;Lcom/transsion/wrapperad/activate/ui/LongVodActivateDialog;Lnw/e;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/transsion/wrapperad/activate/ui/LongVodActivateAdView;->c(Landroid/widget/TextView;Lcom/transsion/wrapperad/activate/ui/LongVodActivateAdView;Lcom/transsion/wrapperad/activate/ui/LongVodActivateDialog;Lnw/e;Landroid/view/View;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final c(Landroid/widget/TextView;Lcom/transsion/wrapperad/activate/ui/LongVodActivateAdView;Lcom/transsion/wrapperad/activate/ui/LongVodActivateDialog;Lnw/e;Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .line 1
    sget-object p5, Lcom/transsion/ad/ps/activate/PSActivateManager;->a:Lcom/transsion/ad/ps/activate/PSActivateManager;

    .line 2
    .line 3
    invoke-virtual {p5}, Lcom/transsion/ad/ps/activate/PSActivateManager;->b()Lcom/transsion/ad/ps/activate/PsActivateBean;

    .line 4
    .line 5
    .line 6
    move-result-object p5

    .line 7
    if-eqz p5, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1, p5, p2, p3}, Lcom/transsion/wrapperad/activate/ui/LongVodActivateAdView;->showAd(Lcom/transsion/ad/ps/activate/PsActivateBean;Lcom/transsion/wrapperad/activate/ui/LongVodActivateDialog;Lnw/e;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    sget-object p1, Lwf/a;->a:Lwf/a$a;

    .line 14
    .line 15
    const/4 p2, 0x2

    .line 16
    const/4 p3, 0x0

    .line 17
    const-string p5, "LongVodActivateAdView --> showAd() --> \u6ca1\u6709\u5e7f\u544a\u4e86"

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-static {p1, p5, v0, p2, p3}, Lwf/a$a;->g(Lwf/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    const/16 p1, 0x8

    .line 24
    .line 25
    if-eqz p4, :cond_1

    .line 26
    .line 27
    sget p2, Lcom/transsion/wrapperad/R$id;->ivRefresh:I

    .line 28
    .line 29
    invoke-virtual {p4, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    check-cast p2, Landroid/widget/ImageView;

    .line 34
    .line 35
    if-eqz p2, :cond_1

    .line 36
    .line 37
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 41
    .line 42
    .line 43
    :goto_0
    return-void
.end method

.method private static final d(Landroid/widget/TextView;Lcom/transsion/ad/ps/activate/PsActivateBean;Lnw/e;Lcom/transsion/wrapperad/activate/ui/LongVodActivateAdView;Lcom/transsion/wrapperad/activate/ui/LongVodActivateDialog;Landroid/view/View;)V
    .locals 1

    .line 1
    sget-object p5, Lci/e;->a:Lci/e;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p1}, Lcom/transsion/ad/ps/activate/PsActivateBean;->getPackageName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p5, p0, v0}, Lci/e;->b(Landroid/content/Context;Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    invoke-interface {p2, p0}, Lnw/e;->a(Z)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    invoke-interface {p2, p0}, Lnw/e;->a(Z)V

    .line 24
    .line 25
    .line 26
    :goto_0
    iput-object p1, p3, Lcom/transsion/wrapperad/activate/ui/LongVodActivateAdView;->c:Lcom/transsion/ad/ps/activate/PsActivateBean;

    .line 27
    .line 28
    if-eqz p4, :cond_1

    .line 29
    .line 30
    const-string p0, "open"

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/transsion/ad/ps/activate/PsActivateBean;->getPackageName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p4, p0, p1}, Lcom/transsion/wrapperad/activate/ui/LongVodActivateDialog;->q0(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 0

    .line 1
    return-void
.end method

.method public final showAd(Lcom/transsion/ad/ps/activate/PsActivateBean;Lcom/transsion/wrapperad/activate/ui/LongVodActivateDialog;Lnw/e;)V
    .locals 9

    .line 1
    const-string v0, "activateAd"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "listener"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object p3, p0, Lcom/transsion/wrapperad/activate/ui/LongVodActivateAdView;->a:Lnw/e;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/transsion/wrapperad/activate/ui/LongVodActivateAdView;->b:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v2, "LongVodActivateAdView --> showAd() --> "

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const/4 v2, 0x0

    .line 38
    const/4 v3, 0x2

    .line 39
    const/4 v4, 0x0

    .line 40
    invoke-static {v0, v1, v2, v3, v4}, Lwf/a$a;->g(Lwf/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/transsion/ad/ps/activate/PsActivateBean;->getShowContent()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    sget v1, Lcom/transsion/wrapperad/R$layout;->long_vod_activate_ad_view_style_1_layout:I

    .line 62
    .line 63
    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    sget v1, Lcom/transsion/wrapperad/R$layout;->long_vod_activate_ad_view_style_2_layout:I

    .line 77
    .line 78
    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 86
    .line 87
    .line 88
    sget v1, Lcom/transsion/wrapperad/R$id;->activateAdImage:I

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    check-cast v1, Landroidx/appcompat/widget/AppCompatImageView;

    .line 95
    .line 96
    const-string v2, "getContext(...)"

    .line 97
    .line 98
    if-eqz v1, :cond_1

    .line 99
    .line 100
    sget-object v3, Lni/f;->a:Lni/f$a;

    .line 101
    .line 102
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v3, v4}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    invoke-virtual {p1}, Lcom/transsion/ad/ps/activate/PsActivateBean;->getShowContent()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    invoke-virtual {v3, v4}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    invoke-virtual {v3, v1}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 122
    .line 123
    .line 124
    :cond_1
    sget v1, Lcom/transsion/wrapperad/R$id;->activateAdIcon:I

    .line 125
    .line 126
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    check-cast v1, Landroidx/appcompat/widget/AppCompatImageView;

    .line 131
    .line 132
    if-eqz v1, :cond_2

    .line 133
    .line 134
    sget-object v3, Lni/f;->a:Lni/f$a;

    .line 135
    .line 136
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v3, v4}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    invoke-virtual {p1}, Lcom/transsion/ad/ps/activate/PsActivateBean;->getIconUrl()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    invoke-virtual {v2, v3}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    invoke-virtual {v2, v1}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 156
    .line 157
    .line 158
    :cond_2
    sget v1, Lcom/transsion/wrapperad/R$id;->activateAdTitle:I

    .line 159
    .line 160
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    check-cast v1, Landroid/widget/TextView;

    .line 165
    .line 166
    if-eqz v1, :cond_3

    .line 167
    .line 168
    invoke-virtual {p1}, Lcom/transsion/ad/ps/activate/PsActivateBean;->getAppName()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    .line 174
    .line 175
    :cond_3
    sget v1, Lcom/transsion/wrapperad/R$id;->activateAdDescription:I

    .line 176
    .line 177
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    check-cast v1, Landroid/widget/TextView;

    .line 182
    .line 183
    if-eqz v1, :cond_4

    .line 184
    .line 185
    invoke-virtual {p1}, Lcom/transsion/ad/ps/activate/PsActivateBean;->getSimpleDescription()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    .line 191
    .line 192
    :cond_4
    sget v1, Lcom/transsion/wrapperad/R$id;->tvTryMore:I

    .line 193
    .line 194
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    move-object v7, v1

    .line 199
    check-cast v7, Landroid/widget/TextView;

    .line 200
    .line 201
    if-eqz v7, :cond_5

    .line 202
    .line 203
    new-instance v8, Lnw/a;

    .line 204
    .line 205
    move-object v1, v8

    .line 206
    move-object v2, v7

    .line 207
    move-object v3, p0

    .line 208
    move-object v4, p2

    .line 209
    move-object v5, p3

    .line 210
    move-object v6, v0

    .line 211
    invoke-direct/range {v1 .. v6}, Lnw/a;-><init>(Landroid/widget/TextView;Lcom/transsion/wrapperad/activate/ui/LongVodActivateAdView;Lcom/transsion/wrapperad/activate/ui/LongVodActivateDialog;Lnw/e;Landroid/view/View;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    .line 216
    .line 217
    :cond_5
    sget v1, Lcom/transsion/wrapperad/R$id;->activateAdBtn:I

    .line 218
    .line 219
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    check-cast v0, Landroid/widget/TextView;

    .line 224
    .line 225
    if-eqz v0, :cond_6

    .line 226
    .line 227
    invoke-virtual {p1}, Lcom/transsion/ad/ps/activate/PsActivateBean;->getButtonText()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    .line 233
    .line 234
    new-instance v7, Lnw/b;

    .line 235
    .line 236
    move-object v1, v7

    .line 237
    move-object v2, v0

    .line 238
    move-object v3, p1

    .line 239
    move-object v4, p3

    .line 240
    move-object v5, p0

    .line 241
    move-object v6, p2

    .line 242
    invoke-direct/range {v1 .. v6}, Lnw/b;-><init>(Landroid/widget/TextView;Lcom/transsion/ad/ps/activate/PsActivateBean;Lnw/e;Lcom/transsion/wrapperad/activate/ui/LongVodActivateAdView;Lcom/transsion/wrapperad/activate/ui/LongVodActivateDialog;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v0, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    .line 247
    .line 248
    :cond_6
    return-void
.end method
