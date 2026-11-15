.class public final Lcom/transsnet/downloader/dialog/TransferGuideDialog$c;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/dialog/TransferGuideDialog;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsnet/downloader/dialog/TransferGuideDialog;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/dialog/TransferGuideDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/dialog/TransferGuideDialog$c;->a:Lcom/transsnet/downloader/dialog/TransferGuideDialog;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsnet/downloader/dialog/TransferGuideDialog$c;->a:Lcom/transsnet/downloader/dialog/TransferGuideDialog;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/transsnet/downloader/dialog/TransferGuideDialog;->q0(Lcom/transsnet/downloader/dialog/TransferGuideDialog;)Lbx/o;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, v0, Lbx/o;->b:Landroid/widget/TextView;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/transsnet/downloader/dialog/TransferGuideDialog$c;->a:Lcom/transsnet/downloader/dialog/TransferGuideDialog;

    .line 17
    .line 18
    invoke-static {v1}, Lcom/transsnet/downloader/dialog/TransferGuideDialog;->r0(Lcom/transsnet/downloader/dialog/TransferGuideDialog;)[Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    aget-object v2, v2, p1

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    iget-object v0, p0, Lcom/transsnet/downloader/dialog/TransferGuideDialog$c;->a:Lcom/transsnet/downloader/dialog/TransferGuideDialog;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/transsnet/downloader/dialog/TransferGuideDialog;->s0(Lcom/transsnet/downloader/dialog/TransferGuideDialog;)[Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    array-length v0, v0

    .line 42
    add-int/lit8 v0, v0, -0x1

    .line 43
    .line 44
    if-ne p1, v0, :cond_1

    .line 45
    .line 46
    iget-object v0, p0, Lcom/transsnet/downloader/dialog/TransferGuideDialog$c;->a:Lcom/transsnet/downloader/dialog/TransferGuideDialog;

    .line 47
    .line 48
    invoke-static {v0}, Lcom/transsnet/downloader/dialog/TransferGuideDialog;->q0(Lcom/transsnet/downloader/dialog/TransferGuideDialog;)Lbx/o;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    iget-object v0, v0, Lbx/o;->f:Landroid/widget/TextView;

    .line 55
    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    iget-object v1, p0, Lcom/transsnet/downloader/dialog/TransferGuideDialog$c;->a:Lcom/transsnet/downloader/dialog/TransferGuideDialog;

    .line 59
    .line 60
    sget v2, Lcom/transsnet/downloader/R$string;->download_tab_transfer_tips_get:I

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/transsnet/downloader/dialog/TransferGuideDialog$c;->a:Lcom/transsnet/downloader/dialog/TransferGuideDialog;

    .line 71
    .line 72
    invoke-static {v0}, Lcom/transsnet/downloader/dialog/TransferGuideDialog;->q0(Lcom/transsnet/downloader/dialog/TransferGuideDialog;)Lbx/o;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    if-eqz v0, :cond_2

    .line 77
    .line 78
    iget-object v0, v0, Lbx/o;->f:Landroid/widget/TextView;

    .line 79
    .line 80
    if-eqz v0, :cond_2

    .line 81
    .line 82
    iget-object v1, p0, Lcom/transsnet/downloader/dialog/TransferGuideDialog$c;->a:Lcom/transsnet/downloader/dialog/TransferGuideDialog;

    .line 83
    .line 84
    sget v2, Lcom/transsnet/downloader/R$string;->download_tab_transfer_tips_next:I

    .line 85
    .line 86
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    .line 92
    .line 93
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/transsnet/downloader/dialog/TransferGuideDialog$c;->a:Lcom/transsnet/downloader/dialog/TransferGuideDialog;

    .line 94
    .line 95
    invoke-static {v0}, Lcom/transsnet/downloader/dialog/TransferGuideDialog;->q0(Lcom/transsnet/downloader/dialog/TransferGuideDialog;)Lbx/o;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    if-eqz v0, :cond_3

    .line 100
    .line 101
    iget-object v0, v0, Lbx/o;->d:Lcom/tn/lib/view/indicator/CircleIndicator;

    .line 102
    .line 103
    if-eqz v0, :cond_3

    .line 104
    .line 105
    iget-object v1, p0, Lcom/transsnet/downloader/dialog/TransferGuideDialog$c;->a:Lcom/transsnet/downloader/dialog/TransferGuideDialog;

    .line 106
    .line 107
    invoke-static {v1}, Lcom/transsnet/downloader/dialog/TransferGuideDialog;->s0(Lcom/transsnet/downloader/dialog/TransferGuideDialog;)[Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    array-length v1, v1

    .line 112
    rem-int/2addr p1, v1

    .line 113
    invoke-virtual {v0, p1}, Lcom/tn/lib/view/indicator/BaseIndicator;->onPageSelected(I)V

    .line 114
    .line 115
    .line 116
    :cond_3
    return-void
.end method
