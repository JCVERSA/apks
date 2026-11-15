.class public Lcom/tn/lib/view/expand/ExpandView;
.super Lcom/tn/lib/widget/TnTextView;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tn/lib/view/expand/ExpandView$c;,
        Lcom/tn/lib/view/expand/ExpandView$b;
    }
.end annotation


# static fields
.field public static final STATE_EXPAND:I = 0x1

.field public static final STATE_SHRINK:I


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

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

.field private v:Lbh/a;

.field private w:Lbh/a;

.field private x:Landroid/text/Layout;

.field private y:Ljava/lang/CharSequence;

.field private z:Lcom/tn/lib/view/expand/ExpandView$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/tn/lib/view/expand/ExpandView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/tn/lib/widget/TnTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    const-string v0, "  "

    iput-object v0, p0, Lcom/tn/lib/view/expand/ExpandView;->e:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/tn/lib/view/expand/ExpandView;->f:Ljava/lang/String;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/tn/lib/view/expand/ExpandView;->g:Z

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, Lcom/tn/lib/view/expand/ExpandView;->h:Z

    .line 7
    iput-boolean v1, p0, Lcom/tn/lib/view/expand/ExpandView;->i:Z

    .line 8
    iput-boolean v1, p0, Lcom/tn/lib/view/expand/ExpandView;->j:Z

    .line 9
    iput-boolean v0, p0, Lcom/tn/lib/view/expand/ExpandView;->k:Z

    .line 10
    iput v1, p0, Lcom/tn/lib/view/expand/ExpandView;->l:I

    const v2, -0x66000001

    .line 11
    iput v2, p0, Lcom/tn/lib/view/expand/ExpandView;->m:I

    .line 12
    iput v2, p0, Lcom/tn/lib/view/expand/ExpandView;->n:I

    const v2, 0x33ffffff

    .line 13
    iput v2, p0, Lcom/tn/lib/view/expand/ExpandView;->o:I

    .line 14
    iput v2, p0, Lcom/tn/lib/view/expand/ExpandView;->p:I

    const/4 v2, -0x1

    .line 15
    iput v2, p0, Lcom/tn/lib/view/expand/ExpandView;->q:I

    .line 16
    iput v0, p0, Lcom/tn/lib/view/expand/ExpandView;->r:I

    .line 17
    iput-boolean v1, p0, Lcom/tn/lib/view/expand/ExpandView;->t:Z

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/tn/lib/view/expand/ExpandView;->k(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/tn/lib/widget/TnTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    const-string p3, "  "

    iput-object p3, p0, Lcom/tn/lib/view/expand/ExpandView;->e:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/tn/lib/view/expand/ExpandView;->f:Ljava/lang/String;

    const/4 p3, 0x0

    .line 22
    iput-boolean p3, p0, Lcom/tn/lib/view/expand/ExpandView;->g:Z

    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/tn/lib/view/expand/ExpandView;->h:Z

    .line 24
    iput-boolean v0, p0, Lcom/tn/lib/view/expand/ExpandView;->i:Z

    .line 25
    iput-boolean v0, p0, Lcom/tn/lib/view/expand/ExpandView;->j:Z

    .line 26
    iput-boolean p3, p0, Lcom/tn/lib/view/expand/ExpandView;->k:Z

    .line 27
    iput v0, p0, Lcom/tn/lib/view/expand/ExpandView;->l:I

    const v1, -0x66000001

    .line 28
    iput v1, p0, Lcom/tn/lib/view/expand/ExpandView;->m:I

    .line 29
    iput v1, p0, Lcom/tn/lib/view/expand/ExpandView;->n:I

    const v1, 0x33ffffff

    .line 30
    iput v1, p0, Lcom/tn/lib/view/expand/ExpandView;->o:I

    .line 31
    iput v1, p0, Lcom/tn/lib/view/expand/ExpandView;->p:I

    const/4 v1, -0x1

    .line 32
    iput v1, p0, Lcom/tn/lib/view/expand/ExpandView;->q:I

    .line 33
    iput p3, p0, Lcom/tn/lib/view/expand/ExpandView;->r:I

    .line 34
    iput-boolean v0, p0, Lcom/tn/lib/view/expand/ExpandView;->t:Z

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/tn/lib/view/expand/ExpandView;->k(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic c(Lcom/tn/lib/view/expand/ExpandView;Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tn/lib/view/expand/ExpandView;->m(Ljava/lang/CharSequence;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Lcom/tn/lib/view/expand/ExpandView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tn/lib/view/expand/ExpandView;->l(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e(Lcom/tn/lib/view/expand/ExpandView;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tn/lib/view/expand/ExpandView;->n(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic f(Lcom/tn/lib/view/expand/ExpandView;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tn/lib/view/expand/ExpandView;->y:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic g(Lcom/tn/lib/view/expand/ExpandView;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tn/lib/view/expand/ExpandView;->k:Z

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
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 2
    .line 3
    .line 4
    move-result-object v8

    .line 5
    iget-object v0, p0, Lcom/tn/lib/view/expand/ExpandView;->y:Ljava/lang/CharSequence;

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
    iget-object v1, p0, Lcom/tn/lib/view/expand/ExpandView;->y:Ljava/lang/CharSequence;

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
    move-object v9, v0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move-object v9, v1

    .line 31
    :goto_0
    iget-object v0, p0, Lcom/tn/lib/view/expand/ExpandView;->x:Landroid/text/Layout;

    .line 32
    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    new-instance v10, Landroid/text/StaticLayout;

    .line 36
    .line 37
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 38
    .line 39
    const/4 v6, 0x0

    .line 40
    const/4 v7, 0x1

    .line 41
    const/high16 v5, 0x3f800000    # 1.0f

    .line 42
    .line 43
    move-object v0, v10

    .line 44
    move-object v1, v9

    .line 45
    move-object v2, v8

    .line 46
    move v3, p1

    .line 47
    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 48
    .line 49
    .line 50
    iput-object v10, p0, Lcom/tn/lib/view/expand/ExpandView;->x:Landroid/text/Layout;

    .line 51
    .line 52
    :cond_1
    iget-object v0, p0, Lcom/tn/lib/view/expand/ExpandView;->x:Landroid/text/Layout;

    .line 53
    .line 54
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    iget v1, p0, Lcom/tn/lib/view/expand/ExpandView;->l:I

    .line 59
    .line 60
    if-gt v0, v1, :cond_3

    .line 61
    .line 62
    new-instance p1, Landroid/text/SpannableStringBuilder;

    .line 63
    .line 64
    iget-object v0, p0, Lcom/tn/lib/view/expand/ExpandView;->y:Ljava/lang/CharSequence;

    .line 65
    .line 66
    if-eqz v0, :cond_2

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    const-string v0, " "

    .line 70
    .line 71
    :goto_1
    invoke-direct {p1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 72
    .line 73
    .line 74
    invoke-direct {p0, p1}, Lcom/tn/lib/view/expand/ExpandView;->o(Landroid/text/SpannableStringBuilder;)Ljava/lang/CharSequence;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    return-object p1

    .line 79
    :cond_3
    iget v0, p0, Lcom/tn/lib/view/expand/ExpandView;->r:I

    .line 80
    .line 81
    const/4 v6, 0x0

    .line 82
    const/16 v7, 0x21

    .line 83
    .line 84
    const/4 v10, 0x1

    .line 85
    if-eqz v0, :cond_7

    .line 86
    .line 87
    if-eq v0, v10, :cond_4

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_4
    iget-boolean p1, p0, Lcom/tn/lib/view/expand/ExpandView;->j:Z

    .line 91
    .line 92
    if-nez p1, :cond_5

    .line 93
    .line 94
    :goto_2
    new-instance p1, Landroid/text/SpannableStringBuilder;

    .line 95
    .line 96
    iget-object v0, p0, Lcom/tn/lib/view/expand/ExpandView;->y:Ljava/lang/CharSequence;

    .line 97
    .line 98
    invoke-direct {p1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 99
    .line 100
    .line 101
    invoke-direct {p0, p1}, Lcom/tn/lib/view/expand/ExpandView;->o(Landroid/text/SpannableStringBuilder;)Ljava/lang/CharSequence;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    return-object p1

    .line 106
    :cond_5
    new-instance p1, Landroid/text/SpannableStringBuilder;

    .line 107
    .line 108
    iget-object v0, p0, Lcom/tn/lib/view/expand/ExpandView;->y:Ljava/lang/CharSequence;

    .line 109
    .line 110
    invoke-direct {p1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 111
    .line 112
    .line 113
    iget-object v0, p0, Lcom/tn/lib/view/expand/ExpandView;->f:Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    iget-object v1, p0, Lcom/tn/lib/view/expand/ExpandView;->d:Ljava/lang/String;

    .line 120
    .line 121
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    iget-object v1, p0, Lcom/tn/lib/view/expand/ExpandView;->f:Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    sub-int/2addr v0, v1

    .line 135
    iget-object v1, p0, Lcom/tn/lib/view/expand/ExpandView;->d:Ljava/lang/String;

    .line 136
    .line 137
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    sub-int/2addr v0, v1

    .line 142
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    if-gez v0, :cond_6

    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_6
    move v6, v0

    .line 150
    :goto_3
    iget-object v0, p0, Lcom/tn/lib/view/expand/ExpandView;->u:Landroid/text/style/ClickableSpan;

    .line 151
    .line 152
    invoke-virtual {p1, v0, v6, v1, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 153
    .line 154
    .line 155
    iget-object v0, p0, Lcom/tn/lib/view/expand/ExpandView;->v:Lbh/a;

    .line 156
    .line 157
    invoke-virtual {p1, v0, v6, v1, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 158
    .line 159
    .line 160
    invoke-direct {p0, p1}, Lcom/tn/lib/view/expand/ExpandView;->o(Landroid/text/SpannableStringBuilder;)Ljava/lang/CharSequence;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    return-object p1

    .line 165
    :cond_7
    iget-object v0, p0, Lcom/tn/lib/view/expand/ExpandView;->x:Landroid/text/Layout;

    .line 166
    .line 167
    sub-int/2addr v1, v10

    .line 168
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineEnd(I)I

    .line 169
    .line 170
    .line 171
    move-result v4

    .line 172
    iget-object v0, p0, Lcom/tn/lib/view/expand/ExpandView;->x:Landroid/text/Layout;

    .line 173
    .line 174
    iget v1, p0, Lcom/tn/lib/view/expand/ExpandView;->l:I

    .line 175
    .line 176
    sub-int/2addr v1, v10

    .line 177
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    .line 178
    .line 179
    .line 180
    move-result v3

    .line 181
    move-object v0, p0

    .line 182
    move-object v1, v9

    .line 183
    move-object v2, v8

    .line 184
    move v5, p1

    .line 185
    invoke-direct/range {v0 .. v5}, Lcom/tn/lib/view/expand/ExpandView;->i(Ljava/lang/String;Landroid/text/TextPaint;III)I

    .line 186
    .line 187
    .line 188
    move-result p1

    .line 189
    iget-object v0, p0, Lcom/tn/lib/view/expand/ExpandView;->y:Ljava/lang/CharSequence;

    .line 190
    .line 191
    if-eqz v0, :cond_8

    .line 192
    .line 193
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    if-gt v0, p1, :cond_8

    .line 198
    .line 199
    iget-object p1, p0, Lcom/tn/lib/view/expand/ExpandView;->y:Ljava/lang/CharSequence;

    .line 200
    .line 201
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 202
    .line 203
    .line 204
    move-result p1

    .line 205
    sub-int/2addr p1, v10

    .line 206
    :cond_8
    iget-object v0, p0, Lcom/tn/lib/view/expand/ExpandView;->y:Ljava/lang/CharSequence;

    .line 207
    .line 208
    if-eqz v0, :cond_c

    .line 209
    .line 210
    if-gtz p1, :cond_9

    .line 211
    .line 212
    goto :goto_5

    .line 213
    :cond_9
    invoke-interface {v0, v6, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 218
    .line 219
    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 220
    .line 221
    .line 222
    iget-object p1, p0, Lcom/tn/lib/view/expand/ExpandView;->b:Ljava/lang/String;

    .line 223
    .line 224
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    iget-boolean v0, p0, Lcom/tn/lib/view/expand/ExpandView;->i:Z

    .line 229
    .line 230
    if-eqz v0, :cond_b

    .line 231
    .line 232
    iget-object v0, p0, Lcom/tn/lib/view/expand/ExpandView;->e:Ljava/lang/String;

    .line 233
    .line 234
    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 235
    .line 236
    .line 237
    iget-object v0, p0, Lcom/tn/lib/view/expand/ExpandView;->c:Ljava/lang/String;

    .line 238
    .line 239
    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    .line 243
    .line 244
    .line 245
    move-result v0

    .line 246
    iget-object v1, p0, Lcom/tn/lib/view/expand/ExpandView;->e:Ljava/lang/String;

    .line 247
    .line 248
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 249
    .line 250
    .line 251
    move-result v1

    .line 252
    sub-int/2addr v0, v1

    .line 253
    iget-object v1, p0, Lcom/tn/lib/view/expand/ExpandView;->c:Ljava/lang/String;

    .line 254
    .line 255
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 256
    .line 257
    .line 258
    move-result v1

    .line 259
    sub-int/2addr v0, v1

    .line 260
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    .line 261
    .line 262
    .line 263
    move-result v1

    .line 264
    if-gez v0, :cond_a

    .line 265
    .line 266
    goto :goto_4

    .line 267
    :cond_a
    move v6, v0

    .line 268
    :goto_4
    iget-object v0, p0, Lcom/tn/lib/view/expand/ExpandView;->u:Landroid/text/style/ClickableSpan;

    .line 269
    .line 270
    invoke-virtual {p1, v0, v6, v1, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 271
    .line 272
    .line 273
    iget-object v0, p0, Lcom/tn/lib/view/expand/ExpandView;->w:Lbh/a;

    .line 274
    .line 275
    invoke-virtual {p1, v0, v6, v1, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 276
    .line 277
    .line 278
    :cond_b
    invoke-direct {p0, p1}, Lcom/tn/lib/view/expand/ExpandView;->o(Landroid/text/SpannableStringBuilder;)Ljava/lang/CharSequence;

    .line 279
    .line 280
    .line 281
    move-result-object p1

    .line 282
    return-object p1

    .line 283
    :cond_c
    :goto_5
    return-object v0
.end method

.method private i(Ljava/lang/String;Landroid/text/TextPaint;III)I
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/tn/lib/view/expand/ExpandView;->w:Lbh/a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/tn/lib/view/expand/ExpandView;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/tn/lib/view/expand/ExpandView;->i:Z

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v3, p0, Lcom/tn/lib/view/expand/ExpandView;->c:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-object v3, p0, Lcom/tn/lib/view/expand/ExpandView;->e:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const-string v2, ""

    .line 30
    .line 31
    :goto_0
    invoke-virtual {v0, p2, v1, v2}, Lbh/a;->e(Landroid/graphics/Paint;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    sub-int/2addr p5, v0

    .line 36
    int-to-float v5, p5

    .line 37
    const/4 v6, 0x0

    .line 38
    const/4 v4, 0x1

    .line 39
    move-object v0, p2

    .line 40
    move-object v1, p1

    .line 41
    move v2, p3

    .line 42
    move v3, p4

    .line 43
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->breakText(Ljava/lang/CharSequence;IIZF[F)I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    add-int/2addr p1, p3

    .line 48
    return p1
.end method

.method private j()V
    .locals 11

    .line 1
    iget v0, p0, Lcom/tn/lib/view/expand/ExpandView;->s:F

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
    iput v0, p0, Lcom/tn/lib/view/expand/ExpandView;->s:F

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
    new-instance v0, Lbh/a;

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    iget-boolean v2, p0, Lcom/tn/lib/view/expand/ExpandView;->t:Z

    .line 30
    .line 31
    const/16 v10, -0x6f

    .line 32
    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    sget v2, Lcom/tn/lib/widget/R$mipmap;->info_player_ic_expand:I

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
    iget v5, p0, Lcom/tn/lib/view/expand/ExpandView;->m:I

    .line 41
    .line 42
    iget v6, p0, Lcom/tn/lib/view/expand/ExpandView;->o:I

    .line 43
    .line 44
    iget v7, p0, Lcom/tn/lib/view/expand/ExpandView;->s:F

    .line 45
    .line 46
    const/4 v8, 0x5

    .line 47
    move-object v2, v0

    .line 48
    move v9, v1

    .line 49
    invoke-direct/range {v2 .. v9}, Lbh/a;-><init>(Landroid/content/Context;IIIFIZ)V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Lcom/tn/lib/view/expand/ExpandView;->w:Lbh/a;

    .line 53
    .line 54
    new-instance v0, Lbh/a;

    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    iget-boolean v2, p0, Lcom/tn/lib/view/expand/ExpandView;->t:Z

    .line 61
    .line 62
    if-eqz v2, :cond_3

    .line 63
    .line 64
    sget v2, Lcom/tn/lib/widget/R$mipmap;->info_player_ic_collapse:I

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
    iget v5, p0, Lcom/tn/lib/view/expand/ExpandView;->n:I

    .line 70
    .line 71
    iget v6, p0, Lcom/tn/lib/view/expand/ExpandView;->p:I

    .line 72
    .line 73
    iget v7, p0, Lcom/tn/lib/view/expand/ExpandView;->s:F

    .line 74
    .line 75
    const/4 v8, 0x5

    .line 76
    move-object v2, v0

    .line 77
    move v9, v1

    .line 78
    invoke-direct/range {v2 .. v9}, Lbh/a;-><init>(Landroid/content/Context;IIIFIZ)V

    .line 79
    .line 80
    .line 81
    iput-object v0, p0, Lcom/tn/lib/view/expand/ExpandView;->v:Lbh/a;

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
    iget-object v0, p0, Lcom/tn/lib/view/expand/ExpandView;->b:Ljava/lang/String;

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
    iput-object v0, p0, Lcom/tn/lib/view/expand/ExpandView;->b:Ljava/lang/String;

    .line 102
    .line 103
    :cond_4
    iget-object v0, p0, Lcom/tn/lib/view/expand/ExpandView;->c:Ljava/lang/String;

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
    sget v1, Lcom/tn/lib/widget/R$string;->player_more:I

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    iput-object v0, p0, Lcom/tn/lib/view/expand/ExpandView;->c:Ljava/lang/String;

    .line 122
    .line 123
    :cond_5
    iget-object v0, p0, Lcom/tn/lib/view/expand/ExpandView;->d:Ljava/lang/String;

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
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    sget v1, Lcom/tn/lib/widget/R$string;->player_hide:I

    .line 136
    .line 137
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    iput-object v0, p0, Lcom/tn/lib/view/expand/ExpandView;->d:Ljava/lang/String;

    .line 142
    .line 143
    :cond_6
    iget-object v0, p0, Lcom/tn/lib/view/expand/ExpandView;->e:Ljava/lang/String;

    .line 144
    .line 145
    const-string v1, "  "

    .line 146
    .line 147
    if-nez v0, :cond_7

    .line 148
    .line 149
    iput-object v1, p0, Lcom/tn/lib/view/expand/ExpandView;->e:Ljava/lang/String;

    .line 150
    .line 151
    :cond_7
    iget-object v0, p0, Lcom/tn/lib/view/expand/ExpandView;->f:Ljava/lang/String;

    .line 152
    .line 153
    if-nez v0, :cond_8

    .line 154
    .line 155
    iput-object v1, p0, Lcom/tn/lib/view/expand/ExpandView;->f:Ljava/lang/String;

    .line 156
    .line 157
    :cond_8
    new-instance v0, Lbh/c;

    .line 158
    .line 159
    invoke-direct {v0, p0}, Lbh/c;-><init>(Lcom/tn/lib/view/expand/ExpandView;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    new-instance v1, Lcom/tn/lib/view/expand/ExpandView$a;

    .line 170
    .line 171
    invoke-direct {v1, p0}, Lcom/tn/lib/view/expand/ExpandView$a;-><init>(Lcom/tn/lib/view/expand/ExpandView;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 175
    .line 176
    .line 177
    return-void
.end method

.method private k(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/tn/lib/view/expand/ExpandView;->j()V

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    sget-object v0, Lcom/tn/lib/widget/R$styleable;->ExpandView:[I

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
    sget v3, Lcom/tn/lib/widget/R$styleable;->ExpandView_pop_hint_text_size:I

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
    iput v2, p0, Lcom/tn/lib/view/expand/ExpandView;->s:F

    .line 35
    .line 36
    goto/16 :goto_1

    .line 37
    .line 38
    :cond_1
    sget v3, Lcom/tn/lib/widget/R$styleable;->ExpandView_pop_reverse_Lines:I

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
    iput v2, p0, Lcom/tn/lib/view/expand/ExpandView;->l:I

    .line 48
    .line 49
    goto/16 :goto_1

    .line 50
    .line 51
    :cond_2
    sget v3, Lcom/tn/lib/widget/R$styleable;->ExpandView_pop_ellipsis:I

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
    iput-object v2, p0, Lcom/tn/lib/view/expand/ExpandView;->b:Ljava/lang/String;

    .line 60
    .line 61
    goto/16 :goto_1

    .line 62
    .line 63
    :cond_3
    sget v3, Lcom/tn/lib/widget/R$styleable;->ExpandView_pop_expand_hint:I

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
    iput-object v2, p0, Lcom/tn/lib/view/expand/ExpandView;->c:Ljava/lang/String;

    .line 72
    .line 73
    goto/16 :goto_1

    .line 74
    .line 75
    :cond_4
    sget v3, Lcom/tn/lib/widget/R$styleable;->ExpandView_pop_shrink_hint:I

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
    iput-object v2, p0, Lcom/tn/lib/view/expand/ExpandView;->d:Ljava/lang/String;

    .line 84
    .line 85
    goto/16 :goto_1

    .line 86
    .line 87
    :cond_5
    sget v3, Lcom/tn/lib/widget/R$styleable;->ExpandView_pop_toggle_enabled:I

    .line 88
    .line 89
    if-ne v2, v3, :cond_6

    .line 90
    .line 91
    iget-boolean v3, p0, Lcom/tn/lib/view/expand/ExpandView;->g:Z

    .line 92
    .line 93
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    iput-boolean v2, p0, Lcom/tn/lib/view/expand/ExpandView;->g:Z

    .line 98
    .line 99
    goto/16 :goto_1

    .line 100
    .line 101
    :cond_6
    sget v3, Lcom/tn/lib/widget/R$styleable;->ExpandView_pop_show_expand_hint:I

    .line 102
    .line 103
    if-ne v2, v3, :cond_7

    .line 104
    .line 105
    iget-boolean v3, p0, Lcom/tn/lib/view/expand/ExpandView;->i:Z

    .line 106
    .line 107
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    iput-boolean v2, p0, Lcom/tn/lib/view/expand/ExpandView;->i:Z

    .line 112
    .line 113
    goto/16 :goto_1

    .line 114
    .line 115
    :cond_7
    sget v3, Lcom/tn/lib/widget/R$styleable;->ExpandView_pop_show_shrink_hint:I

    .line 116
    .line 117
    if-ne v2, v3, :cond_8

    .line 118
    .line 119
    iget-boolean v3, p0, Lcom/tn/lib/view/expand/ExpandView;->j:Z

    .line 120
    .line 121
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    iput-boolean v2, p0, Lcom/tn/lib/view/expand/ExpandView;->j:Z

    .line 126
    .line 127
    goto/16 :goto_1

    .line 128
    .line 129
    :cond_8
    sget v3, Lcom/tn/lib/widget/R$styleable;->ExpandView_pop_expand_hint_color:I

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
    iput v2, p0, Lcom/tn/lib/view/expand/ExpandView;->m:I

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_9
    sget v3, Lcom/tn/lib/widget/R$styleable;->ExpandView_pop_shrink_hint_color:I

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
    iput v2, p0, Lcom/tn/lib/view/expand/ExpandView;->n:I

    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_a
    sget v3, Lcom/tn/lib/widget/R$styleable;->ExpandView_pop_expand_bg_Color:I

    .line 155
    .line 156
    const v5, 0x33ffffff

    .line 157
    .line 158
    .line 159
    if-ne v2, v3, :cond_b

    .line 160
    .line 161
    invoke-virtual {p1, v2, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    iput v2, p0, Lcom/tn/lib/view/expand/ExpandView;->o:I

    .line 166
    .line 167
    goto :goto_1

    .line 168
    :cond_b
    sget v3, Lcom/tn/lib/widget/R$styleable;->ExpandView_pop_shrink_bg_color:I

    .line 169
    .line 170
    if-ne v2, v3, :cond_c

    .line 171
    .line 172
    invoke-virtual {p1, v2, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 173
    .line 174
    .line 175
    move-result v2

    .line 176
    iput v2, p0, Lcom/tn/lib/view/expand/ExpandView;->p:I

    .line 177
    .line 178
    goto :goto_1

    .line 179
    :cond_c
    sget v3, Lcom/tn/lib/widget/R$styleable;->ExpandView_pop_Init_state:I

    .line 180
    .line 181
    if-ne v2, v3, :cond_d

    .line 182
    .line 183
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 184
    .line 185
    .line 186
    move-result v2

    .line 187
    iput v2, p0, Lcom/tn/lib/view/expand/ExpandView;->r:I

    .line 188
    .line 189
    goto :goto_1

    .line 190
    :cond_d
    sget v3, Lcom/tn/lib/widget/R$styleable;->ExpandView_pop_expand_gap:I

    .line 191
    .line 192
    if-ne v2, v3, :cond_e

    .line 193
    .line 194
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    iput-object v2, p0, Lcom/tn/lib/view/expand/ExpandView;->e:Ljava/lang/String;

    .line 199
    .line 200
    goto :goto_1

    .line 201
    :cond_e
    sget v3, Lcom/tn/lib/widget/R$styleable;->ExpandView_pop_collapse_gap:I

    .line 202
    .line 203
    if-ne v2, v3, :cond_f

    .line 204
    .line 205
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    iput-object v2, p0, Lcom/tn/lib/view/expand/ExpandView;->f:Ljava/lang/String;

    .line 210
    .line 211
    goto :goto_1

    .line 212
    :cond_f
    sget v3, Lcom/tn/lib/widget/R$styleable;->ExpandView_pop_hash_tag_color:I

    .line 213
    .line 214
    if-ne v2, v3, :cond_10

    .line 215
    .line 216
    iget v3, p0, Lcom/tn/lib/view/expand/ExpandView;->q:I

    .line 217
    .line 218
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 219
    .line 220
    .line 221
    move-result v2

    .line 222
    iput v2, p0, Lcom/tn/lib/view/expand/ExpandView;->q:I

    .line 223
    .line 224
    goto :goto_1

    .line 225
    :cond_10
    sget v3, Lcom/tn/lib/widget/R$styleable;->ExpandView_pop_show_hint_icon:I

    .line 226
    .line 227
    if-ne v2, v3, :cond_11

    .line 228
    .line 229
    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 230
    .line 231
    .line 232
    move-result v2

    .line 233
    iput-boolean v2, p0, Lcom/tn/lib/view/expand/ExpandView;->t:Z

    .line 234
    .line 235
    :cond_11
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 236
    .line 237
    goto/16 :goto_0

    .line 238
    .line 239
    :cond_12
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 240
    .line 241
    .line 242
    invoke-direct {p0}, Lcom/tn/lib/view/expand/ExpandView;->j()V

    .line 243
    .line 244
    .line 245
    return-void
.end method

.method private synthetic l(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tn/lib/view/expand/ExpandView;->p()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic m(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/tn/lib/view/expand/ExpandView;->setTitle(Ljava/lang/CharSequence;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic n(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/tn/lib/view/expand/ExpandView;->h:Z

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    iget-object v0, p0, Lcom/tn/lib/view/expand/ExpandView;->y:Ljava/lang/CharSequence;

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
    iput-object v1, p0, Lcom/tn/lib/view/expand/ExpandView;->x:Landroid/text/Layout;

    .line 15
    .line 16
    :cond_0
    iput-object p1, p0, Lcom/tn/lib/view/expand/ExpandView;->y:Ljava/lang/CharSequence;

    .line 17
    .line 18
    invoke-direct {p0}, Lcom/tn/lib/view/expand/ExpandView;->getLayoutWidth()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-lez v0, :cond_2

    .line 23
    .line 24
    iget-object v1, p0, Lcom/tn/lib/view/expand/ExpandView;->y:Ljava/lang/CharSequence;

    .line 25
    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-direct {p0, v0}, Lcom/tn/lib/view/expand/ExpandView;->h(I)Ljava/lang/CharSequence;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    :goto_0
    return-object p1

    .line 34
    :cond_2
    iget-boolean v0, p0, Lcom/tn/lib/view/expand/ExpandView;->k:Z

    .line 35
    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    new-instance v0, Lbh/d;

    .line 39
    .line 40
    invoke-direct {v0, p0, p1}, Lbh/d;-><init>(Lcom/tn/lib/view/expand/ExpandView;Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    const-wide/16 v2, 0x64

    .line 44
    .line 45
    invoke-virtual {p0, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 46
    .line 47
    .line 48
    :cond_3
    return-object v1

    .line 49
    :cond_4
    return-object p1
.end method

.method private o(Landroid/text/SpannableStringBuilder;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    return-object p1
.end method

.method private p()V
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
    iget-object v1, p0, Lcom/tn/lib/view/expand/ExpandView;->c:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/tn/lib/view/expand/ExpandView;->d:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_4

    .line 32
    .line 33
    :cond_0
    iget v0, p0, Lcom/tn/lib/view/expand/ExpandView;->r:I

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
    iput v0, p0, Lcom/tn/lib/view/expand/ExpandView;->r:I

    .line 43
    .line 44
    iget-object v0, p0, Lcom/tn/lib/view/expand/ExpandView;->z:Lcom/tn/lib/view/expand/ExpandView$c;

    .line 45
    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    invoke-interface {v0, p0}, Lcom/tn/lib/view/expand/ExpandView$c;->a(Lcom/tn/lib/view/expand/ExpandView;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    iput v1, p0, Lcom/tn/lib/view/expand/ExpandView;->r:I

    .line 53
    .line 54
    iget-object v0, p0, Lcom/tn/lib/view/expand/ExpandView;->z:Lcom/tn/lib/view/expand/ExpandView$c;

    .line 55
    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    invoke-interface {v0, p0}, Lcom/tn/lib/view/expand/ExpandView$c;->b(Lcom/tn/lib/view/expand/ExpandView;)V

    .line 59
    .line 60
    .line 61
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/tn/lib/view/expand/ExpandView;->y:Ljava/lang/CharSequence;

    .line 62
    .line 63
    invoke-virtual {p0, v0}, Lcom/tn/lib/view/expand/ExpandView;->setTitle(Ljava/lang/CharSequence;)V

    .line 64
    .line 65
    .line 66
    :cond_4
    return-void
.end method


# virtual methods
.method public addLegacyHashTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tn/lib/view/expand/ExpandView;->B:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/tn/lib/view/expand/ExpandView;->A:Ljava/lang/String;

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
    sget v1, Lcom/tn/lib/widget/R$string;->player_more:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/tn/lib/view/expand/ExpandView;->c:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sget v1, Lcom/tn/lib/widget/R$string;->player_hide:I

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/tn/lib/view/expand/ExpandView;->d:Ljava/lang/String;

    .line 24
    .line 25
    invoke-super {p0}, Lcom/tn/lib/widget/TnTextView;->changeLocal()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public getExpandState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tn/lib/view/expand/ExpandView;->r:I

    .line 2
    .line 3
    return v0
.end method

.method public isOutLines()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tn/lib/view/expand/ExpandView;->x:Landroid/text/Layout;

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
    iget v2, p0, Lcom/tn/lib/view/expand/ExpandView;->l:I

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
    iput v0, p0, Lcom/tn/lib/view/expand/ExpandView;->r:I

    .line 3
    .line 4
    iget-object v0, p0, Lcom/tn/lib/view/expand/ExpandView;->z:Lcom/tn/lib/view/expand/ExpandView$c;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0, p0}, Lcom/tn/lib/view/expand/ExpandView$c;->a(Lcom/tn/lib/view/expand/ExpandView;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/tn/lib/view/expand/ExpandView;->y:Ljava/lang/CharSequence;

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/tn/lib/view/expand/ExpandView;->setTitle(Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setCollapseEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tn/lib/view/expand/ExpandView;->h:Z

    .line 2
    .line 3
    return-void
.end method

.method public setExpandListener(Lcom/tn/lib/view/expand/ExpandView$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tn/lib/view/expand/ExpandView;->z:Lcom/tn/lib/view/expand/ExpandView$c;

    .line 2
    .line 3
    return-void
.end method

.method public setOnClickHashTagListener(Lcom/tn/lib/view/expand/ExpandView$b;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    new-instance v0, Lbh/b;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lbh/b;-><init>(Lcom/tn/lib/view/expand/ExpandView;Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/tn/lib/widget/TnTextView;->setTextAction(Lkotlin/jvm/functions/Function0;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
