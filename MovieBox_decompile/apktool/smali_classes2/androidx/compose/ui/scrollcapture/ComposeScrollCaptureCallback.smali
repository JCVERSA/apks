.class public final Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/ScrollCaptureCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$a;
    }
.end annotation


# instance fields
.field private final a:Landroidx/compose/ui/semantics/SemanticsNode;

.field private final b:Lo0/r;

.field private final c:Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$a;

.field private final d:Lkotlinx/coroutines/n0;

.field private final e:Landroidx/compose/ui/scrollcapture/RelativeScroller;

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/semantics/SemanticsNode;Lo0/r;Lkotlinx/coroutines/n0;Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback;->a:Landroidx/compose/ui/semantics/SemanticsNode;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback;->b:Lo0/r;

    .line 7
    .line 8
    iput-object p4, p0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback;->c:Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$a;

    .line 9
    .line 10
    sget-object p1, Landroidx/compose/ui/scrollcapture/e;->a:Landroidx/compose/ui/scrollcapture/e;

    .line 11
    .line 12
    invoke-static {p3, p1}, Lkotlinx/coroutines/o0;->h(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback;->d:Lkotlinx/coroutines/n0;

    .line 17
    .line 18
    new-instance p1, Landroidx/compose/ui/scrollcapture/RelativeScroller;

    .line 19
    .line 20
    invoke-virtual {p2}, Lo0/r;->e()I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    new-instance p3, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$scrollTracker$1;

    .line 25
    .line 26
    const/4 p4, 0x0

    .line 27
    invoke-direct {p3, p0, p4}, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$scrollTracker$1;-><init>(Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback;Lkotlin/coroutines/Continuation;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {p1, p2, p3}, Landroidx/compose/ui/scrollcapture/RelativeScroller;-><init>(ILkotlin/jvm/functions/Function2;)V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback;->e:Landroidx/compose/ui/scrollcapture/RelativeScroller;

    .line 34
    .line 35
    return-void
.end method

.method public static final synthetic a(Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback;)Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$a;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback;->c:Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic b(Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback;)Landroidx/compose/ui/semantics/SemanticsNode;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback;->a:Landroidx/compose/ui/semantics/SemanticsNode;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic c(Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback;)Landroidx/compose/ui/scrollcapture/RelativeScroller;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback;->e:Landroidx/compose/ui/scrollcapture/RelativeScroller;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic d(Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback;Landroid/view/ScrollCaptureSession;Lo0/r;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback;->e(Landroid/view/ScrollCaptureSession;Lo0/r;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final e(Landroid/view/ScrollCaptureSession;Lo0/r;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    .line 1
    instance-of v0, p3, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$onScrollCaptureImageRequest$2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$onScrollCaptureImageRequest$2;

    .line 7
    .line 8
    iget v1, v0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$onScrollCaptureImageRequest$2;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$onScrollCaptureImageRequest$2;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$onScrollCaptureImageRequest$2;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$onScrollCaptureImageRequest$2;-><init>(Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$onScrollCaptureImageRequest$2;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$onScrollCaptureImageRequest$2;->label:I

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eqz v2, :cond_3

    .line 36
    .line 37
    if-eq v2, v4, :cond_2

    .line 38
    .line 39
    if-ne v2, v3, :cond_1

    .line 40
    .line 41
    iget p1, v0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$onScrollCaptureImageRequest$2;->I$1:I

    .line 42
    .line 43
    iget p2, v0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$onScrollCaptureImageRequest$2;->I$0:I

    .line 44
    .line 45
    iget-object v1, v0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$onScrollCaptureImageRequest$2;->L$2:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v1, Lo0/r;

    .line 48
    .line 49
    iget-object v2, v0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$onScrollCaptureImageRequest$2;->L$1:Ljava/lang/Object;

    .line 50
    .line 51
    invoke-static {v2}, Landroidx/compose/ui/scrollcapture/a;->a(Ljava/lang/Object;)Landroid/view/ScrollCaptureSession;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    iget-object v0, v0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$onScrollCaptureImageRequest$2;->L$0:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback;

    .line 58
    .line 59
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    move-object p3, v2

    .line 63
    goto :goto_2

    .line 64
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 65
    .line 66
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 67
    .line 68
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw p1

    .line 72
    :cond_2
    iget p1, v0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$onScrollCaptureImageRequest$2;->I$1:I

    .line 73
    .line 74
    iget p2, v0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$onScrollCaptureImageRequest$2;->I$0:I

    .line 75
    .line 76
    iget-object v2, v0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$onScrollCaptureImageRequest$2;->L$2:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v2, Lo0/r;

    .line 79
    .line 80
    iget-object v4, v0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$onScrollCaptureImageRequest$2;->L$1:Ljava/lang/Object;

    .line 81
    .line 82
    invoke-static {v4}, Landroidx/compose/ui/scrollcapture/a;->a(Ljava/lang/Object;)Landroid/view/ScrollCaptureSession;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    iget-object v5, v0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$onScrollCaptureImageRequest$2;->L$0:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v5, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback;

    .line 89
    .line 90
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    move p3, p2

    .line 94
    move-object p2, v2

    .line 95
    move v2, p1

    .line 96
    move-object p1, v4

    .line 97
    goto :goto_1

    .line 98
    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p2}, Lo0/r;->h()I

    .line 102
    .line 103
    .line 104
    move-result p3

    .line 105
    invoke-virtual {p2}, Lo0/r;->d()I

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    iget-object v5, p0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback;->e:Landroidx/compose/ui/scrollcapture/RelativeScroller;

    .line 110
    .line 111
    iput-object p0, v0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$onScrollCaptureImageRequest$2;->L$0:Ljava/lang/Object;

    .line 112
    .line 113
    iput-object p1, v0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$onScrollCaptureImageRequest$2;->L$1:Ljava/lang/Object;

    .line 114
    .line 115
    iput-object p2, v0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$onScrollCaptureImageRequest$2;->L$2:Ljava/lang/Object;

    .line 116
    .line 117
    iput p3, v0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$onScrollCaptureImageRequest$2;->I$0:I

    .line 118
    .line 119
    iput v2, v0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$onScrollCaptureImageRequest$2;->I$1:I

    .line 120
    .line 121
    iput v4, v0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$onScrollCaptureImageRequest$2;->label:I

    .line 122
    .line 123
    invoke-virtual {v5, p3, v2, v0}, Landroidx/compose/ui/scrollcapture/RelativeScroller;->f(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    if-ne v4, v1, :cond_4

    .line 128
    .line 129
    return-object v1

    .line 130
    :cond_4
    move-object v5, p0

    .line 131
    :goto_1
    sget-object v4, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$onScrollCaptureImageRequest$3;->INSTANCE:Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$onScrollCaptureImageRequest$3;

    .line 132
    .line 133
    iput-object v5, v0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$onScrollCaptureImageRequest$2;->L$0:Ljava/lang/Object;

    .line 134
    .line 135
    iput-object p1, v0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$onScrollCaptureImageRequest$2;->L$1:Ljava/lang/Object;

    .line 136
    .line 137
    iput-object p2, v0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$onScrollCaptureImageRequest$2;->L$2:Ljava/lang/Object;

    .line 138
    .line 139
    iput p3, v0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$onScrollCaptureImageRequest$2;->I$0:I

    .line 140
    .line 141
    iput v2, v0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$onScrollCaptureImageRequest$2;->I$1:I

    .line 142
    .line 143
    iput v3, v0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$onScrollCaptureImageRequest$2;->label:I

    .line 144
    .line 145
    invoke-static {v4, v0}, Landroidx/compose/runtime/v0;->b(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    if-ne v0, v1, :cond_5

    .line 150
    .line 151
    return-object v1

    .line 152
    :cond_5
    move-object v1, p2

    .line 153
    move p2, p3

    .line 154
    move-object v0, v5

    .line 155
    move-object p3, p1

    .line 156
    move p1, v2

    .line 157
    :goto_2
    iget-object v2, v0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback;->e:Landroidx/compose/ui/scrollcapture/RelativeScroller;

    .line 158
    .line 159
    invoke-virtual {v2, p2}, Landroidx/compose/ui/scrollcapture/RelativeScroller;->c(I)I

    .line 160
    .line 161
    .line 162
    move-result p2

    .line 163
    iget-object v2, v0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback;->e:Landroidx/compose/ui/scrollcapture/RelativeScroller;

    .line 164
    .line 165
    invoke-virtual {v2, p1}, Landroidx/compose/ui/scrollcapture/RelativeScroller;->c(I)I

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    const/4 v6, 0x5

    .line 170
    const/4 v7, 0x0

    .line 171
    const/4 v2, 0x0

    .line 172
    const/4 v4, 0x0

    .line 173
    move v3, p2

    .line 174
    move v5, p1

    .line 175
    invoke-static/range {v1 .. v7}, Lo0/r;->c(Lo0/r;IIIIILjava/lang/Object;)Lo0/r;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    if-ne p2, p1, :cond_6

    .line 180
    .line 181
    sget-object p1, Lo0/r;->e:Lo0/r$a;

    .line 182
    .line 183
    invoke-virtual {p1}, Lo0/r$a;->a()Lo0/r;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    return-object p1

    .line 188
    :cond_6
    iget-object p1, v0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback;->a:Landroidx/compose/ui/semantics/SemanticsNode;

    .line 189
    .line 190
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->e()Landroidx/compose/ui/node/NodeCoordinator;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    if-eqz p1, :cond_7

    .line 195
    .line 196
    invoke-static {p3}, Landroidx/compose/ui/scrollcapture/b;->a(Landroid/view/ScrollCaptureSession;)Landroid/view/Surface;

    .line 197
    .line 198
    .line 199
    move-result-object p2

    .line 200
    invoke-virtual {p2}, Landroid/view/Surface;->lockHardwareCanvas()Landroid/graphics/Canvas;

    .line 201
    .line 202
    .line 203
    move-result-object p2

    .line 204
    :try_start_0
    invoke-static {}, Landroidx/compose/ui/graphics/a;->a()Landroid/graphics/BlendMode;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    const/4 v3, 0x0

    .line 209
    invoke-static {p2, v3, v2}, Landroidx/compose/ui/scrollcapture/c;->a(Landroid/graphics/Canvas;ILandroid/graphics/BlendMode;)V

    .line 210
    .line 211
    .line 212
    invoke-static {p2}, Landroidx/compose/ui/graphics/h0;->b(Landroid/graphics/Canvas;)Landroidx/compose/ui/graphics/m1;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    invoke-virtual {v1}, Lo0/r;->f()I

    .line 217
    .line 218
    .line 219
    move-result v4

    .line 220
    int-to-float v4, v4

    .line 221
    neg-float v4, v4

    .line 222
    invoke-virtual {v1}, Lo0/r;->h()I

    .line 223
    .line 224
    .line 225
    move-result v5

    .line 226
    int-to-float v5, v5

    .line 227
    neg-float v5, v5

    .line 228
    invoke-interface {v2, v4, v5}, Landroidx/compose/ui/graphics/m1;->c(FF)V

    .line 229
    .line 230
    .line 231
    const/4 v4, 0x0

    .line 232
    invoke-virtual {p1, v2, v4}, Landroidx/compose/ui/node/NodeCoordinator;->G1(Landroidx/compose/ui/graphics/m1;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    .line 234
    .line 235
    invoke-static {p3}, Landroidx/compose/ui/scrollcapture/b;->a(Landroid/view/ScrollCaptureSession;)Landroid/view/Surface;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    invoke-virtual {p1, p2}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 240
    .line 241
    .line 242
    iget-object p1, v0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback;->e:Landroidx/compose/ui/scrollcapture/RelativeScroller;

    .line 243
    .line 244
    invoke-virtual {p1}, Landroidx/compose/ui/scrollcapture/RelativeScroller;->b()F

    .line 245
    .line 246
    .line 247
    move-result p1

    .line 248
    invoke-static {p1}, Lkotlin/math/MathKt;->d(F)I

    .line 249
    .line 250
    .line 251
    move-result p1

    .line 252
    invoke-virtual {v1, v3, p1}, Lo0/r;->l(II)Lo0/r;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    return-object p1

    .line 257
    :catchall_0
    move-exception p1

    .line 258
    invoke-static {p3}, Landroidx/compose/ui/scrollcapture/b;->a(Landroid/view/ScrollCaptureSession;)Landroid/view/Surface;

    .line 259
    .line 260
    .line 261
    move-result-object p3

    .line 262
    invoke-virtual {p3, p2}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 263
    .line 264
    .line 265
    throw p1

    .line 266
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 267
    .line 268
    const-string p2, "Could not find coordinator for semantics node."

    .line 269
    .line 270
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    throw p1
.end method


# virtual methods
.method public onScrollCaptureEnd(Ljava/lang/Runnable;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback;->d:Lkotlinx/coroutines/n0;

    .line 2
    .line 3
    sget-object v1, Lkotlinx/coroutines/c2;->a:Lkotlinx/coroutines/c2;

    .line 4
    .line 5
    new-instance v3, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$onScrollCaptureEnd$1;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v3, p0, p1, v2}, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$onScrollCaptureEnd$1;-><init>(Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback;Ljava/lang/Runnable;Lkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    const/4 v4, 0x2

    .line 12
    const/4 v5, 0x0

    .line 13
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onScrollCaptureImageRequest(Landroid/view/ScrollCaptureSession;Landroid/os/CancellationSignal;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback;->d:Lkotlinx/coroutines/n0;

    .line 2
    .line 3
    new-instance v7, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$onScrollCaptureImageRequest$1;

    .line 4
    .line 5
    const/4 v6, 0x0

    .line 6
    move-object v1, v7

    .line 7
    move-object v2, p0

    .line 8
    move-object v3, p1

    .line 9
    move-object v4, p3

    .line 10
    move-object v5, p4

    .line 11
    invoke-direct/range {v1 .. v6}, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$onScrollCaptureImageRequest$1;-><init>(Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback;Landroid/view/ScrollCaptureSession;Landroid/graphics/Rect;Ljava/util/function/Consumer;Lkotlin/coroutines/Continuation;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0, p2, v7}, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback_androidKt;->b(Lkotlinx/coroutines/n0;Landroid/os/CancellationSignal;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/t1;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onScrollCaptureSearch(Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback;->b:Lo0/r;

    .line 2
    .line 3
    invoke-static {p1}, Landroidx/compose/ui/graphics/u4;->a(Lo0/r;)Landroid/graphics/Rect;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p2, p1}, Landroidx/compose/ui/contentcapture/h;->a(Ljava/util/function/Consumer;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onScrollCaptureStart(Landroid/view/ScrollCaptureSession;Landroid/os/CancellationSignal;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback;->e:Landroidx/compose/ui/scrollcapture/RelativeScroller;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/compose/ui/scrollcapture/RelativeScroller;->d()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback;->f:I

    .line 8
    .line 9
    iget-object p1, p0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback;->c:Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$a;

    .line 10
    .line 11
    invoke-interface {p1}, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$a;->a()V

    .line 12
    .line 13
    .line 14
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 15
    .line 16
    .line 17
    return-void
.end method
