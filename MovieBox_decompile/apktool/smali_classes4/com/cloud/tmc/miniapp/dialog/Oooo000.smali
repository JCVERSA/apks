.class public final Lcom/cloud/tmc/miniapp/dialog/Oooo000;
.super Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o<",
        "Lcom/cloud/tmc/miniapp/dialog/Oooo000;",
        ">;"
    }
.end annotation


# instance fields
.field public final OooO00o:Lkotlin/Lazy;

.field public final OooO0O0:Lkotlin/Lazy;

.field public final OooO0OO:Lkotlin/Lazy;

.field public final OooO0Oo:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

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
    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/Oooo000$OooO0o;

    .line 10
    .line 11
    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/Oooo000$OooO0o;-><init>(Lcom/cloud/tmc/miniapp/dialog/Oooo000;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/Oooo000;->OooO00o:Lkotlin/Lazy;

    .line 19
    .line 20
    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/Oooo000$OooO0OO;

    .line 21
    .line 22
    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/Oooo000$OooO0OO;-><init>(Lcom/cloud/tmc/miniapp/dialog/Oooo000;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/Oooo000;->OooO0O0:Lkotlin/Lazy;

    .line 30
    .line 31
    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/Oooo000$OooO00o;

    .line 32
    .line 33
    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/Oooo000$OooO00o;-><init>(Lcom/cloud/tmc/miniapp/dialog/Oooo000;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/Oooo000;->OooO0OO:Lkotlin/Lazy;

    .line 41
    .line 42
    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/Oooo000$OooO0O0;

    .line 43
    .line 44
    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/Oooo000$OooO0O0;-><init>(Lcom/cloud/tmc/miniapp/dialog/Oooo000;)V

    .line 45
    .line 46
    .line 47
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/Oooo000;->OooO0Oo:Lkotlin/Lazy;

    .line 52
    .line 53
    sget p1, Lcom/cloud/tmc/miniapp/R$layout;->layout_fw_update_tips:I

    .line 54
    .line 55
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setContentView(I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 56
    .line 57
    .line 58
    const/4 p1, 0x0

    .line 59
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setCanceledOnTouchOutside(Z)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 60
    .line 61
    .line 62
    const/4 v0, -0x1

    .line 63
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setAnimStyle(I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/Oooo000;->OooO0Oo()Landroid/widget/TextView;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    if-nez v0, :cond_0

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_0
    sget v1, Lcom/cloud/tmc/miniapp/R$string;->mini_dialog_download_error_title:I

    .line 74
    .line 75
    invoke-virtual {p0, v1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getString(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    .line 81
    .line 82
    :goto_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/Oooo000;->OooO0OO()Landroid/widget/TextView;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    if-nez v0, :cond_1

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_1
    sget v1, Lcom/cloud/tmc/miniapp/R$string;->mini_dialog_download_error_content:I

    .line 90
    .line 91
    invoke-virtual {p0, v1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getString(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    .line 97
    .line 98
    :goto_1
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/Oooo000;->OooO00o()Landroid/widget/TextView;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    if-nez v0, :cond_2

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_2
    sget v1, Lcom/cloud/tmc/miniapp/R$string;->mini_text_cancel:I

    .line 106
    .line 107
    invoke-virtual {p0, v1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getString(I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    .line 113
    .line 114
    :goto_2
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/Oooo000;->OooO0O0()Landroid/widget/TextView;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    if-nez v0, :cond_3

    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_3
    sget v1, Lcom/cloud/tmc/miniapp/R$string;->mini_dialog_download_error_retry_btn:I

    .line 122
    .line 123
    invoke-virtual {p0, v1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getString(I)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    .line 129
    .line 130
    :goto_3
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/Oooo000;->OooO00o()Landroid/widget/TextView;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/Oooo000;->OooO0O0()Landroid/widget/TextView;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    const/4 v2, 0x2

    .line 139
    new-array v2, v2, [Landroid/view/View;

    .line 140
    .line 141
    aput-object v0, v2, p1

    .line 142
    .line 143
    const/4 p1, 0x1

    .line 144
    aput-object v1, v2, p1

    .line 145
    .line 146
    invoke-virtual {p0, v2}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setOnClickListener([Landroid/view/View;)V

    .line 147
    .line 148
    .line 149
    return-void
.end method


# virtual methods
.method public final OooO00o()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/Oooo000;->OooO0OO:Lkotlin/Lazy;

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

.method public final OooO0O0()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/Oooo000;->OooO0Oo:Lkotlin/Lazy;

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
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/Oooo000;->OooO0O0:Lkotlin/Lazy;

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
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/Oooo000;->OooO00o:Lkotlin/Lazy;

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
    .locals 3

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/Oooo000;->OooO00o()Landroid/widget/TextView;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    instance-of v0, p1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    move-object v1, p1

    .line 26
    check-cast v1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 27
    .line 28
    :cond_0
    if-eqz v1, :cond_4

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->killActivity()V

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/Oooo000;->OooO0O0()Landroid/widget/TextView;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_4

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getContext()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    instance-of v0, p1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 49
    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    check-cast p1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    move-object p1, v1

    .line 56
    :goto_0
    if-eqz p1, :cond_3

    .line 57
    .line 58
    const/4 v0, 0x0

    .line 59
    const/4 v2, 0x3

    .line 60
    invoke-static {p1, v0, v1, v2, v1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->reload$default(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;ZLandroid/os/Bundle;ILjava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    :cond_3
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dismiss()V

    .line 64
    .line 65
    .line 66
    :cond_4
    :goto_1
    return-void
.end method
