.class final Lcl/w$a$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/w$a;->c(Landroidx/compose/runtime/i;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/home/bean/FilterVal;

.field final synthetic b:Landroidx/compose/foundation/layout/k;

.field final synthetic c:Lkotlin/jvm/functions/Function1;


# direct methods
.method constructor <init>(Lcom/transsion/home/bean/FilterVal;Landroidx/compose/foundation/layout/k;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcl/w$a$a;->a:Lcom/transsion/home/bean/FilterVal;

    .line 2
    .line 3
    iput-object p2, p0, Lcl/w$a$a;->b:Landroidx/compose/foundation/layout/k;

    .line 4
    .line 5
    iput-object p3, p0, Lcl/w$a$a;->c:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function1;Lcom/transsion/home/bean/FilterVal;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcl/w$a$a;->c(Lkotlin/jvm/functions/Function1;Lcom/transsion/home/bean/FilterVal;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final c(Lkotlin/jvm/functions/Function1;Lcom/transsion/home/bean/FilterVal;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/transsion/home/bean/FilterVal;->getId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    return-object p0
.end method


# virtual methods
.method public final b(Landroidx/compose/foundation/lazy/b;Landroidx/compose/runtime/i;I)V
    .locals 36

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v9, p2

    .line 4
    .line 5
    move/from16 v1, p3

    .line 6
    .line 7
    const-string v2, "$this$item"

    .line 8
    .line 9
    move-object/from16 v3, p1

    .line 10
    .line 11
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    and-int/lit8 v2, v1, 0x11

    .line 15
    .line 16
    const/16 v3, 0x10

    .line 17
    .line 18
    if-ne v2, v3, :cond_1

    .line 19
    .line 20
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/i;->h()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-nez v2, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/i;->G()V

    .line 28
    .line 29
    .line 30
    goto/16 :goto_1

    .line 31
    .line 32
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    const/4 v2, -0x1

    .line 39
    const-string v4, "com.transsion.home.view.filter.popup.SingleSelectFilter.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (SingleFilterPopupWindow.kt:114)"

    .line 40
    .line 41
    const v5, 0x3346a12e

    .line 42
    .line 43
    .line 44
    invoke-static {v5, v1, v2, v4}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    iget-object v1, v0, Lcl/w$a$a;->a:Lcom/transsion/home/bean/FilterVal;

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/transsion/home/bean/FilterVal;->getName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    sget-object v2, Landroidx/compose/ui/text/font/h;->b:Landroidx/compose/ui/text/font/h$a;

    .line 54
    .line 55
    invoke-virtual {v2}, Landroidx/compose/ui/text/font/h$a;->b()Landroidx/compose/ui/text/font/s;

    .line 56
    .line 57
    .line 58
    move-result-object v16

    .line 59
    sget-object v2, Landroidx/compose/ui/text/font/p;->b:Landroidx/compose/ui/text/font/p$a;

    .line 60
    .line 61
    invoke-virtual {v2}, Landroidx/compose/ui/text/font/p$a;->b()Landroidx/compose/ui/text/font/p;

    .line 62
    .line 63
    .line 64
    move-result-object v8

    .line 65
    sget-object v2, Landroidx/compose/ui/text/style/p;->a:Landroidx/compose/ui/text/style/p$a;

    .line 66
    .line 67
    invoke-virtual {v2}, Landroidx/compose/ui/text/style/p$a;->b()I

    .line 68
    .line 69
    .line 70
    move-result v22

    .line 71
    invoke-static {v3}, Lo0/x;->c(I)J

    .line 72
    .line 73
    .line 74
    move-result-wide v5

    .line 75
    sget-object v2, Landroidx/compose/ui/graphics/u1;->b:Landroidx/compose/ui/graphics/u1$a;

    .line 76
    .line 77
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/u1$a;->f()J

    .line 78
    .line 79
    .line 80
    move-result-wide v26

    .line 81
    iget-object v2, v0, Lcl/w$a$a;->b:Landroidx/compose/foundation/layout/k;

    .line 82
    .line 83
    sget-object v4, Landroidx/compose/ui/f;->a:Landroidx/compose/ui/f$a;

    .line 84
    .line 85
    const/4 v7, 0x1

    .line 86
    const/4 v10, 0x0

    .line 87
    const/4 v11, 0x0

    .line 88
    invoke-static {v4, v10, v7, v11}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/f;FILjava/lang/Object;)Landroidx/compose/ui/f;

    .line 89
    .line 90
    .line 91
    move-result-object v7

    .line 92
    int-to-float v3, v3

    .line 93
    invoke-static {v3}, Lo0/i;->g(F)F

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    const/4 v12, 0x2

    .line 98
    invoke-static {v7, v3, v10, v12, v11}, Landroidx/compose/foundation/layout/PaddingKt;->g(Landroidx/compose/ui/f;FFILjava/lang/Object;)Landroidx/compose/ui/f;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    sget-object v7, Landroidx/compose/ui/b;->a:Landroidx/compose/ui/b$a;

    .line 103
    .line 104
    invoke-virtual {v7}, Landroidx/compose/ui/b$a;->f()Landroidx/compose/ui/b$b;

    .line 105
    .line 106
    .line 107
    move-result-object v7

    .line 108
    invoke-interface {v2, v3, v7}, Landroidx/compose/foundation/layout/k;->b(Landroidx/compose/ui/f;Landroidx/compose/ui/b$b;)Landroidx/compose/ui/f;

    .line 109
    .line 110
    .line 111
    move-result-object v28

    .line 112
    const v2, -0x615d173a

    .line 113
    .line 114
    .line 115
    invoke-interface {v9, v2}, Landroidx/compose/runtime/i;->P(I)V

    .line 116
    .line 117
    .line 118
    iget-object v2, v0, Lcl/w$a$a;->c:Lkotlin/jvm/functions/Function1;

    .line 119
    .line 120
    invoke-interface {v9, v2}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    iget-object v3, v0, Lcl/w$a$a;->a:Lcom/transsion/home/bean/FilterVal;

    .line 125
    .line 126
    invoke-interface {v9, v3}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    or-int/2addr v2, v3

    .line 131
    iget-object v3, v0, Lcl/w$a$a;->c:Lkotlin/jvm/functions/Function1;

    .line 132
    .line 133
    iget-object v7, v0, Lcl/w$a$a;->a:Lcom/transsion/home/bean/FilterVal;

    .line 134
    .line 135
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v10

    .line 139
    if-nez v2, :cond_3

    .line 140
    .line 141
    sget-object v2, Landroidx/compose/runtime/i;->a:Landroidx/compose/runtime/i$a;

    .line 142
    .line 143
    invoke-virtual {v2}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    if-ne v10, v2, :cond_4

    .line 148
    .line 149
    :cond_3
    new-instance v10, Lcl/v;

    .line 150
    .line 151
    invoke-direct {v10, v3, v7}, Lcl/v;-><init>(Lkotlin/jvm/functions/Function1;Lcom/transsion/home/bean/FilterVal;)V

    .line 152
    .line 153
    .line 154
    invoke-interface {v9, v10}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    :cond_4
    move-object/from16 v32, v10

    .line 158
    .line 159
    check-cast v32, Lkotlin/jvm/functions/Function0;

    .line 160
    .line 161
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/i;->K()V

    .line 162
    .line 163
    .line 164
    const/16 v33, 0x7

    .line 165
    .line 166
    const/16 v34, 0x0

    .line 167
    .line 168
    const/16 v29, 0x0

    .line 169
    .line 170
    const/16 v30, 0x0

    .line 171
    .line 172
    const/16 v31, 0x0

    .line 173
    .line 174
    invoke-static/range {v28 .. v34}, Landroidx/compose/foundation/ClickableKt;->d(Landroidx/compose/ui/f;ZLjava/lang/String;Landroidx/compose/ui/semantics/f;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroidx/compose/ui/f;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    const/16 v24, 0x30

    .line 179
    .line 180
    const v25, 0x1f790

    .line 181
    .line 182
    .line 183
    const/4 v7, 0x0

    .line 184
    const-wide/16 v10, 0x0

    .line 185
    .line 186
    const/4 v12, 0x0

    .line 187
    const/4 v13, 0x0

    .line 188
    const-wide/16 v14, 0x0

    .line 189
    .line 190
    const/16 v17, 0x0

    .line 191
    .line 192
    const/16 v18, 0x0

    .line 193
    .line 194
    const/16 v19, 0x0

    .line 195
    .line 196
    const/16 v20, 0x0

    .line 197
    .line 198
    const/16 v21, 0x0

    .line 199
    .line 200
    const v23, 0x30d80

    .line 201
    .line 202
    .line 203
    move-object/from16 v35, v4

    .line 204
    .line 205
    move-wide/from16 v3, v26

    .line 206
    .line 207
    move-object/from16 v9, v16

    .line 208
    .line 209
    move/from16 v16, v22

    .line 210
    .line 211
    move-object/from16 v22, p2

    .line 212
    .line 213
    invoke-static/range {v1 .. v25}, Landroidx/compose/material3/TextKt;->a(Ljava/lang/String;Landroidx/compose/ui/f;JJLandroidx/compose/ui/text/font/n;Landroidx/compose/ui/text/font/p;Landroidx/compose/ui/text/font/h;JLandroidx/compose/ui/text/style/i;Landroidx/compose/ui/text/style/h;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/d0;Landroidx/compose/runtime/i;III)V

    .line 214
    .line 215
    .line 216
    const/16 v1, 0x25

    .line 217
    .line 218
    int-to-float v1, v1

    .line 219
    invoke-static {v1}, Lo0/i;->g(F)F

    .line 220
    .line 221
    .line 222
    move-result v1

    .line 223
    move-object/from16 v2, v35

    .line 224
    .line 225
    invoke-static {v2, v1}, Landroidx/compose/foundation/layout/SizeKt;->e(Landroidx/compose/ui/f;F)Landroidx/compose/ui/f;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    const/4 v2, 0x6

    .line 230
    move-object/from16 v3, p2

    .line 231
    .line 232
    invoke-static {v1, v3, v2}, Landroidx/compose/foundation/layout/e0;->a(Landroidx/compose/ui/f;Landroidx/compose/runtime/i;I)V

    .line 233
    .line 234
    .line 235
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    .line 236
    .line 237
    .line 238
    move-result v1

    .line 239
    if-eqz v1, :cond_5

    .line 240
    .line 241
    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    .line 242
    .line 243
    .line 244
    :cond_5
    :goto_1
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/compose/foundation/lazy/b;

    .line 2
    .line 3
    check-cast p2, Landroidx/compose/runtime/i;

    .line 4
    .line 5
    check-cast p3, Ljava/lang/Number;

    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    invoke-virtual {p0, p1, p2, p3}, Lcl/w$a$a;->b(Landroidx/compose/foundation/lazy/b;Landroidx/compose/runtime/i;I)V

    .line 12
    .line 13
    .line 14
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    return-object p1
.end method
