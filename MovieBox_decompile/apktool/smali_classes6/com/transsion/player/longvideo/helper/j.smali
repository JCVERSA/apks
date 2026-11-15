.class public final Lcom/transsion/player/longvideo/helper/j;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/player/longvideo/helper/j$a;
    }
.end annotation


# static fields
.field public static final e:Lcom/transsion/player/longvideo/helper/j$a;


# instance fields
.field private final a:Lmn/j;

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/player/longvideo/helper/j$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/player/longvideo/helper/j$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/player/longvideo/helper/j;->e:Lcom/transsion/player/longvideo/helper/j$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lmn/j;)V
    .locals 1

    .line 1
    const-string v0, "viewBinding"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/transsion/player/longvideo/helper/j;->a:Lmn/j;

    .line 10
    .line 11
    invoke-static {}, Lcom/blankj/utilcode/util/y;->c()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iput p1, p0, Lcom/transsion/player/longvideo/helper/j;->b:I

    .line 16
    .line 17
    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    iput p1, p0, Lcom/transsion/player/longvideo/helper/j;->c:I

    .line 22
    .line 23
    iget v0, p0, Lcom/transsion/player/longvideo/helper/j;->b:I

    .line 24
    .line 25
    if-ge p1, v0, :cond_0

    .line 26
    .line 27
    iput v0, p0, Lcom/transsion/player/longvideo/helper/j;->c:I

    .line 28
    .line 29
    iput p1, p0, Lcom/transsion/player/longvideo/helper/j;->b:I

    .line 30
    .line 31
    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/d;->a()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    const/16 v0, 0xa

    .line 36
    .line 37
    if-le p1, v0, :cond_1

    .line 38
    .line 39
    iget v0, p0, Lcom/transsion/player/longvideo/helper/j;->c:I

    .line 40
    .line 41
    sub-int/2addr v0, p1

    .line 42
    iput v0, p0, Lcom/transsion/player/longvideo/helper/j;->c:I

    .line 43
    .line 44
    :cond_1
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/player/longvideo/helper/j;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public final b(II)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/d;->c()I

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final c()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/transsion/player/longvideo/helper/j;->d:I

    .line 3
    .line 4
    return-void
.end method

.method public final d(Lcom/transsion/player/longvideo/ui/LongVodUiType;I)V
    .locals 4

    .line 1
    const-string v0, "uiType"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/transsion/player/longvideo/helper/j;->d:I

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-static {}, Lcom/blankj/utilcode/util/d;->c()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iput v0, p0, Lcom/transsion/player/longvideo/helper/j;->d:I

    .line 15
    .line 16
    :cond_0
    sget-object v0, Lcom/transsion/player/longvideo/ui/LongVodUiType;->LAND:Lcom/transsion/player/longvideo/ui/LongVodUiType;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    if-ne p1, v0, :cond_1

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    if-ne p2, v2, :cond_1

    .line 23
    .line 24
    iget v2, p0, Lcom/transsion/player/longvideo/helper/j;->d:I

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move v2, v1

    .line 28
    :goto_0
    if-ne p1, v0, :cond_2

    .line 29
    .line 30
    const/4 v0, 0x3

    .line 31
    if-ne p2, v0, :cond_2

    .line 32
    .line 33
    iget v1, p0, Lcom/transsion/player/longvideo/helper/j;->d:I

    .line 34
    .line 35
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v3, "setSpace  uiType:"

    .line 41
    .line 42
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string p1, "  rotation:"

    .line 49
    .line 50
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string p1, "  spaceLeft:"

    .line 57
    .line 58
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string p1, "  spaceRight:"

    .line 65
    .line 66
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    const-string p2, "LongVodLandSpace"

    .line 77
    .line 78
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lcom/transsion/player/longvideo/helper/j;->a:Lmn/j;

    .line 82
    .line 83
    iget-object p1, p1, Lmn/j;->q:Lmn/i;

    .line 84
    .line 85
    iget-object p1, p1, Lmn/i;->h:Landroid/view/View;

    .line 86
    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    iget-object p2, p0, Lcom/transsion/player/longvideo/helper/j;->a:Lmn/j;

    .line 92
    .line 93
    iget-object p2, p2, Lmn/j;->o:Lmn/k;

    .line 94
    .line 95
    iget-object p2, p2, Lmn/k;->C:Landroid/view/View;

    .line 96
    .line 97
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    iput v2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 102
    .line 103
    iput v2, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 104
    .line 105
    iget-object v0, p0, Lcom/transsion/player/longvideo/helper/j;->a:Lmn/j;

    .line 106
    .line 107
    iget-object v0, v0, Lmn/j;->q:Lmn/i;

    .line 108
    .line 109
    iget-object v0, v0, Lmn/i;->h:Landroid/view/View;

    .line 110
    .line 111
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    .line 113
    .line 114
    iget-object p1, p0, Lcom/transsion/player/longvideo/helper/j;->a:Lmn/j;

    .line 115
    .line 116
    iget-object p1, p1, Lmn/j;->o:Lmn/k;

    .line 117
    .line 118
    iget-object p1, p1, Lmn/k;->C:Landroid/view/View;

    .line 119
    .line 120
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    .line 122
    .line 123
    iget-object p1, p0, Lcom/transsion/player/longvideo/helper/j;->a:Lmn/j;

    .line 124
    .line 125
    iget-object p1, p1, Lmn/j;->q:Lmn/i;

    .line 126
    .line 127
    iget-object p1, p1, Lmn/i;->g:Landroid/view/View;

    .line 128
    .line 129
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    iget-object p2, p0, Lcom/transsion/player/longvideo/helper/j;->a:Lmn/j;

    .line 134
    .line 135
    iget-object p2, p2, Lmn/j;->o:Lmn/k;

    .line 136
    .line 137
    iget-object p2, p2, Lmn/k;->B:Landroid/view/View;

    .line 138
    .line 139
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 144
    .line 145
    iput v1, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 146
    .line 147
    iget-object v0, p0, Lcom/transsion/player/longvideo/helper/j;->a:Lmn/j;

    .line 148
    .line 149
    iget-object v0, v0, Lmn/j;->q:Lmn/i;

    .line 150
    .line 151
    iget-object v0, v0, Lmn/i;->g:Landroid/view/View;

    .line 152
    .line 153
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    .line 155
    .line 156
    iget-object p1, p0, Lcom/transsion/player/longvideo/helper/j;->a:Lmn/j;

    .line 157
    .line 158
    iget-object p1, p1, Lmn/j;->o:Lmn/k;

    .line 159
    .line 160
    iget-object p1, p1, Lmn/k;->B:Landroid/view/View;

    .line 161
    .line 162
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    .line 164
    .line 165
    return-void
.end method
