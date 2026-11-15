.class public final Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment$e;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment;->initView(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment;


# direct methods
.method constructor <init>(Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment$e;->a:Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment;

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
    if-eqz p1, :cond_1

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 p2, 0x0

    .line 16
    :goto_0
    const/4 p3, 0x1

    .line 17
    if-eqz p2, :cond_5

    .line 18
    .line 19
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-nez p2, :cond_2

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_2
    iget-object p2, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment$e;->a:Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment;

    .line 27
    .line 28
    invoke-static {p2}, Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment;->j0(Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment;)Ljava/util/Map;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    iget-object v0, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment$e;->a:Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment;->l0(Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment;)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    check-cast p2, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;

    .line 47
    .line 48
    if-eqz p2, :cond_3

    .line 49
    .line 50
    iget-object v0, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment$e;->a:Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment;

    .line 51
    .line 52
    invoke-static {v0}, Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment;->k0(Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {p2, v0}, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->Q0(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :cond_3
    if-eqz p1, :cond_4

    .line 60
    .line 61
    invoke-static {p1}, Lcom/blankj/utilcode/util/KeyboardUtils;->e(Landroid/view/View;)V

    .line 62
    .line 63
    .line 64
    :cond_4
    return p3

    .line 65
    :cond_5
    :goto_1
    sget-object p1, Lfh/b;->a:Lfh/b$a;

    .line 66
    .line 67
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    sget v0, Lcom/transsion/subtitle/R$string;->subtitle_search_empty_tips:I

    .line 72
    .line 73
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    invoke-virtual {p1, p2}, Lfh/b$a;->e(Ljava/lang/CharSequence;)V

    .line 78
    .line 79
    .line 80
    return p3
.end method
