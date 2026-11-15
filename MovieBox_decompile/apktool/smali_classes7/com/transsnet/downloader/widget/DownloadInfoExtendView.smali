.class public final Lcom/transsnet/downloader/widget/DownloadInfoExtendView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tB\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\nB\u001b\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0008\u0010\u000bJ\u000f\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u000eJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u000eJ\u000f\u0010\u0014\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u000eJ\u000f\u0010\u0016\u001a\u00020\u0015H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0017\u0010\u001a\u001a\u00020\u000c2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0018\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0017\u0010\u001a\u001a\u00020\u000c2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0015\u00a2\u0006\u0004\u0008\u001a\u0010\u001dR\u0016\u0010 \u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001fR\u0018\u0010$\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R\u0018\u0010\'\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008%\u0010&R\u0014\u0010*\u001a\u00020\u00068\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008(\u0010)\u00a8\u0006+"
    }
    d2 = {
        "Lcom/transsnet/downloader/widget/DownloadInfoExtendView;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "(Landroid/content/Context;)V",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "m",
        "()V",
        "r",
        "",
        "l",
        "()Z",
        "o",
        "k",
        "",
        "getNewTextByConfig",
        "()Ljava/lang/String;",
        "Lcom/transsion/moviedetailapi/bean/Subject;",
        "bean",
        "showData",
        "(Lcom/transsion/moviedetailapi/bean/Subject;)V",
        "desc",
        "(Ljava/lang/String;)V",
        "a",
        "Z",
        "isExtend",
        "Lbx/e1;",
        "b",
        "Lbx/e1;",
        "mViewBinding",
        "c",
        "Ljava/lang/String;",
        "description",
        "d",
        "I",
        "mMaxLinesOnShrink",
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


# instance fields
.field private a:Z

.field private b:Lbx/e1;

.field private c:Ljava/lang/String;

.field private final d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, v0}, Lcom/transsnet/downloader/widget/DownloadInfoExtendView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, p2, v0}, Lcom/transsnet/downloader/widget/DownloadInfoExtendView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    invoke-direct {p0}, Lcom/transsnet/downloader/widget/DownloadInfoExtendView;->m()V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/transsnet/downloader/widget/DownloadInfoExtendView;->a:Z

    const/4 p1, 0x3

    .line 4
    iput p1, p0, Lcom/transsnet/downloader/widget/DownloadInfoExtendView;->d:I

    return-void
.end method

.method private final getNewTextByConfig()Ljava/lang/String;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/widget/DownloadInfoExtendView;->c:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    :cond_0
    iget-object v1, p0, Lcom/transsnet/downloader/widget/DownloadInfoExtendView;->b:Lbx/e1;

    .line 8
    .line 9
    if-eqz v1, :cond_4

    .line 10
    .line 11
    iget-object v9, v1, Lbx/e1;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 12
    .line 13
    if-eqz v9, :cond_4

    .line 14
    .line 15
    invoke-virtual {v9}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const-string v1, "getPaint(...)"

    .line 20
    .line 21
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 25
    .line 26
    const/16 v2, 0x17

    .line 27
    .line 28
    const/4 v10, 0x0

    .line 29
    if-le v1, v2, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-static {v0, v10, v1, v3, v2}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    new-instance v11, Landroid/text/StaticLayout;

    .line 49
    .line 50
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 55
    .line 56
    const/4 v7, 0x0

    .line 57
    const/4 v8, 0x1

    .line 58
    const/high16 v6, 0x3f800000    # 1.0f

    .line 59
    .line 60
    move-object v1, v11

    .line 61
    move-object v2, v0

    .line 62
    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 63
    .line 64
    .line 65
    :goto_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Landroid/text/StaticLayout;->getLineCount()I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    iget v3, p0, Lcom/transsnet/downloader/widget/DownloadInfoExtendView;->d:I

    .line 73
    .line 74
    if-gt v2, v3, :cond_2

    .line 75
    .line 76
    invoke-direct {p0}, Lcom/transsnet/downloader/widget/DownloadInfoExtendView;->l()Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-nez v1, :cond_4

    .line 81
    .line 82
    iget-object v1, p0, Lcom/transsnet/downloader/widget/DownloadInfoExtendView;->b:Lbx/e1;

    .line 83
    .line 84
    if-eqz v1, :cond_4

    .line 85
    .line 86
    iget-object v1, v1, Lbx/e1;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 87
    .line 88
    if-eqz v1, :cond_4

    .line 89
    .line 90
    const/16 v2, 0x8

    .line 91
    .line 92
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_2
    iget-object v2, p0, Lcom/transsnet/downloader/widget/DownloadInfoExtendView;->b:Lbx/e1;

    .line 97
    .line 98
    if-eqz v2, :cond_3

    .line 99
    .line 100
    iget-object v2, v2, Lbx/e1;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 101
    .line 102
    if-eqz v2, :cond_3

    .line 103
    .line 104
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 109
    .line 110
    .line 111
    :cond_3
    iget v2, p0, Lcom/transsnet/downloader/widget/DownloadInfoExtendView;->d:I

    .line 112
    .line 113
    add-int/lit8 v2, v2, -0x1

    .line 114
    .line 115
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineEnd(I)I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    add-int/lit8 v1, v1, -0x3

    .line 120
    .line 121
    invoke-virtual {v0, v10, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v0, "..."

    .line 134
    .line 135
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    :cond_4
    :goto_1
    return-object v0
.end method

.method public static synthetic h(Lcom/transsnet/downloader/widget/DownloadInfoExtendView;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsnet/downloader/widget/DownloadInfoExtendView;->p(Lcom/transsnet/downloader/widget/DownloadInfoExtendView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic i(Lcom/transsnet/downloader/widget/DownloadInfoExtendView;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsnet/downloader/widget/DownloadInfoExtendView;->q(Lcom/transsnet/downloader/widget/DownloadInfoExtendView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic j(Lcom/transsnet/downloader/widget/DownloadInfoExtendView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/downloader/widget/DownloadInfoExtendView;->n(Lcom/transsnet/downloader/widget/DownloadInfoExtendView;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final k()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/transsnet/downloader/widget/DownloadInfoExtendView;->a:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsnet/downloader/widget/DownloadInfoExtendView;->b:Lbx/e1;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v0, v0, Lbx/e1;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    sget v2, Lcom/transsnet/downloader/R$string;->str_hide:I

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    sget v2, Lcom/tn/lib/widget/R$mipmap;->libui_ic_up_hide:I

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    const/4 v4, 0x0

    .line 46
    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 47
    .line 48
    .line 49
    :cond_0
    const/4 v2, 0x0

    .line 50
    invoke-virtual {v0, v2, v2, v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    iget-object v0, p0, Lcom/transsnet/downloader/widget/DownloadInfoExtendView;->b:Lbx/e1;

    .line 54
    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    iget-object v0, v0, Lbx/e1;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 58
    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    iget-object v1, p0, Lcom/transsnet/downloader/widget/DownloadInfoExtendView;->c:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    .line 65
    .line 66
    :cond_2
    return-void
.end method

.method private final l()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method private final m()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget v1, Lcom/transsnet/downloader/R$layout;->view_download_info_extend_layout:I

    .line 6
    .line 7
    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lbx/e1;->a(Landroid/view/View;)Lbx/e1;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/transsnet/downloader/widget/DownloadInfoExtendView;->b:Lbx/e1;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, v0, Lbx/e1;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    new-instance v1, Lcom/transsnet/downloader/widget/g;

    .line 24
    .line 25
    invoke-direct {v1, p0}, Lcom/transsnet/downloader/widget/g;-><init>(Lcom/transsnet/downloader/widget/DownloadInfoExtendView;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method private static final n(Lcom/transsnet/downloader/widget/DownloadInfoExtendView;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/transsnet/downloader/widget/DownloadInfoExtendView;->a:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/transsnet/downloader/widget/DownloadInfoExtendView;->o()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/transsnet/downloader/widget/DownloadInfoExtendView;->k()V

    .line 10
    .line 11
    .line 12
    :goto_0
    return-void
.end method

.method private final o()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/transsnet/downloader/widget/DownloadInfoExtendView;->a:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/transsnet/downloader/widget/DownloadInfoExtendView;->b:Lbx/e1;

    .line 5
    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    iget-object v1, v1, Lbx/e1;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    sget v3, Lcom/transsnet/downloader/R$string;->str_more:I

    .line 17
    .line 18
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    sget v3, Lcom/tn/lib/widget/R$mipmap;->libui_ic_down_more:I

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    invoke-virtual {v2, v0, v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 46
    .line 47
    .line 48
    :cond_0
    const/4 v0, 0x0

    .line 49
    invoke-virtual {v1, v0, v0, v2, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    iget-object v0, p0, Lcom/transsnet/downloader/widget/DownloadInfoExtendView;->b:Lbx/e1;

    .line 53
    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    iget-object v0, v0, Lbx/e1;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 57
    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    invoke-direct {p0}, Lcom/transsnet/downloader/widget/DownloadInfoExtendView;->getNewTextByConfig()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    .line 66
    .line 67
    :cond_2
    return-void
.end method

.method private static final p(Lcom/transsnet/downloader/widget/DownloadInfoExtendView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsnet/downloader/widget/DownloadInfoExtendView;->r()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final q(Lcom/transsnet/downloader/widget/DownloadInfoExtendView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsnet/downloader/widget/DownloadInfoExtendView;->r()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final r()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsnet/downloader/widget/DownloadInfoExtendView;->o()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final showData(Lcom/transsion/moviedetailapi/bean/Subject;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getDescription()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    const-string p1, ""

    :cond_1
    iput-object p1, p0, Lcom/transsnet/downloader/widget/DownloadInfoExtendView;->c:Ljava/lang/String;

    .line 2
    iget-object p1, p0, Lcom/transsnet/downloader/widget/DownloadInfoExtendView;->b:Lbx/e1;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lbx/e1;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance v0, Lcom/transsnet/downloader/widget/h;

    invoke-direct {v0, p0}, Lcom/transsnet/downloader/widget/h;-><init>(Lcom/transsnet/downloader/widget/DownloadInfoExtendView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public final showData(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    .line 3
    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lcom/transsnet/downloader/widget/DownloadInfoExtendView;->c:Ljava/lang/String;

    .line 4
    iget-object p1, p0, Lcom/transsnet/downloader/widget/DownloadInfoExtendView;->b:Lbx/e1;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lbx/e1;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Lcom/transsnet/downloader/widget/i;

    invoke-direct {v0, p0}, Lcom/transsnet/downloader/widget/i;-><init>(Lcom/transsnet/downloader/widget/DownloadInfoExtendView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
