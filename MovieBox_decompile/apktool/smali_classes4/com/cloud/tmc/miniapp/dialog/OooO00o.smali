.class public final Lcom/cloud/tmc/miniapp/dialog/OooO00o;
.super Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o<",
        "Lcom/cloud/tmc/miniapp/dialog/OooO00o;",
        ">;"
    }
.end annotation


# instance fields
.field public final OooO:Lkotlin/Lazy;

.field public OooO00o:Lcom/cloud/tmc/integration/callback/LocalAuthPermissionCallback;

.field public final OooO0O0:Lkotlin/Lazy;

.field public final OooO0OO:Lkotlin/Lazy;

.field public final OooO0Oo:Lkotlin/Lazy;

.field public final OooO0o:Lkotlin/Lazy;

.field public final OooO0o0:Lkotlin/Lazy;

.field public final OooO0oO:Lkotlin/Lazy;

.field public OooO0oo:Z

.field public final OooOO0:Lkotlin/Lazy;

.field public OooOO0O:Ljava/lang/String;

.field public OooOO0o:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

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
    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/OooO00o$OooOO0;

    .line 10
    .line 11
    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/OooO00o$OooOO0;-><init>(Lcom/cloud/tmc/miniapp/dialog/OooO00o;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO00o;->OooO0O0:Lkotlin/Lazy;

    .line 19
    .line 20
    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/OooO00o$OooOO0O;

    .line 21
    .line 22
    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/OooO00o$OooOO0O;-><init>(Lcom/cloud/tmc/miniapp/dialog/OooO00o;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO00o;->OooO0OO:Lkotlin/Lazy;

    .line 30
    .line 31
    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/OooO00o$OooOOOO;

    .line 32
    .line 33
    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/OooO00o$OooOOOO;-><init>(Lcom/cloud/tmc/miniapp/dialog/OooO00o;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO00o;->OooO0Oo:Lkotlin/Lazy;

    .line 41
    .line 42
    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/OooO00o$OooOOO0;

    .line 43
    .line 44
    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/OooO00o$OooOOO0;-><init>(Lcom/cloud/tmc/miniapp/dialog/OooO00o;)V

    .line 45
    .line 46
    .line 47
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO00o;->OooO0o0:Lkotlin/Lazy;

    .line 52
    .line 53
    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/OooO00o$OooOOO;

    .line 54
    .line 55
    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/OooO00o$OooOOO;-><init>(Lcom/cloud/tmc/miniapp/dialog/OooO00o;)V

    .line 56
    .line 57
    .line 58
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO00o;->OooO0o:Lkotlin/Lazy;

    .line 63
    .line 64
    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/OooO00o$OooO0o;

    .line 65
    .line 66
    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/OooO00o$OooO0o;-><init>(Lcom/cloud/tmc/miniapp/dialog/OooO00o;)V

    .line 67
    .line 68
    .line 69
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO00o;->OooO0oO:Lkotlin/Lazy;

    .line 74
    .line 75
    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/OooO00o$OooOo00;

    .line 76
    .line 77
    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/OooO00o$OooOo00;-><init>(Lcom/cloud/tmc/miniapp/dialog/OooO00o;)V

    .line 78
    .line 79
    .line 80
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO00o;->OooO:Lkotlin/Lazy;

    .line 85
    .line 86
    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/OooO00o$OooO;

    .line 87
    .line 88
    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/OooO00o$OooO;-><init>(Lcom/cloud/tmc/miniapp/dialog/OooO00o;)V

    .line 89
    .line 90
    .line 91
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO00o;->OooOO0:Lkotlin/Lazy;

    .line 96
    .line 97
    const-string p1, ""

    .line 98
    .line 99
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO00o;->OooOO0O:Ljava/lang/String;

    .line 100
    .line 101
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO00o;->OooOO0o:Ljava/lang/String;

    .line 102
    .line 103
    sget p1, Lcom/cloud/tmc/miniapp/R$layout;->mini_addhome_confirm_layout:I

    .line 104
    .line 105
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setContentView(I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 106
    .line 107
    .line 108
    sget-object p1, Lcom/cloud/tmc/miniapp/action/AnimAction;->Companion:Lcom/cloud/tmc/miniapp/action/AnimAction$Companion;

    .line 109
    .line 110
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/action/AnimAction$Companion;->getANIM_BOTTOM()I

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setAnimStyle(I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 115
    .line 116
    .line 117
    const/4 p1, 0x1

    .line 118
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setBackgroundDimEnabled(Z)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO00o;->OooO00o()Landroid/widget/TextView;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO00o;->OooO0O0()Landroid/widget/TextView;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO00o;->OooO0OO()Landroid/view/View;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    const/4 v3, 0x3

    .line 134
    new-array v3, v3, [Landroid/view/View;

    .line 135
    .line 136
    const/4 v4, 0x0

    .line 137
    aput-object v0, v3, v4

    .line 138
    .line 139
    aput-object v1, v3, p1

    .line 140
    .line 141
    const/4 p1, 0x2

    .line 142
    aput-object v2, v3, p1

    .line 143
    .line 144
    invoke-virtual {p0, v3}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setOnClickListener([Landroid/view/View;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0, v4}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setCancelable(Z)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0, v4}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setCanceledOnTouchOutside(Z)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 151
    .line 152
    .line 153
    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/OooO00o$OooO00o;

    .line 154
    .line 155
    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/OooO00o$OooO00o;-><init>(Lcom/cloud/tmc/miniapp/dialog/OooO00o;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->addOnShowListener(Lcom/cloud/tmc/miniapp/dialog/OooO0O0$Oooo000;)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 159
    .line 160
    .line 161
    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/OooO00o$OooO0O0;

    .line 162
    .line 163
    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/OooO00o$OooO0O0;-><init>(Lcom/cloud/tmc/miniapp/dialog/OooO00o;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->addOnCancelListener(Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOOO0;)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 167
    .line 168
    .line 169
    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/OooO00o$OooO0OO;

    .line 170
    .line 171
    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/OooO00o$OooO0OO;-><init>(Lcom/cloud/tmc/miniapp/dialog/OooO00o;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->addOnDismissListener(Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOo00;)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 175
    .line 176
    .line 177
    return-void
.end method


# virtual methods
.method public final OooO00o()Landroid/widget/TextView;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO00o;->OooO0OO:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final OooO00o(Ljava/lang/String;)Lcom/cloud/tmc/miniapp/dialog/OooO00o;
    .locals 9

    if-eqz p1, :cond_1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO00o;->OooO0O0:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroidx/appcompat/widget/AppCompatImageView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-class v0, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;

    if-eqz v4, :cond_0

    .line 2
    :try_start_1
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;

    .line 3
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x40800000    # 4.0f

    .line 4
    invoke-static {v3}, Lcom/cloud/tmc/miniutils/util/SizeUtils;->dp2px(F)I

    move-result v5

    .line 5
    sget v7, Lcom/cloud/tmc/miniapp/R$drawable;->drawable_app_icon_place_holder:I

    move-object v3, p1

    move v6, v7

    .line 6
    invoke-interface/range {v1 .. v7}, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;->loadImgRoundCorners(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;III)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 7
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO00o;->OooOO0:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v5, :cond_1

    .line 8
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;

    .line 9
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v0, 0x41800000    # 16.0f

    .line 10
    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/SizeUtils;->dp2px(F)I

    move-result v6

    .line 11
    sget v8, Lcom/cloud/tmc/miniapp/R$drawable;->drawable_app_icon_place_holder:I

    move-object v4, p1

    move v7, v8

    .line 12
    invoke-interface/range {v2 .. v8}, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;->loadImgRoundCorners(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 13
    :goto_1
    const-string v0, "PermissionDialog"

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    return-object p0
.end method

.method public final OooO0O0()Landroid/widget/TextView;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO00o;->OooO0o0:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final OooO0O0(Ljava/lang/String;)Lcom/cloud/tmc/miniapp/dialog/OooO00o;
    .locals 5

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO00o;->OooO0Oo:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    .line 3
    sget v2, Lcom/cloud/tmc/miniapp/R$string;->mini_permission_dialog_title:I

    invoke-static {v2}, Lcom/cloud/tmc/miniutils/util/StringUtils;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(R.string.mini_permission_dialog_title)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 5
    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "format(format, *args)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO00o;->OooO0o:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 8
    const-string v0, "setAppTitle"

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-object p0
.end method

.method public final OooO0OO()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO00o;->OooO:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/View;

    .line 8
    .line 9
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

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
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO00o;->OooO0OO:Lkotlin/Lazy;

    .line 10
    .line 11
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/widget/TextView;

    .line 16
    .line 17
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO00o;->OooO00o:Lcom/cloud/tmc/integration/callback/LocalAuthPermissionCallback;

    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-interface {p1, v0}, Lcom/cloud/tmc/integration/callback/LocalAuthPermissionCallback;->onGranted(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dismiss()V

    .line 32
    .line 33
    .line 34
    goto :goto_3

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO00o;->OooO0o0:Lkotlin/Lazy;

    .line 36
    .line 37
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Landroid/widget/TextView;

    .line 42
    .line 43
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO00o;->OooO00o:Lcom/cloud/tmc/integration/callback/LocalAuthPermissionCallback;

    .line 50
    .line 51
    if-eqz p1, :cond_2

    .line 52
    .line 53
    invoke-interface {p1}, Lcom/cloud/tmc/integration/callback/LocalAuthPermissionCallback;->onDenied()V

    .line 54
    .line 55
    .line 56
    :cond_2
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dismiss()V

    .line 57
    .line 58
    .line 59
    goto :goto_3

    .line 60
    :cond_3
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO00o;->OooO:Lkotlin/Lazy;

    .line 61
    .line 62
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Landroid/view/View;

    .line 67
    .line 68
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-eqz p1, :cond_6

    .line 73
    .line 74
    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO00o;->OooO0oo:Z

    .line 75
    .line 76
    xor-int/lit8 p1, p1, 0x1

    .line 77
    .line 78
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO00o;->OooO0oo:Z

    .line 79
    .line 80
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO00o;->OooO0oO:Lkotlin/Lazy;

    .line 81
    .line 82
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    check-cast p1, Landroid/widget/ImageView;

    .line 87
    .line 88
    if-nez p1, :cond_4

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_4
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO00o;->OooO0oo:Z

    .line 92
    .line 93
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 94
    .line 95
    .line 96
    :goto_0
    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO00o;->OooO0oo:Z

    .line 97
    .line 98
    if-eqz p1, :cond_5

    .line 99
    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 101
    .line 102
    .line 103
    move-result-wide v0

    .line 104
    :goto_1
    move-wide v6, v0

    .line 105
    goto :goto_2

    .line 106
    :cond_5
    const-wide/16 v0, 0x0

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :goto_2
    const-class p1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 110
    .line 111
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    move-object v2, p1

    .line 116
    check-cast v2, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 117
    .line 118
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getContext()Landroid/content/Context;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/dialog/OooO00o;->OooOO0o:Ljava/lang/String;

    .line 123
    .line 124
    const-string v5, "miniAddHomeNotShowAgainTime"

    .line 125
    .line 126
    invoke-interface/range {v2 .. v7}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 127
    .line 128
    .line 129
    :cond_6
    :goto_3
    return-void
.end method
