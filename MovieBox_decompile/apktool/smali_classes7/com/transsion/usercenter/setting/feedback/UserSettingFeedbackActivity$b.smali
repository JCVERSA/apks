.class public final Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity$b;->a:Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move p1, v1

    .line 11
    :goto_0
    iget-object v2, p0, Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity$b;->a:Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity;

    .line 12
    .line 13
    sget v3, Lcom/transsion/usercenter/R$string;->user_setting_feedback_max_len:I

    .line 14
    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    new-array v5, v0, [Ljava/lang/Object;

    .line 20
    .line 21
    aput-object v4, v5, v1

    .line 22
    .line 23
    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const-string v3, "getString(...)"

    .line 28
    .line 29
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/16 v3, 0x1f4

    .line 33
    .line 34
    if-ge p1, v3, :cond_1

    .line 35
    .line 36
    iget-object v3, p0, Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity$b;->a:Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity;

    .line 37
    .line 38
    invoke-static {v3}, Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity;->h0(Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity;)Lxu/x0;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    if-eqz v3, :cond_2

    .line 43
    .line 44
    iget-object v3, v3, Lxu/x0;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 45
    .line 46
    if-eqz v3, :cond_2

    .line 47
    .line 48
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    .line 53
    .line 54
    iget-object v4, p0, Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity$b;->a:Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity;

    .line 55
    .line 56
    sget v5, Lcom/transsion/usercenter/R$color;->base_color_FA5546:I

    .line 57
    .line 58
    invoke-static {v4, v5}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 63
    .line 64
    .line 65
    new-instance v4, Landroid/text/SpannableStringBuilder;

    .line 66
    .line 67
    invoke-direct {v4, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 68
    .line 69
    .line 70
    const/4 v2, 0x3

    .line 71
    const/16 v5, 0x21

    .line 72
    .line 73
    invoke-virtual {v4, v3, v1, v2, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 74
    .line 75
    .line 76
    iget-object v2, p0, Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity$b;->a:Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity;

    .line 77
    .line 78
    invoke-static {v2}, Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity;->h0(Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity;)Lxu/x0;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    if-eqz v2, :cond_2

    .line 83
    .line 84
    iget-object v2, v2, Lxu/x0;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 85
    .line 86
    if-eqz v2, :cond_2

    .line 87
    .line 88
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    .line 90
    .line 91
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity$b;->a:Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity;

    .line 92
    .line 93
    invoke-static {v2}, Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity;->h0(Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity;)Lxu/x0;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    if-eqz v2, :cond_4

    .line 98
    .line 99
    iget-object v2, v2, Lxu/x0;->b:Landroidx/appcompat/widget/AppCompatButton;

    .line 100
    .line 101
    if-eqz v2, :cond_4

    .line 102
    .line 103
    if-lt p1, v0, :cond_3

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_3
    move v0, v1

    .line 107
    :goto_2
    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 108
    .line 109
    .line 110
    :cond_4
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    return-void
.end method
