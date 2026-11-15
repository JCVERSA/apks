.class public final Lcom/transsion/postdetail/layer/local/i0;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/postdetail/layer/local/i0$a;
    }
.end annotation


# static fields
.field public static final v:Lcom/transsion/postdetail/layer/local/i0$a;

.field private static final w:Lkotlin/Lazy;


# instance fields
.field private a:J

.field private b:J

.field private c:I

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:I

.field private j:Lcom/transsion/postdetail/ui/view/AdCountDownView;

.field private k:Landroidx/appcompat/widget/AppCompatImageView;

.field private l:Lkotlin/jvm/functions/Function1;

.field private m:Lkotlin/jvm/functions/Function0;

.field private n:I

.field private o:I

.field private p:J

.field private q:I

.field private r:Landroid/os/Handler;

.field private s:I

.field private t:I

.field private final u:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/postdetail/layer/local/i0$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/postdetail/layer/local/i0$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/postdetail/layer/local/i0;->v:Lcom/transsion/postdetail/layer/local/i0$a;

    .line 8
    .line 9
    new-instance v0, Lcom/transsion/postdetail/layer/local/d0;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/transsion/postdetail/layer/local/d0;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Lcom/transsion/postdetail/layer/local/i0;->w:Lkotlin/Lazy;

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0xf

    .line 5
    .line 6
    iput v0, p0, Lcom/transsion/postdetail/layer/local/i0;->n:I

    .line 7
    .line 8
    iput v0, p0, Lcom/transsion/postdetail/layer/local/i0;->o:I

    .line 9
    .line 10
    const-wide/32 v0, 0x2bf20

    .line 11
    .line 12
    .line 13
    iput-wide v0, p0, Lcom/transsion/postdetail/layer/local/i0;->p:J

    .line 14
    .line 15
    new-instance v0, Landroid/os/Handler;

    .line 16
    .line 17
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/transsion/postdetail/layer/local/i0;->r:Landroid/os/Handler;

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    iput v0, p0, Lcom/transsion/postdetail/layer/local/i0;->s:I

    .line 28
    .line 29
    iput v0, p0, Lcom/transsion/postdetail/layer/local/i0;->t:I

    .line 30
    .line 31
    new-instance v0, Lcom/transsion/postdetail/layer/local/e0;

    .line 32
    .line 33
    invoke-direct {v0, p0}, Lcom/transsion/postdetail/layer/local/e0;-><init>(Lcom/transsion/postdetail/layer/local/i0;)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lcom/transsion/postdetail/layer/local/i0;->u:Ljava/lang/Runnable;

    .line 37
    .line 38
    return-void
.end method

.method public static synthetic a(I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/postdetail/layer/local/i0;->p(I)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lcom/transsion/postdetail/layer/local/i0;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/postdetail/layer/local/i0;->i(Lcom/transsion/postdetail/layer/local/i0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c()Lcom/transsion/postdetail/layer/local/i0;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/postdetail/layer/local/i0;->j()Lcom/transsion/postdetail/layer/local/i0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic d(I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/postdetail/layer/local/i0;->n(I)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e(I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/postdetail/layer/local/i0;->o(I)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic f()Lkotlin/Lazy;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/postdetail/layer/local/i0;->w:Lkotlin/Lazy;

    .line 2
    .line 3
    return-object v0
.end method

.method private final h()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/i0;->r:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/postdetail/layer/local/i0;->u:Ljava/lang/Runnable;

    .line 4
    .line 5
    const-wide/16 v2, 0x3e8

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private static final i(Lcom/transsion/postdetail/layer/local/i0;)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/transsion/postdetail/layer/local/i0;->q:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/i0;->m()V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget v0, p0, Lcom/transsion/postdetail/layer/local/i0;->i:I

    .line 11
    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    .line 14
    iget v0, p0, Lcom/transsion/postdetail/layer/local/i0;->s:I

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    iget v0, p0, Lcom/transsion/postdetail/layer/local/i0;->t:I

    .line 18
    .line 19
    :goto_0
    sget-object v2, Lcom/transsion/ad/scene/b;->a:Lcom/transsion/ad/scene/b;

    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/transsion/ad/scene/b;->k()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_4

    .line 26
    .line 27
    iget v2, p0, Lcom/transsion/postdetail/layer/local/i0;->o:I

    .line 28
    .line 29
    iget v3, p0, Lcom/transsion/postdetail/layer/local/i0;->q:I

    .line 30
    .line 31
    sub-int/2addr v2, v3

    .line 32
    if-lt v2, v0, :cond_4

    .line 33
    .line 34
    iget v0, p0, Lcom/transsion/postdetail/layer/local/i0;->i:I

    .line 35
    .line 36
    if-eq v0, v1, :cond_2

    .line 37
    .line 38
    const/4 v1, 0x3

    .line 39
    if-ne v0, v1, :cond_4

    .line 40
    .line 41
    :cond_2
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/i0;->k:Landroidx/appcompat/widget/AppCompatImageView;

    .line 42
    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    invoke-static {v0}, Luf/c;->k(Landroid/view/View;)V

    .line 46
    .line 47
    .line 48
    :cond_3
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 49
    .line 50
    const/4 v5, 0x4

    .line 51
    const/4 v6, 0x0

    .line 52
    const-string v2, "LocalVideoLandAdControl"

    .line 53
    .line 54
    const-string v3, "countdownRunnable, show adCloseView"

    .line 55
    .line 56
    const/4 v4, 0x0

    .line 57
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    :cond_4
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/i0;->j:Lcom/transsion/postdetail/ui/view/AdCountDownView;

    .line 61
    .line 62
    if-eqz v0, :cond_5

    .line 63
    .line 64
    iget v1, p0, Lcom/transsion/postdetail/layer/local/i0;->q:I

    .line 65
    .line 66
    add-int/lit8 v2, v1, -0x1

    .line 67
    .line 68
    iput v2, p0, Lcom/transsion/postdetail/layer/local/i0;->q:I

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Lcom/transsion/postdetail/ui/view/AdCountDownView;->refreshCountDown(I)V

    .line 71
    .line 72
    .line 73
    :cond_5
    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/i0;->h()V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method private static final j()Lcom/transsion/postdetail/layer/local/i0;
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/postdetail/layer/local/i0;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/postdetail/layer/local/i0;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private final l()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/postdetail/layer/local/i0;->e:Z

    .line 2
    .line 3
    return v0
.end method

.method private final m()V
    .locals 9

    .line 1
    sget-object v6, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    iget v0, p0, Lcom/transsion/postdetail/layer/local/i0;->i:I

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "onCountdownFinish, curAdType = "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const/4 v4, 0x4

    .line 23
    const/4 v5, 0x0

    .line 24
    const-string v1, "LocalVideoLandAdControl"

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    move-object v0, v6

    .line 28
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iget v0, p0, Lcom/transsion/postdetail/layer/local/i0;->i:I

    .line 32
    .line 33
    const/16 v1, 0x8

    .line 34
    .line 35
    const/4 v7, 0x3

    .line 36
    const/4 v2, 0x1

    .line 37
    const/4 v8, 0x2

    .line 38
    if-eq v0, v2, :cond_4

    .line 39
    .line 40
    if-eq v0, v8, :cond_3

    .line 41
    .line 42
    if-eq v0, v7, :cond_0

    .line 43
    .line 44
    goto/16 :goto_0

    .line 45
    .line 46
    :cond_0
    iput-boolean v2, p0, Lcom/transsion/postdetail/layer/local/i0;->f:Z

    .line 47
    .line 48
    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/transsion/postdetail/layer/local/i0;->g:Z

    .line 50
    .line 51
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/i0;->j:Lcom/transsion/postdetail/ui/view/AdCountDownView;

    .line 52
    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 56
    .line 57
    .line 58
    :cond_1
    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/i0;->l()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    const/4 v4, 0x4

    .line 65
    const/4 v5, 0x0

    .line 66
    const-string v1, "LocalVideoLandAdControl"

    .line 67
    .line 68
    const-string v2, "onCountdownFinish, end finish , show pause"

    .line 69
    .line 70
    const/4 v3, 0x0

    .line 71
    move-object v0, v6

    .line 72
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    iget v0, p0, Lcom/transsion/postdetail/layer/local/i0;->i:I

    .line 76
    .line 77
    invoke-virtual {p0, v0}, Lcom/transsion/postdetail/layer/local/i0;->g(I)V

    .line 78
    .line 79
    .line 80
    new-instance v0, Lcom/transsion/postdetail/layer/local/h0;

    .line 81
    .line 82
    invoke-direct {v0}, Lcom/transsion/postdetail/layer/local/h0;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v8, v0}, Lcom/transsion/postdetail/layer/local/i0;->v(ILkotlin/jvm/functions/Function1;)V

    .line 86
    .line 87
    .line 88
    goto/16 :goto_0

    .line 89
    .line 90
    :cond_2
    const/4 v4, 0x4

    .line 91
    const/4 v5, 0x0

    .line 92
    const-string v1, "LocalVideoLandAdControl"

    .line 93
    .line 94
    const-string v2, "onCountdownFinish, end finish now"

    .line 95
    .line 96
    const/4 v3, 0x0

    .line 97
    move-object v0, v6

    .line 98
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/i0;->l:Lkotlin/jvm/functions/Function1;

    .line 102
    .line 103
    if-eqz v0, :cond_9

    .line 104
    .line 105
    iget v1, p0, Lcom/transsion/postdetail/layer/local/i0;->i:I

    .line 106
    .line 107
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    goto/16 :goto_0

    .line 115
    .line 116
    :cond_3
    const/4 v4, 0x4

    .line 117
    const/4 v5, 0x0

    .line 118
    const-string v1, "LocalVideoLandAdControl"

    .line 119
    .line 120
    const-string v2, "onCountdownFinish, pause finish now"

    .line 121
    .line 122
    const/4 v3, 0x0

    .line 123
    move-object v0, v6

    .line 124
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/i0;->l:Lkotlin/jvm/functions/Function1;

    .line 128
    .line 129
    if-eqz v0, :cond_9

    .line 130
    .line 131
    iget v1, p0, Lcom/transsion/postdetail/layer/local/i0;->i:I

    .line 132
    .line 133
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_4
    iget v0, p0, Lcom/transsion/postdetail/layer/local/i0;->d:I

    .line 142
    .line 143
    iput v0, p0, Lcom/transsion/postdetail/layer/local/i0;->c:I

    .line 144
    .line 145
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/i0;->m:Lkotlin/jvm/functions/Function0;

    .line 146
    .line 147
    if-eqz v0, :cond_5

    .line 148
    .line 149
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    :cond_5
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/i0;->j:Lcom/transsion/postdetail/ui/view/AdCountDownView;

    .line 153
    .line 154
    if-eqz v0, :cond_6

    .line 155
    .line 156
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 157
    .line 158
    .line 159
    :cond_6
    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/i0;->k()Z

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    if-eqz v0, :cond_7

    .line 164
    .line 165
    const/4 v4, 0x4

    .line 166
    const/4 v5, 0x0

    .line 167
    const-string v1, "LocalVideoLandAdControl"

    .line 168
    .line 169
    const-string v2, "onCountdownFinish, start finish, show end"

    .line 170
    .line 171
    const/4 v3, 0x0

    .line 172
    move-object v0, v6

    .line 173
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    iget v0, p0, Lcom/transsion/postdetail/layer/local/i0;->i:I

    .line 177
    .line 178
    invoke-virtual {p0, v0}, Lcom/transsion/postdetail/layer/local/i0;->g(I)V

    .line 179
    .line 180
    .line 181
    new-instance v0, Lcom/transsion/postdetail/layer/local/f0;

    .line 182
    .line 183
    invoke-direct {v0}, Lcom/transsion/postdetail/layer/local/f0;-><init>()V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p0, v7, v0}, Lcom/transsion/postdetail/layer/local/i0;->v(ILkotlin/jvm/functions/Function1;)V

    .line 187
    .line 188
    .line 189
    goto :goto_0

    .line 190
    :cond_7
    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/i0;->l()Z

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    if-eqz v0, :cond_8

    .line 195
    .line 196
    const/4 v4, 0x4

    .line 197
    const/4 v5, 0x0

    .line 198
    const-string v1, "LocalVideoLandAdControl"

    .line 199
    .line 200
    const-string v2, "onCountdownFinish, start finish, show pause"

    .line 201
    .line 202
    const/4 v3, 0x0

    .line 203
    move-object v0, v6

    .line 204
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    iget v0, p0, Lcom/transsion/postdetail/layer/local/i0;->i:I

    .line 208
    .line 209
    invoke-virtual {p0, v0}, Lcom/transsion/postdetail/layer/local/i0;->g(I)V

    .line 210
    .line 211
    .line 212
    new-instance v0, Lcom/transsion/postdetail/layer/local/g0;

    .line 213
    .line 214
    invoke-direct {v0}, Lcom/transsion/postdetail/layer/local/g0;-><init>()V

    .line 215
    .line 216
    .line 217
    invoke-virtual {p0, v8, v0}, Lcom/transsion/postdetail/layer/local/i0;->v(ILkotlin/jvm/functions/Function1;)V

    .line 218
    .line 219
    .line 220
    goto :goto_0

    .line 221
    :cond_8
    const/4 v4, 0x4

    .line 222
    const/4 v5, 0x0

    .line 223
    const-string v1, "LocalVideoLandAdControl"

    .line 224
    .line 225
    const-string v2, "onCountdownFinish, start finish now"

    .line 226
    .line 227
    const/4 v3, 0x0

    .line 228
    move-object v0, v6

    .line 229
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 230
    .line 231
    .line 232
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/i0;->l:Lkotlin/jvm/functions/Function1;

    .line 233
    .line 234
    if-eqz v0, :cond_9

    .line 235
    .line 236
    iget v1, p0, Lcom/transsion/postdetail/layer/local/i0;->i:I

    .line 237
    .line 238
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    :cond_9
    :goto_0
    return-void
.end method

.method private static final n(I)Lkotlin/Unit;
    .locals 0

    .line 1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2
    .line 3
    return-object p0
.end method

.method private static final o(I)Lkotlin/Unit;
    .locals 0

    .line 1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2
    .line 3
    return-object p0
.end method

.method private static final p(I)Lkotlin/Unit;
    .locals 0

    .line 1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2
    .line 3
    return-object p0
.end method

.method private final q(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/transsion/postdetail/layer/local/i0;->o:I

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/transsion/postdetail/layer/local/i0;->w(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final r(Lkotlin/jvm/functions/Function1;)V
    .locals 7

    .line 1
    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/i0;->j:Lcom/transsion/postdetail/ui/view/AdCountDownView;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    invoke-virtual {p1, v0}, Lcom/transsion/postdetail/ui/view/AdCountDownView;->refreshCountDown(I)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/i0;->j:Lcom/transsion/postdetail/ui/view/AdCountDownView;

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    :cond_1
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 18
    .line 19
    const/4 v5, 0x4

    .line 20
    const/4 v6, 0x0

    .line 21
    const-string v2, "LocalVideoLandAdControl"

    .line 22
    .line 23
    const-string v3, "onShowPauseAd"

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private final s(Lkotlin/jvm/functions/Function1;)V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    const/4 v4, 0x4

    .line 4
    const/4 v5, 0x0

    .line 5
    const-string v1, "LocalVideoLandAdControl"

    .line 6
    .line 7
    const-string v2, "onShowStartAd"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget p1, p0, Lcom/transsion/postdetail/layer/local/i0;->n:I

    .line 14
    .line 15
    invoke-direct {p0, p1}, Lcom/transsion/postdetail/layer/local/i0;->w(I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private final u()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/i0;->r:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/postdetail/layer/local/i0;->u:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final w(I)V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "startCountdown, countdownTime = "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const/4 v4, 0x4

    .line 21
    const/4 v5, 0x0

    .line 22
    const-string v1, "LocalVideoLandAdControl"

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iput p1, p0, Lcom/transsion/postdetail/layer/local/i0;->q:I

    .line 29
    .line 30
    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/i0;->j:Lcom/transsion/postdetail/ui/view/AdCountDownView;

    .line 31
    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 36
    .line 37
    .line 38
    :cond_0
    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/i0;->r:Landroid/os/Handler;

    .line 39
    .line 40
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/i0;->u:Ljava/lang/Runnable;

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 43
    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public final g(I)V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "----closeLandAd, adType = "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const/4 v4, 0x4

    .line 21
    const/4 v5, 0x0

    .line 22
    const-string v1, "LocalVideoLandAdControl"

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    iput p1, p0, Lcom/transsion/postdetail/layer/local/i0;->i:I

    .line 30
    .line 31
    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/i0;->u()V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/i0;->k:Landroidx/appcompat/widget/AppCompatImageView;

    .line 35
    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void
.end method

.method public final k()Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/transsion/postdetail/layer/local/i0;->f:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/postdetail/layer/local/i0;->g:Z

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    return v1

    .line 12
    :cond_1
    iget-wide v2, p0, Lcom/transsion/postdetail/layer/local/i0;->a:J

    .line 13
    .line 14
    iget-wide v4, p0, Lcom/transsion/postdetail/layer/local/i0;->b:J

    .line 15
    .line 16
    sub-long/2addr v2, v4

    .line 17
    iget-wide v4, p0, Lcom/transsion/postdetail/layer/local/i0;->p:J

    .line 18
    .line 19
    cmp-long v0, v2, v4

    .line 20
    .line 21
    if-lez v0, :cond_2

    .line 22
    .line 23
    return v1

    .line 24
    :cond_2
    iget-boolean v0, p0, Lcom/transsion/postdetail/layer/local/i0;->h:Z

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    if-nez v0, :cond_3

    .line 28
    .line 29
    iput-boolean v1, p0, Lcom/transsion/postdetail/layer/local/i0;->h:Z

    .line 30
    .line 31
    :cond_3
    return v1
.end method

.method public final t(JJ)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/transsion/postdetail/layer/local/i0;->b:J

    .line 2
    .line 3
    iput-wide p3, p0, Lcom/transsion/postdetail/layer/local/i0;->a:J

    .line 4
    .line 5
    return-void
.end method

.method public final v(ILkotlin/jvm/functions/Function1;)V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "----showLandAd, adType = "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const/4 v4, 0x4

    .line 21
    const/4 v5, 0x0

    .line 22
    const-string v1, "LocalVideoLandAdControl"

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iput p1, p0, Lcom/transsion/postdetail/layer/local/i0;->i:I

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    if-eq p1, v0, :cond_2

    .line 32
    .line 33
    const/4 v0, 0x2

    .line 34
    if-eq p1, v0, :cond_1

    .line 35
    .line 36
    const/4 v0, 0x3

    .line 37
    if-eq p1, v0, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-direct {p0, p2}, Lcom/transsion/postdetail/layer/local/i0;->q(Lkotlin/jvm/functions/Function1;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-direct {p0, p2}, Lcom/transsion/postdetail/layer/local/i0;->r(Lkotlin/jvm/functions/Function1;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    invoke-direct {p0, p2}, Lcom/transsion/postdetail/layer/local/i0;->s(Lkotlin/jvm/functions/Function1;)V

    .line 49
    .line 50
    .line 51
    :goto_0
    return-void
.end method
