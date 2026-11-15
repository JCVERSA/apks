.class public Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;
.super Lcom/transsion/shorttv_pugc/base/widget/TnTextView;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView$c;,
        Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView$b;
    }
.end annotation


# static fields
.field public static final STATE_EXPAND:I = 0x1

.field public static final STATE_SHRINK:I


# instance fields
.field private A:Ljava/lang/String;

.field private B:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:F

.field private t:Z

.field private u:Landroid/text/style/ClickableSpan;

.field private v:Lmu/a;

.field private w:Lmu/a;

.field private x:Landroid/text/Layout;

.field private y:Ljava/lang/CharSequence;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/transsion/shorttv_pugc/base/widget/TnTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    const-string v0, "  "

    iput-object v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->e:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->f:Ljava/lang/String;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->g:Z

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->h:Z

    .line 7
    iput-boolean v1, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->i:Z

    .line 8
    iput-boolean v1, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->j:Z

    .line 9
    iput-boolean v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->k:Z

    .line 10
    iput v1, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->l:I

    const v2, -0x66000001

    .line 11
    iput v2, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->m:I

    .line 12
    iput v2, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->n:I

    .line 13
    iput v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->o:I

    .line 14
    iput v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->p:I

    const/4 v2, -0x1

    .line 15
    iput v2, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->q:I

    .line 16
    iput v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->r:I

    .line 17
    iput-boolean v1, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->t:Z

    .line 18
    iput-boolean v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->B:Z

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->j(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/shorttv_pugc/base/widget/TnTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    const-string p3, "  "

    iput-object p3, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->e:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->f:Ljava/lang/String;

    const/4 p3, 0x0

    .line 23
    iput-boolean p3, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->g:Z

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->h:Z

    .line 25
    iput-boolean v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->i:Z

    .line 26
    iput-boolean v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->j:Z

    .line 27
    iput-boolean p3, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->k:Z

    .line 28
    iput v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->l:I

    const v1, -0x66000001

    .line 29
    iput v1, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->m:I

    .line 30
    iput v1, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->n:I

    .line 31
    iput p3, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->o:I

    .line 32
    iput p3, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->p:I

    const/4 v1, -0x1

    .line 33
    iput v1, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->q:I

    .line 34
    iput p3, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->r:I

    .line 35
    iput-boolean v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->t:Z

    .line 36
    iput-boolean p3, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->B:Z

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->j(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->m(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->l(Ljava/lang/CharSequence;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e(Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->k(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic f(Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->y:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic g(Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->k:Z

    .line 2
    .line 3
    return-void
.end method

.method private getLayoutWidth()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-gtz v0, :cond_2

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    sub-int/2addr v0, v1

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    sub-int/2addr v0, v1

    .line 36
    :cond_2
    :goto_1
    return v0
.end method

.method private h(I)Ljava/lang/CharSequence;
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 2
    .line 3
    .line 4
    move-result-object v2

    .line 5
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->y:Ljava/lang/CharSequence;

    .line 6
    .line 7
    const-string v1, ""

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->y:Ljava/lang/CharSequence;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    move-object v1, v0

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->x:Landroid/text/Layout;

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    new-instance v8, Landroid/text/StaticLayout;

    .line 34
    .line 35
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 36
    .line 37
    const/4 v6, 0x0

    .line 38
    const/4 v7, 0x1

    .line 39
    const/high16 v5, 0x3f800000    # 1.0f

    .line 40
    .line 41
    move-object v0, v8

    .line 42
    move v3, p1

    .line 43
    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 44
    .line 45
    .line 46
    iput-object v8, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->x:Landroid/text/Layout;

    .line 47
    .line 48
    :cond_1
    iget-object p1, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->x:Landroid/text/Layout;

    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    iget v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->l:I

    .line 55
    .line 56
    if-gt p1, v0, :cond_3

    .line 57
    .line 58
    new-instance p1, Landroid/text/SpannableStringBuilder;

    .line 59
    .line 60
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->y:Ljava/lang/CharSequence;

    .line 61
    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    const-string v0, " "

    .line 66
    .line 67
    :goto_0
    invoke-direct {p1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 68
    .line 69
    .line 70
    invoke-direct {p0, p1}, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->n(Landroid/text/SpannableStringBuilder;)Ljava/lang/CharSequence;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    return-object p1

    .line 75
    :cond_3
    iget p1, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->r:I

    .line 76
    .line 77
    const/16 v1, 0x21

    .line 78
    .line 79
    const/4 v2, 0x0

    .line 80
    const/4 v3, 0x1

    .line 81
    if-eqz p1, :cond_7

    .line 82
    .line 83
    if-eq p1, v3, :cond_4

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_4
    iget-boolean p1, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->j:Z

    .line 87
    .line 88
    if-nez p1, :cond_5

    .line 89
    .line 90
    :goto_1
    new-instance p1, Landroid/text/SpannableStringBuilder;

    .line 91
    .line 92
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->y:Ljava/lang/CharSequence;

    .line 93
    .line 94
    invoke-direct {p1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 95
    .line 96
    .line 97
    invoke-direct {p0, p1}, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->n(Landroid/text/SpannableStringBuilder;)Ljava/lang/CharSequence;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    return-object p1

    .line 102
    :cond_5
    new-instance p1, Landroid/text/SpannableStringBuilder;

    .line 103
    .line 104
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->y:Ljava/lang/CharSequence;

    .line 105
    .line 106
    invoke-direct {p1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 107
    .line 108
    .line 109
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->f:Ljava/lang/String;

    .line 110
    .line 111
    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    iget-object v3, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->d:Ljava/lang/String;

    .line 116
    .line 117
    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    iget-object v3, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->f:Ljava/lang/String;

    .line 125
    .line 126
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    sub-int/2addr v0, v3

    .line 131
    iget-object v3, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->d:Ljava/lang/String;

    .line 132
    .line 133
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    sub-int/2addr v0, v3

    .line 138
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    if-gez v0, :cond_6

    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_6
    move v2, v0

    .line 146
    :goto_2
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->u:Landroid/text/style/ClickableSpan;

    .line 147
    .line 148
    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 149
    .line 150
    .line 151
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->v:Lmu/a;

    .line 152
    .line 153
    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 154
    .line 155
    .line 156
    invoke-direct {p0, p1}, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->n(Landroid/text/SpannableStringBuilder;)Ljava/lang/CharSequence;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    return-object p1

    .line 161
    :cond_7
    iget-object p1, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->x:Landroid/text/Layout;

    .line 162
    .line 163
    sub-int/2addr v0, v3

    .line 164
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineEnd(I)I

    .line 165
    .line 166
    .line 167
    move-result p1

    .line 168
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->x:Landroid/text/Layout;

    .line 169
    .line 170
    iget v4, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->l:I

    .line 171
    .line 172
    sub-int/2addr v4, v3

    .line 173
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineStart(I)I

    .line 174
    .line 175
    .line 176
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->y:Ljava/lang/CharSequence;

    .line 177
    .line 178
    if-eqz v0, :cond_8

    .line 179
    .line 180
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    if-gt v0, p1, :cond_8

    .line 185
    .line 186
    iget-object p1, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->y:Ljava/lang/CharSequence;

    .line 187
    .line 188
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 189
    .line 190
    .line 191
    move-result p1

    .line 192
    sub-int/2addr p1, v3

    .line 193
    :cond_8
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->y:Ljava/lang/CharSequence;

    .line 194
    .line 195
    if-eqz v0, :cond_c

    .line 196
    .line 197
    if-gtz p1, :cond_9

    .line 198
    .line 199
    goto :goto_4

    .line 200
    :cond_9
    add-int/lit8 p1, p1, -0x3

    .line 201
    .line 202
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    .line 203
    .line 204
    .line 205
    move-result p1

    .line 206
    invoke-interface {v0, v2, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    .line 215
    .line 216
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    iget-object p1, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->b:Ljava/lang/String;

    .line 223
    .line 224
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    const-string v0, "\n\n"

    .line 232
    .line 233
    const-string v3, "\n"

    .line 234
    .line 235
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 240
    .line 241
    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 242
    .line 243
    .line 244
    iget-boolean p1, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->i:Z

    .line 245
    .line 246
    if-eqz p1, :cond_b

    .line 247
    .line 248
    iget-object p1, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->e:Ljava/lang/String;

    .line 249
    .line 250
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 251
    .line 252
    .line 253
    iget-object p1, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->c:Ljava/lang/String;

    .line 254
    .line 255
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 259
    .line 260
    .line 261
    move-result p1

    .line 262
    iget-object v3, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->e:Ljava/lang/String;

    .line 263
    .line 264
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 265
    .line 266
    .line 267
    move-result v3

    .line 268
    sub-int/2addr p1, v3

    .line 269
    iget-object v3, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->c:Ljava/lang/String;

    .line 270
    .line 271
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 272
    .line 273
    .line 274
    move-result v3

    .line 275
    sub-int/2addr p1, v3

    .line 276
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 277
    .line 278
    .line 279
    move-result v3

    .line 280
    if-gez p1, :cond_a

    .line 281
    .line 282
    goto :goto_3

    .line 283
    :cond_a
    move v2, p1

    .line 284
    :goto_3
    iget-object p1, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->u:Landroid/text/style/ClickableSpan;

    .line 285
    .line 286
    invoke-virtual {v0, p1, v2, v3, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 287
    .line 288
    .line 289
    iget-object p1, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->w:Lmu/a;

    .line 290
    .line 291
    invoke-virtual {v0, p1, v2, v3, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 292
    .line 293
    .line 294
    :cond_b
    invoke-direct {p0, v0}, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->n(Landroid/text/SpannableStringBuilder;)Ljava/lang/CharSequence;

    .line 295
    .line 296
    .line 297
    move-result-object p1

    .line 298
    return-object p1

    .line 299
    :cond_c
    :goto_4
    return-object v0
.end method

.method private i()V
    .locals 11

    .line 1
    iget v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->s:F

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    cmpl-float v0, v0, v1

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iput v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->s:F

    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x1

    .line 19
    if-ne v0, v1, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 v1, 0x0

    .line 23
    :goto_0
    new-instance v0, Lmu/a;

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    iget-boolean v2, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->t:Z

    .line 30
    .line 31
    const/16 v10, -0x6f

    .line 32
    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    sget v2, Lcom/transsion/shorttv/R$mipmap;->short_tv_ic_down_more:I

    .line 36
    .line 37
    move v4, v2

    .line 38
    goto :goto_1

    .line 39
    :cond_2
    move v4, v10

    .line 40
    :goto_1
    iget v5, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->m:I

    .line 41
    .line 42
    iget v6, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->o:I

    .line 43
    .line 44
    iget v7, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->s:F

    .line 45
    .line 46
    const/4 v8, 0x0

    .line 47
    move-object v2, v0

    .line 48
    move v9, v1

    .line 49
    invoke-direct/range {v2 .. v9}, Lmu/a;-><init>(Landroid/content/Context;IIIFIZ)V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->w:Lmu/a;

    .line 53
    .line 54
    new-instance v0, Lmu/a;

    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    iget-boolean v2, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->t:Z

    .line 61
    .line 62
    if-eqz v2, :cond_3

    .line 63
    .line 64
    sget v2, Lcom/transsion/shorttv/R$mipmap;->short_tv_ic_up_hide:I

    .line 65
    .line 66
    move v4, v2

    .line 67
    goto :goto_2

    .line 68
    :cond_3
    move v4, v10

    .line 69
    :goto_2
    iget v5, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->n:I

    .line 70
    .line 71
    iget v6, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->p:I

    .line 72
    .line 73
    iget v7, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->s:F

    .line 74
    .line 75
    const/4 v8, 0x0

    .line 76
    move-object v2, v0

    .line 77
    move v9, v1

    .line 78
    invoke-direct/range {v2 .. v9}, Lmu/a;-><init>(Landroid/content/Context;IIIFIZ)V

    .line 79
    .line 80
    .line 81
    iput-object v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->v:Lmu/a;

    .line 82
    .line 83
    new-instance v0, Landroid/text/method/LinkMovementMethod;

    .line 84
    .line 85
    invoke-direct {v0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->b:Ljava/lang/String;

    .line 92
    .line 93
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_4

    .line 98
    .line 99
    const-string v0, "..."

    .line 100
    .line 101
    iput-object v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->b:Ljava/lang/String;

    .line 102
    .line 103
    :cond_4
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->c:Ljava/lang/String;

    .line 104
    .line 105
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-eqz v0, :cond_5

    .line 110
    .line 111
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    sget v1, Lcom/transsion/shorttv/R$string;->short_tv_str_more:I

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    iput-object v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->c:Ljava/lang/String;

    .line 122
    .line 123
    :cond_5
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->d:Ljava/lang/String;

    .line 124
    .line 125
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-eqz v0, :cond_6

    .line 130
    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .line 135
    .line 136
    const-string v1, "\n"

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    sget v2, Lcom/transsion/shorttv/R$string;->short_tv_str_hide:I

    .line 146
    .line 147
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    iput-object v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->d:Ljava/lang/String;

    .line 159
    .line 160
    :cond_6
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->e:Ljava/lang/String;

    .line 161
    .line 162
    const-string v1, "  "

    .line 163
    .line 164
    if-nez v0, :cond_7

    .line 165
    .line 166
    iput-object v1, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->e:Ljava/lang/String;

    .line 167
    .line 168
    :cond_7
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->f:Ljava/lang/String;

    .line 169
    .line 170
    if-nez v0, :cond_8

    .line 171
    .line 172
    iput-object v1, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->f:Ljava/lang/String;

    .line 173
    .line 174
    :cond_8
    new-instance v0, Lmu/c;

    .line 175
    .line 176
    invoke-direct {v0, p0}, Lmu/c;-><init>(Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    new-instance v1, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView$a;

    .line 187
    .line 188
    invoke-direct {v1, p0}, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView$a;-><init>(Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 192
    .line 193
    .line 194
    return-void
.end method

.method private j(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->i()V

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    sget-object v0, Lcom/transsion/shorttv/R$styleable;->ExpandView:[I

    .line 8
    .line 9
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    const/4 v0, 0x0

    .line 18
    move v1, v0

    .line 19
    :goto_0
    if-ge v1, p2, :cond_12

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    sget v3, Lcom/transsion/shorttv/R$styleable;->ExpandView_pop_hint_text_size:I

    .line 26
    .line 27
    if-ne v2, v3, :cond_1

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    iput v2, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->s:F

    .line 35
    .line 36
    goto/16 :goto_1

    .line 37
    .line 38
    :cond_1
    sget v3, Lcom/transsion/shorttv/R$styleable;->ExpandView_pop_reverse_Lines:I

    .line 39
    .line 40
    const/4 v4, 0x1

    .line 41
    if-ne v2, v3, :cond_2

    .line 42
    .line 43
    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    iput v2, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->l:I

    .line 48
    .line 49
    goto/16 :goto_1

    .line 50
    .line 51
    :cond_2
    sget v3, Lcom/transsion/shorttv/R$styleable;->ExpandView_pop_ellipsis:I

    .line 52
    .line 53
    if-ne v2, v3, :cond_3

    .line 54
    .line 55
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    iput-object v2, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->b:Ljava/lang/String;

    .line 60
    .line 61
    goto/16 :goto_1

    .line 62
    .line 63
    :cond_3
    sget v3, Lcom/transsion/shorttv/R$styleable;->ExpandView_pop_expand_hint:I

    .line 64
    .line 65
    if-ne v2, v3, :cond_4

    .line 66
    .line 67
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    iput-object v2, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->c:Ljava/lang/String;

    .line 72
    .line 73
    goto/16 :goto_1

    .line 74
    .line 75
    :cond_4
    sget v3, Lcom/transsion/shorttv/R$styleable;->ExpandView_pop_shrink_hint:I

    .line 76
    .line 77
    if-ne v2, v3, :cond_5

    .line 78
    .line 79
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    iput-object v2, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->d:Ljava/lang/String;

    .line 84
    .line 85
    goto/16 :goto_1

    .line 86
    .line 87
    :cond_5
    sget v3, Lcom/transsion/shorttv/R$styleable;->ExpandView_pop_toggle_enabled:I

    .line 88
    .line 89
    if-ne v2, v3, :cond_6

    .line 90
    .line 91
    iget-boolean v3, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->g:Z

    .line 92
    .line 93
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    iput-boolean v2, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->g:Z

    .line 98
    .line 99
    goto/16 :goto_1

    .line 100
    .line 101
    :cond_6
    sget v3, Lcom/transsion/shorttv/R$styleable;->ExpandView_pop_show_expand_hint:I

    .line 102
    .line 103
    if-ne v2, v3, :cond_7

    .line 104
    .line 105
    iget-boolean v3, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->i:Z

    .line 106
    .line 107
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    iput-boolean v2, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->i:Z

    .line 112
    .line 113
    goto/16 :goto_1

    .line 114
    .line 115
    :cond_7
    sget v3, Lcom/transsion/shorttv/R$styleable;->ExpandView_pop_show_shrink_hint:I

    .line 116
    .line 117
    if-ne v2, v3, :cond_8

    .line 118
    .line 119
    iget-boolean v3, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->j:Z

    .line 120
    .line 121
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    iput-boolean v2, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->j:Z

    .line 126
    .line 127
    goto/16 :goto_1

    .line 128
    .line 129
    :cond_8
    sget v3, Lcom/transsion/shorttv/R$styleable;->ExpandView_pop_expand_hint_color:I

    .line 130
    .line 131
    const v5, -0x66000001

    .line 132
    .line 133
    .line 134
    if-ne v2, v3, :cond_9

    .line 135
    .line 136
    invoke-virtual {p1, v2, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    iput v2, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->m:I

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_9
    sget v3, Lcom/transsion/shorttv/R$styleable;->ExpandView_pop_shrink_hint_color:I

    .line 144
    .line 145
    if-ne v2, v3, :cond_a

    .line 146
    .line 147
    invoke-virtual {p1, v2, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    iput v2, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->n:I

    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_a
    sget v3, Lcom/transsion/shorttv/R$styleable;->ExpandView_pop_expand_bg_Color:I

    .line 155
    .line 156
    if-ne v2, v3, :cond_b

    .line 157
    .line 158
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    iput v2, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->o:I

    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_b
    sget v3, Lcom/transsion/shorttv/R$styleable;->ExpandView_pop_shrink_bg_color:I

    .line 166
    .line 167
    if-ne v2, v3, :cond_c

    .line 168
    .line 169
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 170
    .line 171
    .line 172
    move-result v2

    .line 173
    iput v2, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->p:I

    .line 174
    .line 175
    goto :goto_1

    .line 176
    :cond_c
    sget v3, Lcom/transsion/shorttv/R$styleable;->ExpandView_pop_Init_state:I

    .line 177
    .line 178
    if-ne v2, v3, :cond_d

    .line 179
    .line 180
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    iput v2, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->r:I

    .line 185
    .line 186
    goto :goto_1

    .line 187
    :cond_d
    sget v3, Lcom/transsion/shorttv/R$styleable;->ExpandView_pop_expand_gap:I

    .line 188
    .line 189
    if-ne v2, v3, :cond_e

    .line 190
    .line 191
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    iput-object v2, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->e:Ljava/lang/String;

    .line 196
    .line 197
    goto :goto_1

    .line 198
    :cond_e
    sget v3, Lcom/transsion/shorttv/R$styleable;->ExpandView_pop_collapse_gap:I

    .line 199
    .line 200
    if-ne v2, v3, :cond_f

    .line 201
    .line 202
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    iput-object v2, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->f:Ljava/lang/String;

    .line 207
    .line 208
    goto :goto_1

    .line 209
    :cond_f
    sget v3, Lcom/transsion/shorttv/R$styleable;->ExpandView_pop_hash_tag_color:I

    .line 210
    .line 211
    if-ne v2, v3, :cond_10

    .line 212
    .line 213
    iget v3, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->q:I

    .line 214
    .line 215
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 216
    .line 217
    .line 218
    move-result v2

    .line 219
    iput v2, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->q:I

    .line 220
    .line 221
    goto :goto_1

    .line 222
    :cond_10
    sget v3, Lcom/transsion/shorttv/R$styleable;->ExpandView_pop_show_hint_icon:I

    .line 223
    .line 224
    if-ne v2, v3, :cond_11

    .line 225
    .line 226
    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 227
    .line 228
    .line 229
    move-result v2

    .line 230
    iput-boolean v2, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->t:Z

    .line 231
    .line 232
    :cond_11
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 233
    .line 234
    goto/16 :goto_0

    .line 235
    .line 236
    :cond_12
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 237
    .line 238
    .line 239
    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->i()V

    .line 240
    .line 241
    .line 242
    return-void
.end method

.method private synthetic k(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->o()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic l(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->setTitle(Ljava/lang/CharSequence;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic m(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->h:Z

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->y:Ljava/lang/CharSequence;

    .line 6
    .line 7
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iput-object v1, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->x:Landroid/text/Layout;

    .line 15
    .line 16
    :cond_0
    iput-object p1, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->y:Ljava/lang/CharSequence;

    .line 17
    .line 18
    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->getLayoutWidth()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-lez v0, :cond_2

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    iput-boolean v1, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->B:Z

    .line 26
    .line 27
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->y:Ljava/lang/CharSequence;

    .line 28
    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-direct {p0, v0}, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->h(I)Ljava/lang/CharSequence;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    :goto_0
    return-object p1

    .line 37
    :cond_2
    iget-boolean v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->k:Z

    .line 38
    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    new-instance v0, Lmu/d;

    .line 42
    .line 43
    invoke-direct {v0, p0, p1}, Lmu/d;-><init>(Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    .line 46
    const-wide/16 v2, 0x64

    .line 47
    .line 48
    invoke-virtual {p0, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 49
    .line 50
    .line 51
    :cond_3
    return-object v1

    .line 52
    :cond_4
    return-object p1
.end method

.method private n(Landroid/text/SpannableStringBuilder;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    return-object p1
.end method

.method private o()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->c:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->d:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    :cond_0
    iget v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->r:I

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    if-eq v0, v1, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->r:I

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    iput v1, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->r:I

    .line 46
    .line 47
    :goto_0
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->y:Ljava/lang/CharSequence;

    .line 48
    .line 49
    invoke-virtual {p0, v0}, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->setTitle(Ljava/lang/CharSequence;)V

    .line 50
    .line 51
    .line 52
    :cond_3
    return-void
.end method


# virtual methods
.method public addLegacyHashTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->A:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->z:Ljava/lang/String;

    .line 4
    .line 5
    return-void
.end method

.method public changeLocal()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget v1, Lcom/transsion/shorttv/R$string;->short_tv_str_more:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->c:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sget v1, Lcom/transsion/shorttv/R$string;->short_tv_str_hide:I

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->d:Ljava/lang/String;

    .line 24
    .line 25
    invoke-super {p0}, Lcom/transsion/shorttv_pugc/base/widget/TnTextView;->changeLocal()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public getExpandState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->r:I

    .line 2
    .line 3
    return v0
.end method

.method public isOutLines()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->x:Landroid/text/Layout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget v2, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->l:I

    .line 11
    .line 12
    if-le v0, v2, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    :cond_0
    return v1
.end method

.method public isSetTitleSuccess()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->B:Z

    .line 2
    .line 3
    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatTextView;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public reset()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->r:I

    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->y:Ljava/lang/CharSequence;

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->setTitle(Ljava/lang/CharSequence;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setCollapseEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->h:Z

    .line 2
    .line 3
    return-void
.end method

.method public setExpandListener(Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView$c;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setOnClickHashTagListener(Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView$b;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    new-instance v0, Lmu/b;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lmu/b;-><init>(Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/transsion/shorttv_pugc/base/widget/TnTextView;->setTextAction(Lkotlin/jvm/functions/Function0;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
