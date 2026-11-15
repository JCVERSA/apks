.class public final Lcom/transsion/subtitle/fragment/NoSubtitleTipFragment$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/subtitle/fragment/NoSubtitleTipFragment;->initView(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/subtitle/fragment/NoSubtitleTipFragment;


# direct methods
.method constructor <init>(Lcom/transsion/subtitle/fragment/NoSubtitleTipFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/subtitle/fragment/NoSubtitleTipFragment$b;->a:Lcom/transsion/subtitle/fragment/NoSubtitleTipFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    const/4 p3, 0x3

    .line 4
    if-eq p2, p3, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    return p1

    .line 8
    :cond_0
    const/4 p2, 0x0

    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    move-object p3, p2

    .line 17
    :goto_0
    const/4 v0, 0x1

    .line 18
    if-eqz p3, :cond_7

    .line 19
    .line 20
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    .line 21
    .line 22
    .line 23
    move-result p3

    .line 24
    if-nez p3, :cond_2

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_2
    if-eqz p1, :cond_3

    .line 28
    .line 29
    invoke-static {p1}, Lcom/blankj/utilcode/util/KeyboardUtils;->e(Landroid/view/View;)V

    .line 30
    .line 31
    .line 32
    :cond_3
    iget-object p1, p0, Lcom/transsion/subtitle/fragment/NoSubtitleTipFragment$b;->a:Lcom/transsion/subtitle/fragment/NoSubtitleTipFragment;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/transsion/subtitle/fragment/SubtitleBaseFragment;->b0()Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    if-eqz p1, :cond_5

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;->n()Landroidx/lifecycle/b0;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    if-eqz p1, :cond_5

    .line 45
    .line 46
    iget-object p3, p0, Lcom/transsion/subtitle/fragment/NoSubtitleTipFragment$b;->a:Lcom/transsion/subtitle/fragment/NoSubtitleTipFragment;

    .line 47
    .line 48
    invoke-virtual {p3}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 49
    .line 50
    .line 51
    move-result-object p3

    .line 52
    check-cast p3, Ljt/d;

    .line 53
    .line 54
    if-eqz p3, :cond_4

    .line 55
    .line 56
    iget-object p3, p3, Ljt/d;->b:Lcom/transsion/baseui/widget/EditTextWithClear;

    .line 57
    .line 58
    if-eqz p3, :cond_4

    .line 59
    .line 60
    invoke-virtual {p3}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 61
    .line 62
    .line 63
    move-result-object p3

    .line 64
    if-eqz p3, :cond_4

    .line 65
    .line 66
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    :cond_4
    invoke-virtual {p1, p2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    :cond_5
    iget-object p1, p0, Lcom/transsion/subtitle/fragment/NoSubtitleTipFragment$b;->a:Lcom/transsion/subtitle/fragment/NoSubtitleTipFragment;

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/transsion/subtitle/fragment/SubtitleBaseFragment;->b0()Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    if-eqz p1, :cond_6

    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;->h()Landroidx/lifecycle/b0;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    if-eqz p1, :cond_6

    .line 86
    .line 87
    const-string p2, "DOWNLOAD_SUBTITLE"

    .line 88
    .line 89
    invoke-virtual {p1, p2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    :cond_6
    return v0

    .line 93
    :cond_7
    :goto_1
    sget-object p1, Lfh/b;->a:Lfh/b$a;

    .line 94
    .line 95
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    sget p3, Lcom/transsion/subtitle/R$string;->subtitle_search_empty_tips:I

    .line 100
    .line 101
    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    invoke-virtual {p1, p2}, Lfh/b$a;->e(Ljava/lang/CharSequence;)V

    .line 106
    .line 107
    .line 108
    return v0
.end method
