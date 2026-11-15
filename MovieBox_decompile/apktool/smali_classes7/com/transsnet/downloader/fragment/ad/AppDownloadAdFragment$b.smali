.class public final Lcom/transsnet/downloader/fragment/ad/AppDownloadAdFragment$b;
.super Loh/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/fragment/ad/AppDownloadAdFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsnet/downloader/fragment/ad/AppDownloadAdFragment;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/fragment/ad/AppDownloadAdFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/fragment/ad/AppDownloadAdFragment$b;->d:Lcom/transsnet/downloader/fragment/ad/AppDownloadAdFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Loh/a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public w(Ljava/util/List;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Loh/a;->w(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/ad/AppDownloadAdFragment$b;->d:Lcom/transsnet/downloader/fragment/ad/AppDownloadAdFragment;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/transsnet/downloader/fragment/ad/AppDownloadAdFragment;->l0(Lcom/transsnet/downloader/fragment/ad/AppDownloadAdFragment;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 11
    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    move-object v0, p1

    .line 16
    check-cast v0, Ljava/util/Collection;

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x1

    .line 23
    xor-int/2addr v0, v1

    .line 24
    if-ne v0, v1, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/ad/AppDownloadAdFragment$b;->d:Lcom/transsnet/downloader/fragment/ad/AppDownloadAdFragment;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/transsnet/downloader/fragment/ad/AppDownloadAdFragment;->l0(Lcom/transsnet/downloader/fragment/ad/AppDownloadAdFragment;)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast p1, Ljava/util/Collection;

    .line 33
    .line 34
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 35
    .line 36
    .line 37
    :cond_0
    iget-object p1, p0, Lcom/transsnet/downloader/fragment/ad/AppDownloadAdFragment$b;->d:Lcom/transsnet/downloader/fragment/ad/AppDownloadAdFragment;

    .line 38
    .line 39
    invoke-static {p1}, Lcom/transsnet/downloader/fragment/ad/AppDownloadAdFragment;->n0(Lcom/transsnet/downloader/fragment/ad/AppDownloadAdFragment;)Lcom/transsnet/downloader/fragment/ad/a;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/ad/AppDownloadAdFragment$b;->d:Lcom/transsnet/downloader/fragment/ad/AppDownloadAdFragment;

    .line 46
    .line 47
    invoke-static {v0}, Lcom/transsnet/downloader/fragment/ad/AppDownloadAdFragment;->l0(Lcom/transsnet/downloader/fragment/ad/AppDownloadAdFragment;)Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Ljava/util/Collection;

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    iget-object p1, p0, Lcom/transsnet/downloader/fragment/ad/AppDownloadAdFragment$b;->d:Lcom/transsnet/downloader/fragment/ad/AppDownloadAdFragment;

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Lbx/t;

    .line 63
    .line 64
    const/16 v0, 0x8

    .line 65
    .line 66
    const/4 v1, 0x0

    .line 67
    if-eqz p1, :cond_3

    .line 68
    .line 69
    iget-object p1, p1, Lbx/t;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 70
    .line 71
    if-eqz p1, :cond_3

    .line 72
    .line 73
    iget-object v2, p0, Lcom/transsnet/downloader/fragment/ad/AppDownloadAdFragment$b;->d:Lcom/transsnet/downloader/fragment/ad/AppDownloadAdFragment;

    .line 74
    .line 75
    invoke-static {v2}, Lcom/transsnet/downloader/fragment/ad/AppDownloadAdFragment;->l0(Lcom/transsnet/downloader/fragment/ad/AppDownloadAdFragment;)Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    check-cast v3, Ljava/util/Collection;

    .line 80
    .line 81
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-nez v3, :cond_2

    .line 86
    .line 87
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 88
    .line 89
    .line 90
    invoke-static {v2}, Lcom/transsnet/downloader/fragment/ad/AppDownloadAdFragment;->l0(Lcom/transsnet/downloader/fragment/ad/AppDownloadAdFragment;)Ljava/util/List;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 107
    .line 108
    .line 109
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/transsnet/downloader/fragment/ad/AppDownloadAdFragment$b;->d:Lcom/transsnet/downloader/fragment/ad/AppDownloadAdFragment;

    .line 110
    .line 111
    invoke-virtual {p1}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    check-cast p1, Lbx/t;

    .line 116
    .line 117
    if-eqz p1, :cond_5

    .line 118
    .line 119
    iget-object p1, p1, Lbx/t;->c:Landroid/widget/FrameLayout;

    .line 120
    .line 121
    if-eqz p1, :cond_5

    .line 122
    .line 123
    iget-object v2, p0, Lcom/transsnet/downloader/fragment/ad/AppDownloadAdFragment$b;->d:Lcom/transsnet/downloader/fragment/ad/AppDownloadAdFragment;

    .line 124
    .line 125
    invoke-static {v2}, Lcom/transsnet/downloader/fragment/ad/AppDownloadAdFragment;->l0(Lcom/transsnet/downloader/fragment/ad/AppDownloadAdFragment;)Ljava/util/List;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    if-eqz v2, :cond_4

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_4
    move v0, v1

    .line 137
    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 138
    .line 139
    .line 140
    :cond_5
    return-void
.end method
