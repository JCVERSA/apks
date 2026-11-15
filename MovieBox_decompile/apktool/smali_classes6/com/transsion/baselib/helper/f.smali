.class public final Lcom/transsion/baselib/helper/f;
.super Landroid/view/OrientationEventListener;
.source "source.java"


# instance fields
.field private final a:Lkotlin/jvm/functions/Function1;

.field private final b:I

.field private c:J

.field private d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "callback"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    iput-object p2, p0, Lcom/transsion/baselib/helper/f;->a:Lkotlin/jvm/functions/Function1;

    .line 15
    .line 16
    const/16 p1, 0x1f4

    .line 17
    .line 18
    iput p1, p0, Lcom/transsion/baselib/helper/f;->b:I

    .line 19
    .line 20
    const/4 p1, -0x1

    .line 21
    iput p1, p0, Lcom/transsion/baselib/helper/f;->d:I

    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    iput p1, p0, Lcom/transsion/baselib/helper/f;->e:I

    .line 25
    .line 26
    const/4 p1, 0x2

    .line 27
    iput p1, p0, Lcom/transsion/baselib/helper/f;->f:I

    .line 28
    .line 29
    const/4 p1, 0x3

    .line 30
    iput p1, p0, Lcom/transsion/baselib/helper/f;->g:I

    .line 31
    .line 32
    const/4 p1, 0x4

    .line 33
    iput p1, p0, Lcom/transsion/baselib/helper/f;->h:I

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 4

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq p1, v0, :cond_9

    .line 3
    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    iget-wide v2, p0, Lcom/transsion/baselib/helper/f;->c:J

    .line 9
    .line 10
    sub-long/2addr v0, v2

    .line 11
    iget v2, p0, Lcom/transsion/baselib/helper/f;->b:I

    .line 12
    .line 13
    int-to-long v2, v2

    .line 14
    cmp-long v0, v0, v2

    .line 15
    .line 16
    if-gez v0, :cond_0

    .line 17
    .line 18
    goto/16 :goto_1

    .line 19
    .line 20
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    iput-wide v0, p0, Lcom/transsion/baselib/helper/f;->c:J

    .line 25
    .line 26
    const/16 v0, 0x14f

    .line 27
    .line 28
    if-ge p1, v0, :cond_7

    .line 29
    .line 30
    const/16 v0, 0x19

    .line 31
    .line 32
    if-ge p1, v0, :cond_1

    .line 33
    .line 34
    goto/16 :goto_0

    .line 35
    .line 36
    :cond_1
    const/16 v0, 0x41

    .line 37
    .line 38
    if-gt v0, p1, :cond_3

    .line 39
    .line 40
    const/16 v0, 0x74

    .line 41
    .line 42
    if-ge p1, v0, :cond_3

    .line 43
    .line 44
    iget v0, p0, Lcom/transsion/baselib/helper/f;->d:I

    .line 45
    .line 46
    iget v1, p0, Lcom/transsion/baselib/helper/f;->f:I

    .line 47
    .line 48
    if-eq v0, v1, :cond_2

    .line 49
    .line 50
    iput v1, p0, Lcom/transsion/baselib/helper/f;->d:I

    .line 51
    .line 52
    iget-object v0, p0, Lcom/transsion/baselib/helper/f;->a:Lkotlin/jvm/functions/Function1;

    .line 53
    .line 54
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 55
    .line 56
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string v1, "\u6a2a\u5c4f\uff1a"

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_3
    const/16 v0, 0x9b

    .line 74
    .line 75
    if-gt v0, p1, :cond_5

    .line 76
    .line 77
    const/16 v0, 0xce

    .line 78
    .line 79
    if-ge p1, v0, :cond_5

    .line 80
    .line 81
    iget v0, p0, Lcom/transsion/baselib/helper/f;->d:I

    .line 82
    .line 83
    iget v1, p0, Lcom/transsion/baselib/helper/f;->g:I

    .line 84
    .line 85
    if-eq v0, v1, :cond_4

    .line 86
    .line 87
    iput v1, p0, Lcom/transsion/baselib/helper/f;->d:I

    .line 88
    .line 89
    iget-object v0, p0, Lcom/transsion/baselib/helper/f;->a:Lkotlin/jvm/functions/Function1;

    .line 90
    .line 91
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 92
    .line 93
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    const-string v1, "\u53cd\u5411-\u7ad6\u5c4f\uff1a"

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_5
    const/16 v0, 0xf5

    .line 111
    .line 112
    if-gt v0, p1, :cond_9

    .line 113
    .line 114
    const/16 v0, 0x128

    .line 115
    .line 116
    if-ge p1, v0, :cond_9

    .line 117
    .line 118
    iget v0, p0, Lcom/transsion/baselib/helper/f;->d:I

    .line 119
    .line 120
    iget v1, p0, Lcom/transsion/baselib/helper/f;->h:I

    .line 121
    .line 122
    if-eq v0, v1, :cond_6

    .line 123
    .line 124
    iput v1, p0, Lcom/transsion/baselib/helper/f;->d:I

    .line 125
    .line 126
    iget-object v0, p0, Lcom/transsion/baselib/helper/f;->a:Lkotlin/jvm/functions/Function1;

    .line 127
    .line 128
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 129
    .line 130
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    const-string v1, "\u53cd\u5411-\u6a2a\u5c4f\uff1a"

    .line 139
    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_7
    :goto_0
    iget v0, p0, Lcom/transsion/baselib/helper/f;->d:I

    .line 148
    .line 149
    iget v1, p0, Lcom/transsion/baselib/helper/f;->e:I

    .line 150
    .line 151
    if-eq v0, v1, :cond_8

    .line 152
    .line 153
    iput v1, p0, Lcom/transsion/baselib/helper/f;->d:I

    .line 154
    .line 155
    iget-object v0, p0, Lcom/transsion/baselib/helper/f;->a:Lkotlin/jvm/functions/Function1;

    .line 156
    .line 157
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 158
    .line 159
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .line 166
    .line 167
    const-string v1, "\u7ad6\u5c4f\uff1a"

    .line 168
    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    :cond_9
    :goto_1
    return-void
.end method
