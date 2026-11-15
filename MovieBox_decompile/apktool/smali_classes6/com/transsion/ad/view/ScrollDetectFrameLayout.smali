.class public final Lcom/transsion/ad/view/ScrollDetectFrameLayout;
.super Landroid/widget/FrameLayout;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/ad/view/ScrollDetectFrameLayout$a;,
        Lcom/transsion/ad/view/ScrollDetectFrameLayout$ScrollDirection;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\r\u0018\u00002\u00020\u0001:\u0002\u0014#B\'\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0015\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0019\u0010\u0012\u001a\u00020\u00112\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R\u0018\u0010\u0016\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\u0016\u0010\u001a\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0016\u0010\u001c\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u0019R\u0016\u0010\u001f\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u0014\u0010\"\u001a\u00020\u00068\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008 \u0010!\u00a8\u0006$"
    }
    d2 = {
        "Lcom/transsion/ad/view/ScrollDetectFrameLayout;",
        "Landroid/widget/FrameLayout;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "Lcom/transsion/ad/view/ScrollDetectFrameLayout$a;",
        "listener",
        "",
        "setOnScrollListener",
        "(Lcom/transsion/ad/view/ScrollDetectFrameLayout$a;)V",
        "Landroid/view/MotionEvent;",
        "event",
        "",
        "dispatchTouchEvent",
        "(Landroid/view/MotionEvent;)Z",
        "a",
        "Lcom/transsion/ad/view/ScrollDetectFrameLayout$a;",
        "scrollListener",
        "",
        "b",
        "F",
        "lastX",
        "c",
        "lastY",
        "d",
        "Z",
        "isScrolling",
        "e",
        "I",
        "defaultMinMovie",
        "ScrollDirection",
        "lib_ad_gpRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private a:Lcom/transsion/ad/view/ScrollDetectFrameLayout$a;

.field private b:F

.field private c:F

.field private d:Z

.field private final e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/transsion/ad/view/ScrollDetectFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/transsion/ad/view/ScrollDetectFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0xa

    .line 5
    iput p1, p0, Lcom/transsion/ad/view/ScrollDetectFrameLayout;->e:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 3
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/ad/view/ScrollDetectFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    const/4 v1, 0x0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_2

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iput v0, p0, Lcom/transsion/ad/view/ScrollDetectFrameLayout;->b:F

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iput v0, p0, Lcom/transsion/ad/view/ScrollDetectFrameLayout;->c:F

    .line 34
    .line 35
    iput-boolean v1, p0, Lcom/transsion/ad/view/ScrollDetectFrameLayout;->d:Z

    .line 36
    .line 37
    goto/16 :goto_5

    .line 38
    .line 39
    :cond_2
    :goto_1
    const/4 v2, 0x1

    .line 40
    if-nez v0, :cond_3

    .line 41
    .line 42
    goto :goto_3

    .line 43
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    const/4 v4, 0x2

    .line 48
    if-ne v3, v4, :cond_7

    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    iget v3, p0, Lcom/transsion/ad/view/ScrollDetectFrameLayout;->b:F

    .line 59
    .line 60
    sub-float v3, v0, v3

    .line 61
    .line 62
    iget v4, p0, Lcom/transsion/ad/view/ScrollDetectFrameLayout;->c:F

    .line 63
    .line 64
    sub-float v4, v1, v4

    .line 65
    .line 66
    iget-boolean v5, p0, Lcom/transsion/ad/view/ScrollDetectFrameLayout;->d:Z

    .line 67
    .line 68
    if-nez v5, :cond_4

    .line 69
    .line 70
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    iget v6, p0, Lcom/transsion/ad/view/ScrollDetectFrameLayout;->e:I

    .line 75
    .line 76
    int-to-float v6, v6

    .line 77
    cmpl-float v5, v5, v6

    .line 78
    .line 79
    if-lez v5, :cond_4

    .line 80
    .line 81
    iput-boolean v2, p0, Lcom/transsion/ad/view/ScrollDetectFrameLayout;->d:Z

    .line 82
    .line 83
    iget-object v2, p0, Lcom/transsion/ad/view/ScrollDetectFrameLayout;->a:Lcom/transsion/ad/view/ScrollDetectFrameLayout$a;

    .line 84
    .line 85
    if-eqz v2, :cond_4

    .line 86
    .line 87
    invoke-interface {v2}, Lcom/transsion/ad/view/ScrollDetectFrameLayout$a;->b()V

    .line 88
    .line 89
    .line 90
    :cond_4
    iget-boolean v2, p0, Lcom/transsion/ad/view/ScrollDetectFrameLayout;->d:Z

    .line 91
    .line 92
    if-eqz v2, :cond_6

    .line 93
    .line 94
    const/4 v2, 0x0

    .line 95
    cmpl-float v2, v4, v2

    .line 96
    .line 97
    if-lez v2, :cond_5

    .line 98
    .line 99
    sget-object v2, Lcom/transsion/ad/view/ScrollDetectFrameLayout$ScrollDirection;->DOWN:Lcom/transsion/ad/view/ScrollDetectFrameLayout$ScrollDirection;

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_5
    sget-object v2, Lcom/transsion/ad/view/ScrollDetectFrameLayout$ScrollDirection;->UP:Lcom/transsion/ad/view/ScrollDetectFrameLayout$ScrollDirection;

    .line 103
    .line 104
    :goto_2
    iget-object v5, p0, Lcom/transsion/ad/view/ScrollDetectFrameLayout;->a:Lcom/transsion/ad/view/ScrollDetectFrameLayout$a;

    .line 105
    .line 106
    if-eqz v5, :cond_6

    .line 107
    .line 108
    invoke-interface {v5, v3, v4, v2}, Lcom/transsion/ad/view/ScrollDetectFrameLayout$a;->c(FFLcom/transsion/ad/view/ScrollDetectFrameLayout$ScrollDirection;)V

    .line 109
    .line 110
    .line 111
    :cond_6
    iput v0, p0, Lcom/transsion/ad/view/ScrollDetectFrameLayout;->b:F

    .line 112
    .line 113
    iput v1, p0, Lcom/transsion/ad/view/ScrollDetectFrameLayout;->c:F

    .line 114
    .line 115
    goto :goto_5

    .line 116
    :cond_7
    :goto_3
    if-nez v0, :cond_8

    .line 117
    .line 118
    goto :goto_4

    .line 119
    :cond_8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    if-eq v3, v2, :cond_a

    .line 124
    .line 125
    :goto_4
    if-nez v0, :cond_9

    .line 126
    .line 127
    goto :goto_5

    .line 128
    :cond_9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    const/4 v2, 0x3

    .line 133
    if-ne v0, v2, :cond_c

    .line 134
    .line 135
    :cond_a
    iget-boolean v0, p0, Lcom/transsion/ad/view/ScrollDetectFrameLayout;->d:Z

    .line 136
    .line 137
    if-eqz v0, :cond_b

    .line 138
    .line 139
    iget-object v0, p0, Lcom/transsion/ad/view/ScrollDetectFrameLayout;->a:Lcom/transsion/ad/view/ScrollDetectFrameLayout$a;

    .line 140
    .line 141
    if-eqz v0, :cond_b

    .line 142
    .line 143
    invoke-interface {v0}, Lcom/transsion/ad/view/ScrollDetectFrameLayout$a;->a()V

    .line 144
    .line 145
    .line 146
    :cond_b
    iput-boolean v1, p0, Lcom/transsion/ad/view/ScrollDetectFrameLayout;->d:Z

    .line 147
    .line 148
    :cond_c
    :goto_5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    return p1
.end method

.method public final setOnScrollListener(Lcom/transsion/ad/view/ScrollDetectFrameLayout$a;)V
    .locals 1

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/ad/view/ScrollDetectFrameLayout;->a:Lcom/transsion/ad/view/ScrollDetectFrameLayout$a;

    .line 7
    .line 8
    return-void
.end method
