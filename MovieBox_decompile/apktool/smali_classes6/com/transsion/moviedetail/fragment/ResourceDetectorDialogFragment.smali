.class public final Lcom/transsion/moviedetail/fragment/ResourceDetectorDialogFragment;
.super Lcom/transsion/baseui/dialog/BaseDialog;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/moviedetail/fragment/ResourceDetectorDialogFragment$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u0000 \"2\u00020\u0001:\u0001#B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0017\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0019\u0010\u0013\u001a\u00020\t2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0019\u0010\u0016\u001a\u00020\u00152\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0003J!\u0010\u0019\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aR\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\u0018\u0010!\u001a\u0004\u0018\u00010\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 \u00a8\u0006$"
    }
    d2 = {
        "Lcom/transsion/moviedetail/fragment/ResourceDetectorDialogFragment;",
        "Lcom/transsion/baseui/dialog/BaseDialog;",
        "<init>",
        "()V",
        "",
        "p0",
        "()I",
        "Landroid/view/View;",
        "view",
        "",
        "r0",
        "(Landroid/view/View;)V",
        "",
        "original",
        "Landroid/text/SpannableString;",
        "q0",
        "(Ljava/lang/String;)Landroid/text/SpannableString;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/app/Dialog;",
        "onCreateDialog",
        "(Landroid/os/Bundle;)Landroid/app/Dialog;",
        "onResume",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Lcom/transsion/moviedetailapi/bean/ResourceDetectors;",
        "c",
        "Lcom/transsion/moviedetailapi/bean/ResourceDetectors;",
        "mResourceDetector",
        "d",
        "Ljava/lang/String;",
        "mTitle",
        "e",
        "a",
        "MovieDetail_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final e:Lcom/transsion/moviedetail/fragment/ResourceDetectorDialogFragment$a;


# instance fields
.field private c:Lcom/transsion/moviedetailapi/bean/ResourceDetectors;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/moviedetail/fragment/ResourceDetectorDialogFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/moviedetail/fragment/ResourceDetectorDialogFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/moviedetail/fragment/ResourceDetectorDialogFragment;->e:Lcom/transsion/moviedetail/fragment/ResourceDetectorDialogFragment$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget v0, Lcom/transsion/moviedetail/R$layout;->dialog_resource_detector_layout:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/transsion/baseui/dialog/BaseDialog;-><init>(I)V

    .line 4
    .line 5
    .line 6
    const-string v0, ""

    .line 7
    .line 8
    iput-object v0, p0, Lcom/transsion/moviedetail/fragment/ResourceDetectorDialogFragment;->d:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method public static synthetic n0(Lcom/transsion/moviedetail/fragment/ResourceDetectorDialogFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/moviedetail/fragment/ResourceDetectorDialogFragment;->t0(Lcom/transsion/moviedetail/fragment/ResourceDetectorDialogFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic o0(Lcom/transsion/moviedetail/fragment/ResourceDetectorDialogFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/moviedetail/fragment/ResourceDetectorDialogFragment;->s0(Lcom/transsion/moviedetail/fragment/ResourceDetectorDialogFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final p0()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 10
    .line 11
    div-int/lit8 v1, v0, 0x3

    .line 12
    .line 13
    sub-int/2addr v0, v1

    .line 14
    return v0
.end method

.method private final q0(Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 11

    .line 1
    new-instance v0, Landroid/text/SpannableString;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    const/4 v2, 0x0

    .line 8
    const-string v3, "etc"

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    invoke-static {p1, v3, v4, v1, v2}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/16 v2, 0x11

    .line 16
    .line 17
    const-string v3, "#1FBDFF"

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    :try_start_0
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 22
    .line 23
    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    .line 24
    .line 25
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-direct {p1, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-virtual {v0, p1, v4, v1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 37
    .line 38
    .line 39
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 40
    .line 41
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 47
    .line 48
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    :goto_0
    return-object v0

    .line 56
    :cond_0
    :try_start_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 57
    .line 58
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    .line 59
    .line 60
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    invoke-direct {v1, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 65
    .line 66
    .line 67
    const-string v6, "etc"

    .line 68
    .line 69
    const/4 v9, 0x6

    .line 70
    const/4 v10, 0x0

    .line 71
    const/4 v7, 0x0

    .line 72
    const/4 v8, 0x0

    .line 73
    move-object v5, p1

    .line 74
    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->o0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    invoke-virtual {v0, v1, v4, p1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 79
    .line 80
    .line 81
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 82
    .line 83
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :catchall_1
    move-exception p1

    .line 88
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 89
    .line 90
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    :goto_1
    return-object v0
.end method

.method private final r0(Landroid/view/View;)V
    .locals 9

    .line 1
    sget v0, Lcom/transsion/moviedetail/R$id;->ivClose:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/ImageView;

    .line 8
    .line 9
    new-instance v1, Lcom/transsion/moviedetail/fragment/c0;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/transsion/moviedetail/fragment/c0;-><init>(Lcom/transsion/moviedetail/fragment/ResourceDetectorDialogFragment;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    .line 16
    .line 17
    sget v0, Lcom/transsion/moviedetail/R$id;->tvTitle:I

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroid/widget/TextView;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/transsion/moviedetail/fragment/ResourceDetectorDialogFragment;->d:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    sget v0, Lcom/transsion/moviedetail/R$id;->tvUrl:I

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroid/widget/TextView;

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    iget-object v2, p0, Lcom/transsion/moviedetail/fragment/ResourceDetectorDialogFragment;->c:Lcom/transsion/moviedetailapi/bean/ResourceDetectors;

    .line 42
    .line 43
    if-eqz v2, :cond_0

    .line 44
    .line 45
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;->getResourceLink()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    move-object v2, v1

    .line 51
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    .line 53
    .line 54
    :cond_1
    sget v0, Lcom/transsion/moviedetail/R$id;->tvSourceData:I

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Landroid/widget/TextView;

    .line 61
    .line 62
    const-string v2, ""

    .line 63
    .line 64
    if-eqz v0, :cond_4

    .line 65
    .line 66
    iget-object v3, p0, Lcom/transsion/moviedetail/fragment/ResourceDetectorDialogFragment;->c:Lcom/transsion/moviedetailapi/bean/ResourceDetectors;

    .line 67
    .line 68
    if-eqz v3, :cond_2

    .line 69
    .line 70
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;->getSource()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    if-nez v3, :cond_3

    .line 75
    .line 76
    :cond_2
    move-object v3, v2

    .line 77
    :cond_3
    invoke-direct {p0, v3}, Lcom/transsion/moviedetail/fragment/ResourceDetectorDialogFragment;->q0(Ljava/lang/String;)Landroid/text/SpannableString;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    .line 83
    .line 84
    new-instance v3, Lcom/transsion/moviedetail/fragment/d0;

    .line 85
    .line 86
    invoke-direct {v3, p0}, Lcom/transsion/moviedetail/fragment/d0;-><init>(Lcom/transsion/moviedetail/fragment/ResourceDetectorDialogFragment;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    .line 91
    .line 92
    :cond_4
    sget v0, Lcom/transsion/moviedetail/R$id;->tvSizeData:I

    .line 93
    .line 94
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    check-cast v0, Landroid/widget/TextView;

    .line 99
    .line 100
    const-wide/16 v3, 0x0

    .line 101
    .line 102
    if-eqz v0, :cond_8

    .line 103
    .line 104
    iget-object v5, p0, Lcom/transsion/moviedetail/fragment/ResourceDetectorDialogFragment;->c:Lcom/transsion/moviedetailapi/bean/ResourceDetectors;

    .line 105
    .line 106
    if-eqz v5, :cond_7

    .line 107
    .line 108
    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;->getType()Ljava/lang/Integer;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    if-nez v5, :cond_5

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_5
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 116
    .line 117
    .line 118
    move-result v5

    .line 119
    if-nez v5, :cond_7

    .line 120
    .line 121
    iget-object v5, p0, Lcom/transsion/moviedetail/fragment/ResourceDetectorDialogFragment;->c:Lcom/transsion/moviedetailapi/bean/ResourceDetectors;

    .line 122
    .line 123
    if-eqz v5, :cond_6

    .line 124
    .line 125
    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;->getTotalSize()Ljava/lang/Long;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    if-eqz v5, :cond_6

    .line 130
    .line 131
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 132
    .line 133
    .line 134
    move-result-wide v5

    .line 135
    goto :goto_2

    .line 136
    :cond_6
    move-wide v5, v3

    .line 137
    goto :goto_2

    .line 138
    :cond_7
    :goto_1
    iget-object v5, p0, Lcom/transsion/moviedetail/fragment/ResourceDetectorDialogFragment;->c:Lcom/transsion/moviedetailapi/bean/ResourceDetectors;

    .line 139
    .line 140
    if-eqz v5, :cond_6

    .line 141
    .line 142
    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;->getFirstSize()Ljava/lang/Long;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    if-eqz v5, :cond_6

    .line 147
    .line 148
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 149
    .line 150
    .line 151
    move-result-wide v5

    .line 152
    :goto_2
    const/4 v7, 0x1

    .line 153
    invoke-static {v5, v6, v7}, Lzg/b;->a(JI)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v5

    .line 157
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    .line 159
    .line 160
    :cond_8
    sget v0, Lcom/transsion/moviedetail/R$id;->tvDateData:I

    .line 161
    .line 162
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    check-cast v0, Landroid/widget/TextView;

    .line 167
    .line 168
    if-eqz v0, :cond_a

    .line 169
    .line 170
    :try_start_0
    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 171
    .line 172
    iget-object v5, p0, Lcom/transsion/moviedetail/fragment/ResourceDetectorDialogFragment;->c:Lcom/transsion/moviedetailapi/bean/ResourceDetectors;

    .line 173
    .line 174
    if-eqz v5, :cond_9

    .line 175
    .line 176
    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;->getUploadTime()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v5

    .line 180
    if-eqz v5, :cond_9

    .line 181
    .line 182
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 183
    .line 184
    .line 185
    move-result-wide v3

    .line 186
    const/16 v5, 0x3e8

    .line 187
    .line 188
    int-to-long v5, v5

    .line 189
    mul-long/2addr v3, v5

    .line 190
    goto :goto_3

    .line 191
    :catchall_0
    move-exception v3

    .line 192
    goto :goto_4

    .line 193
    :cond_9
    :goto_3
    invoke-static {v3, v4}, Lcom/blankj/utilcode/util/c0;->g(J)Ljava/util/Date;

    .line 194
    .line 195
    .line 196
    move-result-object v3

    .line 197
    const-string v4, "yyyy-MM-dd"

    .line 198
    .line 199
    invoke-static {v3, v4}, Lcom/blankj/utilcode/util/c0;->b(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    const-string v4, "date2String(...)"

    .line 204
    .line 205
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    .line 207
    .line 208
    :try_start_1
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 209
    .line 210
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 211
    .line 212
    .line 213
    goto :goto_5

    .line 214
    :catchall_1
    move-exception v2

    .line 215
    move-object v8, v3

    .line 216
    move-object v3, v2

    .line 217
    move-object v2, v8

    .line 218
    :goto_4
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 219
    .line 220
    invoke-static {v3}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-object v3, v2

    .line 228
    :goto_5
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    .line 230
    .line 231
    :cond_a
    sget v0, Lcom/transsion/moviedetail/R$id;->tvUploadedBy:I

    .line 232
    .line 233
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    check-cast p1, Landroid/widget/TextView;

    .line 238
    .line 239
    if-eqz p1, :cond_c

    .line 240
    .line 241
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    sget v2, Lcom/transsion/baseui/R$string;->base_ui_uploaded_by:I

    .line 246
    .line 247
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    iget-object v2, p0, Lcom/transsion/moviedetail/fragment/ResourceDetectorDialogFragment;->c:Lcom/transsion/moviedetailapi/bean/ResourceDetectors;

    .line 252
    .line 253
    if-eqz v2, :cond_b

    .line 254
    .line 255
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;->getUploadBy()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    .line 260
    .line 261
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    const-string v0, " "

    .line 268
    .line 269
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    .line 281
    .line 282
    :cond_c
    return-void
.end method

.method private static final s0(Lcom/transsion/moviedetail/fragment/ResourceDetectorDialogFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final t0(Lcom/transsion/moviedetail/fragment/ResourceDetectorDialogFragment;Landroid/view/View;)V
    .locals 3

    .line 1
    const-string p1, "/web/web"

    .line 2
    .line 3
    invoke-static {p1}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/ResourceDetectorDialogFragment;->c:Lcom/transsion/moviedetailapi/bean/ResourceDetectors;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;->getResourceLink()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v0, v1

    .line 18
    :goto_0
    const-string v2, "url"

    .line 19
    .line 20
    invoke-virtual {p1, v2, v0}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string v0, "load_url_only"

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    invoke-virtual {p1, v0, v2}, Lcom/therouter/router/Navigator;->z(Ljava/lang/String;Z)Lcom/therouter/router/Navigator;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const/4 v2, 0x2

    .line 36
    invoke-static {p1, v0, v1, v2, v1}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 40
    .line 41
    .line 42
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    sget v0, Lcom/transsion/baseui/R$style;->BottomDialogTheme:I

    .line 6
    .line 7
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    const-string v0, "arguments_resource_detectors"

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/transsion/moviedetail/fragment/ResourceDetectorDialogFragment;->c:Lcom/transsion/moviedetailapi/bean/ResourceDetectors;

    .line 25
    .line 26
    const-string v0, "arguments_resource_detectors_title"

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, Lcom/transsion/moviedetail/fragment/ResourceDetectorDialogFragment;->d:Ljava/lang/String;

    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "requireContext(...)"

    .line 6
    .line 7
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Lcom/google/android/material/bottomsheet/c;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getTheme()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-direct {v0, p1, v1}, Lcom/google/android/material/bottomsheet/c;-><init>(Landroid/content/Context;I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    sget v2, Lcom/transsion/baseui/R$style;->BaseBottomDialogAnimation:I

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    const/16 v2, 0x50

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    .line 39
    .line 40
    .line 41
    const/high16 v2, 0x3f000000    # 0.5f

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Landroid/view/Window;->setDimAmount(F)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    if-nez v2, :cond_1

    .line 51
    .line 52
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    .line 53
    .line 54
    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 55
    .line 56
    .line 57
    :cond_1
    sget-object v3, Lcom/transsion/baseui/util/a;->a:Lcom/transsion/baseui/util/a;

    .line 58
    .line 59
    invoke-virtual {v3, p1}, Lcom/transsion/baseui/util/a;->b(Landroid/content/Context;)I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    iput p1, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 64
    .line 65
    invoke-direct {p0}, Lcom/transsion/moviedetail/fragment/ResourceDetectorDialogFragment;->p0()I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    iput p1, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 70
    .line 71
    const/4 p1, 0x0

    .line 72
    invoke-virtual {v1, p1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 76
    .line 77
    .line 78
    :cond_2
    return-object v0
.end method

.method public onResume()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const/4 v2, -0x1

    .line 14
    const/4 v3, -0x2

    .line 15
    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    const/16 v1, 0x50

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-super {p0}, Lcom/transsion/baseui/dialog/BaseDialog;->onResume()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1}, Lcom/transsion/moviedetail/fragment/ResourceDetectorDialogFragment;->r0(Landroid/view/View;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
