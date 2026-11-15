.class public final Lcom/transsion/member/view/HistoryStateView;
.super Lcom/tn/lib/view/StateView;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u001b\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\u0008B#\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0004\u0010\u000bJ!\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0014\u00a2\u0006\u0004\u0008\r\u0010\u0008R$\u0010\u0013\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\t8T@TX\u0094\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/transsion/member/view/HistoryStateView;",
        "Lcom/tn/lib/view/StateView;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/util/AttributeSet;",
        "attrs",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "defStyleAttr",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "",
        "b",
        "value",
        "getNoContentResId",
        "()I",
        "setNoContentResId",
        "(I)V",
        "noContentResId",
        "Member_psRelease"
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
.field public static final $stable:I = 0x8


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/transsion/member/view/HistoryStateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/member/view/HistoryStateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/tn/lib/view/StateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected b(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lcom/tn/lib/view/StateView;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/tn/lib/view/StateView;->getMViewBinding()Leh/b;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object p2, p1, Leh/b;->f:Landroid/widget/TextView;

    .line 16
    .line 17
    sget v0, Lcom/transsion/baseui/R$drawable;->bg_radius_8_color_white_10p:I

    .line 18
    .line 19
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 20
    .line 21
    .line 22
    iget-object p2, p1, Leh/b;->f:Landroid/widget/TextView;

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sget v1, Lcom/tn/lib/widget/R$color;->common_white:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 35
    .line 36
    .line 37
    iget-object p2, p1, Leh/b;->f:Landroid/widget/TextView;

    .line 38
    .line 39
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    const/4 v0, -0x2

    .line 44
    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 45
    .line 46
    const/high16 v0, 0x42200000    # 40.0f

    .line 47
    .line 48
    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 53
    .line 54
    iget-object v0, p1, Leh/b;->f:Landroid/widget/TextView;

    .line 55
    .line 56
    invoke-virtual {v0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    .line 58
    .line 59
    const/high16 p2, 0x41a00000    # 20.0f

    .line 60
    .line 61
    invoke-static {p2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    iget-object v0, p1, Leh/b;->f:Landroid/widget/TextView;

    .line 66
    .line 67
    const/4 v1, 0x1

    .line 68
    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p1, Leh/b;->f:Landroid/widget/TextView;

    .line 76
    .line 77
    const/4 v1, 0x0

    .line 78
    invoke-virtual {v0, p2, v1, p2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 79
    .line 80
    .line 81
    iget-object p1, p1, Leh/b;->e:Landroid/widget/TextView;

    .line 82
    .line 83
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    sget v0, Lcom/tn/lib/widget/R$color;->gray_dark_40:I

    .line 88
    .line 89
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 90
    .line 91
    .line 92
    move-result p2

    .line 93
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 94
    .line 95
    .line 96
    :cond_0
    return-void
.end method

.method protected getNoContentResId()I
    .locals 1

    .line 1
    sget v0, Lcom/tn/lib/widget/R$mipmap;->ic_no_content_dark:I

    .line 2
    .line 3
    return v0
.end method

.method protected setNoContentResId(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/tn/lib/view/StateView;->setNoContentResId(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
