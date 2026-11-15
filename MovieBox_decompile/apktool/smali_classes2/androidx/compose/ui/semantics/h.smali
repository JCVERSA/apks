.class public final Landroidx/compose/ui/semantics/h;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final A:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final B:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final C:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final D:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field public static final E:I

.field public static final a:Landroidx/compose/ui/semantics/h;

.field private static final b:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final c:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final d:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final e:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final f:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final g:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final h:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final i:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final j:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final k:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final l:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final m:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final n:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final o:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final p:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final q:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final r:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final s:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final t:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final u:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final v:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final w:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final x:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final y:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final z:Landroidx/compose/ui/semantics/SemanticsPropertyKey;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Landroidx/compose/ui/semantics/h;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/ui/semantics/h;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/ui/semantics/h;->a:Landroidx/compose/ui/semantics/h;

    .line 7
    .line 8
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsPropertiesKt$ActionPropertyKey$1;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsPropertiesKt$ActionPropertyKey$1;

    .line 9
    .line 10
    const-string v1, "GetTextLayoutResult"

    .line 11
    .line 12
    invoke-static {v1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    sput-object v1, Landroidx/compose/ui/semantics/h;->b:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 17
    .line 18
    const-string v1, "OnClick"

    .line 19
    .line 20
    invoke-static {v1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    sput-object v1, Landroidx/compose/ui/semantics/h;->c:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 25
    .line 26
    const-string v1, "OnLongClick"

    .line 27
    .line 28
    invoke-static {v1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    sput-object v1, Landroidx/compose/ui/semantics/h;->d:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 33
    .line 34
    const-string v1, "ScrollBy"

    .line 35
    .line 36
    invoke-static {v1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    sput-object v1, Landroidx/compose/ui/semantics/h;->e:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 41
    .line 42
    new-instance v1, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    const/4 v3, 0x2

    .line 46
    const-string v4, "ScrollByOffset"

    .line 47
    .line 48
    invoke-direct {v1, v4, v2, v3, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 49
    .line 50
    .line 51
    sput-object v1, Landroidx/compose/ui/semantics/h;->f:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 52
    .line 53
    const-string v1, "ScrollToIndex"

    .line 54
    .line 55
    invoke-static {v1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    sput-object v1, Landroidx/compose/ui/semantics/h;->g:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 60
    .line 61
    const-string v1, "OnAutofillText"

    .line 62
    .line 63
    invoke-static {v1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    sput-object v1, Landroidx/compose/ui/semantics/h;->h:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 68
    .line 69
    const-string v1, "SetProgress"

    .line 70
    .line 71
    invoke-static {v1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    sput-object v1, Landroidx/compose/ui/semantics/h;->i:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 76
    .line 77
    const-string v1, "SetSelection"

    .line 78
    .line 79
    invoke-static {v1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    sput-object v1, Landroidx/compose/ui/semantics/h;->j:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 84
    .line 85
    const-string v1, "SetText"

    .line 86
    .line 87
    invoke-static {v1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    sput-object v1, Landroidx/compose/ui/semantics/h;->k:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 92
    .line 93
    const-string v1, "SetTextSubstitution"

    .line 94
    .line 95
    invoke-static {v1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    sput-object v1, Landroidx/compose/ui/semantics/h;->l:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 100
    .line 101
    const-string v1, "ShowTextSubstitution"

    .line 102
    .line 103
    invoke-static {v1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    sput-object v1, Landroidx/compose/ui/semantics/h;->m:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 108
    .line 109
    const-string v1, "ClearTextSubstitution"

    .line 110
    .line 111
    invoke-static {v1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    sput-object v1, Landroidx/compose/ui/semantics/h;->n:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 116
    .line 117
    const-string v1, "InsertTextAtCursor"

    .line 118
    .line 119
    invoke-static {v1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    sput-object v1, Landroidx/compose/ui/semantics/h;->o:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 124
    .line 125
    const-string v1, "PerformImeAction"

    .line 126
    .line 127
    invoke-static {v1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    sput-object v2, Landroidx/compose/ui/semantics/h;->p:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 132
    .line 133
    invoke-static {v1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    sput-object v1, Landroidx/compose/ui/semantics/h;->q:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 138
    .line 139
    const-string v1, "CopyText"

    .line 140
    .line 141
    invoke-static {v1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    sput-object v1, Landroidx/compose/ui/semantics/h;->r:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 146
    .line 147
    const-string v1, "CutText"

    .line 148
    .line 149
    invoke-static {v1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    sput-object v1, Landroidx/compose/ui/semantics/h;->s:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 154
    .line 155
    const-string v1, "PasteText"

    .line 156
    .line 157
    invoke-static {v1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    sput-object v1, Landroidx/compose/ui/semantics/h;->t:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 162
    .line 163
    const-string v1, "Expand"

    .line 164
    .line 165
    invoke-static {v1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    sput-object v1, Landroidx/compose/ui/semantics/h;->u:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 170
    .line 171
    const-string v1, "Collapse"

    .line 172
    .line 173
    invoke-static {v1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    sput-object v1, Landroidx/compose/ui/semantics/h;->v:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 178
    .line 179
    const-string v1, "Dismiss"

    .line 180
    .line 181
    invoke-static {v1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    sput-object v1, Landroidx/compose/ui/semantics/h;->w:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 186
    .line 187
    const-string v1, "RequestFocus"

    .line 188
    .line 189
    invoke-static {v1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    sput-object v1, Landroidx/compose/ui/semantics/h;->x:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 194
    .line 195
    const-string v1, "CustomActions"

    .line 196
    .line 197
    invoke-static {v1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->a(Ljava/lang/String;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    sput-object v1, Landroidx/compose/ui/semantics/h;->y:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 202
    .line 203
    const-string v1, "PageUp"

    .line 204
    .line 205
    invoke-static {v1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    sput-object v1, Landroidx/compose/ui/semantics/h;->z:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 210
    .line 211
    const-string v1, "PageLeft"

    .line 212
    .line 213
    invoke-static {v1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    sput-object v1, Landroidx/compose/ui/semantics/h;->A:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 218
    .line 219
    const-string v1, "PageDown"

    .line 220
    .line 221
    invoke-static {v1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    sput-object v1, Landroidx/compose/ui/semantics/h;->B:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 226
    .line 227
    const-string v1, "PageRight"

    .line 228
    .line 229
    invoke-static {v1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    sput-object v1, Landroidx/compose/ui/semantics/h;->C:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 234
    .line 235
    const-string v1, "GetScrollViewportLength"

    .line 236
    .line 237
    invoke-static {v1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    sput-object v0, Landroidx/compose/ui/semantics/h;->D:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 242
    .line 243
    const/16 v0, 0x8

    .line 244
    .line 245
    sput v0, Landroidx/compose/ui/semantics/h;->E:I

    .line 246
    .line 247
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/semantics/h;->n:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/semantics/h;->v:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/semantics/h;->r:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/semantics/h;->y:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/semantics/h;->s:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2
    .line 3
    return-object v0
.end method

.method public final f()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/semantics/h;->w:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2
    .line 3
    return-object v0
.end method

.method public final g()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/semantics/h;->u:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/semantics/h;->D:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2
    .line 3
    return-object v0
.end method

.method public final i()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/semantics/h;->b:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2
    .line 3
    return-object v0
.end method

.method public final j()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/semantics/h;->c:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2
    .line 3
    return-object v0
.end method

.method public final k()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/semantics/h;->p:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2
    .line 3
    return-object v0
.end method

.method public final l()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/semantics/h;->d:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2
    .line 3
    return-object v0
.end method

.method public final m()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/semantics/h;->B:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2
    .line 3
    return-object v0
.end method

.method public final n()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/semantics/h;->A:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2
    .line 3
    return-object v0
.end method

.method public final o()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/semantics/h;->C:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2
    .line 3
    return-object v0
.end method

.method public final p()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/semantics/h;->z:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2
    .line 3
    return-object v0
.end method

.method public final q()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/semantics/h;->t:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2
    .line 3
    return-object v0
.end method

.method public final r()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/semantics/h;->x:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2
    .line 3
    return-object v0
.end method

.method public final s()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/semantics/h;->e:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2
    .line 3
    return-object v0
.end method

.method public final t()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/semantics/h;->f:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2
    .line 3
    return-object v0
.end method

.method public final u()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/semantics/h;->g:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2
    .line 3
    return-object v0
.end method

.method public final v()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/semantics/h;->i:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2
    .line 3
    return-object v0
.end method

.method public final w()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/semantics/h;->j:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2
    .line 3
    return-object v0
.end method

.method public final x()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/semantics/h;->k:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2
    .line 3
    return-object v0
.end method

.method public final y()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/semantics/h;->l:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2
    .line 3
    return-object v0
.end method

.method public final z()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/semantics/h;->m:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2
    .line 3
    return-object v0
.end method
