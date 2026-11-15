.class public final Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView$b;->a:Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView;

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
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView$b;->a:Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView$b;->a:Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView;->access$getViewBinding$p(Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView;)Lwn/c0;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v0, v0, Lwn/c0;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/high16 v1, 0x42400000    # 48.0f

    .line 23
    .line 24
    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    sget-object v7, Lwf/a;->a:Lwf/a$a;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView$b;->a:Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView;

    .line 35
    .line 36
    invoke-static {v1}, Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView;->access$getViewBinding$p(Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView;)Lwn/c0;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iget-object v1, v1, Lwn/c0;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 41
    .line 42
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v3, "\u6e32\u67d3\u7ed3\u675f\u83b7\u53d6\u7684\u5bbd\u5ea6\u4e3a "

    .line 52
    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v3, ", \u539f\u59cb\u5bbd\u5ea6\u4e3a "

    .line 60
    .line 61
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    const/4 v5, 0x4

    .line 72
    const/4 v6, 0x0

    .line 73
    const-string v2, "ShortTVDiscoverCategoryView"

    .line 74
    .line 75
    const/4 v4, 0x0

    .line 76
    move-object v1, v7

    .line 77
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    invoke-static {}, Lcom/transsion/core/utils/e;->f()I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    const/high16 v2, 0x42000000    # 32.0f

    .line 85
    .line 86
    invoke-static {v2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    sub-int/2addr v1, v2

    .line 91
    sub-int/2addr v1, v0

    .line 92
    const/high16 v2, 0x41800000    # 16.0f

    .line 93
    .line 94
    invoke-static {v2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    sub-int/2addr v1, v2

    .line 99
    div-int/lit8 v8, v1, 0x2

    .line 100
    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    const-string v2, "\u8ba1\u7b97\u5f97\u51fa, ivAll.width = "

    .line 107
    .line 108
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v2, ", viewWidth = "

    .line 115
    .line 116
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    const-string v2, "ShortTVDiscoverCategoryView"

    .line 127
    .line 128
    move-object v1, v7

    .line 129
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    iget-object v1, p0, Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView$b;->a:Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView;

    .line 133
    .line 134
    invoke-static {v1}, Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView;->access$getViewBinding$p(Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView;)Lwn/c0;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    iget-object v1, v1, Lwn/c0;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 139
    .line 140
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    if-eqz v2, :cond_0

    .line 145
    .line 146
    iput v8, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 147
    .line 148
    :cond_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    .line 150
    .line 151
    iget-object v1, p0, Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView$b;->a:Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView;

    .line 152
    .line 153
    invoke-static {v1}, Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView;->access$getViewBinding$p(Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView;)Lwn/c0;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    iget-object v1, v1, Lwn/c0;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 158
    .line 159
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    if-eqz v2, :cond_1

    .line 164
    .line 165
    iput v8, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 166
    .line 167
    :cond_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    .line 169
    .line 170
    iget-object v1, p0, Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView$b;->a:Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView;

    .line 171
    .line 172
    invoke-static {v1}, Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView;->access$getViewBinding$p(Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView;)Lwn/c0;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    iget-object v1, v1, Lwn/c0;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 177
    .line 178
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    if-eqz v2, :cond_2

    .line 183
    .line 184
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 185
    .line 186
    :cond_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    .line 188
    .line 189
    return-void
.end method
