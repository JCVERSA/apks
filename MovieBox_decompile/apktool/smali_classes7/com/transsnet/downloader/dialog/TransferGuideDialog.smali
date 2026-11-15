.class public final Lcom/transsnet/downloader/dialog/TransferGuideDialog;
.super Lcom/transsion/baseui/dialog/BaseDialog;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsnet/downloader/dialog/TransferGuideDialog$a;,
        Lcom/transsnet/downloader/dialog/TransferGuideDialog$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0010\u0008\n\u0002\u0008\t\u0018\u0000 \u00192\u00020\u0001:\u0002\u001a\u001bB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u0019\u0010\u0008\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ!\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\n2\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rR\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00128\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\u001a\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00128\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0015\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/transsnet/downloader/dialog/TransferGuideDialog;",
        "Lcom/transsion/baseui/dialog/BaseDialog;",
        "<init>",
        "()V",
        "",
        "initView",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/view/View;",
        "view",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Lbx/o;",
        "c",
        "Lbx/o;",
        "bind",
        "",
        "",
        "d",
        "[Ljava/lang/Integer;",
        "imageIds",
        "e",
        "descIds",
        "f",
        "a",
        "b",
        "Downloader_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final f:Lcom/transsnet/downloader/dialog/TransferGuideDialog$a;


# instance fields
.field private c:Lbx/o;

.field private final d:[Ljava/lang/Integer;

.field private final e:[Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsnet/downloader/dialog/TransferGuideDialog$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsnet/downloader/dialog/TransferGuideDialog$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsnet/downloader/dialog/TransferGuideDialog;->f:Lcom/transsnet/downloader/dialog/TransferGuideDialog$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 1
    sget v0, Lcom/transsnet/downloader/R$layout;->dialog_transfer_tips_layout:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/transsion/baseui/dialog/BaseDialog;-><init>(I)V

    .line 4
    .line 5
    .line 6
    sget v0, Lcom/transsnet/downloader/R$mipmap;->image_transfer_tips_step1:I

    .line 7
    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget v1, Lcom/transsnet/downloader/R$mipmap;->image_transfer_tips_step2:I

    .line 13
    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    sget v2, Lcom/transsnet/downloader/R$mipmap;->image_transfer_tips_step3:I

    .line 19
    .line 20
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const/4 v3, 0x3

    .line 25
    new-array v4, v3, [Ljava/lang/Integer;

    .line 26
    .line 27
    const/4 v5, 0x0

    .line 28
    aput-object v0, v4, v5

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    aput-object v1, v4, v0

    .line 32
    .line 33
    const/4 v1, 0x2

    .line 34
    aput-object v2, v4, v1

    .line 35
    .line 36
    iput-object v4, p0, Lcom/transsnet/downloader/dialog/TransferGuideDialog;->d:[Ljava/lang/Integer;

    .line 37
    .line 38
    sget v2, Lcom/transsnet/downloader/R$string;->download_tab_transfer_tips_desc_1:I

    .line 39
    .line 40
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    sget v4, Lcom/transsnet/downloader/R$string;->download_tab_transfer_tips_desc_2:I

    .line 45
    .line 46
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    sget v6, Lcom/transsnet/downloader/R$string;->download_tab_transfer_tips_desc_3:I

    .line 51
    .line 52
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    new-array v3, v3, [Ljava/lang/Integer;

    .line 57
    .line 58
    aput-object v2, v3, v5

    .line 59
    .line 60
    aput-object v4, v3, v0

    .line 61
    .line 62
    aput-object v6, v3, v1

    .line 63
    .line 64
    iput-object v3, p0, Lcom/transsnet/downloader/dialog/TransferGuideDialog;->e:[Ljava/lang/Integer;

    .line 65
    .line 66
    return-void
.end method

.method private final initView()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/dialog/TransferGuideDialog;->c:Lbx/o;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lbx/o;->c:Landroidx/viewpager2/widget/ViewPager2;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v1, Lcom/transsnet/downloader/dialog/TransferGuideDialog$c;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/transsnet/downloader/dialog/TransferGuideDialog$c;-><init>(Lcom/transsnet/downloader/dialog/TransferGuideDialog;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 15
    .line 16
    .line 17
    new-instance v1, Lcom/transsnet/downloader/dialog/TransferGuideDialog$b;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/transsnet/downloader/dialog/TransferGuideDialog;->d:[Ljava/lang/Integer;

    .line 20
    .line 21
    invoke-direct {v1, v2}, Lcom/transsnet/downloader/dialog/TransferGuideDialog$b;-><init>([Ljava/lang/Integer;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 25
    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object v0, p0, Lcom/transsnet/downloader/dialog/TransferGuideDialog;->c:Lbx/o;

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    iget-object v0, v0, Lbx/o;->f:Landroid/widget/TextView;

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    new-instance v1, Lcom/transsnet/downloader/dialog/i0;

    .line 40
    .line 41
    invoke-direct {v1, p0}, Lcom/transsnet/downloader/dialog/i0;-><init>(Lcom/transsnet/downloader/dialog/TransferGuideDialog;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    iget-object v0, p0, Lcom/transsnet/downloader/dialog/TransferGuideDialog;->c:Lbx/o;

    .line 48
    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    iget-object v0, v0, Lbx/o;->e:Landroidx/appcompat/widget/AppCompatImageView;

    .line 52
    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    new-instance v1, Lcom/transsnet/downloader/dialog/j0;

    .line 56
    .line 57
    invoke-direct {v1, p0}, Lcom/transsnet/downloader/dialog/j0;-><init>(Lcom/transsnet/downloader/dialog/TransferGuideDialog;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    .line 62
    .line 63
    :cond_2
    iget-object v0, p0, Lcom/transsnet/downloader/dialog/TransferGuideDialog;->c:Lbx/o;

    .line 64
    .line 65
    if-eqz v0, :cond_3

    .line 66
    .line 67
    iget-object v0, v0, Lbx/o;->d:Lcom/tn/lib/view/indicator/CircleIndicator;

    .line 68
    .line 69
    if-eqz v0, :cond_3

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/tn/lib/view/indicator/BaseIndicator;->getIndicatorConfig()Lcom/tn/lib/view/indicator/a;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    if-eqz v0, :cond_3

    .line 76
    .line 77
    const-string v1, "#10A84D"

    .line 78
    .line 79
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    invoke-virtual {v0, v1}, Lcom/tn/lib/view/indicator/a;->s(I)Lcom/tn/lib/view/indicator/a;

    .line 84
    .line 85
    .line 86
    const-string v1, "#66FFFFFF"

    .line 87
    .line 88
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    invoke-virtual {v0, v1}, Lcom/tn/lib/view/indicator/a;->q(I)Lcom/tn/lib/view/indicator/a;

    .line 93
    .line 94
    .line 95
    const/high16 v1, 0x41000000    # 8.0f

    .line 96
    .line 97
    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    invoke-virtual {v0, v2}, Lcom/tn/lib/view/indicator/a;->r(I)Lcom/tn/lib/view/indicator/a;

    .line 102
    .line 103
    .line 104
    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    invoke-virtual {v0, v1}, Lcom/tn/lib/view/indicator/a;->t(I)Lcom/tn/lib/view/indicator/a;

    .line 109
    .line 110
    .line 111
    iget-object v1, p0, Lcom/transsnet/downloader/dialog/TransferGuideDialog;->d:[Ljava/lang/Integer;

    .line 112
    .line 113
    array-length v1, v1

    .line 114
    invoke-virtual {v0, v1}, Lcom/tn/lib/view/indicator/a;->n(I)Lcom/tn/lib/view/indicator/a;

    .line 115
    .line 116
    .line 117
    :cond_3
    iget-object v0, p0, Lcom/transsnet/downloader/dialog/TransferGuideDialog;->c:Lbx/o;

    .line 118
    .line 119
    if-eqz v0, :cond_4

    .line 120
    .line 121
    iget-object v0, v0, Lbx/o;->d:Lcom/tn/lib/view/indicator/CircleIndicator;

    .line 122
    .line 123
    if-eqz v0, :cond_4

    .line 124
    .line 125
    new-instance v1, Lcom/transsnet/downloader/dialog/k0;

    .line 126
    .line 127
    invoke-direct {v1, p0}, Lcom/transsnet/downloader/dialog/k0;-><init>(Lcom/transsnet/downloader/dialog/TransferGuideDialog;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 131
    .line 132
    .line 133
    :cond_4
    return-void
.end method

.method public static synthetic n0(Lcom/transsnet/downloader/dialog/TransferGuideDialog;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsnet/downloader/dialog/TransferGuideDialog;->v0(Lcom/transsnet/downloader/dialog/TransferGuideDialog;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic o0(Lcom/transsnet/downloader/dialog/TransferGuideDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/downloader/dialog/TransferGuideDialog;->t0(Lcom/transsnet/downloader/dialog/TransferGuideDialog;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic p0(Lcom/transsnet/downloader/dialog/TransferGuideDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/downloader/dialog/TransferGuideDialog;->u0(Lcom/transsnet/downloader/dialog/TransferGuideDialog;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic q0(Lcom/transsnet/downloader/dialog/TransferGuideDialog;)Lbx/o;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsnet/downloader/dialog/TransferGuideDialog;->c:Lbx/o;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic r0(Lcom/transsnet/downloader/dialog/TransferGuideDialog;)[Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsnet/downloader/dialog/TransferGuideDialog;->e:[Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic s0(Lcom/transsnet/downloader/dialog/TransferGuideDialog;)[Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsnet/downloader/dialog/TransferGuideDialog;->d:[Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method private static final t0(Lcom/transsnet/downloader/dialog/TransferGuideDialog;Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/transsnet/downloader/dialog/TransferGuideDialog;->c:Lbx/o;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p1, Lbx/o;->c:Landroidx/viewpager2/widget/ViewPager2;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    iget-object v0, p0, Lcom/transsnet/downloader/dialog/TransferGuideDialog;->d:[Ljava/lang/Integer;

    .line 16
    .line 17
    array-length v0, v0

    .line 18
    add-int/lit8 v0, v0, -0x1

    .line 19
    .line 20
    if-ne p1, v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 23
    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 27
    .line 28
    iget-object p0, p0, Lcom/transsnet/downloader/dialog/TransferGuideDialog;->c:Lbx/o;

    .line 29
    .line 30
    if-eqz p0, :cond_2

    .line 31
    .line 32
    iget-object p0, p0, Lbx/o;->c:Landroidx/viewpager2/widget/ViewPager2;

    .line 33
    .line 34
    if-eqz p0, :cond_2

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    .line 37
    .line 38
    .line 39
    :cond_2
    :goto_1
    return-void
.end method

.method private static final u0(Lcom/transsnet/downloader/dialog/TransferGuideDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final v0(Lcom/transsnet/downloader/dialog/TransferGuideDialog;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsnet/downloader/dialog/TransferGuideDialog;->c:Lbx/o;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lbx/o;->d:Lcom/tn/lib/view/indicator/CircleIndicator;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    sget v0, Lcom/tn/lib/widget/R$style;->center_DialogStyle:I

    .line 6
    .line 7
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    const/4 v0, -0x1

    .line 22
    const/4 v1, -0x2

    .line 23
    invoke-virtual {p2, v0, v1}, Landroid/view/Window;->setLayout(II)V

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    if-eqz p2, :cond_1

    .line 31
    .line 32
    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    if-eqz p2, :cond_1

    .line 37
    .line 38
    const/16 v0, 0x11

    .line 39
    .line 40
    invoke-virtual {p2, v0}, Landroid/view/Window;->setGravity(I)V

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    if-eqz p2, :cond_2

    .line 48
    .line 49
    const/4 v0, 0x1

    .line 50
    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 51
    .line 52
    .line 53
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    if-eqz p2, :cond_3

    .line 58
    .line 59
    const/4 v0, 0x0

    .line 60
    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 61
    .line 62
    .line 63
    :cond_3
    invoke-static {p1}, Lbx/o;->a(Landroid/view/View;)Lbx/o;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iput-object p1, p0, Lcom/transsnet/downloader/dialog/TransferGuideDialog;->c:Lbx/o;

    .line 68
    .line 69
    invoke-direct {p0}, Lcom/transsnet/downloader/dialog/TransferGuideDialog;->initView()V

    .line 70
    .line 71
    .line 72
    return-void
.end method
