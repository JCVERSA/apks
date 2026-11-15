.class public Lcom/mbridge/msdk/widget/dialog/MBAlertDialog;
.super Landroid/app/Dialog;
.source "source.java"


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/mbridge/msdk/widget/dialog/b;

.field private e:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mbridge/msdk/widget/dialog/b;)V
    .locals 6

    .line 1
    const-string v0, "MBAlertDialog"

    .line 2
    .line 3
    const-string v1, "id"

    .line 4
    .line 5
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 19
    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const-string v3, "mbridge_cm_alertview"

    .line 30
    .line 31
    const-string v5, "layout"

    .line 32
    .line 33
    invoke-static {p1, v3, v5}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    const/4 v5, 0x0

    .line 38
    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    iput-object p2, p0, Lcom/mbridge/msdk/widget/dialog/MBAlertDialog;->d:Lcom/mbridge/msdk/widget/dialog/b;

    .line 43
    .line 44
    if-eqz v2, :cond_0

    .line 45
    .line 46
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 47
    .line 48
    .line 49
    :try_start_0
    const-string v3, "mbridge_video_common_alertview_titleview"

    .line 50
    .line 51
    invoke-static {p1, v3, v1}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    check-cast v3, Landroid/widget/TextView;

    .line 60
    .line 61
    iput-object v3, p0, Lcom/mbridge/msdk/widget/dialog/MBAlertDialog;->e:Landroid/widget/TextView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catch_0
    move-exception v3

    .line 65
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-static {v0, v3}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :goto_0
    :try_start_1
    const-string v3, "mbridge_video_common_alertview_contentview"

    .line 73
    .line 74
    invoke-static {p1, v3, v1}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    check-cast v3, Landroid/widget/TextView;

    .line 83
    .line 84
    iput-object v3, p0, Lcom/mbridge/msdk/widget/dialog/MBAlertDialog;->c:Landroid/widget/TextView;

    .line 85
    .line 86
    const-string v3, "mbridge_video_common_alertview_confirm_button"

    .line 87
    .line 88
    invoke-static {p1, v3, v1}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    check-cast v3, Landroid/widget/Button;

    .line 97
    .line 98
    iput-object v3, p0, Lcom/mbridge/msdk/widget/dialog/MBAlertDialog;->b:Landroid/widget/Button;

    .line 99
    .line 100
    const-string v3, "mbridge_video_common_alertview_cancel_button"

    .line 101
    .line 102
    invoke-static {p1, v3, v1}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    check-cast p1, Landroid/widget/Button;

    .line 111
    .line 112
    iput-object p1, p0, Lcom/mbridge/msdk/widget/dialog/MBAlertDialog;->a:Landroid/widget/Button;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :catch_1
    move-exception p1

    .line 116
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    :cond_0
    :goto_1
    iget-object p1, p0, Lcom/mbridge/msdk/widget/dialog/MBAlertDialog;->a:Landroid/widget/Button;

    .line 124
    .line 125
    if-eqz p1, :cond_1

    .line 126
    .line 127
    new-instance v0, Lcom/mbridge/msdk/widget/dialog/MBAlertDialog$a;

    .line 128
    .line 129
    invoke-direct {v0, p0, p2}, Lcom/mbridge/msdk/widget/dialog/MBAlertDialog$a;-><init>(Lcom/mbridge/msdk/widget/dialog/MBAlertDialog;Lcom/mbridge/msdk/widget/dialog/b;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    .line 134
    .line 135
    :cond_1
    iget-object p1, p0, Lcom/mbridge/msdk/widget/dialog/MBAlertDialog;->b:Landroid/widget/Button;

    .line 136
    .line 137
    if-eqz p1, :cond_2

    .line 138
    .line 139
    new-instance v0, Lcom/mbridge/msdk/widget/dialog/MBAlertDialog$b;

    .line 140
    .line 141
    invoke-direct {v0, p0, p2}, Lcom/mbridge/msdk/widget/dialog/MBAlertDialog$b;-><init>(Lcom/mbridge/msdk/widget/dialog/MBAlertDialog;Lcom/mbridge/msdk/widget/dialog/b;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    .line 146
    .line 147
    :cond_2
    invoke-virtual {p0, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 151
    .line 152
    .line 153
    return-void
.end method

.method private a()V
    .locals 2

    .line 15
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    const-string v0, "\u786e\u8ba4\u5173\u95ed\uff1f"

    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/widget/dialog/MBAlertDialog;->setTitle(Ljava/lang/String;)V

    .line 18
    const-string v0, "\u5173\u95ed\u540e\u60a8\u5c06\u4e0d\u4f1a\u83b7\u5f97\u4efb\u4f55\u5956\u52b1\u5662~ "

    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/widget/dialog/MBAlertDialog;->setContent(Ljava/lang/String;)V

    .line 19
    const-string v0, "\u786e\u8ba4\u5173\u95ed"

    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/widget/dialog/MBAlertDialog;->setConfirmText(Ljava/lang/String;)V

    .line 20
    const-string v0, "\u7ee7\u7eed\u8bd5\u73a9"

    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/widget/dialog/MBAlertDialog;->setCancelText(Ljava/lang/String;)V

    goto :goto_0

    .line 21
    :cond_0
    const-string v0, "Confirm to close? "

    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/widget/dialog/MBAlertDialog;->setTitle(Ljava/lang/String;)V

    .line 22
    const-string v0, "You will not be rewarded after closing the window"

    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/widget/dialog/MBAlertDialog;->setContent(Ljava/lang/String;)V

    .line 23
    const-string v0, "Close it"

    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/widget/dialog/MBAlertDialog;->setConfirmText(Ljava/lang/String;)V

    .line 24
    const-string v0, "Continue"

    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/widget/dialog/MBAlertDialog;->setCancelText(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private a(I)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    sget v0, Lcom/mbridge/msdk/foundation/same/a;->H:I

    if-ne p1, v0, :cond_0

    const-string v0, "\u786e\u8ba4\u5173\u95ed\uff1f"

    goto :goto_0

    :cond_0
    const-string v0, "\u63d0\u793a"

    :goto_0
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/widget/dialog/MBAlertDialog;->setTitle(Ljava/lang/String;)V

    .line 4
    sget v0, Lcom/mbridge/msdk/foundation/same/a;->H:I

    if-ne p1, v0, :cond_1

    const-string v0, "\u5982\u679c\u4f60\u9009\u62e9\u7ee7\u7eed\uff0c\u7ed3\u675f\u540e\u5c06\u4f1a\u83b7\u5f97\u5956\u52b1\u3002\u786e\u8ba4\u5173\u95ed\u5417\uff1f"

    goto :goto_1

    :cond_1
    const-string v0, "\u5982\u679c\u4f60\u9009\u62e9\u7ee7\u7eed\uff0c\u7ed3\u675f\u540e\u5c06\u4f1a\u83b7\u5f97\u5956\u52b1\u3002\u662f\u5426\u7ee7\u7eed\uff1f"

    :goto_1
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/widget/dialog/MBAlertDialog;->setContent(Ljava/lang/String;)V

    .line 5
    sget v0, Lcom/mbridge/msdk/foundation/same/a;->H:I

    if-ne p1, v0, :cond_2

    const-string p1, "\u786e\u8ba4\u5173\u95ed"

    goto :goto_2

    :cond_2
    const-string p1, "\u53d6\u6d88"

    :goto_2
    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/widget/dialog/MBAlertDialog;->setConfirmText(Ljava/lang/String;)V

    .line 6
    const-string p1, "\u7ee7\u7eed"

    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/widget/dialog/MBAlertDialog;->setCancelText(Ljava/lang/String;)V

    goto :goto_6

    .line 7
    :cond_3
    sget v0, Lcom/mbridge/msdk/foundation/same/a;->H:I

    if-ne p1, v0, :cond_4

    const-string v0, "Confirm"

    goto :goto_3

    :cond_4
    const-string v0, "Tips"

    :goto_3
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/widget/dialog/MBAlertDialog;->setTitle(Ljava/lang/String;)V

    .line 8
    sget v0, Lcom/mbridge/msdk/foundation/same/a;->H:I

    if-ne p1, v0, :cond_5

    const-string v0, "If you choose to continue, you will receive a reward after the end. Confirm closed?"

    goto :goto_4

    :cond_5
    const-string v0, "If you choose to continue, you will receive a reward after the end. Whether to continue?"

    :goto_4
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/widget/dialog/MBAlertDialog;->setContent(Ljava/lang/String;)V

    .line 9
    sget v0, Lcom/mbridge/msdk/foundation/same/a;->H:I

    if-ne p1, v0, :cond_6

    const-string p1, "Close"

    goto :goto_5

    :cond_6
    const-string p1, "Cancel"

    :goto_5
    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/widget/dialog/MBAlertDialog;->setConfirmText(Ljava/lang/String;)V

    .line 10
    const-string p1, "Continue"

    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/widget/dialog/MBAlertDialog;->setCancelText(Ljava/lang/String;)V

    :goto_6
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/widget/dialog/MBAlertDialog;->setTitle(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0, p2}, Lcom/mbridge/msdk/widget/dialog/MBAlertDialog;->setContent(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0, p3}, Lcom/mbridge/msdk/widget/dialog/MBAlertDialog;->setConfirmText(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0, p4}, Lcom/mbridge/msdk/widget/dialog/MBAlertDialog;->setCancelText(Ljava/lang/String;)V

    return-void
.end method

.method private b()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    const-string v1, "zh"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const-string v0, "\u786e\u8ba4\u5173\u95ed\uff1f"

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/widget/dialog/MBAlertDialog;->setTitle(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v0, "\u5173\u95ed\u540e\u60a8\u5c06\u4e0d\u4f1a\u83b7\u5f97\u4efb\u4f55\u5956\u52b1\u5662~ "

    .line 29
    .line 30
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/widget/dialog/MBAlertDialog;->setContent(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v0, "\u786e\u8ba4\u5173\u95ed"

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/widget/dialog/MBAlertDialog;->setConfirmText(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string v0, "\u7ee7\u7eed\u89c2\u770b"

    .line 39
    .line 40
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/widget/dialog/MBAlertDialog;->setCancelText(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const-string v0, "Confirm to close? "

    .line 45
    .line 46
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/widget/dialog/MBAlertDialog;->setTitle(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const-string v0, "You will not be rewarded after closing the window"

    .line 50
    .line 51
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/widget/dialog/MBAlertDialog;->setContent(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-string v0, "Close it"

    .line 55
    .line 56
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/widget/dialog/MBAlertDialog;->setConfirmText(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const-string v0, "Continue"

    .line 60
    .line 61
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/widget/dialog/MBAlertDialog;->setCancelText(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :goto_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/widget/dialog/MBAlertDialog;->d:Lcom/mbridge/msdk/widget/dialog/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/mbridge/msdk/widget/dialog/MBAlertDialog;->d:Lcom/mbridge/msdk/widget/dialog/b;

    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public getListener()Lcom/mbridge/msdk/widget/dialog/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/widget/dialog/MBAlertDialog;->d:Lcom/mbridge/msdk/widget/dialog/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public hideNavigationBar(Landroid/view/Window;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/16 v0, 0x400

    .line 4
    .line 5
    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 6
    .line 7
    .line 8
    const/high16 v0, 0x4000000

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/16 v1, 0x1002

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lcom/mbridge/msdk/foundation/tools/c1;->a(Landroid/view/Window;)V

    .line 23
    .line 24
    .line 25
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 32
    .line 33
    .line 34
    const/4 v0, -0x1

    .line 35
    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setLayout(II)V

    .line 36
    .line 37
    .line 38
    const/16 v0, 0x11

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
.end method

.method public makeDownloadAlert(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/mbridge/msdk/widget/dialog/a;->a(Lcom/mbridge/msdk/widget/dialog/MBAlertDialog;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public makeIVAlertView(ILjava/lang/String;)V
    .locals 7

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v3, "MBridge_ConfirmTitle"

    .line 13
    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-static {v1, v2, v0}, Lcom/mbridge/msdk/foundation/tools/w0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    new-instance v3, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v4, "MBridge_ConfirmContent"

    .line 42
    .line 43
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-static {v2, v3, v0}, Lcom/mbridge/msdk/foundation/tools/w0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    new-instance v4, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string v5, "MBridge_CancelText"

    .line 71
    .line 72
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-static {v3, v4, v0}, Lcom/mbridge/msdk/foundation/tools/w0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    new-instance v5, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    const-string v6, "MBridge_ConfirmText"

    .line 100
    .line 101
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    invoke-static {v4, p2, v0}, Lcom/mbridge/msdk/foundation/tools/w0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-eqz v0, :cond_0

    .line 124
    .line 125
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-eqz v0, :cond_0

    .line 130
    .line 131
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    if-eqz v0, :cond_0

    .line 136
    .line 137
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    if-eqz v0, :cond_0

    .line 142
    .line 143
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/widget/dialog/MBAlertDialog;->a(I)V

    .line 144
    .line 145
    .line 146
    goto :goto_1

    .line 147
    :catch_0
    move-exception p1

    .line 148
    goto :goto_0

    .line 149
    :cond_0
    invoke-direct {p0, v1, v2, v3, p2}, Lcom/mbridge/msdk/widget/dialog/MBAlertDialog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .line 151
    .line 152
    goto :goto_1

    .line 153
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    const-string p2, "MBAlertDialog"

    .line 158
    .line 159
    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    :goto_1
    return-void
.end method

.method public makeInsAlert(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/mbridge/msdk/widget/dialog/a;->b(Lcom/mbridge/msdk/widget/dialog/MBAlertDialog;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public makePlayableAlertView()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/mbridge/msdk/setting/h;->b()Lcom/mbridge/msdk/setting/h;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->b()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/setting/h;->d(Ljava/lang/String;)Lcom/mbridge/msdk/setting/g;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/mbridge/msdk/setting/b;->s()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0}, Lcom/mbridge/msdk/setting/b;->q()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v0}, Lcom/mbridge/msdk/setting/b;->r()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v0}, Lcom/mbridge/msdk/setting/b;->o()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-direct {p0, v1, v2, v3, v0}, Lcom/mbridge/msdk/widget/dialog/MBAlertDialog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-direct {p0}, Lcom/mbridge/msdk/widget/dialog/MBAlertDialog;->a()V

    .line 40
    .line 41
    .line 42
    :goto_0
    return-void
.end method

.method public makeRVAlertView(Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v3, "MBridge_ConfirmTitle"

    .line 13
    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-static {v1, v2, v0}, Lcom/mbridge/msdk/foundation/tools/w0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    new-instance v3, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v4, "MBridge_ConfirmContent"

    .line 42
    .line 43
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-static {v2, v3, v0}, Lcom/mbridge/msdk/foundation/tools/w0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    new-instance v4, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string v5, "MBridge_CancelText"

    .line 71
    .line 72
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-static {v3, v4, v0}, Lcom/mbridge/msdk/foundation/tools/w0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    new-instance v5, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    const-string v6, "MBridge_ConfirmText"

    .line 100
    .line 101
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-static {v4, p1, v0}, Lcom/mbridge/msdk/foundation/tools/w0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-static {}, Lcom/mbridge/msdk/setting/h;->b()Lcom/mbridge/msdk/setting/h;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/controller/a;->b()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    invoke-virtual {v0, v4}, Lcom/mbridge/msdk/setting/h;->d(Ljava/lang/String;)Lcom/mbridge/msdk/setting/g;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 136
    .line 137
    .line 138
    move-result v4

    .line 139
    if-eqz v4, :cond_1

    .line 140
    .line 141
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 142
    .line 143
    .line 144
    move-result v4

    .line 145
    if-eqz v4, :cond_1

    .line 146
    .line 147
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 148
    .line 149
    .line 150
    move-result v4

    .line 151
    if-eqz v4, :cond_1

    .line 152
    .line 153
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 154
    .line 155
    .line 156
    move-result v4

    .line 157
    if-eqz v4, :cond_1

    .line 158
    .line 159
    if-eqz v0, :cond_0

    .line 160
    .line 161
    invoke-virtual {v0}, Lcom/mbridge/msdk/setting/b;->s()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-virtual {v0}, Lcom/mbridge/msdk/setting/b;->q()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    invoke-virtual {v0}, Lcom/mbridge/msdk/setting/b;->r()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    invoke-virtual {v0}, Lcom/mbridge/msdk/setting/b;->p()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-direct {p0, p1, v1, v2, v0}, Lcom/mbridge/msdk/widget/dialog/MBAlertDialog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    goto :goto_0

    .line 181
    :catch_0
    move-exception p1

    .line 182
    goto/16 :goto_5

    .line 183
    .line 184
    :cond_0
    invoke-direct {p0}, Lcom/mbridge/msdk/widget/dialog/MBAlertDialog;->b()V

    .line 185
    .line 186
    .line 187
    :goto_0
    return-void

    .line 188
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 189
    .line 190
    .line 191
    move-result-object v4

    .line 192
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v4

    .line 196
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 197
    .line 198
    .line 199
    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    const-string v6, "zh"

    .line 201
    .line 202
    if-eqz v5, :cond_4

    .line 203
    .line 204
    if-eqz v0, :cond_2

    .line 205
    .line 206
    :try_start_1
    invoke-virtual {v0}, Lcom/mbridge/msdk/setting/b;->s()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    goto :goto_1

    .line 211
    :cond_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 212
    .line 213
    .line 214
    move-result v5

    .line 215
    if-nez v5, :cond_3

    .line 216
    .line 217
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result v5

    .line 221
    if-eqz v5, :cond_3

    .line 222
    .line 223
    const-string v5, "\u786e\u8ba4\u5173\u95ed\uff1f"

    .line 224
    .line 225
    invoke-virtual {p0, v5}, Lcom/mbridge/msdk/widget/dialog/MBAlertDialog;->setTitle(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    goto :goto_1

    .line 229
    :cond_3
    const-string v5, "Confirm to close? "

    .line 230
    .line 231
    invoke-virtual {p0, v5}, Lcom/mbridge/msdk/widget/dialog/MBAlertDialog;->setTitle(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    :cond_4
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 235
    .line 236
    .line 237
    move-result v5

    .line 238
    if-eqz v5, :cond_7

    .line 239
    .line 240
    if-eqz v0, :cond_5

    .line 241
    .line 242
    invoke-virtual {v0}, Lcom/mbridge/msdk/setting/b;->q()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v2

    .line 246
    goto :goto_2

    .line 247
    :cond_5
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 248
    .line 249
    .line 250
    move-result v5

    .line 251
    if-nez v5, :cond_6

    .line 252
    .line 253
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    move-result v5

    .line 257
    if-eqz v5, :cond_6

    .line 258
    .line 259
    const-string v5, "\u5173\u95ed\u540e\u60a8\u5c06\u4e0d\u4f1a\u83b7\u5f97\u4efb\u4f55\u5956\u52b1\u5662~ "

    .line 260
    .line 261
    invoke-virtual {p0, v5}, Lcom/mbridge/msdk/widget/dialog/MBAlertDialog;->setContent(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    goto :goto_2

    .line 265
    :cond_6
    const-string v5, "You will not be rewarded after closing the window"

    .line 266
    .line 267
    invoke-virtual {p0, v5}, Lcom/mbridge/msdk/widget/dialog/MBAlertDialog;->setContent(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    :cond_7
    :goto_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 271
    .line 272
    .line 273
    move-result v5

    .line 274
    if-eqz v5, :cond_a

    .line 275
    .line 276
    if-eqz v0, :cond_8

    .line 277
    .line 278
    invoke-virtual {v0}, Lcom/mbridge/msdk/setting/b;->r()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object p1

    .line 282
    goto :goto_3

    .line 283
    :cond_8
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 284
    .line 285
    .line 286
    move-result v5

    .line 287
    if-nez v5, :cond_9

    .line 288
    .line 289
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    move-result v5

    .line 293
    if-eqz v5, :cond_9

    .line 294
    .line 295
    const-string v5, "\u786e\u8ba4\u5173\u95ed"

    .line 296
    .line 297
    invoke-virtual {p0, v5}, Lcom/mbridge/msdk/widget/dialog/MBAlertDialog;->setConfirmText(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    goto :goto_3

    .line 301
    :cond_9
    const-string v5, "Close it"

    .line 302
    .line 303
    invoke-virtual {p0, v5}, Lcom/mbridge/msdk/widget/dialog/MBAlertDialog;->setConfirmText(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    :cond_a
    :goto_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 307
    .line 308
    .line 309
    move-result v5

    .line 310
    if-eqz v5, :cond_d

    .line 311
    .line 312
    if-eqz v0, :cond_b

    .line 313
    .line 314
    invoke-virtual {v0}, Lcom/mbridge/msdk/setting/b;->p()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v3

    .line 318
    goto :goto_4

    .line 319
    :cond_b
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 320
    .line 321
    .line 322
    move-result v0

    .line 323
    if-nez v0, :cond_c

    .line 324
    .line 325
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    move-result v0

    .line 329
    if-eqz v0, :cond_c

    .line 330
    .line 331
    const-string v0, "\u7ee7\u7eed\u89c2\u770b"

    .line 332
    .line 333
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/widget/dialog/MBAlertDialog;->setCancelText(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    goto :goto_4

    .line 337
    :cond_c
    const-string v0, "Continue"

    .line 338
    .line 339
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/widget/dialog/MBAlertDialog;->setCancelText(Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    :cond_d
    :goto_4
    invoke-direct {p0, v1, v2, p1, v3}, Lcom/mbridge/msdk/widget/dialog/MBAlertDialog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 343
    .line 344
    .line 345
    goto :goto_6

    .line 346
    :goto_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object p1

    .line 350
    const-string v0, "MBAlertDialog"

    .line 351
    .line 352
    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    :goto_6
    return-void
.end method

.method public onlyShow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setCancelText(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/widget/dialog/MBAlertDialog;->a:Landroid/widget/Button;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setConfirmText(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/widget/dialog/MBAlertDialog;->b:Landroid/widget/Button;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/widget/dialog/MBAlertDialog;->c:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/widget/dialog/MBAlertDialog;->e:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 11
    .line 12
    .line 13
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/widget/dialog/MBAlertDialog;->hideNavigationBar(Landroid/view/Window;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception v0

    .line 32
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v1, "MBAlertDialog"

    .line 37
    .line 38
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 42
    .line 43
    .line 44
    :goto_0
    return-void
.end method
