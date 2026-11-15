.class public final Ltv/h;
.super Lkj/j;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/h$a;
    }
.end annotation


# static fields
.field public static final g:Ltv/h$a;


# instance fields
.field private final b:Lsv/b;

.field private c:Lkotlin/jvm/functions/Function1;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Lcom/transsion/version/update/RemoteVersionInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ltv/h$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ltv/h$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Ltv/h;->g:Ltv/h$a;

    .line 8
    .line 9
    return-void
.end method

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
    sget v0, Lcom/transsion/version/update/R$style;->BottomDialogTheme:I

    .line 7
    .line 8
    invoke-direct {p0, p1, v0}, Lkj/j;-><init>(Landroid/content/Context;I)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-static {v0, v1, v2}, Lsv/b;->c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lsv/b;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v3, "inflate(...)"

    .line 22
    .line 23
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Ltv/h;->b:Lsv/b;

    .line 27
    .line 28
    const-string v3, ""

    .line 29
    .line 30
    iput-object v3, p0, Ltv/h;->d:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v0}, Lsv/b;->b()Landroid/widget/LinearLayout;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    const/16 v2, 0x50

    .line 49
    .line 50
    invoke-virtual {v0, v2}, Landroid/view/Window;->setGravity(I)V

    .line 51
    .line 52
    .line 53
    const/high16 v2, 0x3f000000    # 0.5f

    .line 54
    .line 55
    invoke-virtual {v0, v2}, Landroid/view/Window;->setDimAmount(F)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    if-nez v2, :cond_0

    .line 63
    .line 64
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    .line 65
    .line 66
    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 67
    .line 68
    .line 69
    :cond_0
    sget-object v3, Loj/a;->a:Loj/a;

    .line 70
    .line 71
    invoke-virtual {v3, p1}, Loj/a;->a(Landroid/content/Context;)I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    iput p1, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 76
    .line 77
    const/4 p1, -0x2

    .line 78
    iput p1, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 84
    .line 85
    .line 86
    :cond_1
    new-instance p1, Ltv/d;

    .line 87
    .line 88
    invoke-direct {p1, p0}, Ltv/d;-><init>(Ltv/h;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 92
    .line 93
    .line 94
    invoke-direct {p0}, Ltv/h;->p()V

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method public static synthetic h(Ltv/h;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ltv/h;->s(Ltv/h;Landroid/content/DialogInterface;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic i(Ltv/h;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ltv/h;->r(Ltv/h;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic j(Ltv/h;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ltv/h;->l(Ltv/h;Landroid/content/DialogInterface;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic k(Ltv/h;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ltv/h;->q(Ltv/h;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final l(Ltv/h;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lkj/j;->e()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final m(Lcom/transsion/version/update/RemoteVersionInfo;)V
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/transsion/version/update/RemoteVersionInfo;->getForceUpdate()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-ne v2, v0, :cond_0

    .line 10
    .line 11
    move v2, v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v2, v1

    .line 14
    :goto_0
    const/4 v3, 0x0

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/transsion/version/update/RemoteVersionInfo;->getNoticeConfig()Lcom/transsion/version/update/NoticeConfig;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    if-eqz v4, :cond_1

    .line 22
    .line 23
    invoke-virtual {v4}, Lcom/transsion/version/update/NoticeConfig;->getUpdateTitle()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move-object v4, v3

    .line 29
    :goto_1
    if-eqz p1, :cond_2

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/transsion/version/update/RemoteVersionInfo;->getNoticeConfig()Lcom/transsion/version/update/NoticeConfig;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    if-eqz v5, :cond_2

    .line 36
    .line 37
    invoke-virtual {v5}, Lcom/transsion/version/update/NoticeConfig;->getUpdateDesc()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    :cond_2
    if-eqz p1, :cond_3

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/transsion/version/update/RemoteVersionInfo;->getInstallPkgSize()J

    .line 44
    .line 45
    .line 46
    move-result-wide v5

    .line 47
    goto :goto_2

    .line 48
    :cond_3
    const-wide/16 v5, 0x0

    .line 49
    .line 50
    :goto_2
    const/high16 v7, 0x100000

    .line 51
    .line 52
    invoke-static {v5, v6, v7}, Lcom/blankj/utilcode/util/i;->f(JI)J

    .line 53
    .line 54
    .line 55
    if-eqz p1, :cond_4

    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/transsion/version/update/RemoteVersionInfo;->getNoticeConfig()Lcom/transsion/version/update/NoticeConfig;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    if-eqz p1, :cond_4

    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/transsion/version/update/NoticeConfig;->getUpdateVersionName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    if-nez p1, :cond_5

    .line 68
    .line 69
    :cond_4
    const-string p1, ""

    .line 70
    .line 71
    :cond_5
    iput-object p1, p0, Ltv/h;->d:Ljava/lang/String;

    .line 72
    .line 73
    const/16 p1, 0x8

    .line 74
    .line 75
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    const-string v6, "getApplicationIcon(...)"

    .line 96
    .line 97
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iget-object v6, p0, Ltv/h;->b:Lsv/b;

    .line 101
    .line 102
    iget-object v6, v6, Lsv/b;->d:Landroid/widget/ImageView;

    .line 103
    .line 104
    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .line 106
    .line 107
    goto :goto_3

    .line 108
    :catch_0
    iget-object v5, p0, Ltv/h;->b:Lsv/b;

    .line 109
    .line 110
    iget-object v5, v5, Lsv/b;->d:Landroid/widget/ImageView;

    .line 111
    .line 112
    invoke-virtual {v5, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 113
    .line 114
    .line 115
    :goto_3
    iget-object v5, p0, Ltv/h;->b:Lsv/b;

    .line 116
    .line 117
    iget-object v5, v5, Lsv/b;->k:Landroid/widget/TextView;

    .line 118
    .line 119
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    sget v7, Lcom/transsion/version/update/R$string;->version:I

    .line 124
    .line 125
    iget-object v8, p0, Ltv/h;->d:Ljava/lang/String;

    .line 126
    .line 127
    new-array v9, v0, [Ljava/lang/Object;

    .line 128
    .line 129
    aput-object v8, v9, v1

    .line 130
    .line 131
    invoke-virtual {v6, v7, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    .line 137
    .line 138
    if-eqz v4, :cond_7

    .line 139
    .line 140
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 141
    .line 142
    .line 143
    move-result v5

    .line 144
    if-nez v5, :cond_6

    .line 145
    .line 146
    goto :goto_4

    .line 147
    :cond_6
    iget-object v5, p0, Ltv/h;->b:Lsv/b;

    .line 148
    .line 149
    iget-object v5, v5, Lsv/b;->j:Landroid/widget/TextView;

    .line 150
    .line 151
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    .line 153
    .line 154
    :cond_7
    :goto_4
    if-eqz v3, :cond_9

    .line 155
    .line 156
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 157
    .line 158
    .line 159
    move-result v4

    .line 160
    if-nez v4, :cond_8

    .line 161
    .line 162
    goto :goto_5

    .line 163
    :cond_8
    iget-object v4, p0, Ltv/h;->b:Lsv/b;

    .line 164
    .line 165
    iget-object v4, v4, Lsv/b;->g:Landroid/widget/TextView;

    .line 166
    .line 167
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    .line 169
    .line 170
    :cond_9
    :goto_5
    xor-int/lit8 v3, v2, 0x1

    .line 171
    .line 172
    invoke-virtual {p0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 173
    .line 174
    .line 175
    xor-int/2addr v0, v2

    .line 176
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 177
    .line 178
    .line 179
    iget-object v0, p0, Ltv/h;->b:Lsv/b;

    .line 180
    .line 181
    iget-object v0, v0, Lsv/b;->b:Landroid/widget/TextView;

    .line 182
    .line 183
    if-eqz v2, :cond_a

    .line 184
    .line 185
    move v1, p1

    .line 186
    :cond_a
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 187
    .line 188
    .line 189
    return-void
.end method

.method private final p()V
    .locals 2

    .line 1
    iget-object v0, p0, Ltv/h;->b:Lsv/b;

    .line 2
    .line 3
    iget-object v0, v0, Lsv/b;->b:Landroid/widget/TextView;

    .line 4
    .line 5
    new-instance v1, Ltv/e;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Ltv/e;-><init>(Ltv/h;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Ltv/h;->b:Lsv/b;

    .line 14
    .line 15
    iget-object v0, v0, Lsv/b;->c:Landroid/widget/TextView;

    .line 16
    .line 17
    new-instance v1, Ltv/f;

    .line 18
    .line 19
    invoke-direct {v1, p0}, Ltv/f;-><init>(Ltv/h;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    .line 24
    .line 25
    new-instance v0, Ltv/g;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Ltv/g;-><init>(Ltv/h;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method private static final q(Ltv/h;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Ltv/h;->c:Lkotlin/jvm/functions/Function1;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 9
    .line 10
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method private static final r(Ltv/h;Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ltv/h;->f:Lcom/transsion/version/update/RemoteVersionInfo;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/transsion/version/update/RemoteVersionInfo;->getForceUpdate()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 v0, 0x1

    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 14
    .line 15
    .line 16
    :goto_0
    iget-object p0, p0, Ltv/h;->c:Lkotlin/jvm/functions/Function1;

    .line 17
    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 21
    .line 22
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method private static final s(Ltv/h;Landroid/content/DialogInterface;)V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "onShow Listener  "

    .line 9
    .line 10
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const/4 v4, 0x4

    .line 21
    const/4 v5, 0x0

    .line 22
    const-string v1, "update"

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iget-boolean p1, p0, Ltv/h;->e:Z

    .line 29
    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    sget-object p1, Lcom/transsion/version/update/UpdateManager;->f:Lcom/transsion/version/update/UpdateManager$a;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/transsion/version/update/UpdateManager$a;->a()Lcom/transsion/version/update/UpdateManager;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iget-object p0, p0, Ltv/h;->d:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {p1, p0}, Lcom/transsion/version/update/UpdateManager;->h(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method


# virtual methods
.method public b()Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Ltv/h;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v2, "\u88ab\u5f39\u7a97\u62e6\u622a\u7b56\u7565\u62e6\u622a "

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const/4 v2, 0x2

    .line 27
    const/4 v3, 0x0

    .line 28
    const/4 v4, 0x0

    .line 29
    invoke-static {v0, v1, v4, v2, v3}, Lwf/a$a;->g(Lwf/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    return v4
.end method

.method public f()V
    .locals 6

    .line 1
    invoke-super {p0}, Lkj/j;->f()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v2, "onShow "

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const/4 v4, 0x4

    .line 24
    const/4 v5, 0x0

    .line 25
    const-string v1, "update"

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final n(Lkotlin/jvm/functions/Function1;)V
    .locals 1

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Ltv/h;->c:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    return-void
.end method

.method public final o(Lcom/transsion/version/update/RemoteVersionInfo;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltv/h;->f:Lcom/transsion/version/update/RemoteVersionInfo;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Ltv/h;->m(Lcom/transsion/version/update/RemoteVersionInfo;)V

    .line 4
    .line 5
    .line 6
    iput-boolean p2, p0, Ltv/h;->e:Z

    .line 7
    .line 8
    return-void
.end method
