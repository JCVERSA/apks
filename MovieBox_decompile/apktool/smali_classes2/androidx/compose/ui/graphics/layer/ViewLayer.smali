.class public final Landroidx/compose/ui/graphics/layer/ViewLayer;
.super Landroid/view/View;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/graphics/layer/ViewLayer$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\'\u0008\u0000\u0018\u0000 J2\u00020\u0001:\u0001(B#\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0004\u0008\u000c\u0010\rJ@\u0010\u0019\u001a\u00020\u00162\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u00102\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00122\u0017\u0010\u0018\u001a\u0013\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00160\u0014\u00a2\u0006\u0002\u0008\u0017\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u000f\u0010\u001d\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0017\u0010!\u001a\u00020\u00162\u0006\u0010 \u001a\u00020\u001fH\u0014\u00a2\u0006\u0004\u0008!\u0010\"J7\u0010)\u001a\u00020\u00162\u0006\u0010#\u001a\u00020\u000b2\u0006\u0010%\u001a\u00020$2\u0006\u0010&\u001a\u00020$2\u0006\u0010\'\u001a\u00020$2\u0006\u0010(\u001a\u00020$H\u0014\u00a2\u0006\u0004\u0008)\u0010*J\u000f\u0010+\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008+\u0010\u001cR\u0017\u0010\u0002\u001a\u00020\u00018\u0006\u00a2\u0006\u000c\n\u0004\u0008,\u0010-\u001a\u0004\u0008.\u0010/R\u0017\u0010\u0004\u001a\u00020\u00038\u0006\u00a2\u0006\u000c\n\u0004\u0008(\u00100\u001a\u0004\u00081\u00102R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00083\u00104R\"\u00107\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00085\u00106\u001a\u0004\u00087\u0010\u001e\"\u0004\u00088\u00109R\u0018\u0010<\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008:\u0010;R*\u0010A\u001a\u00020\u000b2\u0006\u0010=\u001a\u00020\u000b8\u0000@@X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u0008>\u00106\u001a\u0004\u0008?\u0010\u001e\"\u0004\u0008@\u00109R\u0016\u0010\u000f\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008B\u0010CR\u0016\u0010\u0011\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008D\u0010ER\'\u0010\u0018\u001a\u0013\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00160\u0014\u00a2\u0006\u0002\u0008\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008F\u0010GR\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008H\u0010I\u00a8\u0006K"
    }
    d2 = {
        "Landroidx/compose/ui/graphics/layer/ViewLayer;",
        "Landroid/view/View;",
        "ownerView",
        "Landroidx/compose/ui/graphics/n1;",
        "canvasHolder",
        "Lz/a;",
        "canvasDrawScope",
        "<init>",
        "(Landroid/view/View;Landroidx/compose/ui/graphics/n1;Lz/a;)V",
        "Landroid/graphics/Outline;",
        "outline",
        "",
        "setLayerOutline",
        "(Landroid/graphics/Outline;)Z",
        "Lo0/e;",
        "density",
        "Landroidx/compose/ui/unit/LayoutDirection;",
        "layoutDirection",
        "Landroidx/compose/ui/graphics/layer/GraphicsLayer;",
        "parentLayer",
        "Lkotlin/Function1;",
        "Lz/g;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "drawBlock",
        "setDrawParams",
        "(Lo0/e;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/graphics/layer/GraphicsLayer;Lkotlin/jvm/functions/Function1;)V",
        "invalidate",
        "()V",
        "hasOverlappingRendering",
        "()Z",
        "Landroid/graphics/Canvas;",
        "canvas",
        "dispatchDraw",
        "(Landroid/graphics/Canvas;)V",
        "changed",
        "",
        "l",
        "t",
        "r",
        "b",
        "onLayout",
        "(ZIIII)V",
        "forceLayout",
        "a",
        "Landroid/view/View;",
        "getOwnerView",
        "()Landroid/view/View;",
        "Landroidx/compose/ui/graphics/n1;",
        "getCanvasHolder",
        "()Landroidx/compose/ui/graphics/n1;",
        "c",
        "Lz/a;",
        "d",
        "Z",
        "isInvalidated",
        "setInvalidated",
        "(Z)V",
        "e",
        "Landroid/graphics/Outline;",
        "layerOutline",
        "value",
        "f",
        "getCanUseCompositingLayer$ui_graphics_release",
        "setCanUseCompositingLayer$ui_graphics_release",
        "canUseCompositingLayer",
        "g",
        "Lo0/e;",
        "h",
        "Landroidx/compose/ui/unit/LayoutDirection;",
        "i",
        "Lkotlin/jvm/functions/Function1;",
        "j",
        "Landroidx/compose/ui/graphics/layer/GraphicsLayer;",
        "Companion",
        "ui-graphics_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/graphics/layer/ViewLayer$b;

.field private static final k:Landroid/view/ViewOutlineProvider;


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroidx/compose/ui/graphics/n1;

.field private final c:Lz/a;

.field private d:Z

.field private e:Landroid/graphics/Outline;

.field private f:Z

.field private g:Lo0/e;

.field private h:Landroidx/compose/ui/unit/LayoutDirection;

.field private i:Lkotlin/jvm/functions/Function1;

.field private j:Landroidx/compose/ui/graphics/layer/GraphicsLayer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/ui/graphics/layer/ViewLayer$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/layer/ViewLayer$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/compose/ui/graphics/layer/ViewLayer;->Companion:Landroidx/compose/ui/graphics/layer/ViewLayer$b;

    .line 8
    .line 9
    new-instance v0, Landroidx/compose/ui/graphics/layer/ViewLayer$a;

    .line 10
    .line 11
    invoke-direct {v0}, Landroidx/compose/ui/graphics/layer/ViewLayer$a;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Landroidx/compose/ui/graphics/layer/ViewLayer;->k:Landroid/view/ViewOutlineProvider;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroidx/compose/ui/graphics/n1;Lz/a;)V
    .locals 1

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 5
    iput-object p1, p0, Landroidx/compose/ui/graphics/layer/ViewLayer;->a:Landroid/view/View;

    .line 6
    iput-object p2, p0, Landroidx/compose/ui/graphics/layer/ViewLayer;->b:Landroidx/compose/ui/graphics/n1;

    .line 7
    iput-object p3, p0, Landroidx/compose/ui/graphics/layer/ViewLayer;->c:Lz/a;

    .line 8
    sget-object p1, Landroidx/compose/ui/graphics/layer/ViewLayer;->k:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Landroidx/compose/ui/graphics/layer/ViewLayer;->f:Z

    .line 10
    invoke-static {}, Lz/e;->a()Lo0/e;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/graphics/layer/ViewLayer;->g:Lo0/e;

    .line 11
    sget-object p1, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    iput-object p1, p0, Landroidx/compose/ui/graphics/layer/ViewLayer;->h:Landroidx/compose/ui/unit/LayoutDirection;

    .line 12
    sget-object p1, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl$Companion;->a()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/graphics/layer/ViewLayer;->i:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x0

    .line 13
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    const/4 p1, 0x0

    .line 14
    invoke-virtual {p0, p1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/View;Landroidx/compose/ui/graphics/n1;Lz/a;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 1
    new-instance p2, Landroidx/compose/ui/graphics/n1;

    invoke-direct {p2}, Landroidx/compose/ui/graphics/n1;-><init>()V

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 2
    new-instance p3, Lz/a;

    invoke-direct {p3}, Lz/a;-><init>()V

    .line 3
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/ui/graphics/layer/ViewLayer;-><init>(Landroid/view/View;Landroidx/compose/ui/graphics/n1;Lz/a;)V

    return-void
.end method

.method public static final synthetic access$getLayerOutline$p(Landroidx/compose/ui/graphics/layer/ViewLayer;)Landroid/graphics/Outline;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/ViewLayer;->e:Landroid/graphics/Outline;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getLayerOutlineProvider$cp()Landroid/view/ViewOutlineProvider;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/graphics/layer/ViewLayer;->k:Landroid/view/ViewOutlineProvider;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Landroidx/compose/ui/graphics/layer/ViewLayer;->b:Landroidx/compose/ui/graphics/n1;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/n1;->a()Landroidx/compose/ui/graphics/g0;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/g0;->v()Landroid/graphics/Canvas;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/n1;->a()Landroidx/compose/ui/graphics/g0;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    move-object/from16 v4, p1

    .line 18
    .line 19
    invoke-virtual {v3, v4}, Landroidx/compose/ui/graphics/g0;->w(Landroid/graphics/Canvas;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/n1;->a()Landroidx/compose/ui/graphics/g0;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    iget-object v4, v1, Landroidx/compose/ui/graphics/layer/ViewLayer;->c:Lz/a;

    .line 27
    .line 28
    iget-object v5, v1, Landroidx/compose/ui/graphics/layer/ViewLayer;->g:Lo0/e;

    .line 29
    .line 30
    iget-object v6, v1, Landroidx/compose/ui/graphics/layer/ViewLayer;->h:Landroidx/compose/ui/unit/LayoutDirection;

    .line 31
    .line 32
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 33
    .line 34
    .line 35
    move-result v7

    .line 36
    int-to-float v7, v7

    .line 37
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 38
    .line 39
    .line 40
    move-result v8

    .line 41
    int-to-float v8, v8

    .line 42
    invoke-static {v7, v8}, Ly/n;->a(FF)J

    .line 43
    .line 44
    .line 45
    move-result-wide v7

    .line 46
    iget-object v9, v1, Landroidx/compose/ui/graphics/layer/ViewLayer;->j:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 47
    .line 48
    iget-object v10, v1, Landroidx/compose/ui/graphics/layer/ViewLayer;->i:Lkotlin/jvm/functions/Function1;

    .line 49
    .line 50
    invoke-interface {v4}, Lz/g;->G0()Lz/d;

    .line 51
    .line 52
    .line 53
    move-result-object v11

    .line 54
    invoke-interface {v11}, Lz/d;->getDensity()Lo0/e;

    .line 55
    .line 56
    .line 57
    move-result-object v11

    .line 58
    invoke-interface {v4}, Lz/g;->G0()Lz/d;

    .line 59
    .line 60
    .line 61
    move-result-object v12

    .line 62
    invoke-interface {v12}, Lz/d;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 63
    .line 64
    .line 65
    move-result-object v12

    .line 66
    invoke-interface {v4}, Lz/g;->G0()Lz/d;

    .line 67
    .line 68
    .line 69
    move-result-object v13

    .line 70
    invoke-interface {v13}, Lz/d;->e()Landroidx/compose/ui/graphics/m1;

    .line 71
    .line 72
    .line 73
    move-result-object v13

    .line 74
    invoke-interface {v4}, Lz/g;->G0()Lz/d;

    .line 75
    .line 76
    .line 77
    move-result-object v14

    .line 78
    invoke-interface {v14}, Lz/d;->i()J

    .line 79
    .line 80
    .line 81
    move-result-wide v14

    .line 82
    invoke-interface {v4}, Lz/g;->G0()Lz/d;

    .line 83
    .line 84
    .line 85
    move-result-object v16

    .line 86
    invoke-interface/range {v16 .. v16}, Lz/d;->g()Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    move-object/from16 v16, v2

    .line 91
    .line 92
    invoke-interface {v4}, Lz/g;->G0()Lz/d;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-interface {v2, v5}, Lz/d;->b(Lo0/e;)V

    .line 97
    .line 98
    .line 99
    invoke-interface {v2, v6}, Lz/d;->a(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 100
    .line 101
    .line 102
    invoke-interface {v2, v3}, Lz/d;->h(Landroidx/compose/ui/graphics/m1;)V

    .line 103
    .line 104
    .line 105
    invoke-interface {v2, v7, v8}, Lz/d;->f(J)V

    .line 106
    .line 107
    .line 108
    invoke-interface {v2, v9}, Lz/d;->d(Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    .line 109
    .line 110
    .line 111
    invoke-interface {v3}, Landroidx/compose/ui/graphics/m1;->n()V

    .line 112
    .line 113
    .line 114
    :try_start_0
    invoke-interface {v10, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    .line 116
    .line 117
    invoke-interface {v3}, Landroidx/compose/ui/graphics/m1;->j()V

    .line 118
    .line 119
    .line 120
    invoke-interface {v4}, Lz/g;->G0()Lz/d;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-interface {v2, v11}, Lz/d;->b(Lo0/e;)V

    .line 125
    .line 126
    .line 127
    invoke-interface {v2, v12}, Lz/d;->a(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 128
    .line 129
    .line 130
    invoke-interface {v2, v13}, Lz/d;->h(Landroidx/compose/ui/graphics/m1;)V

    .line 131
    .line 132
    .line 133
    invoke-interface {v2, v14, v15}, Lz/d;->f(J)V

    .line 134
    .line 135
    .line 136
    invoke-interface {v2, v1}, Lz/d;->d(Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/n1;->a()Landroidx/compose/ui/graphics/g0;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    move-object/from16 v1, v16

    .line 144
    .line 145
    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/g0;->w(Landroid/graphics/Canvas;)V

    .line 146
    .line 147
    .line 148
    const/4 v0, 0x0

    .line 149
    move-object/from16 v1, p0

    .line 150
    .line 151
    iput-boolean v0, v1, Landroidx/compose/ui/graphics/layer/ViewLayer;->d:Z

    .line 152
    .line 153
    return-void

    .line 154
    :catchall_0
    move-exception v0

    .line 155
    move-object v2, v1

    .line 156
    move-object/from16 v1, p0

    .line 157
    .line 158
    move-object v5, v0

    .line 159
    invoke-interface {v3}, Landroidx/compose/ui/graphics/m1;->j()V

    .line 160
    .line 161
    .line 162
    invoke-interface {v4}, Lz/g;->G0()Lz/d;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-interface {v0, v11}, Lz/d;->b(Lo0/e;)V

    .line 167
    .line 168
    .line 169
    invoke-interface {v0, v12}, Lz/d;->a(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 170
    .line 171
    .line 172
    invoke-interface {v0, v13}, Lz/d;->h(Landroidx/compose/ui/graphics/m1;)V

    .line 173
    .line 174
    .line 175
    invoke-interface {v0, v14, v15}, Lz/d;->f(J)V

    .line 176
    .line 177
    .line 178
    invoke-interface {v0, v2}, Lz/d;->d(Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    .line 179
    .line 180
    .line 181
    throw v5
.end method

.method public forceLayout()V
    .locals 0

    .line 1
    return-void
.end method

.method public final getCanUseCompositingLayer$ui_graphics_release()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/graphics/layer/ViewLayer;->f:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getCanvasHolder()Landroidx/compose/ui/graphics/n1;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/ViewLayer;->b:Landroidx/compose/ui/graphics/n1;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOwnerView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/ViewLayer;->a:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/graphics/layer/ViewLayer;->f:Z

    .line 2
    .line 3
    return v0
.end method

.method public invalidate()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/graphics/layer/ViewLayer;->d:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Landroidx/compose/ui/graphics/layer/ViewLayer;->d:Z

    .line 7
    .line 8
    invoke-super {p0}, Landroid/view/View;->invalidate()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final isInvalidated()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/graphics/layer/ViewLayer;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setCanUseCompositingLayer$ui_graphics_release(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/graphics/layer/ViewLayer;->f:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Landroidx/compose/ui/graphics/layer/ViewLayer;->f:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/layer/ViewLayer;->invalidate()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final setDrawParams(Lo0/e;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/graphics/layer/GraphicsLayer;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo0/e;",
            "Landroidx/compose/ui/unit/LayoutDirection;",
            "Landroidx/compose/ui/graphics/layer/GraphicsLayer;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lz/g;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/graphics/layer/ViewLayer;->g:Lo0/e;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/ui/graphics/layer/ViewLayer;->h:Landroidx/compose/ui/unit/LayoutDirection;

    .line 4
    .line 5
    iput-object p4, p0, Landroidx/compose/ui/graphics/layer/ViewLayer;->i:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    iput-object p3, p0, Landroidx/compose/ui/graphics/layer/ViewLayer;->j:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 8
    .line 9
    return-void
.end method

.method public final setInvalidated(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/compose/ui/graphics/layer/ViewLayer;->d:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setLayerOutline(Landroid/graphics/Outline;)Z
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/graphics/layer/ViewLayer;->e:Landroid/graphics/Outline;

    .line 2
    .line 3
    sget-object p1, Landroidx/compose/ui/graphics/layer/j0;->a:Landroidx/compose/ui/graphics/layer/j0;

    .line 4
    .line 5
    invoke-virtual {p1, p0}, Landroidx/compose/ui/graphics/layer/j0;->a(Landroid/view/View;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method
