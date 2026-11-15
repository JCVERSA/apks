.class public Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity$a;
    }
.end annotation


# static fields
.field private static c:Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity$a;


# instance fields
.field private a:Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity;->b:I

    .line 6
    .line 7
    return-void
.end method

.method public static synthetic O(Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity;->W(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic P(Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity;->a0(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Q(Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity;->b0(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private R(Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 6

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance p1, Landroid/text/SpannableString;

    .line 8
    .line 9
    const-string v0, ""

    .line 10
    .line 11
    invoke-direct {p1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    return-object p1

    .line 15
    :cond_0
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity;->X(Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    new-instance v1, Landroid/text/SpannableString;

    .line 20
    .line 21
    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    :try_start_0
    new-instance v2, Landroid/text/style/AbsoluteSizeSpan;

    .line 25
    .line 26
    const/high16 v3, 0x41800000    # 16.0f

    .line 27
    .line 28
    invoke-static {v3}, Lcom/cloud/sdk/commonutil/util/h;->i(F)I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    invoke-direct {v2, v3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    .line 33
    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    const/16 v4, 0x21

    .line 37
    .line 38
    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 39
    .line 40
    .line 41
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    .line 42
    .line 43
    const-string v5, "#0F1A2F"

    .line 44
    .line 45
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    invoke-direct {v2, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 53
    .line 54
    .line 55
    new-instance v2, Landroid/text/style/AbsoluteSizeSpan;

    .line 56
    .line 57
    const/high16 v3, 0x41400000    # 12.0f

    .line 58
    .line 59
    invoke-static {v3}, Lcom/cloud/sdk/commonutil/util/h;->i(F)I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    invoke-direct {v2, v3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 71
    .line 72
    .line 73
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    .line 74
    .line 75
    const-string v3, "#6F7682"

    .line 76
    .line 77
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    invoke-virtual {v1, v2, v0, p1, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .line 90
    .line 91
    :catch_0
    return-object v1
.end method

.method private S(J)Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/text/DecimalFormat;

    .line 2
    .line 3
    const-string v1, "#.##"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/text/DecimalFormatSymbols;

    .line 9
    .line 10
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    .line 16
    .line 17
    .line 18
    const-wide/32 v1, 0x40000000

    .line 19
    .line 20
    .line 21
    cmp-long v1, p1, v1

    .line 22
    .line 23
    if-gtz v1, :cond_0

    .line 24
    .line 25
    long-to-float p1, p1

    .line 26
    const/high16 p2, 0x49800000    # 1048576.0f

    .line 27
    .line 28
    div-float/2addr p1, p2

    .line 29
    float-to-double p1, p1

    .line 30
    const-wide v1, 0x3f847ae147ae147bL    # 0.01

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->max(DD)D

    .line 36
    .line 37
    .line 38
    move-result-wide p1

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p1, p2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string p1, "MB"

    .line 52
    .line 53
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    return-object p1

    .line 61
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    long-to-float p1, p1

    .line 67
    const/high16 p2, 0x4e800000

    .line 68
    .line 69
    div-float/2addr p1, p2

    .line 70
    float-to-double p1, p1

    .line 71
    invoke-virtual {v0, p1, p2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string p1, "GB"

    .line 79
    .line 80
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    return-object p1

    .line 88
    :catch_0
    const-string p1, ""

    .line 89
    .line 90
    return-object p1
.end method

.method private U()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity;->a:Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget v0, Lcom/cloud/hisavana/sdk/R$id;->icon:I

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/widget/ImageView;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity;->a:Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;->getIconUrl()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x0

    .line 21
    const/16 v3, 0xd

    .line 22
    .line 23
    invoke-static {v1, v2, v3, v2, v0}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->o(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ILcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V

    .line 24
    .line 25
    .line 26
    sget v0, Lcom/cloud/hisavana/sdk/R$id;->name:I

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Landroid/widget/TextView;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity;->a:Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;->getName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    sget v0, Lcom/cloud/hisavana/sdk/R$id;->category_icon:I

    .line 44
    .line 45
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Landroid/widget/ImageView;

    .line 50
    .line 51
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity;->a:Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;

    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;->getCategoryIconUrl()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    const/16 v4, 0x8

    .line 62
    .line 63
    if-eqz v1, :cond_1

    .line 64
    .line 65
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity;->a:Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;

    .line 70
    .line 71
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;->getCategoryIconUrl()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-static {v1, v2, v3, v2, v0}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->o(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ILcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V

    .line 76
    .line 77
    .line 78
    :goto_0
    sget v0, Lcom/cloud/hisavana/sdk/R$id;->category:I

    .line 79
    .line 80
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Landroid/widget/TextView;

    .line 85
    .line 86
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity;->a:Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;

    .line 87
    .line 88
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;->getCategory()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    .line 94
    .line 95
    sget v0, Lcom/cloud/hisavana/sdk/R$id;->ratings:I

    .line 96
    .line 97
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    check-cast v0, Landroid/widget/TextView;

    .line 102
    .line 103
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity;->a:Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;

    .line 104
    .line 105
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;->getRatings()F

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    .line 115
    .line 116
    sget v0, Lcom/cloud/hisavana/sdk/R$id;->users:I

    .line 117
    .line 118
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    check-cast v0, Landroid/widget/TextView;

    .line 123
    .line 124
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity;->a:Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;

    .line 125
    .line 126
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;->getUsers()J

    .line 127
    .line 128
    .line 129
    move-result-wide v1

    .line 130
    invoke-direct {p0, v1, v2}, Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity;->Y(J)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-direct {p0, v1}, Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity;->R(Ljava/lang/String;)Landroid/text/SpannableString;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    .line 140
    .line 141
    sget v0, Lcom/cloud/hisavana/sdk/R$id;->size:I

    .line 142
    .line 143
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    check-cast v0, Landroid/widget/TextView;

    .line 148
    .line 149
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity;->a:Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;

    .line 150
    .line 151
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;->getSize()J

    .line 152
    .line 153
    .line 154
    move-result-wide v1

    .line 155
    invoke-direct {p0, v1, v2}, Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity;->S(J)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-direct {p0, v1}, Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity;->R(Ljava/lang/String;)Landroid/text/SpannableString;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    .line 165
    .line 166
    sget v0, Lcom/cloud/hisavana/sdk/R$id;->description:I

    .line 167
    .line 168
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    check-cast v0, Landroid/widget/TextView;

    .line 173
    .line 174
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity;->a:Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;

    .line 175
    .line 176
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;->getDescription()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    .line 186
    .line 187
    sget v0, Lcom/cloud/hisavana/sdk/R$id;->action_button:I

    .line 188
    .line 189
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    check-cast v0, Landroid/widget/Button;

    .line 194
    .line 195
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity;->a:Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;

    .line 196
    .line 197
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;->getActionName()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    .line 203
    .line 204
    new-instance v1, Lcom/cloud/hisavana/sdk/common/activity/j;

    .line 205
    .line 206
    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/common/activity/j;-><init>(Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    .line 211
    .line 212
    new-instance v0, Lcom/cloud/hisavana/sdk/common/activity/k;

    .line 213
    .line 214
    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/common/activity/k;-><init>(Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity;)V

    .line 215
    .line 216
    .line 217
    iget v1, p0, Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity;->b:I

    .line 218
    .line 219
    const/4 v2, 0x1

    .line 220
    const/4 v3, 0x0

    .line 221
    if-ne v1, v2, :cond_2

    .line 222
    .line 223
    goto :goto_1

    .line 224
    :cond_2
    move v2, v3

    .line 225
    :goto_1
    sget v1, Lcom/cloud/hisavana/sdk/R$id;->cancel_button:I

    .line 226
    .line 227
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    check-cast v1, Landroid/widget/ImageView;

    .line 232
    .line 233
    if-eqz v2, :cond_3

    .line 234
    .line 235
    move v5, v3

    .line 236
    goto :goto_2

    .line 237
    :cond_3
    move v5, v4

    .line 238
    :goto_2
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    .line 243
    .line 244
    sget v1, Lcom/cloud/hisavana/sdk/R$id;->cancel_button_bottom:I

    .line 245
    .line 246
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    if-eqz v2, :cond_4

    .line 251
    .line 252
    move v5, v4

    .line 253
    goto :goto_3

    .line 254
    :cond_4
    move v5, v3

    .line 255
    :goto_3
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    .line 260
    .line 261
    sget v0, Lcom/cloud/hisavana/sdk/R$id;->skip_button:I

    .line 262
    .line 263
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    if-eqz v2, :cond_5

    .line 268
    .line 269
    goto :goto_4

    .line 270
    :cond_5
    move v4, v3

    .line 271
    :goto_4
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 272
    .line 273
    .line 274
    new-instance v1, Lcom/cloud/hisavana/sdk/common/activity/l;

    .line 275
    .line 276
    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/common/activity/l;-><init>(Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    .line 281
    .line 282
    return-void
.end method

.method public static V(Landroid/content/Context;Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;ILcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity$a;)V
    .locals 2

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    :try_start_0
    sput-object p3, Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity;->c:Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity$a;

    .line 7
    .line 8
    new-instance p3, Landroid/content/Intent;

    .line 9
    .line 10
    const-class v0, Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity;

    .line 11
    .line 12
    invoke-direct {p3, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 13
    .line 14
    .line 15
    const/high16 v0, 0x10000000

    .line 16
    .line 17
    invoke-virtual {p3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    new-instance v0, Landroid/os/Bundle;

    .line 21
    .line 22
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v1, "mini_app_info_key"

    .line 26
    .line 27
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    const-string p1, "style"

    .line 34
    .line 35
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catch_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    const-string p1, "MiniApp"

    .line 47
    .line 48
    const-string p2, "Failed to start mini app guide."

    .line 49
    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic W(Landroid/view/View;)V
    .locals 0

    .line 1
    sget-object p1, Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity;->c:Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity$a;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity$a;->b()V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    sput-object p1, Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity;->c:Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity$a;

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private X(Ljava/lang/String;)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    .line 13
    .line 14
    .line 15
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    const/16 v2, 0x2e

    .line 19
    .line 20
    if-eq v1, v2, :cond_0

    .line 21
    .line 22
    return v0

    .line 23
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_0
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    return p1
.end method

.method private Y(J)Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/text/DecimalFormat;

    .line 2
    .line 3
    const-string v1, "#.#"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/text/DecimalFormatSymbols;

    .line 9
    .line 10
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    .line 16
    .line 17
    .line 18
    const-wide/16 v1, 0x3e8

    .line 19
    .line 20
    cmp-long v1, p1, v1

    .line 21
    .line 22
    if-gez v1, :cond_0

    .line 23
    .line 24
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1

    .line 29
    :cond_0
    const-wide/32 v1, 0xf4240

    .line 30
    .line 31
    .line 32
    cmp-long v1, p1, v1

    .line 33
    .line 34
    if-gez v1, :cond_1

    .line 35
    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    long-to-float p1, p1

    .line 42
    const/high16 p2, 0x447a0000    # 1000.0f

    .line 43
    .line 44
    div-float/2addr p1, p2

    .line 45
    float-to-double p1, p1

    .line 46
    invoke-virtual {v0, p1, p2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p1, "K"

    .line 54
    .line 55
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    return-object p1

    .line 63
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    long-to-float p1, p1

    .line 69
    const p2, 0x49742400    # 1000000.0f

    .line 70
    .line 71
    .line 72
    div-float/2addr p1, p2

    .line 73
    float-to-double p1, p1

    .line 74
    invoke-virtual {v0, p1, p2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string p1, "M"

    .line 82
    .line 83
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    return-object p1

    .line 91
    :catch_0
    const-string p1, ""

    .line 92
    .line 93
    return-object p1
.end method

.method private Z()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string v1, "mini_app_info_key"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    instance-of v2, v1, Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    check-cast v1, Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;

    .line 20
    .line 21
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity;->a:Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;

    .line 22
    .line 23
    const-string v1, "style"

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iput v0, p0, Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity;->b:I

    .line 31
    .line 32
    return-void
.end method

.method private synthetic a0(Landroid/view/View;)V
    .locals 0

    .line 1
    sget-object p1, Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity;->c:Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity$a;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity$a;->c()V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    sput-object p1, Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity;->c:Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity$a;

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private synthetic b0(Landroid/view/View;)V
    .locals 0

    .line 1
    sget-object p1, Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity;->c:Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity$a;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity$a;->a()V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    sput-object p1, Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity;->c:Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity$a;

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget p1, Lcom/cloud/hisavana/sdk/R$layout;->activity_mini_app_popup:I

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity;->Z()V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity;->U()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity;->c:Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity$a;->c()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    sput-object v0, Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity;->c:Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity$a;

    .line 10
    .line 11
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 12
    .line 13
    .line 14
    return-void
.end method
