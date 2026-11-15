.class public final Lcom/cloud/tmc/miniapp/dialog/o00oO0o;
.super Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o<",
        "Lcom/cloud/tmc/miniapp/dialog/o00oO0o;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field public final OooO:Ljava/lang/String;

.field public final OooO00o:Ljava/lang/String;

.field public OooO0O0:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

.field public final OooO0OO:Lkotlin/Lazy;

.field public final OooO0Oo:Lkotlin/Lazy;

.field public final OooO0o:Lkotlin/Lazy;

.field public final OooO0o0:Lkotlin/Lazy;

.field public final OooO0oO:Lkotlin/Lazy;

.field public OooO0oo:Ljava/lang/String;

.field public final OooOO0:Ljava/lang/String;

.field public final OooOO0O:Ljava/lang/String;

.field public final OooOO0o:Ljava/lang/String;

.field public final OooOOO:Ljava/lang/String;

.field public final OooOOO0:Ljava/lang/String;

.field public final OooOOOO:Ljava/lang/String;

.field public final OooOOOo:Ljava/lang/String;

.field public final OooOOo0:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    const-string p1, "MiniDevUserAgreementDialog"

    .line 10
    .line 11
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o00oO0o;->OooO00o:Ljava/lang/String;

    .line 12
    .line 13
    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/o00oO0o$OooOOO0;

    .line 14
    .line 15
    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/o00oO0o$OooOOO0;-><init>(Lcom/cloud/tmc/miniapp/dialog/o00oO0o;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o00oO0o;->OooO0OO:Lkotlin/Lazy;

    .line 23
    .line 24
    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/o00oO0o$OooO0o;

    .line 25
    .line 26
    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/o00oO0o$OooO0o;-><init>(Lcom/cloud/tmc/miniapp/dialog/o00oO0o;)V

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o00oO0o;->OooO0Oo:Lkotlin/Lazy;

    .line 34
    .line 35
    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/o00oO0o$OooOO0O;

    .line 36
    .line 37
    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/o00oO0o$OooOO0O;-><init>(Lcom/cloud/tmc/miniapp/dialog/o00oO0o;)V

    .line 38
    .line 39
    .line 40
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o00oO0o;->OooO0o0:Lkotlin/Lazy;

    .line 45
    .line 46
    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/o00oO0o$OooO;

    .line 47
    .line 48
    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/o00oO0o$OooO;-><init>(Lcom/cloud/tmc/miniapp/dialog/o00oO0o;)V

    .line 49
    .line 50
    .line 51
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o00oO0o;->OooO0o:Lkotlin/Lazy;

    .line 56
    .line 57
    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/o00oO0o$OooOO0;

    .line 58
    .line 59
    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/o00oO0o$OooOO0;-><init>(Lcom/cloud/tmc/miniapp/dialog/o00oO0o;)V

    .line 60
    .line 61
    .line 62
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o00oO0o;->OooO0oO:Lkotlin/Lazy;

    .line 67
    .line 68
    const-string p1, ""

    .line 69
    .line 70
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o00oO0o;->OooO0oo:Ljava/lang/String;

    .line 71
    .line 72
    sget p1, Lcom/cloud/tmc/miniapp/R$layout;->mini_dialog_layout_dua:I

    .line 73
    .line 74
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setContentView(I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 75
    .line 76
    .line 77
    const/4 p1, -0x1

    .line 78
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setAnimStyle(I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 79
    .line 80
    .line 81
    const/4 p1, 0x1

    .line 82
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setBackgroundDimEnabled(Z)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/o00oO0o;->OooO0O0()Landroid/widget/TextView;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/o00oO0o;->OooO0OO()Landroid/widget/TextView;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    const/4 v2, 0x2

    .line 94
    new-array v2, v2, [Landroid/view/View;

    .line 95
    .line 96
    const/4 v3, 0x0

    .line 97
    aput-object v0, v2, v3

    .line 98
    .line 99
    aput-object v1, v2, p1

    .line 100
    .line 101
    invoke-virtual {p0, v2}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setOnClickListener([Landroid/view/View;)V

    .line 102
    .line 103
    .line 104
    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/o00oO0o$OooO00o;

    .line 105
    .line 106
    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/o00oO0o$OooO00o;-><init>(Lcom/cloud/tmc/miniapp/dialog/o00oO0o;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->addOnDismissListener(Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOo00;)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, v3}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setCancelable(Z)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 113
    .line 114
    .line 115
    const-string p1, "mode"

    .line 116
    .line 117
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o00oO0o;->OooO:Ljava/lang/String;

    .line 118
    .line 119
    const-string p1, "text"

    .line 120
    .line 121
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o00oO0o;->OooOO0:Ljava/lang/String;

    .line 122
    .line 123
    const-string p1, "status"

    .line 124
    .line 125
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o00oO0o;->OooOO0O:Ljava/lang/String;

    .line 126
    .line 127
    const-string p1, "1"

    .line 128
    .line 129
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o00oO0o;->OooOO0o:Ljava/lang/String;

    .line 130
    .line 131
    const-string v0, "2"

    .line 132
    .line 133
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/o00oO0o;->OooOOO0:Ljava/lang/String;

    .line 134
    .line 135
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o00oO0o;->OooOOO:Ljava/lang/String;

    .line 136
    .line 137
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/o00oO0o;->OooOOOO:Ljava/lang/String;

    .line 138
    .line 139
    const-string p1, "agreeClick"

    .line 140
    .line 141
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o00oO0o;->OooOOOo:Ljava/lang/String;

    .line 142
    .line 143
    const-string p1, "cancelClick"

    .line 144
    .line 145
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o00oO0o;->OooOOo0:Ljava/lang/String;

    .line 146
    .line 147
    return-void
.end method


# virtual methods
.method public final OooO00o()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/o00oO0o;->OooO0Oo:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final OooO00o(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/miniapp/dialog/o00oO0o;
    .locals 3

    if-eqz p1, :cond_2

    .line 39
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 40
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/o00oO0o;->OooO00o:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "btnBgColor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/o00oO0o;->OooO0O0()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v2, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    :cond_1
    if-eqz v1, :cond_2

    .line 42
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    .line 43
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 44
    :goto_1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/o00oO0o;->OooO00o:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAgreeBtn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/o00oO0o;->OooO0O0()Landroid/widget/TextView;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_4

    :cond_3
    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_4

    goto :goto_3

    .line 46
    :cond_4
    sget p2, Lcom/cloud/tmc/miniapp/R$string;->mini_text_agree:I

    invoke-virtual {p0, p2}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 47
    :goto_3
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    return-object p0
.end method

.method public final OooO00o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/miniapp/dialog/o00oO0o;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/cloud/tmc/miniapp/dialog/o00oO0o;->OooO00o()Landroid/widget/TextView;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_8

    :cond_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    .line 4
    :cond_1
    sget v0, Lcom/cloud/tmc/miniapp/R$string;->mini_dau_agree_content:I

    invoke-virtual {v1, v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {v0, v4}, Lcom/cloud/tmc/miniutils/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz p3, :cond_2

    .line 5
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    move-object/from16 v4, p3

    goto :goto_0

    .line 6
    :cond_2
    sget v4, Lcom/cloud/tmc/miniapp/R$string;->mini_privacy_privacy_policy:I

    invoke-virtual {v1, v4}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_0
    if-eqz p4, :cond_3

    .line 7
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    move-object/from16 v5, p4

    goto :goto_1

    .line 8
    :cond_3
    sget v5, Lcom/cloud/tmc/miniapp/R$string;->mini_user_agreement:I

    invoke-virtual {v1, v5}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_1
    if-eqz p5, :cond_4

    .line 9
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_4

    move-object/from16 v6, p5

    goto :goto_2

    .line 10
    :cond_4
    const-string v6, "https://h5.dlight-app.com/outside/privacy-policy?lang="

    :goto_2
    if-eqz p6, :cond_5

    .line 11
    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_5

    move-object/from16 v7, p6

    goto :goto_3

    .line 12
    :cond_5
    const-string v7, "https://h5.dlight-app.com/outside/user-agreement?lang="

    .line 13
    :goto_3
    const-string v8, "dauAgreeContent"

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "#"

    const/4 v9, 0x6

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 p1, v0

    move-object/from16 p2, v8

    move/from16 p3, v11

    move/from16 p4, v12

    move/from16 p5, v9

    move-object/from16 p6, v10

    invoke-static/range {p1 .. p6}, Lkotlin/text/StringsKt;->o0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v8

    .line 14
    const-string v9, "#"

    const/4 v10, 0x6

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 p1, v0

    move-object/from16 p2, v9

    move/from16 p3, v12

    move/from16 p4, v13

    move/from16 p5, v10

    move-object/from16 p6, v11

    invoke-static/range {p1 .. p6}, Lkotlin/text/StringsKt;->v0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v9

    .line 15
    const-string v10, "*"

    const/4 v11, 0x6

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 p1, v0

    move-object/from16 p2, v10

    move/from16 p3, v13

    move/from16 p4, v14

    move/from16 p5, v11

    move-object/from16 p6, v12

    invoke-static/range {p1 .. p6}, Lkotlin/text/StringsKt;->o0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v10

    .line 16
    const-string v11, "*"

    const/4 v12, 0x6

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 p1, v0

    move-object/from16 p2, v11

    move/from16 p3, v14

    move/from16 p4, v15

    move/from16 p5, v12

    move-object/from16 p6, v13

    invoke-static/range {p1 .. p6}, Lkotlin/text/StringsKt;->v0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v11

    if-eqz p7, :cond_6

    .line 17
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v12, :cond_6

    .line 18
    :try_start_1
    invoke-static/range {p7 .. p7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    .line 19
    :catchall_1
    :try_start_2
    sget v12, Lcom/cloud/tmc/miniapp/R$color;->mini_color_primary:I

    invoke-virtual {v1, v12}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getColor(I)I

    move-result v12

    goto :goto_4

    .line 20
    :cond_6
    sget v12, Lcom/cloud/tmc/miniapp/R$color;->mini_color_primary:I

    invoke-virtual {v1, v12}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getColor(I)I

    move-result v12

    .line 21
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/cloud/tmc/miniapp/dialog/o00oO0o;->OooO00o()Landroid/widget/TextView;

    move-result-object v13

    if-nez v13, :cond_7

    goto :goto_5

    .line 22
    :cond_7
    new-instance v14, Landroid/text/SpannableStringBuilder;

    invoke-direct {v14}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 23
    invoke-virtual {v0, v2, v8}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 24
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 25
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 26
    new-instance v8, Lcom/cloud/tmc/miniapp/dialog/o00oO0o$OooO0O0;

    invoke-direct {v8, v6, v1}, Lcom/cloud/tmc/miniapp/dialog/o00oO0o$OooO0O0;-><init>(Ljava/lang/String;Lcom/cloud/tmc/miniapp/dialog/o00oO0o;)V

    invoke-static {v14, v2, v4, v3, v8}, Lcom/cloud/tmc/integration/utils/ext/SpannableExtKt;->appendClickable(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Ljava/lang/Integer;ZLkotlin/jvm/functions/Function1;)Landroid/text/SpannableStringBuilder;

    add-int/2addr v9, v3

    .line 27
    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 28
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 29
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 30
    new-instance v5, Lcom/cloud/tmc/miniapp/dialog/o00oO0o$OooO0OO;

    invoke-direct {v5, v7, v1}, Lcom/cloud/tmc/miniapp/dialog/o00oO0o$OooO0OO;-><init>(Ljava/lang/String;Lcom/cloud/tmc/miniapp/dialog/o00oO0o;)V

    invoke-static {v14, v2, v4, v3, v5}, Lcom/cloud/tmc/integration/utils/ext/SpannableExtKt;->appendClickable(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Ljava/lang/Integer;ZLkotlin/jvm/functions/Function1;)Landroid/text/SpannableStringBuilder;

    add-int/2addr v11, v3

    .line 31
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v11, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 32
    new-instance v0, Landroid/text/SpannedString;

    invoke-direct {v0, v14}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    .line 33
    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/cloud/tmc/miniapp/dialog/o00oO0o;->OooO00o()Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_8

    goto :goto_6

    .line 35
    :cond_8
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    .line 36
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 37
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/cloud/tmc/miniapp/dialog/o00oO0o;->OooO00o()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/ext/TextViewExtKt;->transparentHighlightColor(Landroid/widget/TextView;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_8

    .line 38
    :goto_7
    iget-object v2, v1, Lcom/cloud/tmc/miniapp/dialog/o00oO0o;->OooO00o:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAgreeText:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_8
    return-object v1
.end method

.method public final OooO00o(Ljava/lang/String;)V
    .locals 3

    .line 48
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/o00oO0o;->OooO00o:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendClickResponse status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/o00oO0o;->OooO0O0:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 50
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/dialog/o00oO0o;->OooOO0O:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    .line 52
    :cond_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o00oO0o;->OooO0O0:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->close()V

    .line 53
    :cond_1
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dismiss()V

    return-void
.end method

.method public final OooO0O0()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/o00oO0o;->OooO0o:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/TextView;

    .line 8
    .line 9
    return-object v0
.end method

.method public final OooO0OO()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/o00oO0o;->OooO0oO:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/TextView;

    .line 8
    .line 9
    return-object v0
.end method

.method public final OooO0Oo()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/o00oO0o;->OooO0o0:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/TextView;

    .line 8
    .line 9
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->onClick(Landroid/view/View;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    sget v0, Lcom/cloud/tmc/miniapp/R$id;->tv_btn_one:I

    .line 14
    .line 15
    if-ne p1, v0, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o00oO0o;->OooOOOo:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/o00oO0o;->OooO00o(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    sget v0, Lcom/cloud/tmc/miniapp/R$id;->tv_btn_two:I

    .line 24
    .line 25
    if-ne p1, v0, :cond_1

    .line 26
    .line 27
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o00oO0o;->OooOOo0:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/o00oO0o;->OooO00o(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_0
    return-void
.end method
