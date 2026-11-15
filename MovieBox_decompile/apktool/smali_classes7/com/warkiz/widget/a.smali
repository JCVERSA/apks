.class public Lcom/warkiz/widget/a;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field A:Landroid/graphics/drawable/Drawable;

.field B:Z

.field C:I

.field D:I

.field E:[Ljava/lang/String;

.field F:Landroid/graphics/Typeface;

.field G:Landroid/content/res/ColorStateList;

.field H:I

.field I:I

.field J:I

.field K:I

.field L:Landroid/graphics/drawable/Drawable;

.field M:Z

.field N:Z

.field O:Landroid/content/res/ColorStateList;

.field final a:Landroid/content/Context;

.field b:F

.field c:F

.field d:F

.field e:Z

.field f:Z

.field g:Z

.field h:Z

.field i:Z

.field j:Z

.field k:I

.field l:I

.field m:I

.field n:I

.field o:Landroid/view/View;

.field p:Landroid/view/View;

.field q:I

.field r:I

.field s:I

.field t:I

.field u:Z

.field v:I

.field w:Z

.field x:I

.field y:I

.field z:Landroid/content/res/ColorStateList;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, 0x42c80000    # 100.0f

    .line 5
    .line 6
    iput v0, p0, Lcom/warkiz/widget/a;->b:F

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/warkiz/widget/a;->c:F

    .line 10
    .line 11
    iput v0, p0, Lcom/warkiz/widget/a;->d:F

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/warkiz/widget/a;->e:Z

    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/warkiz/widget/a;->f:Z

    .line 17
    .line 18
    iput-boolean v0, p0, Lcom/warkiz/widget/a;->g:Z

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    iput-boolean v1, p0, Lcom/warkiz/widget/a;->h:Z

    .line 22
    .line 23
    iput-boolean v0, p0, Lcom/warkiz/widget/a;->i:Z

    .line 24
    .line 25
    iput-boolean v0, p0, Lcom/warkiz/widget/a;->j:Z

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    iput v1, p0, Lcom/warkiz/widget/a;->k:I

    .line 29
    .line 30
    const-string v1, "#FF4081"

    .line 31
    .line 32
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    iput v2, p0, Lcom/warkiz/widget/a;->l:I

    .line 37
    .line 38
    const-string v2, "#FFFFFF"

    .line 39
    .line 40
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    iput v2, p0, Lcom/warkiz/widget/a;->m:I

    .line 45
    .line 46
    iput v0, p0, Lcom/warkiz/widget/a;->n:I

    .line 47
    .line 48
    const/4 v2, 0x0

    .line 49
    iput-object v2, p0, Lcom/warkiz/widget/a;->o:Landroid/view/View;

    .line 50
    .line 51
    iput-object v2, p0, Lcom/warkiz/widget/a;->p:Landroid/view/View;

    .line 52
    .line 53
    iput v0, p0, Lcom/warkiz/widget/a;->q:I

    .line 54
    .line 55
    const-string v3, "#D7D7D7"

    .line 56
    .line 57
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    iput v3, p0, Lcom/warkiz/widget/a;->r:I

    .line 62
    .line 63
    iput v0, p0, Lcom/warkiz/widget/a;->s:I

    .line 64
    .line 65
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    iput v3, p0, Lcom/warkiz/widget/a;->t:I

    .line 70
    .line 71
    iput-boolean v0, p0, Lcom/warkiz/widget/a;->u:Z

    .line 72
    .line 73
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    iput v3, p0, Lcom/warkiz/widget/a;->v:I

    .line 78
    .line 79
    iput-boolean v0, p0, Lcom/warkiz/widget/a;->w:Z

    .line 80
    .line 81
    iput v0, p0, Lcom/warkiz/widget/a;->x:I

    .line 82
    .line 83
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    iput v3, p0, Lcom/warkiz/widget/a;->y:I

    .line 88
    .line 89
    iput-object v2, p0, Lcom/warkiz/widget/a;->z:Landroid/content/res/ColorStateList;

    .line 90
    .line 91
    iput-object v2, p0, Lcom/warkiz/widget/a;->A:Landroid/graphics/drawable/Drawable;

    .line 92
    .line 93
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    iput v3, p0, Lcom/warkiz/widget/a;->C:I

    .line 98
    .line 99
    iput v0, p0, Lcom/warkiz/widget/a;->D:I

    .line 100
    .line 101
    iput-object v2, p0, Lcom/warkiz/widget/a;->E:[Ljava/lang/String;

    .line 102
    .line 103
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 104
    .line 105
    iput-object v3, p0, Lcom/warkiz/widget/a;->F:Landroid/graphics/Typeface;

    .line 106
    .line 107
    iput-object v2, p0, Lcom/warkiz/widget/a;->G:Landroid/content/res/ColorStateList;

    .line 108
    .line 109
    iput v0, p0, Lcom/warkiz/widget/a;->H:I

    .line 110
    .line 111
    iput v0, p0, Lcom/warkiz/widget/a;->I:I

    .line 112
    .line 113
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    iput v1, p0, Lcom/warkiz/widget/a;->J:I

    .line 118
    .line 119
    iput v0, p0, Lcom/warkiz/widget/a;->K:I

    .line 120
    .line 121
    iput-object v2, p0, Lcom/warkiz/widget/a;->L:Landroid/graphics/drawable/Drawable;

    .line 122
    .line 123
    iput-boolean v0, p0, Lcom/warkiz/widget/a;->M:Z

    .line 124
    .line 125
    iput-boolean v0, p0, Lcom/warkiz/widget/a;->N:Z

    .line 126
    .line 127
    iput-object v2, p0, Lcom/warkiz/widget/a;->O:Landroid/content/res/ColorStateList;

    .line 128
    .line 129
    iput-object p1, p0, Lcom/warkiz/widget/a;->a:Landroid/content/Context;

    .line 130
    .line 131
    const/high16 v0, 0x41600000    # 14.0f

    .line 132
    .line 133
    invoke-static {p1, v0}, Lcom/warkiz/widget/g;->c(Landroid/content/Context;F)I

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    iput v1, p0, Lcom/warkiz/widget/a;->n:I

    .line 138
    .line 139
    const/high16 v1, 0x40000000    # 2.0f

    .line 140
    .line 141
    invoke-static {p1, v1}, Lcom/warkiz/widget/g;->a(Landroid/content/Context;F)I

    .line 142
    .line 143
    .line 144
    move-result v2

    .line 145
    iput v2, p0, Lcom/warkiz/widget/a;->q:I

    .line 146
    .line 147
    invoke-static {p1, v1}, Lcom/warkiz/widget/g;->a(Landroid/content/Context;F)I

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    iput v1, p0, Lcom/warkiz/widget/a;->s:I

    .line 152
    .line 153
    const/high16 v1, 0x41200000    # 10.0f

    .line 154
    .line 155
    invoke-static {p1, v1}, Lcom/warkiz/widget/g;->a(Landroid/content/Context;F)I

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    iput v1, p0, Lcom/warkiz/widget/a;->K:I

    .line 160
    .line 161
    const/high16 v1, 0x41500000    # 13.0f

    .line 162
    .line 163
    invoke-static {p1, v1}, Lcom/warkiz/widget/g;->c(Landroid/content/Context;F)I

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    iput v1, p0, Lcom/warkiz/widget/a;->D:I

    .line 168
    .line 169
    invoke-static {p1, v0}, Lcom/warkiz/widget/g;->a(Landroid/content/Context;F)I

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    iput p1, p0, Lcom/warkiz/widget/a;->x:I

    .line 174
    .line 175
    return-void
.end method
