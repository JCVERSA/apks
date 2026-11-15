.class public final Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$b;,
        Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$c;,
        Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$d;,
        Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$e;,
        Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$LtrBoundsComparator;,
        Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$f;,
        Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$RtlBoundsComparator;,
        Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$TopBottomBoundsComparator;,
        Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$g;
    }
.end annotation


# static fields
.field public static final L:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$d;

.field public static final M:I

.field private static final N:Landroidx/collection/m;


# instance fields
.field private A:Landroidx/collection/c0;

.field private B:Landroidx/collection/c0;

.field private final C:Ljava/lang/String;

.field private final D:Ljava/lang/String;

.field private final E:Landroidx/compose/ui/text/platform/r;

.field private F:Landroidx/collection/e0;

.field private G:Landroidx/compose/ui/platform/c2;

.field private H:Z

.field private final I:Ljava/lang/Runnable;

.field private final J:Ljava/util/List;

.field private final K:Lkotlin/jvm/functions/Function1;

.field private final a:Landroidx/compose/ui/platform/AndroidComposeView;

.field private b:I

.field private c:Lkotlin/jvm/functions/Function1;

.field private final d:Landroid/view/accessibility/AccessibilityManager;

.field private e:Z

.field private f:J

.field private final g:Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

.field private final h:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

.field private i:Ljava/util/List;

.field private final j:Landroid/os/Handler;

.field private k:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$e;

.field private l:I

.field private m:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

.field private n:Z

.field private final o:Landroidx/collection/e0;

.field private final p:Landroidx/collection/e0;

.field private q:Landroidx/collection/y0;

.field private r:Landroidx/collection/y0;

.field private s:I

.field private t:Ljava/lang/Integer;

.field private final u:Landroidx/collection/b;

.field private final v:Lkotlinx/coroutines/channels/d;

.field private w:Z

.field private x:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$f;

.field private y:Landroidx/collection/o;

.field private z:Landroidx/collection/f0;


# direct methods
.method static constructor <clinit>()V
    .locals 33

    .line 1
    new-instance v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$d;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$d;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->L:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$d;

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    sput v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->M:I

    .line 12
    .line 13
    sget v1, Landroidx/compose/ui/R$id;->accessibility_custom_action_0:I

    .line 14
    .line 15
    sget v2, Landroidx/compose/ui/R$id;->accessibility_custom_action_1:I

    .line 16
    .line 17
    sget v3, Landroidx/compose/ui/R$id;->accessibility_custom_action_2:I

    .line 18
    .line 19
    sget v4, Landroidx/compose/ui/R$id;->accessibility_custom_action_3:I

    .line 20
    .line 21
    sget v5, Landroidx/compose/ui/R$id;->accessibility_custom_action_4:I

    .line 22
    .line 23
    sget v6, Landroidx/compose/ui/R$id;->accessibility_custom_action_5:I

    .line 24
    .line 25
    sget v7, Landroidx/compose/ui/R$id;->accessibility_custom_action_6:I

    .line 26
    .line 27
    sget v8, Landroidx/compose/ui/R$id;->accessibility_custom_action_7:I

    .line 28
    .line 29
    sget v9, Landroidx/compose/ui/R$id;->accessibility_custom_action_8:I

    .line 30
    .line 31
    sget v10, Landroidx/compose/ui/R$id;->accessibility_custom_action_9:I

    .line 32
    .line 33
    sget v11, Landroidx/compose/ui/R$id;->accessibility_custom_action_10:I

    .line 34
    .line 35
    sget v12, Landroidx/compose/ui/R$id;->accessibility_custom_action_11:I

    .line 36
    .line 37
    sget v13, Landroidx/compose/ui/R$id;->accessibility_custom_action_12:I

    .line 38
    .line 39
    sget v14, Landroidx/compose/ui/R$id;->accessibility_custom_action_13:I

    .line 40
    .line 41
    sget v15, Landroidx/compose/ui/R$id;->accessibility_custom_action_14:I

    .line 42
    .line 43
    sget v16, Landroidx/compose/ui/R$id;->accessibility_custom_action_15:I

    .line 44
    .line 45
    sget v17, Landroidx/compose/ui/R$id;->accessibility_custom_action_16:I

    .line 46
    .line 47
    sget v18, Landroidx/compose/ui/R$id;->accessibility_custom_action_17:I

    .line 48
    .line 49
    sget v19, Landroidx/compose/ui/R$id;->accessibility_custom_action_18:I

    .line 50
    .line 51
    sget v20, Landroidx/compose/ui/R$id;->accessibility_custom_action_19:I

    .line 52
    .line 53
    sget v21, Landroidx/compose/ui/R$id;->accessibility_custom_action_20:I

    .line 54
    .line 55
    sget v22, Landroidx/compose/ui/R$id;->accessibility_custom_action_21:I

    .line 56
    .line 57
    sget v23, Landroidx/compose/ui/R$id;->accessibility_custom_action_22:I

    .line 58
    .line 59
    sget v24, Landroidx/compose/ui/R$id;->accessibility_custom_action_23:I

    .line 60
    .line 61
    sget v25, Landroidx/compose/ui/R$id;->accessibility_custom_action_24:I

    .line 62
    .line 63
    sget v26, Landroidx/compose/ui/R$id;->accessibility_custom_action_25:I

    .line 64
    .line 65
    sget v27, Landroidx/compose/ui/R$id;->accessibility_custom_action_26:I

    .line 66
    .line 67
    sget v28, Landroidx/compose/ui/R$id;->accessibility_custom_action_27:I

    .line 68
    .line 69
    sget v29, Landroidx/compose/ui/R$id;->accessibility_custom_action_28:I

    .line 70
    .line 71
    sget v30, Landroidx/compose/ui/R$id;->accessibility_custom_action_29:I

    .line 72
    .line 73
    sget v31, Landroidx/compose/ui/R$id;->accessibility_custom_action_30:I

    .line 74
    .line 75
    sget v32, Landroidx/compose/ui/R$id;->accessibility_custom_action_31:I

    .line 76
    .line 77
    filled-new-array/range {v1 .. v32}, [I

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-static {v0}, Landroidx/collection/n;->a([I)Landroidx/collection/m;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    sput-object v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->N:Landroidx/collection/m;

    .line 86
    .line 87
    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/platform/AndroidComposeView;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 5
    .line 6
    const/high16 v0, -0x80000000

    .line 7
    .line 8
    iput v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->b:I

    .line 9
    .line 10
    new-instance v1, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$onSendAccessibilityEvent$1;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$onSendAccessibilityEvent$1;-><init>(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;)V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->c:Lkotlin/jvm/functions/Function1;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v2, "accessibility"

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-string v2, "null cannot be cast to non-null type android.view.accessibility.AccessibilityManager"

    .line 28
    .line 29
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    .line 33
    .line 34
    iput-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->d:Landroid/view/accessibility/AccessibilityManager;

    .line 35
    .line 36
    const-wide/16 v2, 0x64

    .line 37
    .line 38
    iput-wide v2, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->f:J

    .line 39
    .line 40
    new-instance v2, Landroidx/compose/ui/platform/s;

    .line 41
    .line 42
    invoke-direct {v2, p0}, Landroidx/compose/ui/platform/s;-><init>(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;)V

    .line 43
    .line 44
    .line 45
    iput-object v2, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->g:Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    .line 46
    .line 47
    new-instance v2, Landroidx/compose/ui/platform/t;

    .line 48
    .line 49
    invoke-direct {v2, p0}, Landroidx/compose/ui/platform/t;-><init>(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;)V

    .line 50
    .line 51
    .line 52
    iput-object v2, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->h:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    .line 53
    .line 54
    const/4 v2, -0x1

    .line 55
    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    iput-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->i:Ljava/util/List;

    .line 60
    .line 61
    new-instance v1, Landroid/os/Handler;

    .line 62
    .line 63
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 68
    .line 69
    .line 70
    iput-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->j:Landroid/os/Handler;

    .line 71
    .line 72
    new-instance v1, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$e;

    .line 73
    .line 74
    invoke-direct {v1, p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$e;-><init>(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;)V

    .line 75
    .line 76
    .line 77
    iput-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->k:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$e;

    .line 78
    .line 79
    iput v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->l:I

    .line 80
    .line 81
    new-instance v0, Landroidx/collection/e0;

    .line 82
    .line 83
    const/4 v1, 0x0

    .line 84
    const/4 v3, 0x1

    .line 85
    const/4 v4, 0x0

    .line 86
    invoke-direct {v0, v1, v3, v4}, Landroidx/collection/e0;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 87
    .line 88
    .line 89
    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->o:Landroidx/collection/e0;

    .line 90
    .line 91
    new-instance v0, Landroidx/collection/e0;

    .line 92
    .line 93
    invoke-direct {v0, v1, v3, v4}, Landroidx/collection/e0;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 94
    .line 95
    .line 96
    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->p:Landroidx/collection/e0;

    .line 97
    .line 98
    new-instance v0, Landroidx/collection/y0;

    .line 99
    .line 100
    invoke-direct {v0, v1, v3, v4}, Landroidx/collection/y0;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 101
    .line 102
    .line 103
    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->q:Landroidx/collection/y0;

    .line 104
    .line 105
    new-instance v0, Landroidx/collection/y0;

    .line 106
    .line 107
    invoke-direct {v0, v1, v3, v4}, Landroidx/collection/y0;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 108
    .line 109
    .line 110
    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->r:Landroidx/collection/y0;

    .line 111
    .line 112
    iput v2, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->s:I

    .line 113
    .line 114
    new-instance v0, Landroidx/collection/b;

    .line 115
    .line 116
    invoke-direct {v0, v1, v3, v4}, Landroidx/collection/b;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 117
    .line 118
    .line 119
    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->u:Landroidx/collection/b;

    .line 120
    .line 121
    const/4 v0, 0x6

    .line 122
    invoke-static {v3, v4, v4, v0, v4}, Lkotlinx/coroutines/channels/g;->b(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/channels/d;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->v:Lkotlinx/coroutines/channels/d;

    .line 127
    .line 128
    iput-boolean v3, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->w:Z

    .line 129
    .line 130
    invoke-static {}, Landroidx/collection/p;->a()Landroidx/collection/o;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->y:Landroidx/collection/o;

    .line 135
    .line 136
    new-instance v0, Landroidx/collection/f0;

    .line 137
    .line 138
    invoke-direct {v0, v1, v3, v4}, Landroidx/collection/f0;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 139
    .line 140
    .line 141
    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->z:Landroidx/collection/f0;

    .line 142
    .line 143
    new-instance v0, Landroidx/collection/c0;

    .line 144
    .line 145
    invoke-direct {v0, v1, v3, v4}, Landroidx/collection/c0;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 146
    .line 147
    .line 148
    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->A:Landroidx/collection/c0;

    .line 149
    .line 150
    new-instance v0, Landroidx/collection/c0;

    .line 151
    .line 152
    invoke-direct {v0, v1, v3, v4}, Landroidx/collection/c0;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 153
    .line 154
    .line 155
    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->B:Landroidx/collection/c0;

    .line 156
    .line 157
    const-string v0, "android.view.accessibility.extra.EXTRA_DATA_TEST_TRAVERSALBEFORE_VAL"

    .line 158
    .line 159
    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->C:Ljava/lang/String;

    .line 160
    .line 161
    const-string v0, "android.view.accessibility.extra.EXTRA_DATA_TEST_TRAVERSALAFTER_VAL"

    .line 162
    .line 163
    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->D:Ljava/lang/String;

    .line 164
    .line 165
    new-instance v0, Landroidx/compose/ui/text/platform/r;

    .line 166
    .line 167
    invoke-direct {v0}, Landroidx/compose/ui/text/platform/r;-><init>()V

    .line 168
    .line 169
    .line 170
    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->E:Landroidx/compose/ui/text/platform/r;

    .line 171
    .line 172
    invoke-static {}, Landroidx/collection/p;->b()Landroidx/collection/e0;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->F:Landroidx/collection/e0;

    .line 177
    .line 178
    new-instance v0, Landroidx/compose/ui/platform/c2;

    .line 179
    .line 180
    invoke-virtual {p1}, Landroidx/compose/ui/platform/AndroidComposeView;->getSemanticsOwner()Landroidx/compose/ui/semantics/m;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/m;->a()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    invoke-static {}, Landroidx/collection/p;->a()Landroidx/collection/o;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/platform/c2;-><init>(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/collection/o;)V

    .line 193
    .line 194
    .line 195
    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->G:Landroidx/compose/ui/platform/c2;

    .line 196
    .line 197
    new-instance v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$a;

    .line 198
    .line 199
    invoke-direct {v0, p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$a;-><init>(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 203
    .line 204
    .line 205
    new-instance p1, Landroidx/compose/ui/platform/u;

    .line 206
    .line 207
    invoke-direct {p1, p0}, Landroidx/compose/ui/platform/u;-><init>(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;)V

    .line 208
    .line 209
    .line 210
    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->I:Ljava/lang/Runnable;

    .line 211
    .line 212
    new-instance p1, Ljava/util/ArrayList;

    .line 213
    .line 214
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .line 216
    .line 217
    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->J:Ljava/util/List;

    .line 218
    .line 219
    new-instance p1, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$scheduleScrollEventIfNeededLambda$1;

    .line 220
    .line 221
    invoke-direct {p1, p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$scheduleScrollEventIfNeededLambda$1;-><init>(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;)V

    .line 222
    .line 223
    .line 224
    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->K:Lkotlin/jvm/functions/Function1;

    .line 225
    .line 226
    return-void
.end method

.method private final A0(Landroidx/compose/ui/node/LayoutNode;Landroidx/collection/f0;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->D0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->getAndroidViewsHandler$ui_release()Landroidx/compose/ui/platform/AndroidViewsHandler;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidViewsHandler;->getLayoutNodeToHolder()Ljava/util/HashMap;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->e0()Landroidx/compose/ui/node/q0;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const/16 v1, 0x8

    .line 30
    .line 31
    invoke-static {v1}, Landroidx/compose/ui/node/s0;->a(I)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-virtual {v0, v1}, Landroidx/compose/ui/node/q0;->q(I)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    sget-object v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$sendSubtreeChangeAccessibilityEvents$semanticsNode$1;->INSTANCE:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$sendSubtreeChangeAccessibilityEvents$semanticsNode$1;

    .line 43
    .line 44
    invoke-static {p1, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->d(Landroidx/compose/ui/node/LayoutNode;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/node/LayoutNode;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    :goto_0
    if-eqz p1, :cond_6

    .line 49
    .line 50
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->F()Landroidx/compose/ui/semantics/i;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-nez v0, :cond_3

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_3
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/i;->o()Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_4

    .line 62
    .line 63
    sget-object v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$sendSubtreeChangeAccessibilityEvents$1;->INSTANCE:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$sendSubtreeChangeAccessibilityEvents$1;

    .line 64
    .line 65
    invoke-static {p1, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->d(Landroidx/compose/ui/node/LayoutNode;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/node/LayoutNode;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    if-eqz v0, :cond_4

    .line 70
    .line 71
    move-object p1, v0

    .line 72
    :cond_4
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->j0()I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    invoke-virtual {p2, p1}, Landroidx/collection/f0;->f(I)Z

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    if-nez p2, :cond_5

    .line 81
    .line 82
    return-void

    .line 83
    :cond_5
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->s0(I)I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    const/4 p1, 0x1

    .line 88
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    const/16 v5, 0x8

    .line 93
    .line 94
    const/4 v6, 0x0

    .line 95
    const/16 v2, 0x800

    .line 96
    .line 97
    const/4 v4, 0x0

    .line 98
    move-object v0, p0

    .line 99
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->w0(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    :cond_6
    :goto_1
    return-void
.end method

.method private final B(Landroidx/collection/o;ZIJ)Z
    .locals 20

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    move-wide/from16 v3, p4

    .line 8
    .line 9
    sget-object v5, Ly/g;->b:Ly/g$a;

    .line 10
    .line 11
    invoke-virtual {v5}, Ly/g$a;->b()J

    .line 12
    .line 13
    .line 14
    move-result-wide v5

    .line 15
    invoke-static {v3, v4, v5, v6}, Ly/g;->j(JJ)Z

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    if-nez v5, :cond_0

    .line 20
    .line 21
    invoke-static/range {p4 .. p5}, Ly/g;->p(J)Z

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    if-nez v5, :cond_1

    .line 26
    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    goto/16 :goto_7

    .line 29
    .line 30
    :cond_1
    const/4 v5, 0x1

    .line 31
    if-ne v1, v5, :cond_2

    .line 32
    .line 33
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->a:Landroidx/compose/ui/semantics/SemanticsProperties;

    .line 34
    .line 35
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->H()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    if-nez v1, :cond_e

    .line 41
    .line 42
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->a:Landroidx/compose/ui/semantics/SemanticsProperties;

    .line 43
    .line 44
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->k()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    :goto_0
    iget-object v7, v0, Landroidx/collection/o;->c:[Ljava/lang/Object;

    .line 49
    .line 50
    iget-object v0, v0, Landroidx/collection/o;->a:[J

    .line 51
    .line 52
    array-length v8, v0

    .line 53
    add-int/lit8 v8, v8, -0x2

    .line 54
    .line 55
    if-ltz v8, :cond_c

    .line 56
    .line 57
    const/4 v9, 0x0

    .line 58
    const/4 v10, 0x0

    .line 59
    :goto_1
    aget-wide v11, v0, v9

    .line 60
    .line 61
    not-long v13, v11

    .line 62
    const/4 v15, 0x7

    .line 63
    shl-long/2addr v13, v15

    .line 64
    and-long/2addr v13, v11

    .line 65
    const-wide v15, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    and-long/2addr v13, v15

    .line 71
    cmp-long v13, v13, v15

    .line 72
    .line 73
    if-eqz v13, :cond_a

    .line 74
    .line 75
    sub-int v13, v9, v8

    .line 76
    .line 77
    not-int v13, v13

    .line 78
    ushr-int/lit8 v13, v13, 0x1f

    .line 79
    .line 80
    const/16 v14, 0x8

    .line 81
    .line 82
    rsub-int/lit8 v13, v13, 0x8

    .line 83
    .line 84
    const/4 v15, 0x0

    .line 85
    :goto_2
    if-ge v15, v13, :cond_9

    .line 86
    .line 87
    const-wide/16 v16, 0xff

    .line 88
    .line 89
    and-long v16, v11, v16

    .line 90
    .line 91
    const-wide/16 v18, 0x80

    .line 92
    .line 93
    cmp-long v16, v16, v18

    .line 94
    .line 95
    if-gez v16, :cond_8

    .line 96
    .line 97
    shl-int/lit8 v16, v9, 0x3

    .line 98
    .line 99
    add-int v16, v16, v15

    .line 100
    .line 101
    aget-object v16, v7, v16

    .line 102
    .line 103
    check-cast v16, Landroidx/compose/ui/platform/d2;

    .line 104
    .line 105
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/platform/d2;->a()Landroid/graphics/Rect;

    .line 106
    .line 107
    .line 108
    move-result-object v17

    .line 109
    invoke-static/range {v17 .. v17}, Landroidx/compose/ui/graphics/u4;->e(Landroid/graphics/Rect;)Ly/i;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    invoke-virtual {v5, v3, v4}, Ly/i;->b(J)Z

    .line 114
    .line 115
    .line 116
    move-result v5

    .line 117
    if-nez v5, :cond_3

    .line 118
    .line 119
    goto :goto_5

    .line 120
    :cond_3
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/platform/d2;->b()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    invoke-static {v5, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    check-cast v5, Landroidx/compose/ui/semantics/g;

    .line 133
    .line 134
    if-nez v5, :cond_4

    .line 135
    .line 136
    goto :goto_5

    .line 137
    :cond_4
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/g;->b()Z

    .line 138
    .line 139
    .line 140
    move-result v16

    .line 141
    if-eqz v16, :cond_5

    .line 142
    .line 143
    neg-int v6, v2

    .line 144
    goto :goto_3

    .line 145
    :cond_5
    move v6, v2

    .line 146
    :goto_3
    if-nez v2, :cond_6

    .line 147
    .line 148
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/g;->b()Z

    .line 149
    .line 150
    .line 151
    move-result v17

    .line 152
    if-eqz v17, :cond_6

    .line 153
    .line 154
    const/4 v6, -0x1

    .line 155
    :cond_6
    if-gez v6, :cond_7

    .line 156
    .line 157
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/g;->c()Lkotlin/jvm/functions/Function0;

    .line 158
    .line 159
    .line 160
    move-result-object v5

    .line 161
    invoke-interface {v5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v5

    .line 165
    check-cast v5, Ljava/lang/Number;

    .line 166
    .line 167
    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    .line 168
    .line 169
    .line 170
    move-result v5

    .line 171
    const/4 v6, 0x0

    .line 172
    cmpl-float v5, v5, v6

    .line 173
    .line 174
    if-lez v5, :cond_8

    .line 175
    .line 176
    :goto_4
    const/4 v10, 0x1

    .line 177
    goto :goto_5

    .line 178
    :cond_7
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/g;->c()Lkotlin/jvm/functions/Function0;

    .line 179
    .line 180
    .line 181
    move-result-object v6

    .line 182
    invoke-interface {v6}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v6

    .line 186
    check-cast v6, Ljava/lang/Number;

    .line 187
    .line 188
    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    .line 189
    .line 190
    .line 191
    move-result v6

    .line 192
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/g;->a()Lkotlin/jvm/functions/Function0;

    .line 193
    .line 194
    .line 195
    move-result-object v5

    .line 196
    invoke-interface {v5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v5

    .line 200
    check-cast v5, Ljava/lang/Number;

    .line 201
    .line 202
    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    .line 203
    .line 204
    .line 205
    move-result v5

    .line 206
    cmpg-float v5, v6, v5

    .line 207
    .line 208
    if-gez v5, :cond_8

    .line 209
    .line 210
    goto :goto_4

    .line 211
    :cond_8
    :goto_5
    shr-long/2addr v11, v14

    .line 212
    add-int/lit8 v15, v15, 0x1

    .line 213
    .line 214
    const/4 v5, 0x1

    .line 215
    goto/16 :goto_2

    .line 216
    .line 217
    :cond_9
    if-ne v13, v14, :cond_d

    .line 218
    .line 219
    :cond_a
    if-eq v9, v8, :cond_b

    .line 220
    .line 221
    add-int/lit8 v9, v9, 0x1

    .line 222
    .line 223
    const/4 v5, 0x1

    .line 224
    goto/16 :goto_1

    .line 225
    .line 226
    :cond_b
    move v6, v10

    .line 227
    goto :goto_6

    .line 228
    :cond_c
    const/4 v6, 0x0

    .line 229
    :goto_6
    move v10, v6

    .line 230
    :cond_d
    return v10

    .line 231
    :cond_e
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 232
    .line 233
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 234
    .line 235
    .line 236
    throw v0

    .line 237
    :goto_7
    return v0
.end method

.method private final B0(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->D0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->getAndroidViewsHandler$ui_release()Landroidx/compose/ui/platform/AndroidViewsHandler;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidViewsHandler;->getLayoutNodeToHolder()Ljava/util/HashMap;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->j0()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->o:Landroidx/collection/e0;

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Landroidx/collection/o;->c(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Landroidx/compose/ui/semantics/g;

    .line 36
    .line 37
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->p:Landroidx/collection/e0;

    .line 38
    .line 39
    invoke-virtual {v1, p1}, Landroidx/collection/o;->c(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Landroidx/compose/ui/semantics/g;

    .line 44
    .line 45
    if-nez v0, :cond_2

    .line 46
    .line 47
    if-nez v1, :cond_2

    .line 48
    .line 49
    return-void

    .line 50
    :cond_2
    const/16 v2, 0x1000

    .line 51
    .line 52
    invoke-direct {p0, p1, v2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->E(II)Landroid/view/accessibility/AccessibilityEvent;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/g;->c()Lkotlin/jvm/functions/Function0;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    check-cast v2, Ljava/lang/Number;

    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    float-to-int v2, v2

    .line 73
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityRecord;->setScrollX(I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/g;->a()Lkotlin/jvm/functions/Function0;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Ljava/lang/Number;

    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    float-to-int v0, v0

    .line 91
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setMaxScrollX(I)V

    .line 92
    .line 93
    .line 94
    :cond_3
    if-eqz v1, :cond_4

    .line 95
    .line 96
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/g;->c()Lkotlin/jvm/functions/Function0;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    check-cast v0, Ljava/lang/Number;

    .line 105
    .line 106
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    float-to-int v0, v0

    .line 111
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setScrollY(I)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/g;->a()Lkotlin/jvm/functions/Function0;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    check-cast v0, Ljava/lang/Number;

    .line 123
    .line 124
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    float-to-int v0, v0

    .line 129
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setMaxScrollY(I)V

    .line 130
    .line 131
    .line 132
    :cond_4
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->u0(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 133
    .line 134
    .line 135
    return-void
.end method

.method private final C()V
    .locals 2

    .line 1
    const-string v0, "sendAccessibilitySemanticsStructureChangeEvents"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->c0()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->getSemanticsOwner()Landroidx/compose/ui/semantics/m;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/m;->a()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->G:Landroidx/compose/ui/platform/c2;

    .line 23
    .line 24
    invoke-direct {p0, v0, v1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->t0(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/compose/ui/platform/c2;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    :goto_0
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 33
    .line 34
    .line 35
    const-string v0, "sendSemanticsPropertyChangeEvents"

    .line 36
    .line 37
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :try_start_1
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->N()Landroidx/collection/o;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->z0(Landroidx/collection/o;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 45
    .line 46
    .line 47
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 48
    .line 49
    .line 50
    const-string v0, "updateSemanticsNodesCopyAndPanes"

    .line 51
    .line 52
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :try_start_2
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->U0()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 56
    .line 57
    .line 58
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :catchall_1
    move-exception v0

    .line 63
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 64
    .line 65
    .line 66
    throw v0

    .line 67
    :catchall_2
    move-exception v0

    .line 68
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 69
    .line 70
    .line 71
    throw v0

    .line 72
    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 73
    .line 74
    .line 75
    throw v0
.end method

.method private final D(I)Z
    .locals 8

    .line 1
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->a0(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/high16 v0, -0x80000000

    .line 8
    .line 9
    iput v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->l:I

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->m:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 17
    .line 18
    .line 19
    const/16 v6, 0xc

    .line 20
    .line 21
    const/4 v7, 0x0

    .line 22
    const/high16 v3, 0x10000

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    const/4 v5, 0x0

    .line 26
    move-object v1, p0

    .line 27
    move v2, p1

    .line 28
    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->w0(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    const/4 p1, 0x1

    .line 32
    return p1

    .line 33
    :cond_0
    const/4 p1, 0x0

    .line 34
    return p1
.end method

.method private final D0(Landroidx/compose/ui/semantics/SemanticsNode;IIZ)Z
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Landroidx/compose/ui/semantics/h;->a:Landroidx/compose/ui/semantics/h;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/h;->w()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v0, v2}, Landroidx/compose/ui/semantics/i;->e(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-static {p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->b(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/h;->w()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p1, v0}, Landroidx/compose/ui/semantics/i;->j(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Landroidx/compose/ui/semantics/a;

    .line 37
    .line 38
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/a;->a()Lkotlin/Function;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Lkotlin/jvm/functions/Function3;

    .line 43
    .line 44
    if-eqz p1, :cond_0

    .line 45
    .line 46
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object p3

    .line 54
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 55
    .line 56
    .line 57
    move-result-object p4

    .line 58
    invoke-interface {p1, p2, p3, p4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Ljava/lang/Boolean;

    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    :cond_0
    return v2

    .line 69
    :cond_1
    if-ne p2, p3, :cond_2

    .line 70
    .line 71
    iget p4, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->s:I

    .line 72
    .line 73
    if-ne p3, p4, :cond_2

    .line 74
    .line 75
    return v2

    .line 76
    :cond_2
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->V(Landroidx/compose/ui/semantics/SemanticsNode;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v8

    .line 80
    if-nez v8, :cond_3

    .line 81
    .line 82
    return v2

    .line 83
    :cond_3
    if-ltz p2, :cond_4

    .line 84
    .line 85
    if-ne p2, p3, :cond_4

    .line 86
    .line 87
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 88
    .line 89
    .line 90
    move-result p4

    .line 91
    if-gt p3, p4, :cond_4

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_4
    const/4 p2, -0x1

    .line 95
    :goto_0
    iput p2, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->s:I

    .line 96
    .line 97
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    .line 98
    .line 99
    .line 100
    move-result p2

    .line 101
    const/4 p3, 0x1

    .line 102
    if-lez p2, :cond_5

    .line 103
    .line 104
    move v2, p3

    .line 105
    :cond_5
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->o()I

    .line 106
    .line 107
    .line 108
    move-result p2

    .line 109
    invoke-direct {p0, p2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->s0(I)I

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    const/4 p2, 0x0

    .line 114
    if-eqz v2, :cond_6

    .line 115
    .line 116
    iget p4, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->s:I

    .line 117
    .line 118
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object p4

    .line 122
    move-object v5, p4

    .line 123
    goto :goto_1

    .line 124
    :cond_6
    move-object v5, p2

    .line 125
    :goto_1
    if-eqz v2, :cond_7

    .line 126
    .line 127
    iget p4, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->s:I

    .line 128
    .line 129
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 130
    .line 131
    .line 132
    move-result-object p4

    .line 133
    move-object v6, p4

    .line 134
    goto :goto_2

    .line 135
    :cond_7
    move-object v6, p2

    .line 136
    :goto_2
    if-eqz v2, :cond_8

    .line 137
    .line 138
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 139
    .line 140
    .line 141
    move-result p2

    .line 142
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 143
    .line 144
    .line 145
    move-result-object p2

    .line 146
    :cond_8
    move-object v7, p2

    .line 147
    move-object v3, p0

    .line 148
    invoke-direct/range {v3 .. v8}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->H(ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/CharSequence;)Landroid/view/accessibility/AccessibilityEvent;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    invoke-direct {p0, p2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->u0(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->o()I

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->y0(I)V

    .line 160
    .line 161
    .line 162
    return p3
.end method

.method private final E(II)Landroid/view/accessibility/AccessibilityEvent;
    .locals 1

    .line 1
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityRecord;->setEnabled(Z)V

    .line 7
    .line 8
    .line 9
    const-string v0, "android.view.View"

    .line 10
    .line 11
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 28
    .line 29
    invoke-virtual {p2, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->c0()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->N()Landroidx/collection/o;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0, p1}, Landroidx/collection/o;->c(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Landroidx/compose/ui/platform/d2;

    .line 47
    .line 48
    if-eqz p1, :cond_0

    .line 49
    .line 50
    invoke-virtual {p1}, Landroidx/compose/ui/platform/d2;->b()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->a:Landroidx/compose/ui/semantics/SemanticsProperties;

    .line 59
    .line 60
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->v()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {p1, v0}, Landroidx/compose/ui/semantics/i;->e(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityRecord;->setPassword(Z)V

    .line 69
    .line 70
    .line 71
    :cond_0
    return-object p2
.end method

.method private final E0(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->a:Landroidx/compose/ui/semantics/SemanticsProperties;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->h()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v0, v2}, Landroidx/compose/ui/semantics/i;->e(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentInvalid(Z)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->h()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {p1, v0}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Ljava/lang/CharSequence;

    .line 34
    .line 35
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setError(Ljava/lang/CharSequence;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method private final F(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->getViewTreeOwners()Landroidx/compose/ui/platform/AndroidComposeView$b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView$b;->a()Landroidx/lifecycle/u;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-interface {v0}, Landroidx/lifecycle/u;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->b()Landroidx/lifecycle/Lifecycle$State;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move-object v0, v1

    .line 28
    :goto_0
    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    .line 29
    .line 30
    if-ne v0, v2, :cond_1

    .line 31
    .line 32
    return-object v1

    .line 33
    :cond_1
    invoke-static {}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->obtain()Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->N()Landroidx/collection/o;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v2, p1}, Landroidx/collection/o;->c(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Landroidx/compose/ui/platform/d2;

    .line 46
    .line 47
    if-nez v2, :cond_2

    .line 48
    .line 49
    return-object v1

    .line 50
    :cond_2
    invoke-virtual {v2}, Landroidx/compose/ui/platform/d2;->b()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    const/4 v4, -0x1

    .line 55
    if-ne p1, v4, :cond_4

    .line 56
    .line 57
    iget-object v4, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 58
    .line 59
    invoke-virtual {v4}, Landroid/view/View;->getParentForAccessibility()Landroid/view/ViewParent;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    instance-of v5, v4, Landroid/view/View;

    .line 64
    .line 65
    if-eqz v5, :cond_3

    .line 66
    .line 67
    move-object v1, v4

    .line 68
    check-cast v1, Landroid/view/View;

    .line 69
    .line 70
    :cond_3
    invoke-virtual {v0, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setParent(Landroid/view/View;)V

    .line 71
    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_4
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->r()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    if-eqz v5, :cond_5

    .line 79
    .line 80
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsNode;->o()I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    :cond_5
    if-eqz v1, :cond_7

    .line 89
    .line 90
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    iget-object v5, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 95
    .line 96
    invoke-virtual {v5}, Landroidx/compose/ui/platform/AndroidComposeView;->getSemanticsOwner()Landroidx/compose/ui/semantics/m;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/m;->a()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsNode;->o()I

    .line 105
    .line 106
    .line 107
    move-result v5

    .line 108
    if-ne v1, v5, :cond_6

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_6
    move v4, v1

    .line 112
    :goto_1
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 113
    .line 114
    invoke-virtual {v0, v1, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setParent(Landroid/view/View;I)V

    .line 115
    .line 116
    .line 117
    :goto_2
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 118
    .line 119
    invoke-virtual {v0, v1, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setSource(Landroid/view/View;I)V

    .line 120
    .line 121
    .line 122
    invoke-direct {p0, v2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->y(Landroidx/compose/ui/platform/d2;)Landroid/graphics/Rect;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-virtual {v0, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 127
    .line 128
    .line 129
    invoke-direct {p0, p1, v0, v3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->l0(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Landroidx/compose/ui/semantics/SemanticsNode;)V

    .line 130
    .line 131
    .line 132
    return-object v0

    .line 133
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    const-string v1, "semanticsNode "

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
    const-string p1, " has null parent"

    .line 147
    .line 148
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-static {p1}, Lg0/a;->c(Ljava/lang/String;)Ljava/lang/Void;

    .line 156
    .line 157
    .line 158
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 159
    .line 160
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 161
    .line 162
    .line 163
    throw p1
.end method

.method private final F0(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->S(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCheckable(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final G(Landroidx/compose/ui/semantics/SemanticsNode;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->a()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->n()Landroidx/compose/ui/semantics/i;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->a:Landroidx/compose/ui/semantics/SemanticsProperties;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->d()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {p1, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Ljava/util/Collection;

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->C()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {p1, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Ljava/util/Collection;

    .line 38
    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->g()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {p1, v0}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    check-cast p1, Ljava/lang/CharSequence;

    .line 56
    .line 57
    if-eqz p1, :cond_3

    .line 58
    .line 59
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-nez p1, :cond_2

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    const/4 p1, 0x0

    .line 67
    goto :goto_1

    .line 68
    :cond_3
    :goto_0
    iget-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    sget v0, Landroidx/compose/ui/R$string;->state_empty:I

    .line 79
    .line 80
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    :goto_1
    return-object p1
.end method

.method private final H(ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/CharSequence;)Landroid/view/accessibility/AccessibilityEvent;
    .locals 1

    .line 1
    const/16 v0, 0x2000

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->E(II)Landroid/view/accessibility/AccessibilityEvent;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    if-eqz p3, :cond_1

    .line 17
    .line 18
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    .line 23
    .line 24
    .line 25
    :cond_1
    if-eqz p4, :cond_2

    .line 26
    .line 27
    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V

    .line 32
    .line 33
    .line 34
    :cond_2
    if-eqz p5, :cond_3

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-interface {p2, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    :cond_3
    return-object p1
.end method

.method private final H0(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->T(Landroidx/compose/ui/semantics/SemanticsNode;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setStateDescription(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final I0(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->U(Landroidx/compose/ui/semantics/SemanticsNode;)Landroidx/compose/ui/text/AnnotatedString;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->P0(Landroidx/compose/ui/text/AnnotatedString;)Landroid/text/SpannableString;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setText(Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private static final J(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->d:Landroid/view/accessibility/AccessibilityManager;

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    :goto_0
    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->i:Ljava/util/List;

    .line 16
    .line 17
    return-void
.end method

.method private final J0()V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->A:Landroidx/collection/c0;

    .line 3
    .line 4
    invoke-virtual {v1}, Landroidx/collection/c0;->i()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->B:Landroidx/collection/c0;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroidx/collection/c0;->i()V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->N()Landroidx/collection/o;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/4 v2, -0x1

    .line 17
    invoke-virtual {v1, v2}, Landroidx/collection/o;->c(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroidx/compose/ui/platform/d2;

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {v1}, Landroidx/compose/ui/platform/d2;->b()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v1, 0x0

    .line 31
    :goto_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    invoke-static {v1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->e(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    new-array v3, v0, [Landroidx/compose/ui/semantics/SemanticsNode;

    .line 39
    .line 40
    const/4 v4, 0x0

    .line 41
    aput-object v1, v3, v4

    .line 42
    .line 43
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-direct {p0, v2, v1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->N0(ZLjava/util/List;)Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->n(Ljava/util/List;)I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-gt v0, v2, :cond_1

    .line 56
    .line 57
    move v3, v0

    .line 58
    :goto_1
    add-int/lit8 v4, v3, -0x1

    .line 59
    .line 60
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    check-cast v4, Landroidx/compose/ui/semantics/SemanticsNode;

    .line 65
    .line 66
    invoke-virtual {v4}, Landroidx/compose/ui/semantics/SemanticsNode;->o()I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    check-cast v5, Landroidx/compose/ui/semantics/SemanticsNode;

    .line 75
    .line 76
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsNode;->o()I

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    iget-object v6, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->A:Landroidx/collection/c0;

    .line 81
    .line 82
    invoke-virtual {v6, v4, v5}, Landroidx/collection/c0;->q(II)V

    .line 83
    .line 84
    .line 85
    iget-object v6, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->B:Landroidx/collection/c0;

    .line 86
    .line 87
    invoke-virtual {v6, v5, v4}, Landroidx/collection/c0;->q(II)V

    .line 88
    .line 89
    .line 90
    if-eq v3, v2, :cond_1

    .line 91
    .line 92
    add-int/2addr v3, v0

    .line 93
    goto :goto_1

    .line 94
    :cond_1
    return-void
.end method

.method private final K(Landroidx/compose/ui/semantics/SemanticsNode;Ljava/util/ArrayList;Landroidx/collection/e0;)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->e(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsProperties;->a:Landroidx/compose/ui/semantics/SemanticsProperties;

    .line 10
    .line 11
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsProperties;->r()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    sget-object v3, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$geometryDepthFirstSearch$isTraversalGroup$1;->INSTANCE:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$geometryDepthFirstSearch$isTraversalGroup$1;

    .line 16
    .line 17
    invoke-virtual {v1, v2, v3}, Landroidx/compose/ui/semantics/i;->l(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/lang/Boolean;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->d0(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    :cond_0
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->N()Landroidx/collection/o;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->o()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    invoke-virtual {v2, v3}, Landroidx/collection/o;->b(I)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    :cond_1
    if-eqz v1, :cond_2

    .line 53
    .line 54
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->o()I

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->k()Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Ljava/util/Collection;

    .line 63
    .line 64
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-direct {p0, v0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->N0(ZLjava/util/List;)Ljava/util/List;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p3, p2, p1}, Landroidx/collection/e0;->t(ILjava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->k()Ljava/util/List;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    const/4 v1, 0x0

    .line 85
    :goto_0
    if-ge v1, v0, :cond_3

    .line 86
    .line 87
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    check-cast v2, Landroidx/compose/ui/semantics/SemanticsNode;

    .line 92
    .line 93
    invoke-direct {p0, v2, p2, p3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->K(Landroidx/compose/ui/semantics/SemanticsNode;Ljava/util/ArrayList;Landroidx/collection/e0;)V

    .line 94
    .line 95
    .line 96
    add-int/lit8 v1, v1, 0x1

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_3
    :goto_1
    return-void
.end method

.method private final K0(ZLjava/util/ArrayList;Landroidx/collection/e0;)Ljava/util/List;
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    .line 6
    .line 7
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->n(Ljava/util/List;)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x0

    .line 12
    if-ltz v2, :cond_2

    .line 13
    .line 14
    move v4, v3

    .line 15
    :goto_0
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    check-cast v5, Landroidx/compose/ui/semantics/SemanticsNode;

    .line 20
    .line 21
    if-eqz v4, :cond_0

    .line 22
    .line 23
    invoke-static {v1, v5}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->M0(Ljava/util/ArrayList;Landroidx/compose/ui/semantics/SemanticsNode;)Z

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    if-nez v6, :cond_1

    .line 28
    .line 29
    :cond_0
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsNode;->j()Ly/i;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    new-instance v7, Lkotlin/Pair;

    .line 34
    .line 35
    new-array v8, v0, [Landroidx/compose/ui/semantics/SemanticsNode;

    .line 36
    .line 37
    aput-object v5, v8, v3

    .line 38
    .line 39
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-direct {v7, v6, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    :cond_1
    if-eq v4, v2, :cond_2

    .line 50
    .line 51
    add-int/2addr v4, v0

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    sget-object p2, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$TopBottomBoundsComparator;->INSTANCE:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$TopBottomBoundsComparator;

    .line 54
    .line 55
    invoke-static {v1, p2}, Lkotlin/collections/CollectionsKt;->A(Ljava/util/List;Ljava/util/Comparator;)V

    .line 56
    .line 57
    .line 58
    new-instance p2, Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    move v4, v3

    .line 68
    :goto_1
    if-ge v4, v2, :cond_4

    .line 69
    .line 70
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    check-cast v5, Lkotlin/Pair;

    .line 75
    .line 76
    invoke-virtual {v5}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    check-cast v6, Ljava/util/List;

    .line 81
    .line 82
    if-eqz p1, :cond_3

    .line 83
    .line 84
    sget-object v7, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$RtlBoundsComparator;->INSTANCE:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$RtlBoundsComparator;

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_3
    sget-object v7, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$LtrBoundsComparator;->INSTANCE:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$LtrBoundsComparator;

    .line 88
    .line 89
    :goto_2
    sget-object v8, Landroidx/compose/ui/node/LayoutNode;->K:Landroidx/compose/ui/node/LayoutNode$c;

    .line 90
    .line 91
    invoke-virtual {v8}, Landroidx/compose/ui/node/LayoutNode$c;->b()Ljava/util/Comparator;

    .line 92
    .line 93
    .line 94
    move-result-object v8

    .line 95
    new-instance v9, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$semanticComparator$$inlined$thenBy$1;

    .line 96
    .line 97
    invoke-direct {v9, v7, v8}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$semanticComparator$$inlined$thenBy$1;-><init>(Ljava/util/Comparator;Ljava/util/Comparator;)V

    .line 98
    .line 99
    .line 100
    new-instance v7, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$semanticComparator$$inlined$thenBy$2;

    .line 101
    .line 102
    invoke-direct {v7, v9}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$semanticComparator$$inlined$thenBy$2;-><init>(Ljava/util/Comparator;)V

    .line 103
    .line 104
    .line 105
    invoke-static {v6, v7}, Lkotlin/collections/CollectionsKt;->A(Ljava/util/List;Ljava/util/Comparator;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v5}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    check-cast v5, Ljava/util/Collection;

    .line 113
    .line 114
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 115
    .line 116
    .line 117
    add-int/2addr v4, v0

    .line 118
    goto :goto_1

    .line 119
    :cond_4
    sget-object p1, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$sortByGeometryGroupings$2;->INSTANCE:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$sortByGeometryGroupings$2;

    .line 120
    .line 121
    new-instance v1, Landroidx/compose/ui/platform/r;

    .line 122
    .line 123
    invoke-direct {v1, p1}, Landroidx/compose/ui/platform/r;-><init>(Lkotlin/jvm/functions/Function2;)V

    .line 124
    .line 125
    .line 126
    invoke-static {p2, v1}, Lkotlin/collections/CollectionsKt;->A(Ljava/util/List;Ljava/util/Comparator;)V

    .line 127
    .line 128
    .line 129
    :goto_3
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->n(Ljava/util/List;)I

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    if-gt v3, p1, :cond_7

    .line 134
    .line 135
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsNode;

    .line 140
    .line 141
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->o()I

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    invoke-virtual {p3, p1}, Landroidx/collection/o;->c(I)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    check-cast p1, Ljava/util/List;

    .line 150
    .line 151
    if-eqz p1, :cond_6

    .line 152
    .line 153
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    check-cast v1, Landroidx/compose/ui/semantics/SemanticsNode;

    .line 158
    .line 159
    invoke-direct {p0, v1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->d0(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    if-nez v1, :cond_5

    .line 164
    .line 165
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    goto :goto_4

    .line 169
    :cond_5
    add-int/2addr v3, v0

    .line 170
    :goto_4
    move-object v1, p1

    .line 171
    check-cast v1, Ljava/util/Collection;

    .line 172
    .line 173
    invoke-virtual {p2, v3, v1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 174
    .line 175
    .line 176
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 177
    .line 178
    .line 179
    move-result p1

    .line 180
    add-int/2addr v3, p1

    .line 181
    goto :goto_3

    .line 182
    :cond_6
    add-int/2addr v3, v0

    .line 183
    goto :goto_3

    .line 184
    :cond_7
    return-object p2
.end method

.method private final L(Landroidx/compose/ui/semantics/SemanticsNode;)I
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->a:Landroidx/compose/ui/semantics/SemanticsProperties;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->d()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v0, v2}, Landroidx/compose/ui/semantics/i;->e(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->D()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v0, v2}, Landroidx/compose/ui/semantics/i;->e(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->D()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p1, v0}, Landroidx/compose/ui/semantics/i;->j(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Landroidx/compose/ui/text/b0;

    .line 44
    .line 45
    invoke-virtual {p1}, Landroidx/compose/ui/text/b0;->n()J

    .line 46
    .line 47
    .line 48
    move-result-wide v0

    .line 49
    invoke-static {v0, v1}, Landroidx/compose/ui/text/b0;->g(J)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    return p1

    .line 54
    :cond_0
    iget p1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->s:I

    .line 55
    .line 56
    return p1
.end method

.method private static final L0(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/lang/Number;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private final M(Landroidx/compose/ui/semantics/SemanticsNode;)I
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->a:Landroidx/compose/ui/semantics/SemanticsProperties;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->d()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v0, v2}, Landroidx/compose/ui/semantics/i;->e(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->D()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v0, v2}, Landroidx/compose/ui/semantics/i;->e(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->D()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p1, v0}, Landroidx/compose/ui/semantics/i;->j(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Landroidx/compose/ui/text/b0;

    .line 44
    .line 45
    invoke-virtual {p1}, Landroidx/compose/ui/text/b0;->n()J

    .line 46
    .line 47
    .line 48
    move-result-wide v0

    .line 49
    invoke-static {v0, v1}, Landroidx/compose/ui/text/b0;->k(J)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    return p1

    .line 54
    :cond_0
    iget p1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->s:I

    .line 55
    .line 56
    return p1
.end method

.method private static final M0(Ljava/util/ArrayList;Landroidx/compose/ui/semantics/SemanticsNode;)Z
    .locals 10

    .line 1
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->j()Ly/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ly/i;->i()F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->j()Ly/i;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ly/i;->c()F

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    cmpl-float v2, v0, v1

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    const/4 v4, 0x1

    .line 21
    if-ltz v2, :cond_0

    .line 22
    .line 23
    move v2, v4

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v2, v3

    .line 26
    :goto_0
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->n(Ljava/util/List;)I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    if-ltz v5, :cond_3

    .line 31
    .line 32
    move v6, v3

    .line 33
    :goto_1
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    check-cast v7, Lkotlin/Pair;

    .line 38
    .line 39
    invoke-virtual {v7}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    check-cast v7, Ly/i;

    .line 44
    .line 45
    invoke-virtual {v7}, Ly/i;->i()F

    .line 46
    .line 47
    .line 48
    move-result v8

    .line 49
    invoke-virtual {v7}, Ly/i;->c()F

    .line 50
    .line 51
    .line 52
    move-result v9

    .line 53
    cmpl-float v8, v8, v9

    .line 54
    .line 55
    if-ltz v8, :cond_1

    .line 56
    .line 57
    move v8, v4

    .line 58
    goto :goto_2

    .line 59
    :cond_1
    move v8, v3

    .line 60
    :goto_2
    if-nez v2, :cond_2

    .line 61
    .line 62
    if-nez v8, :cond_2

    .line 63
    .line 64
    invoke-virtual {v7}, Ly/i;->i()F

    .line 65
    .line 66
    .line 67
    move-result v8

    .line 68
    invoke-static {v0, v8}, Ljava/lang/Math;->max(FF)F

    .line 69
    .line 70
    .line 71
    move-result v8

    .line 72
    invoke-virtual {v7}, Ly/i;->c()F

    .line 73
    .line 74
    .line 75
    move-result v9

    .line 76
    invoke-static {v1, v9}, Ljava/lang/Math;->min(FF)F

    .line 77
    .line 78
    .line 79
    move-result v9

    .line 80
    cmpg-float v8, v8, v9

    .line 81
    .line 82
    if-gez v8, :cond_2

    .line 83
    .line 84
    const/4 v2, 0x0

    .line 85
    const/high16 v3, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 86
    .line 87
    invoke-virtual {v7, v2, v0, v3, v1}, Ly/i;->l(FFFF)Ly/i;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    new-instance v1, Lkotlin/Pair;

    .line 92
    .line 93
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    check-cast v2, Lkotlin/Pair;

    .line 98
    .line 99
    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-direct {v1, v0, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, v6, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    check-cast p0, Lkotlin/Pair;

    .line 114
    .line 115
    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    check-cast p0, Ljava/util/List;

    .line 120
    .line 121
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    return v4

    .line 125
    :cond_2
    if-eq v6, v5, :cond_3

    .line 126
    .line 127
    add-int/lit8 v6, v6, 0x1

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_3
    return v3
.end method

.method private final N()Landroidx/collection/o;
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->w:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->w:Z

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->getSemanticsOwner()Landroidx/compose/ui/semantics/m;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Landroidx/compose/ui/platform/e2;->b(Landroidx/compose/ui/semantics/m;)Landroidx/collection/o;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->y:Landroidx/collection/o;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->c0()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->J0()V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->y:Landroidx/collection/o;

    .line 30
    .line 31
    return-object v0
.end method

.method private final N0(ZLjava/util/List;)Ljava/util/List;
    .locals 5

    .line 1
    invoke-static {}, Landroidx/collection/p;->b()Landroidx/collection/e0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x0

    .line 15
    :goto_0
    if-ge v3, v2, :cond_0

    .line 16
    .line 17
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    check-cast v4, Landroidx/compose/ui/semantics/SemanticsNode;

    .line 22
    .line 23
    invoke-direct {p0, v4, v1, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->K(Landroidx/compose/ui/semantics/SemanticsNode;Ljava/util/ArrayList;Landroidx/collection/e0;)V

    .line 24
    .line 25
    .line 26
    add-int/lit8 v3, v3, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-direct {p0, p1, v1, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->K0(ZLjava/util/ArrayList;Landroidx/collection/e0;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    return-object p1
.end method

.method private final O0(Landroidx/compose/ui/semantics/SemanticsNode;Ly/i;)Landroid/graphics/RectF;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->s()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    invoke-virtual {p2, v1, v2}, Ly/i;->q(J)Ly/i;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->i()Ly/i;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p2, p1}, Ly/i;->o(Ly/i;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p2, p1}, Ly/i;->m(Ly/i;)Ly/i;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move-object p1, v0

    .line 29
    :goto_0
    if-eqz p1, :cond_2

    .line 30
    .line 31
    iget-object p2, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 32
    .line 33
    invoke-virtual {p1}, Ly/i;->f()F

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    invoke-virtual {p1}, Ly/i;->i()F

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    invoke-static {v0, v1}, Ly/h;->a(FF)J

    .line 42
    .line 43
    .line 44
    move-result-wide v0

    .line 45
    invoke-virtual {p2, v0, v1}, Landroidx/compose/ui/platform/AndroidComposeView;->localToScreen-MK-Hz9U(J)J

    .line 46
    .line 47
    .line 48
    move-result-wide v0

    .line 49
    iget-object p2, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 50
    .line 51
    invoke-virtual {p1}, Ly/i;->g()F

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    invoke-virtual {p1}, Ly/i;->c()F

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    invoke-static {v2, p1}, Ly/h;->a(FF)J

    .line 60
    .line 61
    .line 62
    move-result-wide v2

    .line 63
    invoke-virtual {p2, v2, v3}, Landroidx/compose/ui/platform/AndroidComposeView;->localToScreen-MK-Hz9U(J)J

    .line 64
    .line 65
    .line 66
    move-result-wide p1

    .line 67
    new-instance v2, Landroid/graphics/RectF;

    .line 68
    .line 69
    invoke-static {v0, v1}, Ly/g;->m(J)F

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    invoke-static {v0, v1}, Ly/g;->n(J)F

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    invoke-static {p1, p2}, Ly/g;->m(J)F

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    invoke-static {p1, p2}, Ly/g;->n(J)F

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    invoke-direct {v2, v3, v0, v1, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 86
    .line 87
    .line 88
    move-object v0, v2

    .line 89
    :cond_2
    return-object v0
.end method

.method private final P0(Landroidx/compose/ui/text/AnnotatedString;)Landroid/text/SpannableString;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->getFontFamilyResolver()Landroidx/compose/ui/text/font/h$b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroidx/compose/ui/platform/AndroidComposeView;->getDensity()Lo0/e;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->E:Landroidx/compose/ui/text/platform/r;

    .line 14
    .line 15
    invoke-static {p1, v1, v0, v2}, Landroidx/compose/ui/text/platform/a;->b(Landroidx/compose/ui/text/AnnotatedString;Lo0/e;Landroidx/compose/ui/text/font/h$b;Landroidx/compose/ui/text/platform/r;)Landroid/text/SpannableString;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const v0, 0x186a0

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, p1, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->S0(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Landroid/text/SpannableString;

    .line 27
    .line 28
    return-object p1
.end method

.method private static final Q0(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->d:Landroid/view/accessibility/AccessibilityManager;

    .line 2
    .line 3
    const/4 v0, -0x1

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->i:Ljava/util/List;

    .line 9
    .line 10
    return-void
.end method

.method private final R0(Landroidx/compose/ui/semantics/SemanticsNode;IZZ)Z
    .locals 11

    .line 1
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->o()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->t:Ljava/lang/Integer;

    .line 6
    .line 7
    const/4 v2, -0x1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eq v0, v1, :cond_1

    .line 16
    .line 17
    :goto_0
    iput v2, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->s:I

    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->o()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->t:Ljava/lang/Integer;

    .line 28
    .line 29
    :cond_1
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->V(Landroidx/compose/ui/semantics/SemanticsNode;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const/4 v1, 0x0

    .line 34
    if-eqz v0, :cond_e

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-nez v3, :cond_2

    .line 41
    .line 42
    goto/16 :goto_8

    .line 43
    .line 44
    :cond_2
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->W(Landroidx/compose/ui/semantics/SemanticsNode;I)Landroidx/compose/ui/platform/f;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    if-nez v3, :cond_3

    .line 49
    .line 50
    return v1

    .line 51
    :cond_3
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->L(Landroidx/compose/ui/semantics/SemanticsNode;)I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-ne v4, v2, :cond_5

    .line 56
    .line 57
    if-eqz p3, :cond_4

    .line 58
    .line 59
    move v4, v1

    .line 60
    goto :goto_1

    .line 61
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    move v4, v0

    .line 66
    :cond_5
    :goto_1
    if-eqz p3, :cond_6

    .line 67
    .line 68
    invoke-interface {v3, v4}, Landroidx/compose/ui/platform/f;->a(I)[I

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    goto :goto_2

    .line 73
    :cond_6
    invoke-interface {v3, v4}, Landroidx/compose/ui/platform/f;->b(I)[I

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    :goto_2
    if-nez v0, :cond_7

    .line 78
    .line 79
    return v1

    .line 80
    :cond_7
    aget v7, v0, v1

    .line 81
    .line 82
    const/4 v1, 0x1

    .line 83
    aget v8, v0, v1

    .line 84
    .line 85
    if-eqz p4, :cond_b

    .line 86
    .line 87
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->b0(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    .line 88
    .line 89
    .line 90
    move-result p4

    .line 91
    if-eqz p4, :cond_b

    .line 92
    .line 93
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->M(Landroidx/compose/ui/semantics/SemanticsNode;)I

    .line 94
    .line 95
    .line 96
    move-result p4

    .line 97
    if-ne p4, v2, :cond_9

    .line 98
    .line 99
    if-eqz p3, :cond_8

    .line 100
    .line 101
    move p4, v7

    .line 102
    goto :goto_3

    .line 103
    :cond_8
    move p4, v8

    .line 104
    :cond_9
    :goto_3
    if-eqz p3, :cond_a

    .line 105
    .line 106
    move v0, v8

    .line 107
    goto :goto_5

    .line 108
    :cond_a
    move v0, v7

    .line 109
    goto :goto_5

    .line 110
    :cond_b
    if-eqz p3, :cond_c

    .line 111
    .line 112
    move p4, v8

    .line 113
    goto :goto_4

    .line 114
    :cond_c
    move p4, v7

    .line 115
    :goto_4
    move v0, p4

    .line 116
    :goto_5
    if-eqz p3, :cond_d

    .line 117
    .line 118
    const/16 p3, 0x100

    .line 119
    .line 120
    :goto_6
    move v5, p3

    .line 121
    goto :goto_7

    .line 122
    :cond_d
    const/16 p3, 0x200

    .line 123
    .line 124
    goto :goto_6

    .line 125
    :goto_7
    new-instance p3, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$f;

    .line 126
    .line 127
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 128
    .line 129
    .line 130
    move-result-wide v9

    .line 131
    move-object v3, p3

    .line 132
    move-object v4, p1

    .line 133
    move v6, p2

    .line 134
    invoke-direct/range {v3 .. v10}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$f;-><init>(Landroidx/compose/ui/semantics/SemanticsNode;IIIIJ)V

    .line 135
    .line 136
    .line 137
    iput-object p3, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->x:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$f;

    .line 138
    .line 139
    invoke-direct {p0, p1, p4, v0, v1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->D0(Landroidx/compose/ui/semantics/SemanticsNode;IIZ)Z

    .line 140
    .line 141
    .line 142
    :cond_e
    :goto_8
    return v1
.end method

.method private final S(Landroidx/compose/ui/semantics/SemanticsNode;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->a:Landroidx/compose/ui/semantics/SemanticsProperties;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->F()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-static {v0, v2}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroidx/compose/ui/state/ToggleableState;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->x()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-static {v2, v3}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Landroidx/compose/ui/semantics/f;

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    const/4 v4, 0x0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    move v0, v3

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move v0, v4

    .line 38
    :goto_0
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->z()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-static {p1, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Ljava/lang/Boolean;

    .line 51
    .line 52
    if-eqz p1, :cond_3

    .line 53
    .line 54
    sget-object p1, Landroidx/compose/ui/semantics/f;->b:Landroidx/compose/ui/semantics/f$a;

    .line 55
    .line 56
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/f$a;->g()I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-nez v2, :cond_1

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/f;->n()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    invoke-static {v1, p1}, Landroidx/compose/ui/semantics/f;->k(II)Z

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    :goto_1
    if-nez v4, :cond_2

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_2
    move v3, v0

    .line 75
    :goto_2
    move v0, v3

    .line 76
    :cond_3
    return v0
.end method

.method private final S0(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .locals 2

    .line 1
    if-lez p2, :cond_4

    .line 2
    .line 3
    if-eqz p1, :cond_3

    .line 4
    .line 5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-gt v0, p2, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    add-int/lit8 v0, p2, -0x1

    .line 20
    .line 21
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    move p2, v0

    .line 42
    :cond_2
    const/4 v0, 0x0

    .line 43
    invoke-interface {p1, v0, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    const-string p2, "null cannot be cast to non-null type T of androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat.trimToSize"

    .line 48
    .line 49
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :cond_3
    :goto_0
    return-object p1

    .line 53
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 54
    .line 55
    const-string p2, "size should be greater than 0"

    .line 56
    .line 57
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p1
.end method

.method private final T(Landroidx/compose/ui/semantics/SemanticsNode;)Ljava/lang/String;
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->a:Landroidx/compose/ui/semantics/SemanticsProperties;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->A()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-static {v0, v2}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->F()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-static {v2, v3}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Landroidx/compose/ui/state/ToggleableState;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->x()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-static {v3, v4}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Landroidx/compose/ui/semantics/f;

    .line 42
    .line 43
    const/4 v4, 0x1

    .line 44
    const/4 v5, 0x0

    .line 45
    if-eqz v2, :cond_5

    .line 46
    .line 47
    sget-object v6, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$g;->a:[I

    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    aget v2, v6, v2

    .line 54
    .line 55
    if-eq v2, v4, :cond_3

    .line 56
    .line 57
    const/4 v6, 0x2

    .line 58
    if-eq v2, v6, :cond_1

    .line 59
    .line 60
    const/4 v6, 0x3

    .line 61
    if-eq v2, v6, :cond_0

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_0
    if-nez v0, :cond_5

    .line 65
    .line 66
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 67
    .line 68
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    sget v2, Landroidx/compose/ui/R$string;->indeterminate:I

    .line 77
    .line 78
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    goto :goto_2

    .line 83
    :cond_1
    sget-object v2, Landroidx/compose/ui/semantics/f;->b:Landroidx/compose/ui/semantics/f$a;

    .line 84
    .line 85
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/f$a;->f()I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-nez v3, :cond_2

    .line 90
    .line 91
    move v2, v5

    .line 92
    goto :goto_0

    .line 93
    :cond_2
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/f;->n()I

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    invoke-static {v6, v2}, Landroidx/compose/ui/semantics/f;->k(II)Z

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    :goto_0
    if-eqz v2, :cond_5

    .line 102
    .line 103
    if-nez v0, :cond_5

    .line 104
    .line 105
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 106
    .line 107
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    sget v2, Landroidx/compose/ui/R$string;->state_off:I

    .line 116
    .line 117
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    goto :goto_2

    .line 122
    :cond_3
    sget-object v2, Landroidx/compose/ui/semantics/f;->b:Landroidx/compose/ui/semantics/f$a;

    .line 123
    .line 124
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/f$a;->f()I

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    if-nez v3, :cond_4

    .line 129
    .line 130
    move v2, v5

    .line 131
    goto :goto_1

    .line 132
    :cond_4
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/f;->n()I

    .line 133
    .line 134
    .line 135
    move-result v6

    .line 136
    invoke-static {v6, v2}, Landroidx/compose/ui/semantics/f;->k(II)Z

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    :goto_1
    if-eqz v2, :cond_5

    .line 141
    .line 142
    if-nez v0, :cond_5

    .line 143
    .line 144
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 145
    .line 146
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    sget v2, Landroidx/compose/ui/R$string;->state_on:I

    .line 155
    .line 156
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    :cond_5
    :goto_2
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->z()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 165
    .line 166
    .line 167
    move-result-object v6

    .line 168
    invoke-static {v2, v6}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    check-cast v2, Ljava/lang/Boolean;

    .line 173
    .line 174
    if-eqz v2, :cond_8

    .line 175
    .line 176
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    sget-object v6, Landroidx/compose/ui/semantics/f;->b:Landroidx/compose/ui/semantics/f$a;

    .line 181
    .line 182
    invoke-virtual {v6}, Landroidx/compose/ui/semantics/f$a;->g()I

    .line 183
    .line 184
    .line 185
    move-result v6

    .line 186
    if-nez v3, :cond_6

    .line 187
    .line 188
    move v3, v5

    .line 189
    goto :goto_3

    .line 190
    :cond_6
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/f;->n()I

    .line 191
    .line 192
    .line 193
    move-result v3

    .line 194
    invoke-static {v3, v6}, Landroidx/compose/ui/semantics/f;->k(II)Z

    .line 195
    .line 196
    .line 197
    move-result v3

    .line 198
    :goto_3
    if-nez v3, :cond_8

    .line 199
    .line 200
    if-nez v0, :cond_8

    .line 201
    .line 202
    if-eqz v2, :cond_7

    .line 203
    .line 204
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 205
    .line 206
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    sget v2, Landroidx/compose/ui/R$string;->selected:I

    .line 215
    .line 216
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    goto :goto_4

    .line 221
    :cond_7
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 222
    .line 223
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    sget v2, Landroidx/compose/ui/R$string;->not_selected:I

    .line 232
    .line 233
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    :cond_8
    :goto_4
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->w()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 242
    .line 243
    .line 244
    move-result-object v3

    .line 245
    invoke-static {v2, v3}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    check-cast v2, Landroidx/compose/ui/semantics/e;

    .line 250
    .line 251
    if-eqz v2, :cond_12

    .line 252
    .line 253
    sget-object v3, Landroidx/compose/ui/semantics/e;->d:Landroidx/compose/ui/semantics/e$a;

    .line 254
    .line 255
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/e$a;->a()Landroidx/compose/ui/semantics/e;

    .line 256
    .line 257
    .line 258
    move-result-object v3

    .line 259
    if-eq v2, v3, :cond_11

    .line 260
    .line 261
    if-nez v0, :cond_12

    .line 262
    .line 263
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/e;->c()Lkotlin/ranges/ClosedFloatingPointRange;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    invoke-interface {v0}, Lkotlin/ranges/ClosedRange;->e()Ljava/lang/Comparable;

    .line 268
    .line 269
    .line 270
    move-result-object v3

    .line 271
    check-cast v3, Ljava/lang/Number;

    .line 272
    .line 273
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 274
    .line 275
    .line 276
    move-result v3

    .line 277
    invoke-interface {v0}, Lkotlin/ranges/ClosedRange;->j()Ljava/lang/Comparable;

    .line 278
    .line 279
    .line 280
    move-result-object v6

    .line 281
    check-cast v6, Ljava/lang/Number;

    .line 282
    .line 283
    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    .line 284
    .line 285
    .line 286
    move-result v6

    .line 287
    sub-float/2addr v3, v6

    .line 288
    const/4 v6, 0x0

    .line 289
    cmpg-float v3, v3, v6

    .line 290
    .line 291
    if-nez v3, :cond_9

    .line 292
    .line 293
    move v3, v4

    .line 294
    goto :goto_5

    .line 295
    :cond_9
    move v3, v5

    .line 296
    :goto_5
    if-eqz v3, :cond_a

    .line 297
    .line 298
    move v2, v6

    .line 299
    goto :goto_6

    .line 300
    :cond_a
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/e;->b()F

    .line 301
    .line 302
    .line 303
    move-result v2

    .line 304
    invoke-interface {v0}, Lkotlin/ranges/ClosedRange;->j()Ljava/lang/Comparable;

    .line 305
    .line 306
    .line 307
    move-result-object v3

    .line 308
    check-cast v3, Ljava/lang/Number;

    .line 309
    .line 310
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 311
    .line 312
    .line 313
    move-result v3

    .line 314
    sub-float/2addr v2, v3

    .line 315
    invoke-interface {v0}, Lkotlin/ranges/ClosedRange;->e()Ljava/lang/Comparable;

    .line 316
    .line 317
    .line 318
    move-result-object v3

    .line 319
    check-cast v3, Ljava/lang/Number;

    .line 320
    .line 321
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 322
    .line 323
    .line 324
    move-result v3

    .line 325
    invoke-interface {v0}, Lkotlin/ranges/ClosedRange;->j()Ljava/lang/Comparable;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    check-cast v0, Ljava/lang/Number;

    .line 330
    .line 331
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 332
    .line 333
    .line 334
    move-result v0

    .line 335
    sub-float/2addr v3, v0

    .line 336
    div-float/2addr v2, v3

    .line 337
    :goto_6
    cmpg-float v0, v2, v6

    .line 338
    .line 339
    if-gez v0, :cond_b

    .line 340
    .line 341
    move v2, v6

    .line 342
    :cond_b
    const/high16 v0, 0x3f800000    # 1.0f

    .line 343
    .line 344
    cmpl-float v3, v2, v0

    .line 345
    .line 346
    if-lez v3, :cond_c

    .line 347
    .line 348
    move v2, v0

    .line 349
    :cond_c
    cmpg-float v3, v2, v6

    .line 350
    .line 351
    if-nez v3, :cond_d

    .line 352
    .line 353
    move v3, v4

    .line 354
    goto :goto_7

    .line 355
    :cond_d
    move v3, v5

    .line 356
    :goto_7
    if-eqz v3, :cond_e

    .line 357
    .line 358
    move v3, v5

    .line 359
    goto :goto_9

    .line 360
    :cond_e
    cmpg-float v0, v2, v0

    .line 361
    .line 362
    if-nez v0, :cond_f

    .line 363
    .line 364
    move v0, v4

    .line 365
    goto :goto_8

    .line 366
    :cond_f
    move v0, v5

    .line 367
    :goto_8
    const/16 v3, 0x64

    .line 368
    .line 369
    if-eqz v0, :cond_10

    .line 370
    .line 371
    goto :goto_9

    .line 372
    :cond_10
    int-to-float v0, v3

    .line 373
    mul-float/2addr v2, v0

    .line 374
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 375
    .line 376
    .line 377
    move-result v0

    .line 378
    const/16 v2, 0x63

    .line 379
    .line 380
    invoke-static {v0, v4, v2}, Lkotlin/ranges/RangesKt;->l(III)I

    .line 381
    .line 382
    .line 383
    move-result v3

    .line 384
    :goto_9
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 385
    .line 386
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 387
    .line 388
    .line 389
    move-result-object v0

    .line 390
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 391
    .line 392
    .line 393
    move-result-object v0

    .line 394
    sget v2, Landroidx/compose/ui/R$string;->template_percent:I

    .line 395
    .line 396
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 397
    .line 398
    .line 399
    move-result-object v3

    .line 400
    new-array v4, v4, [Ljava/lang/Object;

    .line 401
    .line 402
    aput-object v3, v4, v5

    .line 403
    .line 404
    invoke-virtual {v0, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v0

    .line 408
    goto :goto_a

    .line 409
    :cond_11
    if-nez v0, :cond_12

    .line 410
    .line 411
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 412
    .line 413
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    sget v2, Landroidx/compose/ui/R$string;->in_progress:I

    .line 422
    .line 423
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v0

    .line 427
    :cond_12
    :goto_a
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    .line 428
    .line 429
    .line 430
    move-result-object v2

    .line 431
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->g()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 432
    .line 433
    .line 434
    move-result-object v1

    .line 435
    invoke-virtual {v2, v1}, Landroidx/compose/ui/semantics/i;->e(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    .line 436
    .line 437
    .line 438
    move-result v1

    .line 439
    if-eqz v1, :cond_13

    .line 440
    .line 441
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->G(Landroidx/compose/ui/semantics/SemanticsNode;)Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v0

    .line 445
    :cond_13
    check-cast v0, Ljava/lang/String;

    .line 446
    .line 447
    return-object v0
.end method

.method private final T0(I)V
    .locals 9

    .line 1
    iget v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->b:I

    .line 2
    .line 3
    if-ne v1, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->b:I

    .line 7
    .line 8
    const/16 v7, 0xc

    .line 9
    .line 10
    const/4 v8, 0x0

    .line 11
    const/16 v4, 0x80

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x0

    .line 15
    move-object v2, p0

    .line 16
    move v3, p1

    .line 17
    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->w0(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    const/16 v5, 0xc

    .line 21
    .line 22
    const/16 v2, 0x100

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    const/4 v4, 0x0

    .line 26
    move-object v0, p0

    .line 27
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->w0(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method private final U(Landroidx/compose/ui/semantics/SemanticsNode;)Landroidx/compose/ui/text/AnnotatedString;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->X(Landroidx/compose/ui/semantics/i;)Landroidx/compose/ui/text/AnnotatedString;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->a:Landroidx/compose/ui/semantics/SemanticsProperties;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->C()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {p1, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Ljava/util/List;

    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Landroidx/compose/ui/text/AnnotatedString;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 p1, 0x0

    .line 35
    :goto_0
    if-nez v0, :cond_1

    .line 36
    .line 37
    move-object v0, p1

    .line 38
    :cond_1
    return-object v0
.end method

.method private final U0()V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Landroidx/collection/f0;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    const/4 v4, 0x0

    .line 8
    invoke-direct {v1, v2, v3, v4}, Landroidx/collection/f0;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 9
    .line 10
    .line 11
    iget-object v3, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->z:Landroidx/collection/f0;

    .line 12
    .line 13
    iget-object v5, v3, Landroidx/collection/q;->b:[I

    .line 14
    .line 15
    iget-object v3, v3, Landroidx/collection/q;->a:[J

    .line 16
    .line 17
    array-length v6, v3

    .line 18
    add-int/lit8 v6, v6, -0x2

    .line 19
    .line 20
    const-wide/16 v7, 0x80

    .line 21
    .line 22
    const-wide/16 v9, 0xff

    .line 23
    .line 24
    const/4 v11, 0x7

    .line 25
    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    const/16 v14, 0x8

    .line 31
    .line 32
    if-ltz v6, :cond_6

    .line 33
    .line 34
    move v15, v2

    .line 35
    move-object/from16 v17, v5

    .line 36
    .line 37
    :goto_0
    aget-wide v4, v3, v15

    .line 38
    .line 39
    move-object/from16 v18, v3

    .line 40
    .line 41
    not-long v2, v4

    .line 42
    shl-long/2addr v2, v11

    .line 43
    and-long/2addr v2, v4

    .line 44
    and-long/2addr v2, v12

    .line 45
    cmp-long v2, v2, v12

    .line 46
    .line 47
    if-eqz v2, :cond_5

    .line 48
    .line 49
    sub-int v2, v15, v6

    .line 50
    .line 51
    not-int v2, v2

    .line 52
    ushr-int/lit8 v2, v2, 0x1f

    .line 53
    .line 54
    rsub-int/lit8 v2, v2, 0x8

    .line 55
    .line 56
    const/4 v3, 0x0

    .line 57
    :goto_1
    if-ge v3, v2, :cond_4

    .line 58
    .line 59
    and-long v19, v4, v9

    .line 60
    .line 61
    cmp-long v19, v19, v7

    .line 62
    .line 63
    if-gez v19, :cond_3

    .line 64
    .line 65
    shl-int/lit8 v19, v15, 0x3

    .line 66
    .line 67
    add-int v19, v19, v3

    .line 68
    .line 69
    aget v7, v17, v19

    .line 70
    .line 71
    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->N()Landroidx/collection/o;

    .line 72
    .line 73
    .line 74
    move-result-object v8

    .line 75
    invoke-virtual {v8, v7}, Landroidx/collection/o;->c(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v8

    .line 79
    check-cast v8, Landroidx/compose/ui/platform/d2;

    .line 80
    .line 81
    if-eqz v8, :cond_0

    .line 82
    .line 83
    invoke-virtual {v8}, Landroidx/compose/ui/platform/d2;->b()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 84
    .line 85
    .line 86
    move-result-object v8

    .line 87
    goto :goto_2

    .line 88
    :cond_0
    const/4 v8, 0x0

    .line 89
    :goto_2
    if-eqz v8, :cond_1

    .line 90
    .line 91
    invoke-virtual {v8}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    .line 92
    .line 93
    .line 94
    move-result-object v8

    .line 95
    sget-object v19, Landroidx/compose/ui/semantics/SemanticsProperties;->a:Landroidx/compose/ui/semantics/SemanticsProperties;

    .line 96
    .line 97
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/semantics/SemanticsProperties;->u()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 98
    .line 99
    .line 100
    move-result-object v9

    .line 101
    invoke-virtual {v8, v9}, Landroidx/compose/ui/semantics/i;->e(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    .line 102
    .line 103
    .line 104
    move-result v8

    .line 105
    if-nez v8, :cond_3

    .line 106
    .line 107
    :cond_1
    invoke-virtual {v1, v7}, Landroidx/collection/f0;->f(I)Z

    .line 108
    .line 109
    .line 110
    iget-object v8, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->F:Landroidx/collection/e0;

    .line 111
    .line 112
    invoke-virtual {v8, v7}, Landroidx/collection/o;->c(I)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v8

    .line 116
    check-cast v8, Landroidx/compose/ui/platform/c2;

    .line 117
    .line 118
    if-eqz v8, :cond_2

    .line 119
    .line 120
    invoke-virtual {v8}, Landroidx/compose/ui/platform/c2;->b()Landroidx/compose/ui/semantics/i;

    .line 121
    .line 122
    .line 123
    move-result-object v8

    .line 124
    if-eqz v8, :cond_2

    .line 125
    .line 126
    sget-object v9, Landroidx/compose/ui/semantics/SemanticsProperties;->a:Landroidx/compose/ui/semantics/SemanticsProperties;

    .line 127
    .line 128
    invoke-virtual {v9}, Landroidx/compose/ui/semantics/SemanticsProperties;->u()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 129
    .line 130
    .line 131
    move-result-object v9

    .line 132
    invoke-static {v8, v9}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v8

    .line 136
    check-cast v8, Ljava/lang/String;

    .line 137
    .line 138
    goto :goto_3

    .line 139
    :cond_2
    const/4 v8, 0x0

    .line 140
    :goto_3
    const/16 v9, 0x20

    .line 141
    .line 142
    invoke-direct {v0, v7, v9, v8}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->x0(IILjava/lang/String;)V

    .line 143
    .line 144
    .line 145
    :cond_3
    shr-long/2addr v4, v14

    .line 146
    add-int/lit8 v3, v3, 0x1

    .line 147
    .line 148
    const-wide/16 v7, 0x80

    .line 149
    .line 150
    const-wide/16 v9, 0xff

    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_4
    if-ne v2, v14, :cond_6

    .line 154
    .line 155
    :cond_5
    if-eq v15, v6, :cond_6

    .line 156
    .line 157
    add-int/lit8 v15, v15, 0x1

    .line 158
    .line 159
    move-object/from16 v3, v18

    .line 160
    .line 161
    const/4 v2, 0x0

    .line 162
    const-wide/16 v7, 0x80

    .line 163
    .line 164
    const-wide/16 v9, 0xff

    .line 165
    .line 166
    goto/16 :goto_0

    .line 167
    .line 168
    :cond_6
    iget-object v2, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->z:Landroidx/collection/f0;

    .line 169
    .line 170
    invoke-virtual {v2, v1}, Landroidx/collection/f0;->r(Landroidx/collection/q;)Z

    .line 171
    .line 172
    .line 173
    iget-object v1, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->F:Landroidx/collection/e0;

    .line 174
    .line 175
    invoke-virtual {v1}, Landroidx/collection/e0;->i()V

    .line 176
    .line 177
    .line 178
    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->N()Landroidx/collection/o;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    iget-object v2, v1, Landroidx/collection/o;->b:[I

    .line 183
    .line 184
    iget-object v3, v1, Landroidx/collection/o;->c:[Ljava/lang/Object;

    .line 185
    .line 186
    iget-object v1, v1, Landroidx/collection/o;->a:[J

    .line 187
    .line 188
    array-length v4, v1

    .line 189
    add-int/lit8 v4, v4, -0x2

    .line 190
    .line 191
    if-ltz v4, :cond_b

    .line 192
    .line 193
    const/4 v5, 0x0

    .line 194
    :goto_4
    aget-wide v6, v1, v5

    .line 195
    .line 196
    not-long v8, v6

    .line 197
    shl-long/2addr v8, v11

    .line 198
    and-long/2addr v8, v6

    .line 199
    and-long/2addr v8, v12

    .line 200
    cmp-long v8, v8, v12

    .line 201
    .line 202
    if-eqz v8, :cond_a

    .line 203
    .line 204
    sub-int v8, v5, v4

    .line 205
    .line 206
    not-int v8, v8

    .line 207
    ushr-int/lit8 v8, v8, 0x1f

    .line 208
    .line 209
    rsub-int/lit8 v8, v8, 0x8

    .line 210
    .line 211
    const/4 v9, 0x0

    .line 212
    :goto_5
    if-ge v9, v8, :cond_9

    .line 213
    .line 214
    const-wide/16 v15, 0xff

    .line 215
    .line 216
    and-long v18, v6, v15

    .line 217
    .line 218
    const-wide/16 v20, 0x80

    .line 219
    .line 220
    cmp-long v10, v18, v20

    .line 221
    .line 222
    if-gez v10, :cond_8

    .line 223
    .line 224
    shl-int/lit8 v10, v5, 0x3

    .line 225
    .line 226
    add-int/2addr v10, v9

    .line 227
    aget v11, v2, v10

    .line 228
    .line 229
    aget-object v10, v3, v10

    .line 230
    .line 231
    check-cast v10, Landroidx/compose/ui/platform/d2;

    .line 232
    .line 233
    invoke-virtual {v10}, Landroidx/compose/ui/platform/d2;->b()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 234
    .line 235
    .line 236
    move-result-object v18

    .line 237
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    .line 238
    .line 239
    .line 240
    move-result-object v12

    .line 241
    sget-object v13, Landroidx/compose/ui/semantics/SemanticsProperties;->a:Landroidx/compose/ui/semantics/SemanticsProperties;

    .line 242
    .line 243
    invoke-virtual {v13}, Landroidx/compose/ui/semantics/SemanticsProperties;->u()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 244
    .line 245
    .line 246
    move-result-object v15

    .line 247
    invoke-virtual {v12, v15}, Landroidx/compose/ui/semantics/i;->e(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    .line 248
    .line 249
    .line 250
    move-result v12

    .line 251
    if-eqz v12, :cond_7

    .line 252
    .line 253
    iget-object v12, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->z:Landroidx/collection/f0;

    .line 254
    .line 255
    invoke-virtual {v12, v11}, Landroidx/collection/f0;->f(I)Z

    .line 256
    .line 257
    .line 258
    move-result v12

    .line 259
    if-eqz v12, :cond_7

    .line 260
    .line 261
    invoke-virtual {v10}, Landroidx/compose/ui/platform/d2;->b()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 262
    .line 263
    .line 264
    move-result-object v12

    .line 265
    invoke-virtual {v12}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    .line 266
    .line 267
    .line 268
    move-result-object v12

    .line 269
    invoke-virtual {v13}, Landroidx/compose/ui/semantics/SemanticsProperties;->u()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 270
    .line 271
    .line 272
    move-result-object v13

    .line 273
    invoke-virtual {v12, v13}, Landroidx/compose/ui/semantics/i;->j(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v12

    .line 277
    check-cast v12, Ljava/lang/String;

    .line 278
    .line 279
    const/16 v13, 0x10

    .line 280
    .line 281
    invoke-direct {v0, v11, v13, v12}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->x0(IILjava/lang/String;)V

    .line 282
    .line 283
    .line 284
    :cond_7
    iget-object v12, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->F:Landroidx/collection/e0;

    .line 285
    .line 286
    new-instance v13, Landroidx/compose/ui/platform/c2;

    .line 287
    .line 288
    invoke-virtual {v10}, Landroidx/compose/ui/platform/d2;->b()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 289
    .line 290
    .line 291
    move-result-object v10

    .line 292
    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->N()Landroidx/collection/o;

    .line 293
    .line 294
    .line 295
    move-result-object v15

    .line 296
    invoke-direct {v13, v10, v15}, Landroidx/compose/ui/platform/c2;-><init>(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/collection/o;)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v12, v11, v13}, Landroidx/collection/e0;->t(ILjava/lang/Object;)V

    .line 300
    .line 301
    .line 302
    :cond_8
    shr-long/2addr v6, v14

    .line 303
    add-int/lit8 v9, v9, 0x1

    .line 304
    .line 305
    const/4 v11, 0x7

    .line 306
    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    goto :goto_5

    .line 312
    :cond_9
    const-wide/16 v20, 0x80

    .line 313
    .line 314
    if-ne v8, v14, :cond_b

    .line 315
    .line 316
    goto :goto_6

    .line 317
    :cond_a
    const-wide/16 v20, 0x80

    .line 318
    .line 319
    :goto_6
    if-eq v5, v4, :cond_b

    .line 320
    .line 321
    add-int/lit8 v5, v5, 0x1

    .line 322
    .line 323
    const/4 v11, 0x7

    .line 324
    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    goto/16 :goto_4

    .line 330
    .line 331
    :cond_b
    new-instance v1, Landroidx/compose/ui/platform/c2;

    .line 332
    .line 333
    iget-object v2, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 334
    .line 335
    invoke-virtual {v2}, Landroidx/compose/ui/platform/AndroidComposeView;->getSemanticsOwner()Landroidx/compose/ui/semantics/m;

    .line 336
    .line 337
    .line 338
    move-result-object v2

    .line 339
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/m;->a()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 340
    .line 341
    .line 342
    move-result-object v2

    .line 343
    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->N()Landroidx/collection/o;

    .line 344
    .line 345
    .line 346
    move-result-object v3

    .line 347
    invoke-direct {v1, v2, v3}, Landroidx/compose/ui/platform/c2;-><init>(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/collection/o;)V

    .line 348
    .line 349
    .line 350
    iput-object v1, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->G:Landroidx/compose/ui/platform/c2;

    .line 351
    .line 352
    return-void
.end method

.method private final V(Landroidx/compose/ui/semantics/SemanticsNode;)Ljava/lang/String;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsProperties;->a:Landroidx/compose/ui/semantics/SemanticsProperties;

    .line 10
    .line 11
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsProperties;->d()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {v1, v3}, Landroidx/compose/ui/semantics/i;->e(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsProperties;->d()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p1, v0}, Landroidx/compose/ui/semantics/i;->j(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    move-object v0, p1

    .line 34
    check-cast v0, Ljava/util/List;

    .line 35
    .line 36
    const/16 v7, 0x3e

    .line 37
    .line 38
    const/4 v8, 0x0

    .line 39
    const-string v1, ","

    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    const/4 v3, 0x0

    .line 43
    const/4 v4, 0x0

    .line 44
    const/4 v5, 0x0

    .line 45
    const/4 v6, 0x0

    .line 46
    invoke-static/range {v0 .. v8}, Lq0/a;->d(Ljava/util/List;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    return-object p1

    .line 51
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsProperties;->g()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v1, v3}, Landroidx/compose/ui/semantics/i;->e(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_3

    .line 64
    .line 65
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->X(Landroidx/compose/ui/semantics/i;)Landroidx/compose/ui/text/AnnotatedString;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    if-eqz p1, :cond_2

    .line 74
    .line 75
    invoke-virtual {p1}, Landroidx/compose/ui/text/AnnotatedString;->i()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    :cond_2
    return-object v0

    .line 80
    :cond_3
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsProperties;->C()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-static {p1, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    check-cast p1, Ljava/util/List;

    .line 93
    .line 94
    if-eqz p1, :cond_4

    .line 95
    .line 96
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    check-cast p1, Landroidx/compose/ui/text/AnnotatedString;

    .line 101
    .line 102
    if-eqz p1, :cond_4

    .line 103
    .line 104
    invoke-virtual {p1}, Landroidx/compose/ui/text/AnnotatedString;->i()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    :cond_4
    return-object v0
.end method

.method private final W(Landroidx/compose/ui/semantics/SemanticsNode;I)Landroidx/compose/ui/platform/f;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->V(Landroidx/compose/ui/semantics/SemanticsNode;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_9

    .line 10
    .line 11
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    goto/16 :goto_1

    .line 18
    .line 19
    :cond_1
    const/4 v2, 0x1

    .line 20
    if-eq p2, v2, :cond_8

    .line 21
    .line 22
    const/4 v2, 0x2

    .line 23
    if-eq p2, v2, :cond_7

    .line 24
    .line 25
    const/4 v2, 0x4

    .line 26
    if-eq p2, v2, :cond_3

    .line 27
    .line 28
    const/16 v3, 0x8

    .line 29
    .line 30
    if-eq p2, v3, :cond_2

    .line 31
    .line 32
    const/16 v3, 0x10

    .line 33
    .line 34
    if-eq p2, v3, :cond_3

    .line 35
    .line 36
    return-object v0

    .line 37
    :cond_2
    sget-object p1, Landroidx/compose/ui/platform/e;->c:Landroidx/compose/ui/platform/e$a;

    .line 38
    .line 39
    invoke-virtual {p1}, Landroidx/compose/ui/platform/e$a;->a()Landroidx/compose/ui/platform/e;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1, v1}, Landroidx/compose/ui/platform/a;->e(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    sget-object v4, Landroidx/compose/ui/semantics/h;->a:Landroidx/compose/ui/semantics/h;

    .line 52
    .line 53
    invoke-virtual {v4}, Landroidx/compose/ui/semantics/h;->i()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {v3, v4}, Landroidx/compose/ui/semantics/i;->e(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-nez v3, :cond_4

    .line 62
    .line 63
    return-object v0

    .line 64
    :cond_4
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-static {v3}, Landroidx/compose/ui/platform/e2;->e(Landroidx/compose/ui/semantics/i;)Landroidx/compose/ui/text/z;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    if-nez v3, :cond_5

    .line 73
    .line 74
    return-object v0

    .line 75
    :cond_5
    if-ne p2, v2, :cond_6

    .line 76
    .line 77
    sget-object p1, Landroidx/compose/ui/platform/c;->d:Landroidx/compose/ui/platform/c$a;

    .line 78
    .line 79
    invoke-virtual {p1}, Landroidx/compose/ui/platform/c$a;->a()Landroidx/compose/ui/platform/c;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p1, v1, v3}, Landroidx/compose/ui/platform/c;->j(Ljava/lang/String;Landroidx/compose/ui/text/z;)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_6
    sget-object p2, Landroidx/compose/ui/platform/d;->f:Landroidx/compose/ui/platform/d$a;

    .line 88
    .line 89
    invoke-virtual {p2}, Landroidx/compose/ui/platform/d$a;->a()Landroidx/compose/ui/platform/d;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    invoke-virtual {p2, v1, v3, p1}, Landroidx/compose/ui/platform/d;->j(Ljava/lang/String;Landroidx/compose/ui/text/z;Landroidx/compose/ui/semantics/SemanticsNode;)V

    .line 94
    .line 95
    .line 96
    move-object p1, p2

    .line 97
    goto :goto_0

    .line 98
    :cond_7
    sget-object p1, Landroidx/compose/ui/platform/g;->d:Landroidx/compose/ui/platform/g$a;

    .line 99
    .line 100
    iget-object p2, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 101
    .line 102
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    iget-object p2, p2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 115
    .line 116
    invoke-virtual {p1, p2}, Landroidx/compose/ui/platform/g$a;->a(Ljava/util/Locale;)Landroidx/compose/ui/platform/g;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-virtual {p1, v1}, Landroidx/compose/ui/platform/a;->e(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_8
    sget-object p1, Landroidx/compose/ui/platform/b;->d:Landroidx/compose/ui/platform/b$a;

    .line 125
    .line 126
    iget-object p2, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 127
    .line 128
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    iget-object p2, p2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 141
    .line 142
    invoke-virtual {p1, p2}, Landroidx/compose/ui/platform/b$a;->a(Ljava/util/Locale;)Landroidx/compose/ui/platform/b;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-virtual {p1, v1}, Landroidx/compose/ui/platform/a;->e(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    :goto_0
    return-object p1

    .line 150
    :cond_9
    :goto_1
    return-object v0
.end method

.method private final X(Landroidx/compose/ui/semantics/i;)Landroidx/compose/ui/text/AnnotatedString;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->a:Landroidx/compose/ui/semantics/SemanticsProperties;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->g()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p1, v0}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroidx/compose/ui/text/AnnotatedString;

    .line 12
    .line 13
    return-object p1
.end method

.method public static synthetic a(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->Q0(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final a0(I)Z
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->l:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p1, 0x0

    .line 8
    :goto_0
    return p1
.end method

.method public static synthetic b(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->L0(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private final b0(Landroidx/compose/ui/semantics/SemanticsNode;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->a:Landroidx/compose/ui/semantics/SemanticsProperties;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->d()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v0, v2}, Landroidx/compose/ui/semantics/i;->e(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->g()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p1, v0}, Landroidx/compose/ui/semantics/i;->e(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    const/4 p1, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 p1, 0x0

    .line 34
    :goto_0
    return p1
.end method

.method public static synthetic c(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->r0(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->J(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final d0(Landroidx/compose/ui/semantics/SemanticsNode;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->a:Landroidx/compose/ui/semantics/SemanticsProperties;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->d()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/util/List;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/lang/String;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    :goto_0
    const/4 v1, 0x1

    .line 28
    const/4 v2, 0x0

    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->U(Landroidx/compose/ui/semantics/SemanticsNode;)Landroidx/compose/ui/text/AnnotatedString;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-nez v0, :cond_2

    .line 36
    .line 37
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->T(Landroidx/compose/ui/semantics/SemanticsNode;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->S(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    move v0, v2

    .line 51
    goto :goto_2

    .line 52
    :cond_2
    :goto_1
    move v0, v1

    .line 53
    :goto_2
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/i;->o()Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-nez v3, :cond_4

    .line 62
    .line 63
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->A()Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_3

    .line 68
    .line 69
    if-eqz v0, :cond_3

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_3
    move v1, v2

    .line 73
    :cond_4
    :goto_3
    return v1
.end method

.method public static final synthetic e(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->x(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final e0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->e:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->d:Landroid/view/accessibility/AccessibilityManager;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->d:Landroid/view/accessibility/AccessibilityManager;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 25
    :goto_1
    return v0
.end method

.method public static final synthetic f(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;Landroidx/compose/ui/platform/d2;)Landroid/graphics/Rect;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->y(Landroidx/compose/ui/platform/d2;)Landroid/graphics/Rect;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final f0(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->u:Landroidx/collection/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/collection/b;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->v:Lkotlinx/coroutines/channels/d;

    .line 10
    .line 11
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-interface {p1, v0}, Lkotlinx/coroutines/channels/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public static final synthetic g(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->F(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic h(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;)Landroid/view/accessibility/AccessibilityManager;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->d:Landroid/view/accessibility/AccessibilityManager;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic i(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;)Landroidx/collection/o;
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->N()Landroidx/collection/o;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final i0(IILandroid/os/Bundle;)Z
    .locals 17

    move-object/from16 v7, p0

    move/from16 v1, p1

    move/from16 v0, p2

    move-object/from16 v2, p3

    .line 1
    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->N()Landroidx/collection/o;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroidx/collection/o;->c(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/platform/d2;

    const/4 v8, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroidx/compose/ui/platform/d2;->b()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    move v0, v8

    goto/16 :goto_20

    :cond_1
    const/16 v4, 0x40

    if-eq v0, v4, :cond_54

    const/16 v4, 0x80

    if-eq v0, v4, :cond_53

    const/16 v4, 0x100

    const/4 v5, 0x1

    if-eq v0, v4, :cond_50

    const/16 v6, 0x200

    if-eq v0, v6, :cond_50

    const/16 v4, 0x4000

    if-eq v0, v4, :cond_4e

    const/high16 v4, 0x20000

    if-eq v0, v4, :cond_4a

    .line 2
    invoke-static {v3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->b(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v4

    if-nez v4, :cond_2

    return v8

    :cond_2
    if-eq v0, v5, :cond_48

    const/4 v4, 0x2

    if-eq v0, v4, :cond_46

    const/4 v4, 0x0

    sparse-switch v0, :sswitch_data_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    .line 3
    iget-object v2, v7, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->q:Landroidx/collection/y0;

    invoke-virtual {v2, v1}, Landroidx/collection/y0;->g(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/collection/y0;

    if-eqz v1, :cond_6

    invoke-virtual {v1, v0}, Landroidx/collection/y0;->g(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    if-nez v0, :cond_3

    goto :goto_0

    .line 4
    :cond_3
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/h;->a:Landroidx/compose/ui/semantics/h;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/h;->d()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_4

    return v8

    .line 5
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_5

    return v8

    .line 6
    :cond_5
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    .line 8
    throw v4

    :cond_6
    :goto_0
    return v8

    .line 9
    :pswitch_0
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/h;->a:Landroidx/compose/ui/semantics/h;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/h;->o()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/semantics/a;

    if-eqz v0, :cond_7

    .line 10
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/a;->a()Lkotlin/Function;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    :cond_7
    return v8

    .line 11
    :pswitch_1
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/h;->a:Landroidx/compose/ui/semantics/h;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/h;->n()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/semantics/a;

    if-eqz v0, :cond_8

    .line 12
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/a;->a()Lkotlin/Function;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    :cond_8
    return v8

    .line 13
    :pswitch_2
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/h;->a:Landroidx/compose/ui/semantics/h;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/h;->m()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/semantics/a;

    if-eqz v0, :cond_9

    .line 14
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/a;->a()Lkotlin/Function;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    :cond_9
    return v8

    .line 15
    :pswitch_3
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/h;->a:Landroidx/compose/ui/semantics/h;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/h;->p()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/semantics/a;

    if-eqz v0, :cond_a

    .line 16
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/a;->a()Lkotlin/Function;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    :cond_a
    return v8

    .line 17
    :sswitch_0
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/h;->a:Landroidx/compose/ui/semantics/h;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/h;->k()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/semantics/a;

    if-eqz v0, :cond_b

    .line 18
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/a;->a()Lkotlin/Function;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    :cond_b
    return v8

    :sswitch_1
    if-eqz v2, :cond_d

    .line 19
    const-string v0, "android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE"

    invoke-virtual {v2, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_1

    .line 20
    :cond_c
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v1

    sget-object v3, Landroidx/compose/ui/semantics/h;->a:Landroidx/compose/ui/semantics/h;

    invoke-virtual {v3}, Landroidx/compose/ui/semantics/h;->v()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v3

    invoke-static {v1, v3}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/semantics/a;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/a;->a()Lkotlin/Function;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function1;

    if-eqz v1, :cond_d

    .line 21
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 22
    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    :cond_d
    :goto_1
    return v8

    .line 23
    :sswitch_2
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->r()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 24
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 25
    sget-object v2, Landroidx/compose/ui/semantics/h;->a:Landroidx/compose/ui/semantics/h;

    invoke-virtual {v2}, Landroidx/compose/ui/semantics/h;->s()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/semantics/a;

    goto :goto_2

    :cond_e
    move-object v1, v4

    :goto_2
    if-eqz v0, :cond_10

    if-eqz v1, :cond_f

    goto :goto_3

    .line 26
    :cond_f
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->r()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 27
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 28
    sget-object v2, Landroidx/compose/ui/semantics/h;->a:Landroidx/compose/ui/semantics/h;

    invoke-virtual {v2}, Landroidx/compose/ui/semantics/h;->s()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/semantics/a;

    goto :goto_2

    :cond_10
    :goto_3
    if-nez v0, :cond_11

    return v8

    .line 29
    :cond_11
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->p()Landroidx/compose/ui/layout/n;

    move-result-object v2

    invoke-interface {v2}, Landroidx/compose/ui/layout/n;->o()Landroidx/compose/ui/layout/l;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/ui/layout/m;->a(Landroidx/compose/ui/layout/l;)Ly/i;

    move-result-object v2

    .line 30
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->p()Landroidx/compose/ui/layout/n;

    move-result-object v4

    invoke-interface {v4}, Landroidx/compose/ui/layout/n;->o()Landroidx/compose/ui/layout/l;

    move-result-object v4

    .line 31
    invoke-interface {v4}, Landroidx/compose/ui/layout/l;->R()Landroidx/compose/ui/layout/l;

    move-result-object v4

    if-eqz v4, :cond_12

    invoke-static {v4}, Landroidx/compose/ui/layout/m;->e(Landroidx/compose/ui/layout/l;)J

    move-result-wide v9

    goto :goto_4

    :cond_12
    sget-object v4, Ly/g;->b:Ly/g$a;

    invoke-virtual {v4}, Ly/g$a;->c()J

    move-result-wide v9

    .line 32
    :goto_4
    invoke-virtual {v2, v9, v10}, Ly/i;->q(J)Ly/i;

    move-result-object v2

    .line 33
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->s()J

    move-result-wide v9

    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->u()J

    move-result-wide v11

    invoke-static {v11, v12}, Lo0/u;->d(J)J

    move-result-wide v11

    invoke-static {v9, v10, v11, v12}, Ly/j;->a(JJ)Ly/i;

    move-result-object v4

    .line 34
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v6

    .line 35
    sget-object v9, Landroidx/compose/ui/semantics/SemanticsProperties;->a:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v9}, Landroidx/compose/ui/semantics/SemanticsProperties;->k()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v10

    invoke-static {v6, v10}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/semantics/g;

    .line 36
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v0

    .line 37
    invoke-virtual {v9}, Landroidx/compose/ui/semantics/SemanticsProperties;->H()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v9

    invoke-static {v0, v9}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/semantics/g;

    .line 38
    invoke-virtual {v4}, Ly/i;->f()F

    move-result v9

    invoke-virtual {v2}, Ly/i;->f()F

    move-result v10

    sub-float/2addr v9, v10

    invoke-virtual {v4}, Ly/i;->g()F

    move-result v10

    invoke-virtual {v2}, Ly/i;->g()F

    move-result v11

    sub-float/2addr v10, v11

    invoke-static {v9, v10}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->k0(FF)F

    move-result v9

    if-eqz v6, :cond_13

    .line 39
    invoke-virtual {v6}, Landroidx/compose/ui/semantics/g;->b()Z

    move-result v6

    if-ne v6, v5, :cond_13

    neg-float v9, v9

    .line 40
    :cond_13
    invoke-static {v3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->e(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v3

    if-eqz v3, :cond_14

    neg-float v9, v9

    .line 41
    :cond_14
    invoke-virtual {v4}, Ly/i;->i()F

    move-result v3

    invoke-virtual {v2}, Ly/i;->i()F

    move-result v6

    sub-float/2addr v3, v6

    invoke-virtual {v4}, Ly/i;->c()F

    move-result v4

    invoke-virtual {v2}, Ly/i;->c()F

    move-result v2

    sub-float/2addr v4, v2

    invoke-static {v3, v4}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->k0(FF)F

    move-result v2

    if-eqz v0, :cond_15

    .line 42
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/g;->b()Z

    move-result v0

    if-ne v0, v5, :cond_15

    neg-float v2, v2

    :cond_15
    if-eqz v1, :cond_16

    .line 43
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/a;->a()Lkotlin/Function;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function2;

    if-eqz v0, :cond_16

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    :cond_16
    return v8

    :sswitch_3
    if-eqz v2, :cond_17

    .line 44
    const-string v0, "ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE"

    .line 45
    invoke-virtual {v2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 46
    :cond_17
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/h;->a:Landroidx/compose/ui/semantics/h;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/h;->x()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/semantics/a;

    if-eqz v0, :cond_19

    .line 47
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/a;->a()Lkotlin/Function;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_19

    new-instance v1, Landroidx/compose/ui/text/AnnotatedString;

    if-nez v4, :cond_18

    const-string v4, ""

    :cond_18
    move-object v10, v4

    const/4 v13, 0x6

    const/4 v14, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v9, v1

    invoke-direct/range {v9 .. v14}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    :cond_19
    return v8

    .line 48
    :sswitch_4
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v0

    .line 49
    sget-object v1, Landroidx/compose/ui/semantics/h;->a:Landroidx/compose/ui/semantics/h;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/h;->f()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    .line 50
    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/semantics/a;

    if-eqz v0, :cond_1a

    .line 51
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/a;->a()Lkotlin/Function;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_1a

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    :cond_1a
    return v8

    .line 52
    :sswitch_5
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v0

    .line 53
    sget-object v1, Landroidx/compose/ui/semantics/h;->a:Landroidx/compose/ui/semantics/h;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/h;->b()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    .line 54
    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/semantics/a;

    if-eqz v0, :cond_1b

    .line 55
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/a;->a()Lkotlin/Function;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_1b

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    :cond_1b
    return v8

    .line 56
    :sswitch_6
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v0

    .line 57
    sget-object v1, Landroidx/compose/ui/semantics/h;->a:Landroidx/compose/ui/semantics/h;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/h;->g()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    .line 58
    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/semantics/a;

    if-eqz v0, :cond_1c

    .line 59
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/a;->a()Lkotlin/Function;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_1c

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    :cond_1c
    return v8

    .line 60
    :sswitch_7
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v0

    .line 61
    sget-object v1, Landroidx/compose/ui/semantics/h;->a:Landroidx/compose/ui/semantics/h;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/h;->e()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    .line 62
    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/semantics/a;

    if-eqz v0, :cond_1d

    .line 63
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/a;->a()Lkotlin/Function;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_1d

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    :cond_1d
    return v8

    .line 64
    :sswitch_8
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v0

    .line 65
    sget-object v1, Landroidx/compose/ui/semantics/h;->a:Landroidx/compose/ui/semantics/h;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/h;->q()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    .line 66
    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/semantics/a;

    if-eqz v0, :cond_1e

    .line 67
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/a;->a()Lkotlin/Function;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_1e

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    :cond_1e
    return v8

    :pswitch_4
    :sswitch_9
    const/16 v1, 0x1000

    if-ne v0, v1, :cond_1f

    move v1, v5

    goto :goto_5

    :cond_1f
    move v1, v8

    :goto_5
    const/16 v2, 0x2000

    if-ne v0, v2, :cond_20

    move v2, v5

    goto :goto_6

    :cond_20
    move v2, v8

    :goto_6
    const v4, 0x1020039

    if-ne v0, v4, :cond_21

    move v4, v5

    goto :goto_7

    :cond_21
    move v4, v8

    :goto_7
    const v6, 0x102003b

    if-ne v0, v6, :cond_22

    move v6, v5

    goto :goto_8

    :cond_22
    move v6, v8

    :goto_8
    const v9, 0x1020038

    if-ne v0, v9, :cond_23

    move v9, v5

    goto :goto_9

    :cond_23
    move v9, v8

    :goto_9
    const v10, 0x102003a

    if-ne v0, v10, :cond_24

    move v0, v5

    goto :goto_a

    :cond_24
    move v0, v8

    :goto_a
    if-nez v4, :cond_26

    if-nez v6, :cond_26

    if-nez v1, :cond_26

    if-eqz v2, :cond_25

    goto :goto_b

    :cond_25
    move v10, v8

    goto :goto_c

    :cond_26
    :goto_b
    move v10, v5

    :goto_c
    if-nez v9, :cond_28

    if-nez v0, :cond_28

    if-nez v1, :cond_28

    if-eqz v2, :cond_27

    goto :goto_d

    :cond_27
    move v0, v8

    goto :goto_e

    :cond_28
    :goto_d
    move v0, v5

    :goto_e
    if-nez v1, :cond_29

    if-eqz v2, :cond_2d

    .line 68
    :cond_29
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v1

    sget-object v11, Landroidx/compose/ui/semantics/SemanticsProperties;->a:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsProperties;->w()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v11

    invoke-static {v1, v11}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/semantics/e;

    .line 69
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v11

    sget-object v12, Landroidx/compose/ui/semantics/h;->a:Landroidx/compose/ui/semantics/h;

    invoke-virtual {v12}, Landroidx/compose/ui/semantics/h;->v()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v12

    invoke-static {v11, v12}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/ui/semantics/a;

    if-eqz v1, :cond_2d

    if-eqz v11, :cond_2d

    .line 70
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/e;->c()Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/ranges/ClosedRange;->e()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/e;->c()Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v3

    invoke-interface {v3}, Lkotlin/ranges/ClosedRange;->j()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    invoke-static {v0, v3}, Lkotlin/ranges/RangesKt;->d(FF)F

    move-result v0

    .line 71
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/e;->c()Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v3

    invoke-interface {v3}, Lkotlin/ranges/ClosedRange;->j()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/e;->c()Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v4

    invoke-interface {v4}, Lkotlin/ranges/ClosedRange;->e()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    invoke-static {v3, v4}, Lkotlin/ranges/RangesKt;->g(FF)F

    move-result v3

    .line 72
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/e;->d()I

    move-result v4

    if-lez v4, :cond_2a

    sub-float/2addr v0, v3

    .line 73
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/e;->d()I

    move-result v3

    add-int/2addr v3, v5

    :goto_f
    int-to-float v3, v3

    div-float/2addr v0, v3

    goto :goto_10

    :cond_2a
    sub-float/2addr v0, v3

    const/16 v3, 0x14

    goto :goto_f

    :goto_10
    if-eqz v2, :cond_2b

    neg-float v0, v0

    .line 74
    :cond_2b
    invoke-virtual {v11}, Landroidx/compose/ui/semantics/a;->a()Lkotlin/Function;

    move-result-object v2

    check-cast v2, Lkotlin/jvm/functions/Function1;

    if-eqz v2, :cond_2c

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/e;->b()F

    move-result v1

    add-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    :cond_2c
    return v8

    .line 75
    :cond_2d
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->p()Landroidx/compose/ui/layout/n;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/ui/layout/n;->o()Landroidx/compose/ui/layout/l;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/ui/layout/m;->a(Landroidx/compose/ui/layout/l;)Ly/i;

    move-result-object v1

    invoke-virtual {v1}, Ly/i;->h()J

    move-result-wide v11

    .line 76
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/ui/platform/e2;->d(Landroidx/compose/ui/semantics/i;)Ljava/lang/Float;

    move-result-object v1

    .line 77
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v5

    sget-object v13, Landroidx/compose/ui/semantics/h;->a:Landroidx/compose/ui/semantics/h;

    invoke-virtual {v13}, Landroidx/compose/ui/semantics/h;->s()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v14

    invoke-static {v5, v14}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/semantics/a;

    if-nez v5, :cond_2e

    return v8

    .line 78
    :cond_2e
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v14

    sget-object v15, Landroidx/compose/ui/semantics/SemanticsProperties;->a:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v15}, Landroidx/compose/ui/semantics/SemanticsProperties;->k()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v8

    invoke-static {v14, v8}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/semantics/g;

    const/4 v14, 0x0

    if-eqz v8, :cond_39

    if-eqz v10, :cond_39

    if-eqz v1, :cond_2f

    .line 79
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v10

    goto :goto_11

    :cond_2f
    invoke-static {v11, v12}, Ly/m;->i(J)F

    move-result v10

    :goto_11
    if-nez v4, :cond_30

    if-eqz v2, :cond_31

    :cond_30
    neg-float v10, v10

    .line 80
    :cond_31
    invoke-virtual {v8}, Landroidx/compose/ui/semantics/g;->b()Z

    move-result v16

    if-eqz v16, :cond_32

    neg-float v10, v10

    .line 81
    :cond_32
    invoke-static {v3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->e(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v16

    if-eqz v16, :cond_34

    if-nez v4, :cond_33

    if-eqz v6, :cond_34

    :cond_33
    neg-float v10, v10

    .line 82
    :cond_34
    invoke-static {v8, v10}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->j0(Landroidx/compose/ui/semantics/g;F)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 83
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v0

    invoke-virtual {v13}, Landroidx/compose/ui/semantics/h;->n()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/semantics/i;->e(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 84
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v0

    invoke-virtual {v13}, Landroidx/compose/ui/semantics/h;->o()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/semantics/i;->e(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v0

    if-eqz v0, :cond_35

    goto :goto_12

    .line 85
    :cond_35
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/a;->a()Lkotlin/Function;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function2;

    if-eqz v0, :cond_36

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    goto :goto_14

    :cond_36
    const/4 v8, 0x0

    goto :goto_14

    :cond_37
    :goto_12
    cmpl-float v0, v10, v14

    if-lez v0, :cond_38

    .line 86
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v0

    invoke-virtual {v13}, Landroidx/compose/ui/semantics/h;->o()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/semantics/a;

    goto :goto_13

    .line 87
    :cond_38
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v0

    invoke-virtual {v13}, Landroidx/compose/ui/semantics/h;->n()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/semantics/a;

    :goto_13
    if-eqz v0, :cond_36

    .line 88
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/a;->a()Lkotlin/Function;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_36

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    :goto_14
    return v8

    .line 89
    :cond_39
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v4

    invoke-virtual {v15}, Landroidx/compose/ui/semantics/SemanticsProperties;->H()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v6

    invoke-static {v4, v6}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/semantics/g;

    if-eqz v4, :cond_42

    if-eqz v0, :cond_42

    if-eqz v1, :cond_3a

    .line 90
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_15

    :cond_3a
    invoke-static {v11, v12}, Ly/m;->g(J)F

    move-result v0

    :goto_15
    if-nez v9, :cond_3b

    if-eqz v2, :cond_3c

    :cond_3b
    neg-float v0, v0

    .line 91
    :cond_3c
    invoke-virtual {v4}, Landroidx/compose/ui/semantics/g;->b()Z

    move-result v1

    if-eqz v1, :cond_3d

    neg-float v0, v0

    .line 92
    :cond_3d
    invoke-static {v4, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->j0(Landroidx/compose/ui/semantics/g;F)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 93
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v1

    invoke-virtual {v13}, Landroidx/compose/ui/semantics/h;->p()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/compose/ui/semantics/i;->e(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v1

    if-nez v1, :cond_40

    .line 94
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v1

    invoke-virtual {v13}, Landroidx/compose/ui/semantics/h;->m()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/compose/ui/semantics/i;->e(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v1

    if-eqz v1, :cond_3e

    goto :goto_16

    .line 95
    :cond_3e
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/a;->a()Lkotlin/Function;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function2;

    if-eqz v1, :cond_3f

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    goto :goto_18

    :cond_3f
    const/4 v8, 0x0

    goto :goto_18

    :cond_40
    :goto_16
    cmpl-float v0, v0, v14

    if-lez v0, :cond_41

    .line 96
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v0

    invoke-virtual {v13}, Landroidx/compose/ui/semantics/h;->m()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/semantics/a;

    goto :goto_17

    .line 97
    :cond_41
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v0

    invoke-virtual {v13}, Landroidx/compose/ui/semantics/h;->p()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/semantics/a;

    :goto_17
    if-eqz v0, :cond_3f

    .line 98
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/a;->a()Lkotlin/Function;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_3f

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    :goto_18
    return v8

    :cond_42
    const/4 v0, 0x0

    return v0

    .line 99
    :sswitch_a
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/h;->a:Landroidx/compose/ui/semantics/h;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/h;->l()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/semantics/a;

    if-eqz v0, :cond_43

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/a;->a()Lkotlin/Function;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_43

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    goto :goto_19

    :cond_43
    const/4 v8, 0x0

    :goto_19
    return v8

    .line 100
    :sswitch_b
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v0

    sget-object v2, Landroidx/compose/ui/semantics/h;->a:Landroidx/compose/ui/semantics/h;

    invoke-virtual {v2}, Landroidx/compose/ui/semantics/h;->j()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/semantics/a;

    if-eqz v0, :cond_44

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/a;->a()Lkotlin/Function;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_44

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/Boolean;

    :cond_44
    move-object v8, v4

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 101
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->w0(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)Z

    if-eqz v8, :cond_45

    .line 102
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    goto :goto_1a

    :cond_45
    const/4 v8, 0x0

    :goto_1a
    return v8

    .line 103
    :cond_46
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->a:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->i()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 104
    iget-object v0, v7, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/i;

    move-result-object v0

    .line 105
    sget-object v1, Landroidx/compose/ui/focus/b;->b:Landroidx/compose/ui/focus/b$a;

    invoke-virtual {v1}, Landroidx/compose/ui/focus/b$a;->c()I

    move-result v1

    const/4 v2, 0x0

    .line 106
    invoke-interface {v0, v2, v5, v5, v1}, Landroidx/compose/ui/focus/i;->j(ZZZI)Z

    move v8, v5

    goto :goto_1b

    :cond_47
    const/4 v8, 0x0

    :goto_1b
    return v8

    .line 107
    :cond_48
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/h;->a:Landroidx/compose/ui/semantics/h;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/h;->r()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/semantics/a;

    if-eqz v0, :cond_49

    .line 108
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/a;->a()Lkotlin/Function;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_49

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    goto :goto_1c

    :cond_49
    const/4 v8, 0x0

    :goto_1c
    return v8

    :cond_4a
    const/4 v0, -0x1

    if-eqz v2, :cond_4b

    .line 109
    const-string v1, "ACTION_ARGUMENT_SELECTION_START_INT"

    .line 110
    invoke-virtual {v2, v1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_1d

    :cond_4b
    move v1, v0

    :goto_1d
    if-eqz v2, :cond_4c

    .line 111
    const-string v4, "ACTION_ARGUMENT_SELECTION_END_INT"

    .line 112
    invoke-virtual {v2, v4, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    :cond_4c
    const/4 v2, 0x0

    .line 113
    invoke-direct {v7, v3, v1, v0, v2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->D0(Landroidx/compose/ui/semantics/SemanticsNode;IIZ)Z

    move-result v8

    if-eqz v8, :cond_4d

    .line 114
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->o()I

    move-result v0

    invoke-direct {v7, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->s0(I)I

    move-result v1

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    .line 115
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->w0(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)Z

    :cond_4d
    return v8

    .line 116
    :cond_4e
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v0

    .line 117
    sget-object v1, Landroidx/compose/ui/semantics/h;->a:Landroidx/compose/ui/semantics/h;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/h;->c()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    .line 118
    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/semantics/a;

    if-eqz v0, :cond_4f

    .line 119
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/a;->a()Lkotlin/Function;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_4f

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    goto :goto_1e

    :cond_4f
    const/4 v8, 0x0

    :goto_1e
    return v8

    :cond_50
    if-eqz v2, :cond_52

    .line 120
    const-string v1, "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

    .line 121
    invoke-virtual {v2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 122
    const-string v6, "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN"

    .line 123
    invoke-virtual {v2, v6}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-ne v0, v4, :cond_51

    move v8, v5

    goto :goto_1f

    :cond_51
    const/4 v8, 0x0

    .line 124
    :goto_1f
    invoke-direct {v7, v3, v1, v8, v2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->R0(Landroidx/compose/ui/semantics/SemanticsNode;IZZ)Z

    move-result v0

    return v0

    :cond_52
    const/4 v0, 0x0

    return v0

    .line 125
    :cond_53
    invoke-direct/range {p0 .. p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->D(I)Z

    move-result v0

    return v0

    .line 126
    :cond_54
    invoke-direct/range {p0 .. p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->p0(I)Z

    move-result v0

    :goto_20
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_b
        0x20 -> :sswitch_a
        0x1000 -> :sswitch_9
        0x2000 -> :sswitch_9
        0x8000 -> :sswitch_8
        0x10000 -> :sswitch_7
        0x40000 -> :sswitch_6
        0x80000 -> :sswitch_5
        0x100000 -> :sswitch_4
        0x200000 -> :sswitch_3
        0x1020036 -> :sswitch_2
        0x102003d -> :sswitch_1
        0x1020054 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1020038
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1020046
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final synthetic j(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->m:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 2
    .line 3
    return-object p0
.end method

.method private static final j0(Landroidx/compose/ui/semantics/g;F)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v1, p1, v0

    .line 3
    .line 4
    if-gez v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/g;->c()Lkotlin/jvm/functions/Function0;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Ljava/lang/Number;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    cmpl-float v1, v1, v0

    .line 21
    .line 22
    if-gtz v1, :cond_1

    .line 23
    .line 24
    :cond_0
    cmpl-float p1, p1, v0

    .line 25
    .line 26
    if-lez p1, :cond_2

    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/g;->c()Lkotlin/jvm/functions/Function0;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Ljava/lang/Number;

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/g;->a()Lkotlin/jvm/functions/Function0;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    check-cast p0, Ljava/lang/Number;

    .line 51
    .line 52
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    cmpg-float p0, p1, p0

    .line 57
    .line 58
    if-gez p0, :cond_2

    .line 59
    .line 60
    :cond_1
    const/4 p0, 0x1

    .line 61
    goto :goto_0

    .line 62
    :cond_2
    const/4 p0, 0x0

    .line 63
    :goto_0
    return p0
.end method

.method public static final synthetic k(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;)Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->g:Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    .line 2
    .line 3
    return-object p0
.end method

.method private static final k0(FF)F
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/lang/Math;->signum(F)F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    cmpg-float v0, v0, v1

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    cmpg-float v0, v0, v1

    .line 22
    .line 23
    if-gez v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move p0, p1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 p0, 0x0

    .line 29
    :goto_0
    return p0
.end method

.method public static final synthetic l(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->l:I

    .line 2
    .line 3
    return p0
.end method

.method private final l0(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Landroidx/compose/ui/semantics/SemanticsNode;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x1

    .line 1
    const-string v5, "android.view.View"

    invoke-virtual {v2, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v5

    sget-object v6, Landroidx/compose/ui/semantics/SemanticsProperties;->a:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v6}, Landroidx/compose/ui/semantics/SemanticsProperties;->g()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroidx/compose/ui/semantics/i;->e(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3
    const-string v5, "android.widget.EditText"

    invoke-virtual {v2, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 4
    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v5

    invoke-virtual {v6}, Landroidx/compose/ui/semantics/SemanticsProperties;->C()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroidx/compose/ui/semantics/i;->e(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5
    const-string v5, "android.widget.TextView"

    invoke-virtual {v2, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 6
    :cond_1
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v5

    invoke-virtual {v6}, Landroidx/compose/ui/semantics/SemanticsProperties;->x()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v6

    invoke-static {v5, v6}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/semantics/f;

    if-eqz v5, :cond_7

    .line 7
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/f;->n()I

    .line 8
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->x()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->t()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 9
    :cond_2
    sget-object v6, Landroidx/compose/ui/semantics/f;->b:Landroidx/compose/ui/semantics/f$a;

    invoke-virtual {v6}, Landroidx/compose/ui/semantics/f$a;->g()I

    move-result v7

    invoke-virtual {v5}, Landroidx/compose/ui/semantics/f;->n()I

    move-result v8

    invoke-static {v8, v7}, Landroidx/compose/ui/semantics/f;->k(II)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 10
    iget-object v6, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Landroidx/compose/ui/R$string;->tab:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setRoleDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {v6}, Landroidx/compose/ui/semantics/f$a;->f()I

    move-result v7

    invoke-virtual {v5}, Landroidx/compose/ui/semantics/f;->n()I

    move-result v8

    invoke-static {v8, v7}, Landroidx/compose/ui/semantics/f;->k(II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 12
    iget-object v6, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Landroidx/compose/ui/R$string;->switch_role:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setRoleDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 13
    :cond_4
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/f;->n()I

    move-result v7

    invoke-static {v7}, Landroidx/compose/ui/platform/e2;->h(I)Ljava/lang/String;

    move-result-object v7

    .line 14
    invoke-virtual {v6}, Landroidx/compose/ui/semantics/f$a;->d()I

    move-result v6

    invoke-virtual {v5}, Landroidx/compose/ui/semantics/f;->n()I

    move-result v8

    invoke-static {v8, v6}, Landroidx/compose/ui/semantics/f;->k(II)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 15
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->A()Z

    move-result v6

    if-nez v6, :cond_5

    .line 16
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/ui/semantics/i;->o()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 17
    :cond_5
    invoke-virtual {v2, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 18
    :cond_6
    :goto_0
    sget-object v6, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 19
    :cond_7
    iget-object v6, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setPackageName(Ljava/lang/CharSequence;)V

    .line 20
    invoke-static/range {p3 .. p3}, Landroidx/compose/ui/platform/e2;->f(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v6

    invoke-virtual {v2, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setImportantForAccessibility(Z)V

    .line 21
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->t()Ljava/util/List;

    move-result-object v6

    .line 22
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x0

    move v9, v8

    :goto_1
    const/4 v10, -0x1

    if-ge v9, v7, :cond_b

    .line 23
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 24
    check-cast v11, Landroidx/compose/ui/semantics/SemanticsNode;

    .line 25
    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->N()Landroidx/collection/o;

    move-result-object v12

    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsNode;->o()I

    move-result v13

    invoke-virtual {v12, v13}, Landroidx/collection/o;->a(I)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 26
    iget-object v12, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v12}, Landroidx/compose/ui/platform/AndroidComposeView;->getAndroidViewsHandler$ui_release()Landroidx/compose/ui/platform/AndroidViewsHandler;

    move-result-object v12

    invoke-virtual {v12}, Landroidx/compose/ui/platform/AndroidViewsHandler;->getLayoutNodeToHolder()Ljava/util/HashMap;

    move-result-object v12

    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsNode;->q()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    .line 27
    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsNode;->o()I

    move-result v13

    if-ne v13, v10, :cond_8

    goto :goto_2

    :cond_8
    if-eqz v12, :cond_9

    .line 28
    invoke-virtual {v2, v12}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addChild(Landroid/view/View;)V

    goto :goto_2

    .line 29
    :cond_9
    iget-object v10, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsNode;->o()I

    move-result v11

    invoke-virtual {v2, v10, v11}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addChild(Landroid/view/View;I)V

    :cond_a
    :goto_2
    add-int/2addr v9, v4

    goto :goto_1

    .line 30
    :cond_b
    iget v6, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->l:I

    if-ne v1, v6, :cond_c

    .line 31
    invoke-virtual {v2, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setAccessibilityFocused(Z)V

    .line 32
    sget-object v6, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_CLEAR_ACCESSIBILITY_FOCUS:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v2, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    goto :goto_3

    .line 33
    :cond_c
    invoke-virtual {v2, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setAccessibilityFocused(Z)V

    .line 34
    sget-object v6, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_ACCESSIBILITY_FOCUS:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v2, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 35
    :goto_3
    invoke-direct {v0, v3, v2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->I0(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 36
    invoke-direct {v0, v3, v2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->E0(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 37
    invoke-direct {v0, v3, v2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->H0(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 38
    invoke-direct {v0, v3, v2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->F0(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 39
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v6

    .line 40
    sget-object v7, Landroidx/compose/ui/semantics/SemanticsProperties;->a:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v7}, Landroidx/compose/ui/semantics/SemanticsProperties;->F()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v9

    .line 41
    invoke-static {v6, v9}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/state/ToggleableState;

    if-eqz v6, :cond_f

    .line 42
    sget-object v9, Landroidx/compose/ui/state/ToggleableState;->On:Landroidx/compose/ui/state/ToggleableState;

    if-ne v6, v9, :cond_d

    .line 43
    invoke-virtual {v2, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setChecked(Z)V

    goto :goto_4

    .line 44
    :cond_d
    sget-object v9, Landroidx/compose/ui/state/ToggleableState;->Off:Landroidx/compose/ui/state/ToggleableState;

    if-ne v6, v9, :cond_e

    .line 45
    invoke-virtual {v2, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setChecked(Z)V

    .line 46
    :cond_e
    :goto_4
    sget-object v6, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 47
    :cond_f
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v6

    invoke-virtual {v7}, Landroidx/compose/ui/semantics/SemanticsProperties;->z()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v9

    invoke-static {v6, v9}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    if-eqz v6, :cond_12

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 48
    sget-object v9, Landroidx/compose/ui/semantics/f;->b:Landroidx/compose/ui/semantics/f$a;

    invoke-virtual {v9}, Landroidx/compose/ui/semantics/f$a;->g()I

    move-result v9

    if-nez v5, :cond_10

    move v9, v8

    goto :goto_5

    :cond_10
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/f;->n()I

    move-result v11

    invoke-static {v11, v9}, Landroidx/compose/ui/semantics/f;->k(II)Z

    move-result v9

    :goto_5
    if-eqz v9, :cond_11

    .line 49
    invoke-virtual {v2, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setSelected(Z)V

    goto :goto_6

    .line 50
    :cond_11
    invoke-virtual {v2, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setChecked(Z)V

    .line 51
    :goto_6
    sget-object v6, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 52
    :cond_12
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/ui/semantics/i;->o()Z

    move-result v6

    const/4 v9, 0x0

    if-eqz v6, :cond_13

    .line 53
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->t()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_15

    .line 54
    :cond_13
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v6

    invoke-virtual {v7}, Landroidx/compose/ui/semantics/SemanticsProperties;->d()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v11

    invoke-static {v6, v11}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-eqz v6, :cond_14

    .line 55
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_7

    :cond_14
    move-object v6, v9

    .line 56
    :goto_7
    invoke-virtual {v2, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 57
    :cond_15
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v6

    invoke-virtual {v7}, Landroidx/compose/ui/semantics/SemanticsProperties;->B()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v7

    invoke-static {v6, v7}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_18

    move-object v7, v3

    :goto_8
    if-eqz v7, :cond_17

    .line 58
    invoke-virtual {v7}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v11

    .line 59
    sget-object v12, Landroidx/compose/ui/semantics/SemanticsPropertiesAndroid;->a:Landroidx/compose/ui/semantics/SemanticsPropertiesAndroid;

    invoke-virtual {v12}, Landroidx/compose/ui/semantics/SemanticsPropertiesAndroid;->a()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v13

    .line 60
    invoke-virtual {v11, v13}, Landroidx/compose/ui/semantics/i;->e(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v11

    if-eqz v11, :cond_16

    .line 61
    invoke-virtual {v7}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v7

    invoke-virtual {v12}, Landroidx/compose/ui/semantics/SemanticsPropertiesAndroid;->a()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroidx/compose/ui/semantics/i;->j(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    goto :goto_9

    .line 62
    :cond_16
    invoke-virtual {v7}, Landroidx/compose/ui/semantics/SemanticsNode;->r()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v7

    goto :goto_8

    :cond_17
    move v7, v8

    :goto_9
    if-eqz v7, :cond_18

    .line 63
    invoke-virtual {v2, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setViewIdResourceName(Ljava/lang/String;)V

    .line 64
    :cond_18
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v6

    sget-object v7, Landroidx/compose/ui/semantics/SemanticsProperties;->a:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v7}, Landroidx/compose/ui/semantics/SemanticsProperties;->j()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v11

    invoke-static {v6, v11}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/Unit;

    if-eqz v6, :cond_19

    .line 65
    invoke-virtual {v2, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setHeading(Z)V

    .line 66
    sget-object v6, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 67
    :cond_19
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v6

    invoke-virtual {v7}, Landroidx/compose/ui/semantics/SemanticsProperties;->v()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroidx/compose/ui/semantics/i;->e(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v6

    invoke-virtual {v2, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setPassword(Z)V

    .line 68
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v6

    invoke-virtual {v7}, Landroidx/compose/ui/semantics/SemanticsProperties;->p()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroidx/compose/ui/semantics/i;->e(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v6

    invoke-virtual {v2, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setEditable(Z)V

    .line 69
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v6

    invoke-virtual {v7}, Landroidx/compose/ui/semantics/SemanticsProperties;->t()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v11

    invoke-static {v6, v11}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_1a

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_a

    :cond_1a
    move v6, v10

    .line 70
    :goto_a
    invoke-virtual {v2, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setMaxTextLength(I)V

    .line 71
    invoke-static/range {p3 .. p3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->b(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v6

    invoke-virtual {v2, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setEnabled(Z)V

    .line 72
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v6

    invoke-virtual {v7}, Landroidx/compose/ui/semantics/SemanticsProperties;->i()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroidx/compose/ui/semantics/i;->e(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v6

    invoke-virtual {v2, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setFocusable(Z)V

    .line 73
    invoke-virtual/range {p2 .. p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isFocusable()Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 74
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v6

    invoke-virtual {v7}, Landroidx/compose/ui/semantics/SemanticsProperties;->i()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroidx/compose/ui/semantics/i;->j(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v2, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setFocused(Z)V

    .line 75
    invoke-virtual/range {p2 .. p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isFocused()Z

    move-result v6

    if-eqz v6, :cond_1b

    const/4 v6, 0x2

    .line 76
    invoke-virtual {v2, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    goto :goto_b

    .line 77
    :cond_1b
    invoke-virtual {v2, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 78
    :cond_1c
    :goto_b
    invoke-static/range {p3 .. p3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->f(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v6

    invoke-virtual {v2, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setVisibleToUser(Z)V

    .line 79
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v6

    invoke-virtual {v7}, Landroidx/compose/ui/semantics/SemanticsProperties;->s()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v11

    invoke-static {v6, v11}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    .line 80
    invoke-virtual {v2, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    .line 81
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v6

    sget-object v11, Landroidx/compose/ui/semantics/h;->a:Landroidx/compose/ui/semantics/h;

    invoke-virtual {v11}, Landroidx/compose/ui/semantics/h;->j()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v12

    invoke-static {v6, v12}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/semantics/a;

    if-eqz v6, :cond_24

    .line 82
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v12

    invoke-virtual {v7}, Landroidx/compose/ui/semantics/SemanticsProperties;->z()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v13

    invoke-static {v12, v13}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v12

    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    .line 83
    sget-object v13, Landroidx/compose/ui/semantics/f;->b:Landroidx/compose/ui/semantics/f$a;

    invoke-virtual {v13}, Landroidx/compose/ui/semantics/f$a;->g()I

    move-result v14

    if-nez v5, :cond_1d

    move v14, v8

    goto :goto_c

    :cond_1d
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/f;->n()I

    move-result v15

    invoke-static {v15, v14}, Landroidx/compose/ui/semantics/f;->k(II)Z

    move-result v14

    :goto_c
    if-nez v14, :cond_20

    invoke-virtual {v13}, Landroidx/compose/ui/semantics/f$a;->e()I

    move-result v13

    if-nez v5, :cond_1e

    move v5, v8

    goto :goto_d

    :cond_1e
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/f;->n()I

    move-result v5

    invoke-static {v5, v13}, Landroidx/compose/ui/semantics/f;->k(II)Z

    move-result v5

    :goto_d
    if-eqz v5, :cond_1f

    goto :goto_e

    :cond_1f
    move v5, v8

    goto :goto_f

    :cond_20
    :goto_e
    move v5, v4

    :goto_f
    if-eqz v5, :cond_22

    if-eqz v5, :cond_21

    if-nez v12, :cond_21

    goto :goto_10

    :cond_21
    move v5, v8

    goto :goto_11

    :cond_22
    :goto_10
    move v5, v4

    .line 84
    :goto_11
    invoke-virtual {v2, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    .line 85
    invoke-static/range {p3 .. p3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->b(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v5

    if-eqz v5, :cond_23

    invoke-virtual/range {p2 .. p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isClickable()Z

    move-result v5

    if-eqz v5, :cond_23

    .line 86
    new-instance v5, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const/16 v12, 0x10

    .line 87
    invoke-virtual {v6}, Landroidx/compose/ui/semantics/a;->b()Ljava/lang/String;

    move-result-object v6

    .line 88
    invoke-direct {v5, v12, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    .line 89
    invoke-virtual {v2, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 90
    :cond_23
    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 91
    :cond_24
    invoke-virtual {v2, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setLongClickable(Z)V

    .line 92
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v5

    invoke-virtual {v11}, Landroidx/compose/ui/semantics/h;->l()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v6

    invoke-static {v5, v6}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/semantics/a;

    if-eqz v5, :cond_26

    .line 93
    invoke-virtual {v2, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setLongClickable(Z)V

    .line 94
    invoke-static/range {p3 .. p3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->b(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v6

    if-eqz v6, :cond_25

    .line 95
    new-instance v6, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const/16 v12, 0x20

    .line 96
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/a;->b()Ljava/lang/String;

    move-result-object v5

    .line 97
    invoke-direct {v6, v12, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    .line 98
    invoke-virtual {v2, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 99
    :cond_25
    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 100
    :cond_26
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v5

    invoke-virtual {v11}, Landroidx/compose/ui/semantics/h;->c()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v6

    invoke-static {v5, v6}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/semantics/a;

    if-eqz v5, :cond_27

    .line 101
    new-instance v6, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const/16 v12, 0x4000

    .line 102
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/a;->b()Ljava/lang/String;

    move-result-object v5

    .line 103
    invoke-direct {v6, v12, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    .line 104
    invoke-virtual {v2, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 105
    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 106
    :cond_27
    invoke-static/range {p3 .. p3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->b(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 107
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v5

    invoke-virtual {v11}, Landroidx/compose/ui/semantics/h;->x()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v6

    invoke-static {v5, v6}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/semantics/a;

    if-eqz v5, :cond_28

    .line 108
    new-instance v6, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const/high16 v12, 0x200000

    .line 109
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/a;->b()Ljava/lang/String;

    move-result-object v5

    .line 110
    invoke-direct {v6, v12, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    .line 111
    invoke-virtual {v2, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 112
    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 113
    :cond_28
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v5

    invoke-virtual {v11}, Landroidx/compose/ui/semantics/h;->k()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v6

    invoke-static {v5, v6}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/semantics/a;

    if-eqz v5, :cond_29

    .line 114
    new-instance v6, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const v12, 0x1020054

    .line 115
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/a;->b()Ljava/lang/String;

    move-result-object v5

    .line 116
    invoke-direct {v6, v12, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    .line 117
    invoke-virtual {v2, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 118
    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 119
    :cond_29
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v5

    invoke-virtual {v11}, Landroidx/compose/ui/semantics/h;->e()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v6

    invoke-static {v5, v6}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/semantics/a;

    if-eqz v5, :cond_2a

    .line 120
    new-instance v6, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const/high16 v12, 0x10000

    .line 121
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/a;->b()Ljava/lang/String;

    move-result-object v5

    .line 122
    invoke-direct {v6, v12, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    .line 123
    invoke-virtual {v2, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 124
    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 125
    :cond_2a
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v5

    invoke-virtual {v11}, Landroidx/compose/ui/semantics/h;->q()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v6

    invoke-static {v5, v6}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/semantics/a;

    if-eqz v5, :cond_2c

    .line 126
    invoke-virtual/range {p2 .. p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isFocused()Z

    move-result v6

    if-eqz v6, :cond_2b

    iget-object v6, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v6}, Landroidx/compose/ui/platform/AndroidComposeView;->getClipboardManager()Landroidx/compose/ui/platform/j;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/ui/platform/j;->b()Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 127
    new-instance v6, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const v12, 0x8000

    .line 128
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/a;->b()Ljava/lang/String;

    move-result-object v5

    .line 129
    invoke-direct {v6, v12, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    .line 130
    invoke-virtual {v2, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 131
    :cond_2b
    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 132
    :cond_2c
    invoke-direct {v0, v3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->V(Landroidx/compose/ui/semantics/SemanticsNode;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2e

    .line 133
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_2d

    goto :goto_12

    :cond_2d
    move v5, v8

    goto :goto_13

    :cond_2e
    :goto_12
    move v5, v4

    :goto_13
    if-nez v5, :cond_32

    .line 134
    invoke-direct {v0, v3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->M(Landroidx/compose/ui/semantics/SemanticsNode;)I

    move-result v5

    .line 135
    invoke-direct {v0, v3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->L(Landroidx/compose/ui/semantics/SemanticsNode;)I

    move-result v6

    .line 136
    invoke-virtual {v2, v5, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setTextSelection(II)V

    .line 137
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v5

    invoke-virtual {v11}, Landroidx/compose/ui/semantics/h;->w()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v6

    invoke-static {v5, v6}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/semantics/a;

    .line 138
    new-instance v6, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    if-eqz v5, :cond_2f

    .line 139
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/a;->b()Ljava/lang/String;

    move-result-object v5

    goto :goto_14

    :cond_2f
    move-object v5, v9

    :goto_14
    const/high16 v12, 0x20000

    .line 140
    invoke-direct {v6, v12, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    .line 141
    invoke-virtual {v2, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    const/16 v5, 0x100

    .line 142
    invoke-virtual {v2, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    const/16 v5, 0x200

    .line 143
    invoke-virtual {v2, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    const/16 v5, 0xb

    .line 144
    invoke-virtual {v2, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setMovementGranularities(I)V

    .line 145
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v5

    .line 146
    invoke-virtual {v7}, Landroidx/compose/ui/semantics/SemanticsProperties;->d()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v6

    .line 147
    invoke-static {v5, v6}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 148
    check-cast v5, Ljava/util/Collection;

    if-eqz v5, :cond_31

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_30

    goto :goto_15

    :cond_30
    move v5, v8

    goto :goto_16

    :cond_31
    :goto_15
    move v5, v4

    :goto_16
    if-eqz v5, :cond_32

    .line 149
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v5

    invoke-virtual {v11}, Landroidx/compose/ui/semantics/h;->i()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/compose/ui/semantics/i;->e(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 150
    invoke-static/range {p3 .. p3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->c(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v5

    if-nez v5, :cond_32

    .line 151
    invoke-virtual/range {p2 .. p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getMovementGranularities()I

    move-result v5

    or-int/lit8 v5, v5, 0x14

    invoke-virtual {v2, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setMovementGranularities(I)V

    .line 152
    :cond_32
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1a

    if-lt v5, v6, :cond_37

    .line 153
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 154
    const-string v12, "androidx.compose.ui.semantics.id"

    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    invoke-virtual/range {p2 .. p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    if-eqz v12, :cond_34

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-nez v12, :cond_33

    goto :goto_17

    :cond_33
    move v12, v8

    goto :goto_18

    :cond_34
    :goto_17
    move v12, v4

    :goto_18
    if-nez v12, :cond_35

    .line 156
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v12

    invoke-virtual {v11}, Landroidx/compose/ui/semantics/h;->i()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroidx/compose/ui/semantics/i;->e(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v12

    if-eqz v12, :cond_35

    .line 157
    const-string v12, "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_KEY"

    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_35
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v12

    invoke-virtual {v7}, Landroidx/compose/ui/semantics/SemanticsProperties;->B()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroidx/compose/ui/semantics/i;->e(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v12

    if-eqz v12, :cond_36

    .line 159
    const-string v12, "androidx.compose.ui.semantics.testTag"

    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    :cond_36
    invoke-virtual {v2, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setAvailableExtraData(Ljava/util/List;)V

    .line 161
    :cond_37
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v6

    invoke-virtual {v7}, Landroidx/compose/ui/semantics/SemanticsProperties;->w()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v12

    invoke-static {v6, v12}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/semantics/e;

    if-eqz v6, :cond_3b

    .line 162
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v12

    invoke-virtual {v11}, Landroidx/compose/ui/semantics/h;->v()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroidx/compose/ui/semantics/i;->e(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v12

    if-eqz v12, :cond_38

    .line 163
    const-string v12, "android.widget.SeekBar"

    invoke-virtual {v2, v12}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    goto :goto_19

    .line 164
    :cond_38
    const-string v12, "android.widget.ProgressBar"

    invoke-virtual {v2, v12}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 165
    :goto_19
    sget-object v12, Landroidx/compose/ui/semantics/e;->d:Landroidx/compose/ui/semantics/e$a;

    invoke-virtual {v12}, Landroidx/compose/ui/semantics/e$a;->a()Landroidx/compose/ui/semantics/e;

    move-result-object v12

    if-eq v6, v12, :cond_39

    .line 166
    invoke-virtual {v6}, Landroidx/compose/ui/semantics/e;->c()Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v12

    invoke-interface {v12}, Lkotlin/ranges/ClosedRange;->j()Ljava/lang/Comparable;

    move-result-object v12

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->floatValue()F

    move-result v12

    .line 167
    invoke-virtual {v6}, Landroidx/compose/ui/semantics/e;->c()Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v13

    invoke-interface {v13}, Lkotlin/ranges/ClosedRange;->e()Ljava/lang/Comparable;

    move-result-object v13

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->floatValue()F

    move-result v13

    .line 168
    invoke-virtual {v6}, Landroidx/compose/ui/semantics/e;->b()F

    move-result v14

    .line 169
    invoke-static {v4, v12, v13, v14}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;->obtain(IFFF)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setRangeInfo(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;)V

    .line 170
    :cond_39
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v12

    invoke-virtual {v11}, Landroidx/compose/ui/semantics/h;->v()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroidx/compose/ui/semantics/i;->e(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v12

    if-eqz v12, :cond_3b

    .line 171
    invoke-static/range {p3 .. p3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->b(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v12

    if-eqz v12, :cond_3b

    .line 172
    invoke-virtual {v6}, Landroidx/compose/ui/semantics/e;->b()F

    move-result v12

    .line 173
    invoke-virtual {v6}, Landroidx/compose/ui/semantics/e;->c()Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v13

    invoke-interface {v13}, Lkotlin/ranges/ClosedRange;->e()Ljava/lang/Comparable;

    move-result-object v13

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->floatValue()F

    move-result v13

    invoke-virtual {v6}, Landroidx/compose/ui/semantics/e;->c()Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v14

    invoke-interface {v14}, Lkotlin/ranges/ClosedRange;->j()Ljava/lang/Comparable;

    move-result-object v14

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->floatValue()F

    move-result v14

    invoke-static {v13, v14}, Lkotlin/ranges/RangesKt;->d(FF)F

    move-result v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_3a

    .line 174
    sget-object v12, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_FORWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v2, v12}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 175
    :cond_3a
    invoke-virtual {v6}, Landroidx/compose/ui/semantics/e;->b()F

    move-result v12

    .line 176
    invoke-virtual {v6}, Landroidx/compose/ui/semantics/e;->c()Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v13

    invoke-interface {v13}, Lkotlin/ranges/ClosedRange;->j()Ljava/lang/Comparable;

    move-result-object v13

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->floatValue()F

    move-result v13

    invoke-virtual {v6}, Landroidx/compose/ui/semantics/e;->c()Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v6

    invoke-interface {v6}, Lkotlin/ranges/ClosedRange;->e()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    invoke-static {v13, v6}, Lkotlin/ranges/RangesKt;->g(FF)F

    move-result v6

    cmpl-float v6, v12, v6

    if-lez v6, :cond_3b

    .line 177
    sget-object v6, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_BACKWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v2, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    :cond_3b
    const/16 v6, 0x18

    if-lt v5, v6, :cond_3c

    .line 178
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$b;->a(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Landroidx/compose/ui/semantics/SemanticsNode;)V

    .line 179
    :cond_3c
    invoke-static {v3, v2}, Landroidx/compose/ui/platform/accessibility/CollectionInfo_androidKt;->d(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 180
    invoke-static {v3, v2}, Landroidx/compose/ui/platform/accessibility/CollectionInfo_androidKt;->e(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 181
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v6

    invoke-virtual {v7}, Landroidx/compose/ui/semantics/SemanticsProperties;->k()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v12

    invoke-static {v6, v12}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/semantics/g;

    .line 182
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v12

    invoke-virtual {v11}, Landroidx/compose/ui/semantics/h;->s()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v13

    invoke-static {v12, v13}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/ui/semantics/a;

    const/4 v13, 0x0

    if-eqz v6, :cond_42

    if-eqz v12, :cond_42

    .line 183
    invoke-static/range {p3 .. p3}, Landroidx/compose/ui/platform/accessibility/CollectionInfo_androidKt;->b(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v14

    if-nez v14, :cond_3d

    .line 184
    const-string v14, "android.widget.HorizontalScrollView"

    invoke-virtual {v2, v14}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 185
    :cond_3d
    invoke-virtual {v6}, Landroidx/compose/ui/semantics/g;->a()Lkotlin/jvm/functions/Function0;

    move-result-object v14

    invoke-interface {v14}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->floatValue()F

    move-result v14

    cmpl-float v14, v14, v13

    if-lez v14, :cond_3e

    .line 186
    invoke-virtual {v2, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    .line 187
    :cond_3e
    invoke-static/range {p3 .. p3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->b(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v14

    if-eqz v14, :cond_42

    .line 188
    invoke-static {v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->n0(Landroidx/compose/ui/semantics/g;)Z

    move-result v14

    if-eqz v14, :cond_40

    .line 189
    sget-object v14, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_FORWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v2, v14}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 190
    invoke-static/range {p3 .. p3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->e(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v14

    if-nez v14, :cond_3f

    .line 191
    sget-object v14, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_RIGHT:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    goto :goto_1a

    .line 192
    :cond_3f
    sget-object v14, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_LEFT:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 193
    :goto_1a
    invoke-virtual {v2, v14}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 194
    :cond_40
    invoke-static {v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->m0(Landroidx/compose/ui/semantics/g;)Z

    move-result v6

    if-eqz v6, :cond_42

    .line 195
    sget-object v6, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_BACKWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v2, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 196
    invoke-static/range {p3 .. p3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->e(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v6

    if-nez v6, :cond_41

    .line 197
    sget-object v6, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_LEFT:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    goto :goto_1b

    .line 198
    :cond_41
    sget-object v6, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_RIGHT:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 199
    :goto_1b
    invoke-virtual {v2, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 200
    :cond_42
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v6

    invoke-virtual {v7}, Landroidx/compose/ui/semantics/SemanticsProperties;->H()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v14

    invoke-static {v6, v14}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/semantics/g;

    if-eqz v6, :cond_46

    if-eqz v12, :cond_46

    .line 201
    invoke-static/range {p3 .. p3}, Landroidx/compose/ui/platform/accessibility/CollectionInfo_androidKt;->b(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v12

    if-nez v12, :cond_43

    .line 202
    const-string v12, "android.widget.ScrollView"

    invoke-virtual {v2, v12}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 203
    :cond_43
    invoke-virtual {v6}, Landroidx/compose/ui/semantics/g;->a()Lkotlin/jvm/functions/Function0;

    move-result-object v12

    invoke-interface {v12}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->floatValue()F

    move-result v12

    cmpl-float v12, v12, v13

    if-lez v12, :cond_44

    .line 204
    invoke-virtual {v2, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    .line 205
    :cond_44
    invoke-static/range {p3 .. p3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->b(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v12

    if-eqz v12, :cond_46

    .line 206
    invoke-static {v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->n0(Landroidx/compose/ui/semantics/g;)Z

    move-result v12

    if-eqz v12, :cond_45

    .line 207
    sget-object v12, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_FORWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v2, v12}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 208
    sget-object v12, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_DOWN:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v2, v12}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 209
    :cond_45
    invoke-static {v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->m0(Landroidx/compose/ui/semantics/g;)Z

    move-result v6

    if-eqz v6, :cond_46

    .line 210
    sget-object v6, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_BACKWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v2, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 211
    sget-object v6, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_UP:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v2, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    :cond_46
    const/16 v6, 0x1d

    if-lt v5, v6, :cond_47

    .line 212
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$c;->a(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Landroidx/compose/ui/semantics/SemanticsNode;)V

    .line 213
    :cond_47
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v5

    invoke-virtual {v7}, Landroidx/compose/ui/semantics/SemanticsProperties;->u()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v6

    invoke-static {v5, v6}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setPaneTitle(Ljava/lang/CharSequence;)V

    .line 214
    invoke-static/range {p3 .. p3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->b(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 215
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v5

    invoke-virtual {v11}, Landroidx/compose/ui/semantics/h;->g()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v6

    invoke-static {v5, v6}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/semantics/a;

    if-eqz v5, :cond_48

    .line 216
    new-instance v6, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const/high16 v7, 0x40000

    .line 217
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/a;->b()Ljava/lang/String;

    move-result-object v5

    .line 218
    invoke-direct {v6, v7, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    .line 219
    invoke-virtual {v2, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 220
    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 221
    :cond_48
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v5

    invoke-virtual {v11}, Landroidx/compose/ui/semantics/h;->b()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v6

    invoke-static {v5, v6}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/semantics/a;

    if-eqz v5, :cond_49

    .line 222
    new-instance v6, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const/high16 v7, 0x80000

    .line 223
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/a;->b()Ljava/lang/String;

    move-result-object v5

    .line 224
    invoke-direct {v6, v7, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    .line 225
    invoke-virtual {v2, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 226
    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 227
    :cond_49
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v5

    invoke-virtual {v11}, Landroidx/compose/ui/semantics/h;->f()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v6

    invoke-static {v5, v6}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/semantics/a;

    if-eqz v5, :cond_4a

    .line 228
    new-instance v6, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const/high16 v7, 0x100000

    .line 229
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/a;->b()Ljava/lang/String;

    move-result-object v5

    .line 230
    invoke-direct {v6, v7, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    .line 231
    invoke-virtual {v2, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 232
    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 233
    :cond_4a
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v5

    invoke-virtual {v11}, Landroidx/compose/ui/semantics/h;->d()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/compose/ui/semantics/i;->e(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 234
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v5

    invoke-virtual {v11}, Landroidx/compose/ui/semantics/h;->d()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/compose/ui/semantics/i;->j(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 235
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    sget-object v7, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->N:Landroidx/collection/m;

    invoke-virtual {v7}, Landroidx/collection/m;->b()I

    move-result v11

    if-ge v6, v11, :cond_50

    .line 236
    new-instance v6, Landroidx/collection/y0;

    invoke-direct {v6, v8, v4, v9}, Landroidx/collection/y0;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 237
    invoke-static {}, Landroidx/collection/q0;->b()Landroidx/collection/k0;

    move-result-object v11

    .line 238
    iget-object v12, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->r:Landroidx/collection/y0;

    invoke-virtual {v12, v1}, Landroidx/collection/y0;->d(I)Z

    move-result v12

    if-eqz v12, :cond_4e

    .line 239
    iget-object v12, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->r:Landroidx/collection/y0;

    invoke-virtual {v12, v1}, Landroidx/collection/y0;->g(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/collection/k0;

    .line 240
    new-instance v13, Landroidx/collection/d0;

    invoke-direct {v13, v8, v4, v9}, Landroidx/collection/d0;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 241
    iget-object v14, v7, Landroidx/collection/m;->a:[I

    .line 242
    iget v7, v7, Landroidx/collection/m;->b:I

    move v15, v8

    :goto_1c
    if-ge v15, v7, :cond_4b

    .line 243
    aget v10, v14, v15

    .line 244
    invoke-virtual {v13, v10}, Landroidx/collection/d0;->e(I)Z

    add-int/2addr v15, v4

    const/4 v10, -0x1

    goto :goto_1c

    .line 245
    :cond_4b
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 246
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-gtz v7, :cond_4d

    .line 247
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_4c

    goto :goto_1d

    .line 248
    :cond_4c
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 249
    invoke-static {v1}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    .line 250
    invoke-virtual {v13, v8}, Landroidx/collection/m;->a(I)I

    .line 251
    throw v9

    .line 252
    :cond_4d
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 253
    invoke-static {v1}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    .line 254
    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    throw v9

    .line 255
    :cond_4e
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_4f

    .line 256
    :goto_1d
    iget-object v4, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->q:Landroidx/collection/y0;

    invoke-virtual {v4, v1, v6}, Landroidx/collection/y0;->l(ILjava/lang/Object;)V

    .line 257
    iget-object v4, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->r:Landroidx/collection/y0;

    invoke-virtual {v4, v1, v11}, Landroidx/collection/y0;->l(ILjava/lang/Object;)V

    goto :goto_1e

    .line 258
    :cond_4f
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 259
    invoke-static {v1}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    .line 260
    invoke-virtual {v7, v8}, Landroidx/collection/m;->a(I)I

    .line 261
    throw v9

    .line 262
    :cond_50
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 263
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t have more than "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    invoke-virtual {v7}, Landroidx/collection/m;->b()I

    move-result v3

    .line 265
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 266
    const-string v3, " custom actions for one widget"

    .line 267
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 268
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 269
    :cond_51
    :goto_1e
    invoke-direct {v0, v3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->d0(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setScreenReaderFocusable(Z)V

    .line 270
    iget-object v3, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->A:Landroidx/collection/c0;

    const/4 v4, -0x1

    invoke-virtual {v3, v1, v4}, Landroidx/collection/l;->e(II)I

    move-result v3

    if-eq v3, v4, :cond_53

    .line 271
    iget-object v4, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v4}, Landroidx/compose/ui/platform/AndroidComposeView;->getAndroidViewsHandler$ui_release()Landroidx/compose/ui/platform/AndroidViewsHandler;

    move-result-object v4

    invoke-static {v4, v3}, Landroidx/compose/ui/platform/e2;->g(Landroidx/compose/ui/platform/AndroidViewsHandler;I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_52

    .line 272
    invoke-virtual {v2, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setTraversalBefore(Landroid/view/View;)V

    goto :goto_1f

    .line 273
    :cond_52
    iget-object v4, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v2, v4, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setTraversalBefore(Landroid/view/View;I)V

    .line 274
    :goto_1f
    iget-object v3, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->C:Ljava/lang/String;

    .line 275
    invoke-direct {v0, v1, v2, v3, v9}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->x(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 276
    :cond_53
    iget-object v3, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->B:Landroidx/collection/c0;

    const/4 v4, -0x1

    invoke-virtual {v3, v1, v4}, Landroidx/collection/l;->e(II)I

    move-result v3

    if-eq v3, v4, :cond_54

    .line 277
    iget-object v4, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v4}, Landroidx/compose/ui/platform/AndroidComposeView;->getAndroidViewsHandler$ui_release()Landroidx/compose/ui/platform/AndroidViewsHandler;

    move-result-object v4

    invoke-static {v4, v3}, Landroidx/compose/ui/platform/e2;->g(Landroidx/compose/ui/platform/AndroidViewsHandler;I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_54

    .line 278
    invoke-virtual {v2, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setTraversalAfter(Landroid/view/View;)V

    .line 279
    iget-object v3, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->D:Ljava/lang/String;

    .line 280
    invoke-direct {v0, v1, v2, v3, v9}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->x(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_54
    return-void
.end method

.method public static final synthetic m(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->j:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method private static final m0(Landroidx/compose/ui/semantics/g;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/g;->c()Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Number;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    cmpl-float v0, v0, v1

    .line 17
    .line 18
    if-lez v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/g;->b()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/g;->c()Lkotlin/jvm/functions/Function0;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Ljava/lang/Number;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/g;->a()Lkotlin/jvm/functions/Function0;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Ljava/lang/Number;

    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    cmpg-float v0, v0, v1

    .line 55
    .line 56
    if-gez v0, :cond_2

    .line 57
    .line 58
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/g;->b()Z

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    if-eqz p0, :cond_2

    .line 63
    .line 64
    :cond_1
    const/4 p0, 0x1

    .line 65
    goto :goto_0

    .line 66
    :cond_2
    const/4 p0, 0x0

    .line 67
    :goto_0
    return p0
.end method

.method public static final synthetic n(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;)Landroidx/collection/e0;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->o:Landroidx/collection/e0;

    .line 2
    .line 3
    return-object p0
.end method

.method private static final n0(Landroidx/compose/ui/semantics/g;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/g;->c()Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Number;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/g;->a()Lkotlin/jvm/functions/Function0;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Ljava/lang/Number;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    cmpg-float v0, v0, v1

    .line 30
    .line 31
    if-gez v0, :cond_0

    .line 32
    .line 33
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/g;->b()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/g;->c()Lkotlin/jvm/functions/Function0;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Ljava/lang/Number;

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    const/4 v1, 0x0

    .line 54
    cmpl-float v0, v0, v1

    .line 55
    .line 56
    if-lez v0, :cond_2

    .line 57
    .line 58
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/g;->b()Z

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    if-eqz p0, :cond_2

    .line 63
    .line 64
    :cond_1
    const/4 p0, 0x1

    .line 65
    goto :goto_0

    .line 66
    :cond_2
    const/4 p0, 0x0

    .line 67
    :goto_0
    return p0
.end method

.method public static final synthetic o(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;)Landroidx/collection/e0;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->p:Landroidx/collection/e0;

    .line 2
    .line 3
    return-object p0
.end method

.method private final o0(ILjava/util/List;)Z
    .locals 7

    .line 1
    invoke-static {p2, p1}, Landroidx/compose/ui/platform/e2;->a(Ljava/util/List;I)Landroidx/compose/ui/platform/b2;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    new-instance p2, Landroidx/compose/ui/platform/b2;

    .line 10
    .line 11
    iget-object v2, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->J:Ljava/util/List;

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x0

    .line 15
    const/4 v3, 0x0

    .line 16
    const/4 v4, 0x0

    .line 17
    move-object v0, p2

    .line 18
    move v1, p1

    .line 19
    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/platform/b2;-><init>(ILjava/util/List;Ljava/lang/Float;Ljava/lang/Float;Landroidx/compose/ui/semantics/g;Landroidx/compose/ui/semantics/g;)V

    .line 20
    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    :goto_0
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->J:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    return p1
.end method

.method public static final synthetic p(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->I:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-object p0
.end method

.method private final p0(I)Z
    .locals 9

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->e0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->a0(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_2

    .line 14
    .line 15
    iget v3, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->l:I

    .line 16
    .line 17
    const/high16 v0, -0x80000000

    .line 18
    .line 19
    if-eq v3, v0, :cond_1

    .line 20
    .line 21
    const/16 v7, 0xc

    .line 22
    .line 23
    const/4 v8, 0x0

    .line 24
    const/high16 v4, 0x10000

    .line 25
    .line 26
    const/4 v5, 0x0

    .line 27
    const/4 v6, 0x0

    .line 28
    move-object v2, p0

    .line 29
    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->w0(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    :cond_1
    iput p1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->l:I

    .line 33
    .line 34
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 37
    .line 38
    .line 39
    const/16 v6, 0xc

    .line 40
    .line 41
    const/4 v7, 0x0

    .line 42
    const v3, 0x8000

    .line 43
    .line 44
    .line 45
    const/4 v4, 0x0

    .line 46
    const/4 v5, 0x0

    .line 47
    move-object v1, p0

    .line 48
    move v2, p1

    .line 49
    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->w0(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    const/4 p1, 0x1

    .line 53
    return p1

    .line 54
    :cond_2
    return v1
.end method

.method public static final synthetic q(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->n:Z

    .line 2
    .line 3
    return p0
.end method

.method private final q0(Landroidx/compose/ui/platform/b2;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroidx/compose/ui/platform/b2;->isValidOwnerScope()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->getSnapshotObserver()Landroidx/compose/ui/node/OwnerSnapshotObserver;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->K:Lkotlin/jvm/functions/Function1;

    .line 15
    .line 16
    new-instance v2, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$scheduleScrollEventIfNeeded$1;

    .line 17
    .line 18
    invoke-direct {v2, p1, p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$scheduleScrollEventIfNeeded$1;-><init>(Landroidx/compose/ui/platform/b2;Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1, v1, v2}, Landroidx/compose/ui/node/OwnerSnapshotObserver;->i(Landroidx/compose/ui/node/z0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public static final synthetic r(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;)Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->h:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    .line 2
    .line 3
    return-object p0
.end method

.method private static final r0(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;)V
    .locals 4

    .line 1
    const-string v0, "measureAndLayout"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-static {v0, v3, v1, v2}, Landroidx/compose/ui/node/x0;->c(Landroidx/compose/ui/node/y0;ZILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15
    .line 16
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 17
    .line 18
    .line 19
    const-string v0, "checkForSemanticsChanges"

    .line 20
    .line 21
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :try_start_1
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->C()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    .line 26
    .line 27
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 28
    .line 29
    .line 30
    iput-boolean v3, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->H:Z

    .line 31
    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 35
    .line 36
    .line 37
    throw p0

    .line 38
    :catchall_1
    move-exception p0

    .line 39
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 40
    .line 41
    .line 42
    throw p0
.end method

.method public static final synthetic s(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;Landroidx/compose/ui/node/LayoutNode;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->f0(Landroidx/compose/ui/node/LayoutNode;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final s0(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->getSemanticsOwner()Landroidx/compose/ui/semantics/m;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/m;->a()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->o()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-ne p1, v0, :cond_0

    .line 16
    .line 17
    const/4 p1, -0x1

    .line 18
    :cond_0
    return p1
.end method

.method public static final synthetic t(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILandroid/os/Bundle;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->i0(IILandroid/os/Bundle;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private final t0(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/compose/ui/platform/c2;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Landroidx/collection/r;->b()Landroidx/collection/f0;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/semantics/SemanticsNode;->t()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    const/4 v4, 0x0

    .line 16
    move v5, v4

    .line 17
    :goto_0
    if-ge v5, v3, :cond_2

    .line 18
    .line 19
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    check-cast v6, Landroidx/compose/ui/semantics/SemanticsNode;

    .line 24
    .line 25
    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->N()Landroidx/collection/o;

    .line 26
    .line 27
    .line 28
    move-result-object v7

    .line 29
    invoke-virtual {v6}, Landroidx/compose/ui/semantics/SemanticsNode;->o()I

    .line 30
    .line 31
    .line 32
    move-result v8

    .line 33
    invoke-virtual {v7, v8}, Landroidx/collection/o;->a(I)Z

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    if-eqz v7, :cond_1

    .line 38
    .line 39
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/platform/c2;->a()Landroidx/collection/f0;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    invoke-virtual {v6}, Landroidx/compose/ui/semantics/SemanticsNode;->o()I

    .line 44
    .line 45
    .line 46
    move-result v8

    .line 47
    invoke-virtual {v7, v8}, Landroidx/collection/q;->a(I)Z

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    if-nez v7, :cond_0

    .line 52
    .line 53
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/semantics/SemanticsNode;->q()Landroidx/compose/ui/node/LayoutNode;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-direct {v0, v1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->f0(Landroidx/compose/ui/node/LayoutNode;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_0
    invoke-virtual {v6}, Landroidx/compose/ui/semantics/SemanticsNode;->o()I

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    invoke-virtual {v1, v6}, Landroidx/collection/f0;->f(I)Z

    .line 66
    .line 67
    .line 68
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/platform/c2;->a()Landroidx/collection/f0;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    iget-object v3, v2, Landroidx/collection/q;->b:[I

    .line 76
    .line 77
    iget-object v2, v2, Landroidx/collection/q;->a:[J

    .line 78
    .line 79
    array-length v5, v2

    .line 80
    add-int/lit8 v5, v5, -0x2

    .line 81
    .line 82
    if-ltz v5, :cond_6

    .line 83
    .line 84
    move v6, v4

    .line 85
    :goto_1
    aget-wide v7, v2, v6

    .line 86
    .line 87
    not-long v9, v7

    .line 88
    const/4 v11, 0x7

    .line 89
    shl-long/2addr v9, v11

    .line 90
    and-long/2addr v9, v7

    .line 91
    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    and-long/2addr v9, v11

    .line 97
    cmp-long v9, v9, v11

    .line 98
    .line 99
    if-eqz v9, :cond_5

    .line 100
    .line 101
    sub-int v9, v6, v5

    .line 102
    .line 103
    not-int v9, v9

    .line 104
    ushr-int/lit8 v9, v9, 0x1f

    .line 105
    .line 106
    const/16 v10, 0x8

    .line 107
    .line 108
    rsub-int/lit8 v9, v9, 0x8

    .line 109
    .line 110
    move v11, v4

    .line 111
    :goto_2
    if-ge v11, v9, :cond_4

    .line 112
    .line 113
    const-wide/16 v12, 0xff

    .line 114
    .line 115
    and-long/2addr v12, v7

    .line 116
    const-wide/16 v14, 0x80

    .line 117
    .line 118
    cmp-long v12, v12, v14

    .line 119
    .line 120
    if-gez v12, :cond_3

    .line 121
    .line 122
    shl-int/lit8 v12, v6, 0x3

    .line 123
    .line 124
    add-int/2addr v12, v11

    .line 125
    aget v12, v3, v12

    .line 126
    .line 127
    invoke-virtual {v1, v12}, Landroidx/collection/q;->a(I)Z

    .line 128
    .line 129
    .line 130
    move-result v12

    .line 131
    if-nez v12, :cond_3

    .line 132
    .line 133
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/semantics/SemanticsNode;->q()Landroidx/compose/ui/node/LayoutNode;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-direct {v0, v1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->f0(Landroidx/compose/ui/node/LayoutNode;)V

    .line 138
    .line 139
    .line 140
    return-void

    .line 141
    :cond_3
    shr-long/2addr v7, v10

    .line 142
    add-int/lit8 v11, v11, 0x1

    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_4
    if-ne v9, v10, :cond_6

    .line 146
    .line 147
    :cond_5
    if-eq v6, v5, :cond_6

    .line 148
    .line 149
    add-int/lit8 v6, v6, 0x1

    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/semantics/SemanticsNode;->t()Ljava/util/List;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    :goto_3
    if-ge v4, v2, :cond_8

    .line 161
    .line 162
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    check-cast v3, Landroidx/compose/ui/semantics/SemanticsNode;

    .line 167
    .line 168
    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->N()Landroidx/collection/o;

    .line 169
    .line 170
    .line 171
    move-result-object v5

    .line 172
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->o()I

    .line 173
    .line 174
    .line 175
    move-result v6

    .line 176
    invoke-virtual {v5, v6}, Landroidx/collection/o;->a(I)Z

    .line 177
    .line 178
    .line 179
    move-result v5

    .line 180
    if-eqz v5, :cond_7

    .line 181
    .line 182
    iget-object v5, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->F:Landroidx/collection/e0;

    .line 183
    .line 184
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->o()I

    .line 185
    .line 186
    .line 187
    move-result v6

    .line 188
    invoke-virtual {v5, v6}, Landroidx/collection/o;->c(I)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v5

    .line 192
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 193
    .line 194
    .line 195
    check-cast v5, Landroidx/compose/ui/platform/c2;

    .line 196
    .line 197
    invoke-direct {v0, v3, v5}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->t0(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/compose/ui/platform/c2;)V

    .line 198
    .line 199
    .line 200
    :cond_7
    add-int/lit8 v4, v4, 0x1

    .line 201
    .line 202
    goto :goto_3

    .line 203
    :cond_8
    return-void
.end method

.method public static final synthetic u(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;Landroidx/compose/ui/platform/b2;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->q0(Landroidx/compose/ui/platform/b2;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final u0(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->c0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/16 v2, 0x800

    .line 14
    .line 15
    if-eq v0, v2, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const v2, 0x8000

    .line 22
    .line 23
    .line 24
    if-ne v0, v2, :cond_2

    .line 25
    .line 26
    :cond_1
    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->n:Z

    .line 28
    .line 29
    :cond_2
    :try_start_0
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->c:Lkotlin/jvm/functions/Function1;

    .line 30
    .line 31
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Ljava/lang/Boolean;

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 38
    .line 39
    .line 40
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    iput-boolean v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->n:Z

    .line 42
    .line 43
    return p1

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    iput-boolean v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->n:Z

    .line 46
    .line 47
    throw p1
.end method

.method public static final synthetic v(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;I)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->s0(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private final v0(IILjava/lang/Integer;Ljava/util/List;)Z
    .locals 9

    .line 1
    const/high16 v0, -0x80000000

    .line 2
    .line 3
    if-eq p1, v0, :cond_3

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->c0()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->E(II)Landroid/view/accessibility/AccessibilityEvent;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p3, :cond_1

    .line 17
    .line 18
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    .line 23
    .line 24
    .line 25
    :cond_1
    if-eqz p4, :cond_2

    .line 26
    .line 27
    const/16 v7, 0x3e

    .line 28
    .line 29
    const/4 v8, 0x0

    .line 30
    const-string v1, ","

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x0

    .line 35
    const/4 v5, 0x0

    .line 36
    const/4 v6, 0x0

    .line 37
    move-object v0, p4

    .line 38
    invoke-static/range {v0 .. v8}, Lq0/a;->d(Ljava/util/List;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityRecord;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 43
    .line 44
    .line 45
    :cond_2
    const-string p2, "sendEvent"

    .line 46
    .line 47
    invoke-static {p2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :try_start_0
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->u0(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 51
    .line 52
    .line 53
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 55
    .line 56
    .line 57
    return p1

    .line 58
    :catchall_0
    move-exception p1

    .line 59
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 60
    .line 61
    .line 62
    throw p1

    .line 63
    :cond_3
    :goto_0
    const/4 p1, 0x0

    .line 64
    return p1
.end method

.method public static final synthetic w(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->m:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 2
    .line 3
    return-void
.end method

.method static synthetic w0(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)Z
    .locals 1

    .line 1
    and-int/lit8 p6, p5, 0x4

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p6, :cond_0

    .line 5
    .line 6
    move-object p3, v0

    .line 7
    :cond_0
    and-int/lit8 p5, p5, 0x8

    .line 8
    .line 9
    if-eqz p5, :cond_1

    .line 10
    .line 11
    move-object p4, v0

    .line 12
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->v0(IILjava/lang/Integer;Ljava/util/List;)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0
.end method

.method private final x(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->N()Landroidx/collection/o;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroidx/collection/o;->c(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroidx/compose/ui/platform/d2;

    .line 10
    .line 11
    if-eqz v0, :cond_b

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/compose/ui/platform/d2;->b()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto/16 :goto_4

    .line 20
    .line 21
    :cond_0
    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->V(Landroidx/compose/ui/semantics/SemanticsNode;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iget-object v2, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->C:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    const/4 v3, -0x1

    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    iget-object p4, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->A:Landroidx/collection/c0;

    .line 35
    .line 36
    invoke-virtual {p4, p1, v3}, Landroidx/collection/l;->e(II)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eq p1, v3, :cond_b

    .line 41
    .line 42
    invoke-virtual {p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getExtras()Landroid/os/Bundle;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-virtual {p2, p3, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    goto/16 :goto_4

    .line 50
    .line 51
    :cond_1
    iget-object v2, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->D:Ljava/lang/String;

    .line 52
    .line 53
    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_2

    .line 58
    .line 59
    iget-object p4, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->B:Landroidx/collection/c0;

    .line 60
    .line 61
    invoke-virtual {p4, p1, v3}, Landroidx/collection/l;->e(II)I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-eq p1, v3, :cond_b

    .line 66
    .line 67
    invoke-virtual {p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getExtras()Landroid/os/Bundle;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-virtual {p2, p3, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 72
    .line 73
    .line 74
    goto/16 :goto_4

    .line 75
    .line 76
    :cond_2
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    sget-object v2, Landroidx/compose/ui/semantics/h;->a:Landroidx/compose/ui/semantics/h;

    .line 81
    .line 82
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/h;->i()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {p1, v2}, Landroidx/compose/ui/semantics/i;->e(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-eqz p1, :cond_9

    .line 91
    .line 92
    if-eqz p4, :cond_9

    .line 93
    .line 94
    const-string p1, "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_KEY"

    .line 95
    .line 96
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-eqz p1, :cond_9

    .line 101
    .line 102
    const-string p1, "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_ARG_START_INDEX"

    .line 103
    .line 104
    invoke-virtual {p4, p1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    const-string v2, "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_ARG_LENGTH"

    .line 109
    .line 110
    invoke-virtual {p4, v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 111
    .line 112
    .line 113
    move-result p4

    .line 114
    if-lez p4, :cond_8

    .line 115
    .line 116
    if-ltz p1, :cond_8

    .line 117
    .line 118
    if-eqz v1, :cond_3

    .line 119
    .line 120
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    goto :goto_0

    .line 125
    :cond_3
    const v1, 0x7fffffff

    .line 126
    .line 127
    .line 128
    :goto_0
    if-lt p1, v1, :cond_4

    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_4
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-static {v1}, Landroidx/compose/ui/platform/e2;->e(Landroidx/compose/ui/semantics/i;)Landroidx/compose/ui/text/z;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    if-nez v1, :cond_5

    .line 140
    .line 141
    return-void

    .line 142
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    .line 143
    .line 144
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .line 146
    .line 147
    const/4 v3, 0x0

    .line 148
    move v4, v3

    .line 149
    :goto_1
    if-ge v4, p4, :cond_7

    .line 150
    .line 151
    add-int v5, p1, v4

    .line 152
    .line 153
    invoke-virtual {v1}, Landroidx/compose/ui/text/z;->k()Landroidx/compose/ui/text/y;

    .line 154
    .line 155
    .line 156
    move-result-object v6

    .line 157
    invoke-virtual {v6}, Landroidx/compose/ui/text/y;->j()Landroidx/compose/ui/text/AnnotatedString;

    .line 158
    .line 159
    .line 160
    move-result-object v6

    .line 161
    invoke-virtual {v6}, Landroidx/compose/ui/text/AnnotatedString;->length()I

    .line 162
    .line 163
    .line 164
    move-result v6

    .line 165
    if-lt v5, v6, :cond_6

    .line 166
    .line 167
    const/4 v5, 0x0

    .line 168
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_6
    invoke-virtual {v1, v5}, Landroidx/compose/ui/text/z;->d(I)Ly/i;

    .line 173
    .line 174
    .line 175
    move-result-object v5

    .line 176
    invoke-direct {p0, v0, v5}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->O0(Landroidx/compose/ui/semantics/SemanticsNode;Ly/i;)Landroid/graphics/RectF;

    .line 177
    .line 178
    .line 179
    move-result-object v5

    .line 180
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 184
    .line 185
    goto :goto_1

    .line 186
    :cond_7
    invoke-virtual {p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getExtras()Landroid/os/Bundle;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    new-array p2, v3, [Landroid/graphics/RectF;

    .line 191
    .line 192
    invoke-interface {v2, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object p2

    .line 196
    check-cast p2, [Landroid/os/Parcelable;

    .line 197
    .line 198
    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 199
    .line 200
    .line 201
    goto :goto_4

    .line 202
    :cond_8
    :goto_3
    const-string p1, "AccessibilityDelegate"

    .line 203
    .line 204
    const-string p2, "Invalid arguments for accessibility character locations"

    .line 205
    .line 206
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    .line 208
    .line 209
    return-void

    .line 210
    :cond_9
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->a:Landroidx/compose/ui/semantics/SemanticsProperties;

    .line 215
    .line 216
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->B()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    invoke-virtual {p1, v2}, Landroidx/compose/ui/semantics/i;->e(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    .line 221
    .line 222
    .line 223
    move-result p1

    .line 224
    if-eqz p1, :cond_a

    .line 225
    .line 226
    if-eqz p4, :cond_a

    .line 227
    .line 228
    const-string p1, "androidx.compose.ui.semantics.testTag"

    .line 229
    .line 230
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result p1

    .line 234
    if-eqz p1, :cond_a

    .line 235
    .line 236
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->B()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 241
    .line 242
    .line 243
    move-result-object p4

    .line 244
    invoke-static {p1, p4}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    check-cast p1, Ljava/lang/String;

    .line 249
    .line 250
    if-eqz p1, :cond_b

    .line 251
    .line 252
    invoke-virtual {p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getExtras()Landroid/os/Bundle;

    .line 253
    .line 254
    .line 255
    move-result-object p2

    .line 256
    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 257
    .line 258
    .line 259
    goto :goto_4

    .line 260
    :cond_a
    const-string p1, "androidx.compose.ui.semantics.id"

    .line 261
    .line 262
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    move-result p1

    .line 266
    if-eqz p1, :cond_b

    .line 267
    .line 268
    invoke-virtual {p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getExtras()Landroid/os/Bundle;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->o()I

    .line 273
    .line 274
    .line 275
    move-result p2

    .line 276
    invoke-virtual {p1, p3, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 277
    .line 278
    .line 279
    :cond_b
    :goto_4
    return-void
.end method

.method private final x0(IILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->s0(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/16 v0, 0x20

    .line 6
    .line 7
    invoke-direct {p0, p1, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->E(II)Landroid/view/accessibility/AccessibilityEvent;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    .line 12
    .line 13
    .line 14
    if-eqz p3, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->u0(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private final y(Landroidx/compose/ui/platform/d2;)Landroid/graphics/Rect;
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroidx/compose/ui/platform/d2;->a()Landroid/graphics/Rect;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 6
    .line 7
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 8
    .line 9
    int-to-float v1, v1

    .line 10
    iget v2, p1, Landroid/graphics/Rect;->top:I

    .line 11
    .line 12
    int-to-float v2, v2

    .line 13
    invoke-static {v1, v2}, Ly/h;->a(FF)J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/platform/AndroidComposeView;->localToScreen-MK-Hz9U(J)J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    iget-object v2, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 22
    .line 23
    iget v3, p1, Landroid/graphics/Rect;->right:I

    .line 24
    .line 25
    int-to-float v3, v3

    .line 26
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 27
    .line 28
    int-to-float p1, p1

    .line 29
    invoke-static {v3, p1}, Ly/h;->a(FF)J

    .line 30
    .line 31
    .line 32
    move-result-wide v3

    .line 33
    invoke-virtual {v2, v3, v4}, Landroidx/compose/ui/platform/AndroidComposeView;->localToScreen-MK-Hz9U(J)J

    .line 34
    .line 35
    .line 36
    move-result-wide v2

    .line 37
    new-instance p1, Landroid/graphics/Rect;

    .line 38
    .line 39
    invoke-static {v0, v1}, Ly/g;->m(J)F

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    float-to-double v4, v4

    .line 44
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    .line 45
    .line 46
    .line 47
    move-result-wide v4

    .line 48
    double-to-float v4, v4

    .line 49
    float-to-int v4, v4

    .line 50
    invoke-static {v0, v1}, Ly/g;->n(J)F

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    float-to-double v0, v0

    .line 55
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    .line 56
    .line 57
    .line 58
    move-result-wide v0

    .line 59
    double-to-float v0, v0

    .line 60
    float-to-int v0, v0

    .line 61
    invoke-static {v2, v3}, Ly/g;->m(J)F

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    float-to-double v5, v1

    .line 66
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    .line 67
    .line 68
    .line 69
    move-result-wide v5

    .line 70
    double-to-float v1, v5

    .line 71
    float-to-int v1, v1

    .line 72
    invoke-static {v2, v3}, Ly/g;->n(J)F

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    float-to-double v2, v2

    .line 77
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 78
    .line 79
    .line 80
    move-result-wide v2

    .line 81
    double-to-float v2, v2

    .line 82
    float-to-int v2, v2

    .line 83
    invoke-direct {p1, v4, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 84
    .line 85
    .line 86
    return-object p1
.end method

.method private final y0(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->x:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$f;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$f;->d()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsNode;->o()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eq p1, v1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$f;->f()J

    .line 21
    .line 22
    .line 23
    move-result-wide v3

    .line 24
    sub-long/2addr v1, v3

    .line 25
    const-wide/16 v3, 0x3e8

    .line 26
    .line 27
    cmp-long p1, v1, v3

    .line 28
    .line 29
    if-gtz p1, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$f;->d()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->o()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->s0(I)I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    const/high16 v1, 0x20000

    .line 44
    .line 45
    invoke-direct {p0, p1, v1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->E(II)Landroid/view/accessibility/AccessibilityEvent;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$f;->b()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$f;->e()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$f;->a()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setAction(I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$f;->c()I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setMovementGranularity(I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$f;->d()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->V(Landroidx/compose/ui/semantics/SemanticsNode;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->u0(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 93
    .line 94
    .line 95
    :cond_1
    const/4 p1, 0x0

    .line 96
    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->x:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$f;

    .line 97
    .line 98
    return-void
.end method

.method private final z0(Landroidx/collection/o;)V
    .locals 36

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 1
    new-instance v10, Ljava/util/ArrayList;

    iget-object v0, v7, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->J:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    iget-object v0, v7, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->J:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v11, v8, Landroidx/collection/o;->b:[I

    .line 4
    iget-object v12, v8, Landroidx/collection/o;->a:[J

    .line 5
    array-length v0, v12

    const/4 v13, 0x2

    add-int/lit8 v14, v0, -0x2

    if-ltz v14, :cond_36

    const/4 v6, 0x0

    .line 6
    :goto_0
    aget-wide v0, v12, v6

    not-long v2, v0

    const/4 v4, 0x7

    shl-long/2addr v2, v4

    and-long/2addr v2, v0

    const-wide v4, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v2, v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_35

    sub-int v2, v6, v14

    not-int v2, v2

    ushr-int/lit8 v2, v2, 0x1f

    const/16 v5, 0x8

    rsub-int/lit8 v4, v2, 0x8

    move-wide/from16 v16, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_34

    const-wide/16 v0, 0xff

    and-long v0, v16, v0

    const-wide/16 v18, 0x80

    cmp-long v0, v0, v18

    if-gez v0, :cond_33

    shl-int/lit8 v0, v6, 0x3

    add-int/2addr v0, v3

    .line 7
    aget v2, v11, v0

    .line 8
    iget-object v0, v7, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->F:Landroidx/collection/e0;

    invoke-virtual {v0, v2}, Landroidx/collection/o;->c(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroidx/compose/ui/platform/c2;

    if-nez v18, :cond_0

    goto/16 :goto_1e

    .line 9
    :cond_0
    invoke-virtual {v8, v2}, Landroidx/collection/o;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/platform/d2;

    const/16 v19, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/compose/ui/platform/d2;->b()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v0

    move-object v1, v0

    goto :goto_2

    :cond_1
    move-object/from16 v1, v19

    :goto_2
    if-eqz v1, :cond_32

    .line 10
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/i;->iterator()Ljava/util/Iterator;

    move-result-object v20

    const/16 v21, 0x0

    :goto_3
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 11
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    sget-object v22, Landroidx/compose/ui/semantics/SemanticsProperties;->a:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/semantics/SemanticsProperties;->k()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v9

    invoke-static {v13, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 12
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/semantics/SemanticsProperties;->H()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v13

    invoke-static {v9, v13}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_4

    :cond_2
    const/4 v9, 0x0

    goto :goto_5

    .line 13
    :cond_3
    :goto_4
    invoke-direct {v7, v2, v10}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->o0(ILjava/util/List;)Z

    move-result v9

    :goto_5
    if-nez v9, :cond_5

    .line 14
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/platform/c2;->b()Landroidx/compose/ui/semantics/i;

    move-result-object v13

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v15, v23

    check-cast v15, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-static {v13, v15}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v9, v13}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    :cond_4
    :goto_6
    move-object/from16 v25, v1

    move v8, v2

    move/from16 v23, v3

    move v13, v4

    move v15, v6

    move-object/from16 v24, v10

    move-object/from16 v26, v11

    move-object/from16 v27, v12

    const/4 v10, 0x2

    move v11, v5

    goto/16 :goto_1c

    .line 15
    :cond_5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 16
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/semantics/SemanticsProperties;->u()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v13

    invoke-static {v9, v13}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 17
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v9, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    .line 18
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/platform/c2;->b()Landroidx/compose/ui/semantics/i;

    move-result-object v9

    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/semantics/SemanticsProperties;->u()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroidx/compose/ui/semantics/i;->e(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 19
    invoke-direct {v7, v2, v5, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->x0(IILjava/lang/String;)V

    goto :goto_6

    .line 20
    :cond_6
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/semantics/SemanticsProperties;->A()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v13

    invoke-static {v9, v13}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    const/4 v13, 0x1

    goto :goto_7

    :cond_7
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/semantics/SemanticsProperties;->F()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v13

    invoke-static {v9, v13}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    :goto_7
    const/16 v15, 0x40

    if-eqz v13, :cond_9

    .line 21
    invoke-direct {v7, v2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->s0(I)I

    move-result v9

    .line 22
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v15, 0x8

    const/16 v22, 0x0

    const/16 v23, 0x800

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v25, v1

    move v1, v9

    move v9, v2

    move/from16 v2, v23

    move/from16 v23, v3

    move-object v3, v13

    move v13, v4

    move-object/from16 v4, v24

    move v5, v15

    move v15, v6

    move-object/from16 v6, v22

    .line 23
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->w0(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)Z

    .line 24
    invoke-direct {v7, v9}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->s0(I)I

    move-result v1

    const/4 v0, 0x0

    .line 25
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/16 v2, 0x800

    const/4 v4, 0x0

    move-object/from16 v0, p0

    .line 26
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->w0(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)Z

    move v8, v9

    :goto_8
    move-object/from16 v24, v10

    move-object/from16 v26, v11

    move-object/from16 v27, v12

    :cond_8
    :goto_9
    const/4 v10, 0x2

    :goto_a
    const/16 v11, 0x8

    goto/16 :goto_1c

    :cond_9
    move-object/from16 v25, v1

    move v5, v2

    move/from16 v23, v3

    move v13, v4

    .line 27
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/semantics/SemanticsProperties;->w()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 28
    invoke-direct {v7, v5}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->s0(I)I

    move-result v1

    .line 29
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v9, 0x8

    const/4 v15, 0x0

    const/16 v2, 0x800

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v26, v5

    move v5, v9

    move v9, v6

    move-object v6, v15

    .line 30
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->w0(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)Z

    move/from16 v15, v26

    .line 31
    invoke-direct {v7, v15}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->s0(I)I

    move-result v1

    const/4 v0, 0x0

    .line 32
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object/from16 v0, p0

    .line 33
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->w0(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)Z

    move-object/from16 v24, v10

    move-object/from16 v26, v11

    move-object/from16 v27, v12

    move v8, v15

    const/4 v10, 0x2

    const/16 v11, 0x8

    move v15, v9

    goto/16 :goto_1c

    .line 34
    :cond_a
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/semantics/SemanticsProperties;->z()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x4

    if-eqz v1, :cond_12

    .line 35
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v0

    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/semantics/SemanticsProperties;->x()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/semantics/f;

    .line 36
    sget-object v1, Landroidx/compose/ui/semantics/f;->b:Landroidx/compose/ui/semantics/f$a;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/f$a;->g()I

    move-result v1

    if-nez v0, :cond_b

    const/4 v0, 0x0

    goto :goto_b

    .line 37
    :cond_b
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/f;->n()I

    move-result v0

    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/f;->k(II)Z

    move-result v0

    :goto_b
    if-eqz v0, :cond_11

    .line 38
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v0

    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/semantics/SemanticsProperties;->z()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    .line 39
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 40
    invoke-direct {v7, v5}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->s0(I)I

    move-result v0

    .line 41
    invoke-direct {v7, v0, v2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->E(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 42
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/ui/semantics/SemanticsNode;->a()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v1

    .line 43
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsNode;->n()Landroidx/compose/ui/semantics/i;

    move-result-object v2

    .line 44
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/semantics/SemanticsProperties;->d()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v3

    .line 45
    invoke-static {v2, v3}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v26, v2

    check-cast v26, Ljava/util/List;

    if-eqz v26, :cond_c

    const/16 v33, 0x3e

    const/16 v34, 0x0

    .line 46
    const-string v27, ","

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    invoke-static/range {v26 .. v34}, Lq0/a;->d(Ljava/util/List;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_c

    :cond_c
    move-object/from16 v2, v19

    .line 47
    :goto_c
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsNode;->n()Landroidx/compose/ui/semantics/i;

    move-result-object v1

    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/semantics/SemanticsProperties;->C()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v3

    invoke-static {v1, v3}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v26, v1

    check-cast v26, Ljava/util/List;

    if-eqz v26, :cond_d

    const/16 v33, 0x3e

    const/16 v34, 0x0

    .line 48
    const-string v27, ","

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    invoke-static/range {v26 .. v34}, Lq0/a;->d(Ljava/util/List;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    :cond_d
    move-object/from16 v1, v19

    :goto_d
    if-eqz v2, :cond_e

    .line 49
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityRecord;->setContentDescription(Ljava/lang/CharSequence;)V

    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_e
    if-eqz v1, :cond_f

    .line 50
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_f
    invoke-direct {v7, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->u0(Landroid/view/accessibility/AccessibilityEvent;)Z

    move v8, v5

    move v15, v6

    goto/16 :goto_8

    .line 52
    :cond_10
    invoke-direct {v7, v5}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->s0(I)I

    move-result v1

    const/4 v0, 0x0

    .line 53
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v9, 0x8

    const/4 v15, 0x0

    const/16 v2, 0x800

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v35, v5

    move v5, v9

    move v9, v6

    move-object v6, v15

    .line 54
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->w0(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)Z

    move v15, v9

    move-object/from16 v24, v10

    move-object/from16 v26, v11

    move-object/from16 v27, v12

    move/from16 v8, v35

    goto/16 :goto_9

    :cond_11
    move v9, v6

    move v6, v5

    .line 55
    invoke-direct {v7, v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->s0(I)I

    move-result v1

    .line 56
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v5, 0x8

    const/4 v15, 0x0

    const/16 v2, 0x800

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v8, v6

    move-object v6, v15

    .line 57
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->w0(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)Z

    .line 58
    invoke-direct {v7, v8}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->s0(I)I

    move-result v1

    const/4 v0, 0x0

    .line 59
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v6, 0x0

    move-object/from16 v0, p0

    .line 60
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->w0(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)Z

    move v15, v9

    goto/16 :goto_8

    :cond_12
    move v8, v5

    move v15, v6

    .line 61
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/semantics/SemanticsProperties;->d()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 62
    invoke-direct {v7, v8}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->s0(I)I

    move-result v1

    .line 63
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 64
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v3, "null cannot be cast to non-null type kotlin.collections.List<kotlin.String>"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/List;

    const/16 v3, 0x800

    .line 65
    invoke-direct {v7, v1, v3, v2, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->v0(IILjava/lang/Integer;Ljava/util/List;)Z

    goto/16 :goto_8

    .line 66
    :cond_13
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/semantics/SemanticsProperties;->g()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const v2, 0x186a0

    const-string v3, ""

    if-eqz v1, :cond_20

    .line 67
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/h;->a:Landroidx/compose/ui/semantics/h;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/h;->x()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/semantics/i;->e(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 68
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/platform/c2;->b()Landroidx/compose/ui/semantics/i;

    move-result-object v0

    invoke-direct {v7, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->X(Landroidx/compose/ui/semantics/i;)Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v0

    if-eqz v0, :cond_14

    goto :goto_e

    :cond_14
    move-object v0, v3

    .line 69
    :goto_e
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v1

    invoke-direct {v7, v1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->X(Landroidx/compose/ui/semantics/i;)Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v1

    if-eqz v1, :cond_15

    move-object v3, v1

    .line 70
    :cond_15
    invoke-direct {v7, v3, v2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->S0(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 71
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 72
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 73
    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->h(II)I

    move-result v4

    const/4 v6, 0x0

    :goto_f
    if-ge v6, v4, :cond_17

    .line 74
    invoke-interface {v0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    move-object/from16 v24, v10

    invoke-interface {v3, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    if-eq v9, v10, :cond_16

    :goto_10
    const/4 v9, 0x1

    goto :goto_11

    :cond_16
    const/4 v9, 0x1

    add-int/2addr v6, v9

    move-object/from16 v10, v24

    goto :goto_f

    :cond_17
    move-object/from16 v24, v10

    goto :goto_10

    :goto_11
    move-object/from16 v26, v11

    const/4 v10, 0x0

    :goto_12
    sub-int v11, v4, v6

    if-ge v10, v11, :cond_19

    add-int/lit8 v11, v1, -0x1

    sub-int/2addr v11, v10

    .line 75
    invoke-interface {v0, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    add-int/lit8 v22, v2, -0x1

    sub-int v9, v22, v10

    .line 76
    invoke-interface {v3, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    if-eq v11, v9, :cond_18

    goto :goto_13

    :cond_18
    const/4 v9, 0x1

    add-int/2addr v10, v9

    goto :goto_12

    :cond_19
    :goto_13
    sub-int/2addr v1, v10

    sub-int/2addr v1, v6

    sub-int v3, v2, v10

    sub-int/2addr v3, v6

    .line 77
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/platform/c2;->b()Landroidx/compose/ui/semantics/i;

    move-result-object v4

    sget-object v9, Landroidx/compose/ui/semantics/SemanticsProperties;->a:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v9}, Landroidx/compose/ui/semantics/SemanticsProperties;->v()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroidx/compose/ui/semantics/i;->e(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v4

    .line 78
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v10

    invoke-virtual {v9}, Landroidx/compose/ui/semantics/SemanticsProperties;->v()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroidx/compose/ui/semantics/i;->e(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v10

    .line 79
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/platform/c2;->b()Landroidx/compose/ui/semantics/i;

    move-result-object v11

    move-object/from16 v27, v12

    invoke-virtual {v9}, Landroidx/compose/ui/semantics/SemanticsProperties;->g()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroidx/compose/ui/semantics/i;->e(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v11

    if-eqz v11, :cond_1a

    if-nez v4, :cond_1a

    if-eqz v10, :cond_1a

    const/4 v12, 0x1

    goto :goto_14

    :cond_1a
    const/4 v12, 0x0

    :goto_14
    if-eqz v11, :cond_1b

    if-eqz v4, :cond_1b

    if-nez v10, :cond_1b

    const/4 v10, 0x1

    goto :goto_15

    :cond_1b
    const/4 v10, 0x0

    :goto_15
    if-nez v12, :cond_1d

    if-eqz v10, :cond_1c

    goto :goto_16

    .line 80
    :cond_1c
    invoke-direct {v7, v8}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->s0(I)I

    move-result v2

    const/16 v4, 0x10

    .line 81
    invoke-direct {v7, v2, v4}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->E(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    .line 82
    invoke-virtual {v2, v6}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 83
    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityRecord;->setRemovedCount(I)V

    .line 84
    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityRecord;->setAddedCount(I)V

    .line 85
    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityRecord;->setBeforeText(Ljava/lang/CharSequence;)V

    .line 86
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 87
    :cond_1d
    :goto_16
    invoke-direct {v7, v8}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->s0(I)I

    move-result v1

    const/4 v0, 0x0

    .line 88
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 89
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 90
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, p0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v6

    .line 91
    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->H(ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/CharSequence;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    .line 92
    :goto_17
    const-string v0, "android.widget.EditText"

    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 93
    invoke-direct {v7, v2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->u0(Landroid/view/accessibility/AccessibilityEvent;)Z

    if-nez v12, :cond_1e

    if-eqz v10, :cond_8

    .line 94
    :cond_1e
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v0

    invoke-virtual {v9}, Landroidx/compose/ui/semantics/SemanticsProperties;->D()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/semantics/i;->j(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/text/b0;

    invoke-virtual {v0}, Landroidx/compose/ui/text/b0;->n()J

    move-result-wide v0

    .line 95
    invoke-static {v0, v1}, Landroidx/compose/ui/text/b0;->k(J)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 96
    invoke-static {v0, v1}, Landroidx/compose/ui/text/b0;->g(J)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    .line 97
    invoke-direct {v7, v2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->u0(Landroid/view/accessibility/AccessibilityEvent;)Z

    goto/16 :goto_9

    :cond_1f
    move-object/from16 v24, v10

    move-object/from16 v26, v11

    move-object/from16 v27, v12

    .line 98
    invoke-direct {v7, v8}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->s0(I)I

    move-result v1

    const/4 v10, 0x2

    .line 99
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/16 v2, 0x800

    const/4 v4, 0x0

    move-object/from16 v0, p0

    .line 100
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->w0(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)Z

    goto/16 :goto_a

    :cond_20
    move-object/from16 v24, v10

    move-object/from16 v26, v11

    move-object/from16 v27, v12

    const/4 v10, 0x2

    .line 101
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/semantics/SemanticsProperties;->D()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 102
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v0

    invoke-direct {v7, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->X(Landroidx/compose/ui/semantics/i;)Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Landroidx/compose/ui/text/AnnotatedString;->i()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_21

    goto :goto_18

    :cond_21
    move-object v3, v0

    .line 103
    :cond_22
    :goto_18
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v0

    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/semantics/SemanticsProperties;->D()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/semantics/i;->j(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/text/b0;

    invoke-virtual {v0}, Landroidx/compose/ui/text/b0;->n()J

    move-result-wide v0

    .line 104
    invoke-direct {v7, v8}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->s0(I)I

    move-result v4

    .line 105
    invoke-static {v0, v1}, Landroidx/compose/ui/text/b0;->k(J)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 106
    invoke-static {v0, v1}, Landroidx/compose/ui/text/b0;->g(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 107
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 108
    invoke-direct {v7, v3, v2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->S0(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v11

    move-object/from16 v0, p0

    move v1, v4

    move-object v2, v5

    move-object v3, v6

    move-object v4, v9

    move-object v5, v11

    .line 109
    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->H(ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/CharSequence;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 110
    invoke-direct {v7, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->u0(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 111
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/ui/semantics/SemanticsNode;->o()I

    move-result v0

    invoke-direct {v7, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->y0(I)V

    goto/16 :goto_a

    .line 112
    :cond_23
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/semantics/SemanticsProperties;->k()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    const/4 v1, 0x1

    goto :goto_19

    .line 113
    :cond_24
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/semantics/SemanticsProperties;->H()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :goto_19
    if-eqz v1, :cond_25

    .line 114
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/ui/semantics/SemanticsNode;->q()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-direct {v7, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->f0(Landroidx/compose/ui/node/LayoutNode;)V

    .line 115
    iget-object v0, v7, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->J:Ljava/util/List;

    invoke-static {v0, v8}, Landroidx/compose/ui/platform/e2;->a(Ljava/util/List;I)Landroidx/compose/ui/platform/b2;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 116
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v1

    .line 117
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/semantics/SemanticsProperties;->k()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v2

    .line 118
    invoke-static {v1, v2}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/semantics/g;

    invoke-virtual {v0, v1}, Landroidx/compose/ui/platform/b2;->f(Landroidx/compose/ui/semantics/g;)V

    .line 119
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v1

    .line 120
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/semantics/SemanticsProperties;->H()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v2

    .line 121
    invoke-static {v1, v2}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/semantics/g;

    invoke-virtual {v0, v1}, Landroidx/compose/ui/platform/b2;->i(Landroidx/compose/ui/semantics/g;)V

    .line 122
    invoke-direct {v7, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->q0(Landroidx/compose/ui/platform/b2;)V

    goto/16 :goto_a

    .line 123
    :cond_25
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/semantics/SemanticsProperties;->i()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 124
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 125
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/ui/semantics/SemanticsNode;->o()I

    move-result v0

    invoke-direct {v7, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->s0(I)I

    move-result v0

    const/16 v11, 0x8

    .line 126
    invoke-direct {v7, v0, v11}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->E(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 127
    invoke-direct {v7, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->u0(Landroid/view/accessibility/AccessibilityEvent;)Z

    goto :goto_1a

    :cond_26
    const/16 v11, 0x8

    .line 128
    :goto_1a
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/ui/semantics/SemanticsNode;->o()I

    move-result v0

    invoke-direct {v7, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->s0(I)I

    move-result v1

    const/4 v0, 0x0

    .line 129
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/16 v2, 0x800

    const/4 v4, 0x0

    move-object/from16 v0, p0

    .line 130
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->w0(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)Z

    goto :goto_1c

    :cond_27
    const/16 v11, 0x8

    .line 131
    sget-object v1, Landroidx/compose/ui/semantics/h;->a:Landroidx/compose/ui/semantics/h;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/h;->d()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v2

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 132
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v0

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/h;->d()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/compose/ui/semantics/i;->j(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 133
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/platform/c2;->b()Landroidx/compose/ui/semantics/i;

    move-result-object v2

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/h;->d()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v2, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2d

    .line 134
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 135
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_2c

    .line 136
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 137
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_2b

    .line 138
    invoke-interface {v2, v0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0, v2}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_28

    goto :goto_1b

    :cond_28
    const/16 v21, 0x0

    goto :goto_1c

    :cond_29
    :goto_1b
    const/16 v21, 0x1

    :cond_2a
    :goto_1c
    move v2, v8

    move v5, v11

    move v4, v13

    move v6, v15

    move/from16 v3, v23

    move-object/from16 v1, v25

    move-object/from16 v11, v26

    move-object/from16 v12, v27

    :goto_1d
    move-object/from16 v8, p1

    move v13, v10

    move-object/from16 v10, v24

    goto/16 :goto_3

    :cond_2b
    const/4 v2, 0x0

    .line 139
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 140
    invoke-static {v0}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    .line 141
    throw v19

    :cond_2c
    const/4 v2, 0x0

    .line 142
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 143
    invoke-static {v0}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    .line 144
    throw v19

    .line 145
    :cond_2d
    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2a

    move v2, v8

    move v5, v11

    move v4, v13

    move v6, v15

    move/from16 v3, v23

    move-object/from16 v1, v25

    move-object/from16 v11, v26

    move-object/from16 v12, v27

    const/16 v21, 0x1

    goto :goto_1d

    .line 146
    :cond_2e
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroidx/compose/ui/semantics/a;

    if-eqz v1, :cond_29

    .line 147
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type androidx.compose.ui.semantics.AccessibilityAction<*>"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/compose/ui/semantics/a;

    .line 148
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/platform/c2;->b()Landroidx/compose/ui/semantics/i;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-static {v2, v0}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->a(Landroidx/compose/ui/semantics/a;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    goto :goto_1b

    :cond_2f
    move-object/from16 v25, v1

    move v8, v2

    move/from16 v23, v3

    move v15, v6

    move-object/from16 v24, v10

    move-object/from16 v26, v11

    move-object/from16 v27, v12

    move v10, v13

    move v13, v4

    move v11, v5

    if-nez v21, :cond_30

    .line 149
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/platform/c2;->b()Landroidx/compose/ui/semantics/i;

    move-result-object v0

    move-object/from16 v1, v25

    invoke-static {v1, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->g(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/compose/ui/semantics/i;)Z

    move-result v21

    :cond_30
    if-eqz v21, :cond_31

    .line 150
    invoke-direct {v7, v8}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->s0(I)I

    move-result v1

    const/4 v8, 0x0

    .line 151
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/16 v2, 0x800

    const/4 v4, 0x0

    move-object/from16 v0, p0

    .line 152
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->w0(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)Z

    goto :goto_1f

    :cond_31
    const/4 v8, 0x0

    goto :goto_1f

    .line 153
    :cond_32
    const-string v0, "no value for specified key"

    .line 154
    invoke-static {v0}, Lg0/a;->c(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    :cond_33
    :goto_1e
    move/from16 v23, v3

    move v15, v6

    move-object/from16 v24, v10

    move-object/from16 v26, v11

    move-object/from16 v27, v12

    move v10, v13

    const/4 v8, 0x0

    move v13, v4

    move v11, v5

    :goto_1f
    shr-long v16, v16, v11

    const/4 v0, 0x1

    add-int/lit8 v3, v23, 0x1

    move-object/from16 v8, p1

    move v5, v11

    move v4, v13

    move v6, v15

    move-object/from16 v11, v26

    move-object/from16 v12, v27

    move v13, v10

    move-object/from16 v10, v24

    goto/16 :goto_1

    :cond_34
    move v15, v6

    move-object/from16 v24, v10

    move-object/from16 v26, v11

    move-object/from16 v27, v12

    move v10, v13

    const/4 v0, 0x1

    const/4 v8, 0x0

    move v13, v4

    move v11, v5

    if-ne v13, v11, :cond_36

    goto :goto_20

    :cond_35
    move v15, v6

    move-object/from16 v24, v10

    move-object/from16 v26, v11

    move-object/from16 v27, v12

    move v10, v13

    const/4 v0, 0x1

    const/4 v8, 0x0

    :goto_20
    if-eq v15, v14, :cond_36

    add-int/lit8 v6, v15, 0x1

    move-object/from16 v8, p1

    move v13, v10

    move-object/from16 v10, v24

    move-object/from16 v11, v26

    move-object/from16 v12, v27

    goto/16 :goto_0

    :cond_36
    return-void
.end method


# virtual methods
.method public final A(ZIJ)Z
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    return p1

    .line 21
    :cond_0
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->N()Landroidx/collection/o;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    move-object v0, p0

    .line 26
    move v2, p1

    .line 27
    move v3, p2

    .line 28
    move-wide v4, p3

    .line 29
    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->B(Landroidx/collection/o;ZIJ)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    return p1
.end method

.method public final C0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->e:Z

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->w:Z

    .line 5
    .line 6
    return-void
.end method

.method public final G0(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->f:J

    .line 2
    .line 3
    return-void
.end method

.method public final I(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->e0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v2, 0x7

    .line 14
    const/4 v3, 0x1

    .line 15
    const/high16 v4, -0x80000000

    .line 16
    .line 17
    if-eq v0, v2, :cond_3

    .line 18
    .line 19
    const/16 v2, 0x9

    .line 20
    .line 21
    if-eq v0, v2, :cond_3

    .line 22
    .line 23
    const/16 v2, 0xa

    .line 24
    .line 25
    if-eq v0, v2, :cond_1

    .line 26
    .line 27
    return v1

    .line 28
    :cond_1
    iget v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->b:I

    .line 29
    .line 30
    if-eq v0, v4, :cond_2

    .line 31
    .line 32
    invoke-direct {p0, v4}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->T0(I)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 37
    .line 38
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->getAndroidViewsHandler$ui_release()Landroidx/compose/ui/platform/AndroidViewsHandler;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    :goto_0
    return v3

    .line 47
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    invoke-virtual {p0, v0, v1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->Z(FF)I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 60
    .line 61
    invoke-virtual {v1}, Landroidx/compose/ui/platform/AndroidComposeView;->getAndroidViewsHandler$ui_release()Landroidx/compose/ui/platform/AndroidViewsHandler;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->T0(I)V

    .line 70
    .line 71
    .line 72
    if-ne v0, v4, :cond_4

    .line 73
    .line 74
    move v3, p1

    .line 75
    :cond_4
    return v3
.end method

.method public final O()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->D:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final P()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->C:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Q()Landroidx/collection/c0;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->B:Landroidx/collection/c0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final R()Landroidx/collection/c0;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->A:Landroidx/collection/c0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Y()Landroidx/compose/ui/platform/AndroidComposeView;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Z(FF)I
    .locals 12

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/node/x0;->c(Landroidx/compose/ui/node/y0;ZILjava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Landroidx/compose/ui/node/q;

    .line 10
    .line 11
    invoke-direct {v0}, Landroidx/compose/ui/node/q;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v4, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 15
    .line 16
    invoke-virtual {v4}, Landroidx/compose/ui/platform/AndroidComposeView;->getRoot()Landroidx/compose/ui/node/LayoutNode;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-static {p1, p2}, Ly/h;->a(FF)J

    .line 21
    .line 22
    .line 23
    move-result-wide v5

    .line 24
    const/16 v10, 0xc

    .line 25
    .line 26
    const/4 v11, 0x0

    .line 27
    const/4 v8, 0x0

    .line 28
    const/4 v9, 0x0

    .line 29
    move-object v7, v0

    .line 30
    invoke-static/range {v4 .. v11}, Landroidx/compose/ui/node/LayoutNode;->t0(Landroidx/compose/ui/node/LayoutNode;JLandroidx/compose/ui/node/q;ZZILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->v0(Ljava/util/List;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Landroidx/compose/ui/f$c;

    .line 38
    .line 39
    if-eqz p1, :cond_0

    .line 40
    .line 41
    invoke-static {p1}, Landroidx/compose/ui/node/g;->m(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/LayoutNode;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    :cond_0
    if-eqz v3, :cond_1

    .line 46
    .line 47
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->e0()Landroidx/compose/ui/node/q0;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    if-eqz p1, :cond_1

    .line 52
    .line 53
    const/16 p2, 0x8

    .line 54
    .line 55
    invoke-static {p2}, Landroidx/compose/ui/node/s0;->a(I)I

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    invoke-virtual {p1, p2}, Landroidx/compose/ui/node/q0;->q(I)Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-ne p1, v2, :cond_1

    .line 64
    .line 65
    invoke-static {v3, v1}, Landroidx/compose/ui/semantics/l;->a(Landroidx/compose/ui/node/LayoutNode;Z)Landroidx/compose/ui/semantics/SemanticsNode;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-static {p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->f(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-eqz p1, :cond_1

    .line 74
    .line 75
    iget-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 76
    .line 77
    invoke-virtual {p1}, Landroidx/compose/ui/platform/AndroidComposeView;->getAndroidViewsHandler$ui_release()Landroidx/compose/ui/platform/AndroidViewsHandler;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p1}, Landroidx/compose/ui/platform/AndroidViewsHandler;->getLayoutNodeToHolder()Ljava/util/HashMap;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    check-cast p1, Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    .line 90
    .line 91
    if-nez p1, :cond_1

    .line 92
    .line 93
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->j0()I

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->s0(I)I

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    goto :goto_0

    .line 102
    :cond_1
    const/high16 p1, -0x80000000

    .line 103
    .line 104
    :goto_0
    return p1
.end method

.method public final c0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->e:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->d:Landroid/view/accessibility/AccessibilityManager;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->i:Ljava/util/List;

    .line 14
    .line 15
    check-cast v0, Ljava/util/Collection;

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 27
    :goto_1
    return v0
.end method

.method public final g0(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->w:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->c0()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->f0(Landroidx/compose/ui/node/LayoutNode;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->k:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$e;

    .line 2
    .line 3
    return-object p1
.end method

.method public final h0()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->w:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->c0()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget-boolean v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->H:Z

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    iput-boolean v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->H:Z

    .line 15
    .line 16
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->j:Landroid/os/Handler;

    .line 17
    .line 18
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->I:Ljava/lang/Runnable;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final z(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11

    .line 1
    instance-of v0, p1, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->label:I

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
    iput v1, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;-><init>(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x2

    .line 35
    const/4 v5, 0x1

    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    if-eq v2, v5, :cond_2

    .line 39
    .line 40
    if-ne v2, v4, :cond_1

    .line 41
    .line 42
    iget-object v2, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->L$2:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v2, Lkotlinx/coroutines/channels/f;

    .line 45
    .line 46
    iget-object v6, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->L$1:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v6, Landroidx/collection/f0;

    .line 49
    .line 50
    iget-object v7, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->L$0:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v7, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    .line 53
    .line 54
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .line 56
    .line 57
    goto/16 :goto_4

    .line 58
    .line 59
    :catchall_0
    move-exception p1

    .line 60
    goto/16 :goto_5

    .line 61
    .line 62
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 63
    .line 64
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 65
    .line 66
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p1

    .line 70
    :cond_2
    iget-object v2, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->L$2:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v2, Lkotlinx/coroutines/channels/f;

    .line 73
    .line 74
    iget-object v6, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->L$1:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v6, Landroidx/collection/f0;

    .line 77
    .line 78
    iget-object v7, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->L$0:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v7, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    .line 81
    .line 82
    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    :try_start_2
    new-instance p1, Landroidx/collection/f0;

    .line 90
    .line 91
    const/4 v2, 0x0

    .line 92
    invoke-direct {p1, v3, v5, v2}, Landroidx/collection/f0;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 93
    .line 94
    .line 95
    iget-object v2, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->v:Lkotlinx/coroutines/channels/d;

    .line 96
    .line 97
    invoke-interface {v2}, Lkotlinx/coroutines/channels/r;->iterator()Lkotlinx/coroutines/channels/f;

    .line 98
    .line 99
    .line 100
    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 101
    move-object v7, p0

    .line 102
    :goto_1
    :try_start_3
    iput-object v7, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->L$0:Ljava/lang/Object;

    .line 103
    .line 104
    iput-object p1, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->L$1:Ljava/lang/Object;

    .line 105
    .line 106
    iput-object v2, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->L$2:Ljava/lang/Object;

    .line 107
    .line 108
    iput v5, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->label:I

    .line 109
    .line 110
    invoke-interface {v2, v0}, Lkotlinx/coroutines/channels/f;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    if-ne v6, v1, :cond_4

    .line 115
    .line 116
    return-object v1

    .line 117
    :cond_4
    move-object v10, v6

    .line 118
    move-object v6, p1

    .line 119
    move-object p1, v10

    .line 120
    :goto_2
    check-cast p1, Ljava/lang/Boolean;

    .line 121
    .line 122
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    if-eqz p1, :cond_8

    .line 127
    .line 128
    invoke-interface {v2}, Lkotlinx/coroutines/channels/f;->next()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v7}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->c0()Z

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    if-eqz p1, :cond_7

    .line 136
    .line 137
    iget-object p1, v7, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->u:Landroidx/collection/b;

    .line 138
    .line 139
    invoke-virtual {p1}, Landroidx/collection/b;->size()I

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    move v8, v3

    .line 144
    :goto_3
    if-ge v8, p1, :cond_5

    .line 145
    .line 146
    iget-object v9, v7, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->u:Landroidx/collection/b;

    .line 147
    .line 148
    invoke-virtual {v9, v8}, Landroidx/collection/b;->o(I)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v9

    .line 152
    check-cast v9, Landroidx/compose/ui/node/LayoutNode;

    .line 153
    .line 154
    invoke-direct {v7, v9, v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->A0(Landroidx/compose/ui/node/LayoutNode;Landroidx/collection/f0;)V

    .line 155
    .line 156
    .line 157
    invoke-direct {v7, v9}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->B0(Landroidx/compose/ui/node/LayoutNode;)V

    .line 158
    .line 159
    .line 160
    add-int/lit8 v8, v8, 0x1

    .line 161
    .line 162
    goto :goto_3

    .line 163
    :cond_5
    invoke-virtual {v6}, Landroidx/collection/f0;->h()V

    .line 164
    .line 165
    .line 166
    iget-boolean p1, v7, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->H:Z

    .line 167
    .line 168
    if-nez p1, :cond_6

    .line 169
    .line 170
    iput-boolean v5, v7, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->H:Z

    .line 171
    .line 172
    iget-object p1, v7, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->j:Landroid/os/Handler;

    .line 173
    .line 174
    iget-object v8, v7, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->I:Ljava/lang/Runnable;

    .line 175
    .line 176
    invoke-virtual {p1, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 177
    .line 178
    .line 179
    :cond_6
    iget-object p1, v7, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->u:Landroidx/collection/b;

    .line 180
    .line 181
    invoke-virtual {p1}, Landroidx/collection/b;->clear()V

    .line 182
    .line 183
    .line 184
    iget-object p1, v7, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->o:Landroidx/collection/e0;

    .line 185
    .line 186
    invoke-virtual {p1}, Landroidx/collection/e0;->i()V

    .line 187
    .line 188
    .line 189
    iget-object p1, v7, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->p:Landroidx/collection/e0;

    .line 190
    .line 191
    invoke-virtual {p1}, Landroidx/collection/e0;->i()V

    .line 192
    .line 193
    .line 194
    iget-wide v8, v7, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->f:J

    .line 195
    .line 196
    iput-object v7, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->L$0:Ljava/lang/Object;

    .line 197
    .line 198
    iput-object v6, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->L$1:Ljava/lang/Object;

    .line 199
    .line 200
    iput-object v2, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->L$2:Ljava/lang/Object;

    .line 201
    .line 202
    iput v4, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->label:I

    .line 203
    .line 204
    invoke-static {v8, v9, v0}, Lkotlinx/coroutines/u0;->a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 208
    if-ne p1, v1, :cond_7

    .line 209
    .line 210
    return-object v1

    .line 211
    :cond_7
    :goto_4
    move-object p1, v6

    .line 212
    goto :goto_1

    .line 213
    :cond_8
    iget-object p1, v7, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->u:Landroidx/collection/b;

    .line 214
    .line 215
    invoke-virtual {p1}, Landroidx/collection/b;->clear()V

    .line 216
    .line 217
    .line 218
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 219
    .line 220
    return-object p1

    .line 221
    :catchall_1
    move-exception p1

    .line 222
    move-object v7, p0

    .line 223
    :goto_5
    iget-object v0, v7, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->u:Landroidx/collection/b;

    .line 224
    .line 225
    invoke-virtual {v0}, Landroidx/collection/b;->clear()V

    .line 226
    .line 227
    .line 228
    throw p1
.end method
