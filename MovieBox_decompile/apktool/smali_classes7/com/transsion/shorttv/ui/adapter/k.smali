.class public final Lcom/transsion/shorttv/ui/adapter/k;
.super Lcom/transsion/shorttv/base/adapter/BaseBindingQuickAdapter;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/shorttv/base/adapter/BaseBindingQuickAdapter<",
        "Lcom/transsion/shorttv/bean/DubsInfo;",
        "Lqr/f0;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001f\u0010\n\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u001f\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u000c\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/transsion/shorttv/ui/adapter/k;",
        "Lcom/transsion/shorttv/base/adapter/BaseBindingQuickAdapter;",
        "Lcom/transsion/shorttv/bean/DubsInfo;",
        "Lqr/f0;",
        "<init>",
        "()V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "parent",
        "H1",
        "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lqr/f0;",
        "binding",
        "item",
        "",
        "I1",
        "(Lqr/f0;Lcom/transsion/shorttv/bean/DubsInfo;)V",
        "shortTvLib_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-direct {p0, v0, v1, v0}, Lcom/transsion/shorttv/base/adapter/BaseBindingQuickAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic E1(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lf4/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/ui/adapter/k;->H1(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lqr/f0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic F1(Lf4/a;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lqr/f0;

    .line 2
    .line 3
    check-cast p2, Lcom/transsion/shorttv/bean/DubsInfo;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/ui/adapter/k;->I1(Lqr/f0;Lcom/transsion/shorttv/bean/DubsInfo;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public H1(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lqr/f0;
    .locals 1

    .line 1
    const-string v0, "inflater"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "parent"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-static {p1, p2, v0}, Lqr/f0;->c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lqr/f0;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string p2, "inflate(...)"

    .line 25
    .line 26
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-object p1
.end method

.method public I1(Lqr/f0;Lcom/transsion/shorttv/bean/DubsInfo;)V
    .locals 4

    .line 1
    const-string v0, "binding"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "item"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p1, Lqr/f0;->b:Landroid/widget/FrameLayout;

    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/transsion/shorttv/bean/DubsInfo;->isSelected()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p1, Lqr/f0;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 21
    .line 22
    invoke-virtual {p2}, Lcom/transsion/shorttv/bean/DubsInfo;->getLanName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-string v2, ""

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move-object v1, v2

    .line 32
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p1, Lqr/f0;->d:Lcom/transsion/shorttv/base/widget/ShortTvGradientTextView;

    .line 36
    .line 37
    invoke-virtual {p2}, Lcom/transsion/shorttv/bean/DubsInfo;->getLanName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    move-object v2, v1

    .line 44
    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p1, Lqr/f0;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 48
    .line 49
    const-string v1, "tvName"

    .line 50
    .line 51
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2}, Lcom/transsion/shorttv/bean/DubsInfo;->isSelected()Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    const/16 v2, 0x8

    .line 59
    .line 60
    const/4 v3, 0x0

    .line 61
    if-nez v1, :cond_2

    .line 62
    .line 63
    move v1, v3

    .line 64
    goto :goto_1

    .line 65
    :cond_2
    move v1, v2

    .line 66
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p1, Lqr/f0;->d:Lcom/transsion/shorttv/base/widget/ShortTvGradientTextView;

    .line 70
    .line 71
    const-string v1, "tvNameSelected"

    .line 72
    .line 73
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2}, Lcom/transsion/shorttv/bean/DubsInfo;->isSelected()Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_3

    .line 81
    .line 82
    move v2, v3

    .line 83
    :cond_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2}, Lcom/transsion/shorttv/bean/DubsInfo;->getLanName()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    if-eqz p2, :cond_4

    .line 91
    .line 92
    invoke-static {}, Landroidx/core/text/a;->c()Landroidx/core/text/a;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v0, p2}, Landroidx/core/text/a;->f(Ljava/lang/String;)Z

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    :cond_4
    iget-object p1, p1, Lqr/f0;->b:Landroid/widget/FrameLayout;

    .line 101
    .line 102
    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutDirection(I)V

    .line 103
    .line 104
    .line 105
    return-void
.end method
