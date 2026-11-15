.class public final Lcom/transsion/baseui/widget/ResourcesRequestView$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/baseui/widget/ResourcesRequestView;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/baseui/widget/ResourcesRequestView;


# direct methods
.method constructor <init>(Lcom/transsion/baseui/widget/ResourcesRequestView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/baseui/widget/ResourcesRequestView$a;->a:Lcom/transsion/baseui/widget/ResourcesRequestView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/transsion/baseui/widget/ResourcesRequestView$a;->a:Lcom/transsion/baseui/widget/ResourcesRequestView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/baseui/widget/ResourcesRequestView;->getMViewBinding()Ljj/g;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Ljj/g;->e:Lcom/transsion/baseui/widget/DrawableCenterTextView;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/transsion/baseui/widget/ResourcesRequestView$a;->a:Lcom/transsion/baseui/widget/ResourcesRequestView;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/transsion/baseui/widget/ResourcesRequestView;->getMViewBinding()Ljj/g;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget-object v0, v0, Ljj/g;->e:Lcom/transsion/baseui/widget/DrawableCenterTextView;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 v0, 0x0

    .line 34
    :goto_0
    if-eqz v0, :cond_3

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_3

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablePadding()I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    const-string v4, "getCompoundDrawables(...)"

    .line 70
    .line 71
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget-object v4, p0, Lcom/transsion/baseui/widget/ResourcesRequestView$a;->a:Lcom/transsion/baseui/widget/ResourcesRequestView;

    .line 75
    .line 76
    invoke-static {v4}, Lcom/transsion/baseui/widget/ResourcesRequestView;->access$isDirectionLtr$p(Lcom/transsion/baseui/widget/ResourcesRequestView;)Z

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    const-string v5, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    .line 81
    .line 82
    const/4 v6, 0x2

    .line 83
    if-eqz v4, :cond_2

    .line 84
    .line 85
    const/4 v4, 0x0

    .line 86
    aget-object v3, v3, v4

    .line 87
    .line 88
    if-eqz v3, :cond_3

    .line 89
    .line 90
    iget-object v4, p0, Lcom/transsion/baseui/widget/ResourcesRequestView$a;->a:Lcom/transsion/baseui/widget/ResourcesRequestView;

    .line 91
    .line 92
    invoke-virtual {v4}, Lcom/transsion/baseui/widget/ResourcesRequestView;->getMViewBinding()Ljj/g;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    if-eqz v4, :cond_3

    .line 97
    .line 98
    iget-object v4, v4, Ljj/g;->f:Landroid/widget/TextView;

    .line 99
    .line 100
    if-eqz v4, :cond_3

    .line 101
    .line 102
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    add-int/2addr v2, v3

    .line 107
    int-to-float v2, v2

    .line 108
    add-float/2addr v2, v1

    .line 109
    float-to-int v1, v2

    .line 110
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 118
    .line 119
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    div-int/2addr v0, v6

    .line 124
    div-int/2addr v1, v6

    .line 125
    add-int/2addr v0, v1

    .line 126
    div-int/lit8 v3, v3, 0x3

    .line 127
    .line 128
    sub-int/2addr v0, v3

    .line 129
    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 130
    .line 131
    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_2
    aget-object v3, v3, v6

    .line 136
    .line 137
    if-eqz v3, :cond_3

    .line 138
    .line 139
    iget-object v4, p0, Lcom/transsion/baseui/widget/ResourcesRequestView$a;->a:Lcom/transsion/baseui/widget/ResourcesRequestView;

    .line 140
    .line 141
    invoke-virtual {v4}, Lcom/transsion/baseui/widget/ResourcesRequestView;->getMViewBinding()Ljj/g;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    if-eqz v4, :cond_3

    .line 146
    .line 147
    iget-object v4, v4, Ljj/g;->f:Landroid/widget/TextView;

    .line 148
    .line 149
    if-eqz v4, :cond_3

    .line 150
    .line 151
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 152
    .line 153
    .line 154
    move-result v3

    .line 155
    add-int/2addr v2, v3

    .line 156
    int-to-float v2, v2

    .line 157
    add-float/2addr v2, v1

    .line 158
    float-to-int v1, v2

    .line 159
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 167
    .line 168
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    div-int/2addr v0, v6

    .line 173
    div-int/2addr v1, v6

    .line 174
    add-int/2addr v0, v1

    .line 175
    div-int/lit8 v3, v3, 0x3

    .line 176
    .line 177
    sub-int/2addr v0, v3

    .line 178
    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 179
    .line 180
    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    .line 182
    .line 183
    :cond_3
    :goto_1
    return-void
.end method
