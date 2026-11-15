.class public final Lcom/transsion/postdetail/ui/view/ImmScaleView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/postdetail/ui/view/ImmScaleView$a;,
        Lcom/transsion/postdetail/ui/view/ImmScaleView$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001:\u0001%B\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u001b\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\u0008B#\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0004\u0010\u000bJ\u0017\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u001f\u0010\u0014\u001a\u00020\u000e2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0013\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0017\u0010\u0017\u001a\u00020\u000e2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0004\u0008\u0017\u0010\u0018R\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001aR\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001aR$\u0010$\u001a\u0004\u0018\u00010\u001d8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#\u00a8\u0006&"
    }
    d2 = {
        "Lcom/transsion/postdetail/ui/view/ImmScaleView;",
        "Landroidx/appcompat/widget/AppCompatImageView;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/util/AttributeSet;",
        "attrs",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "defStyleAttr",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "Lcom/transsion/player/enum/ScaleMode;",
        "scaleMode",
        "",
        "c",
        "(Lcom/transsion/player/enum/ScaleMode;)V",
        "",
        "pageName",
        "subjectId",
        "setPageParams",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "ops",
        "setOps",
        "(Ljava/lang/String;)V",
        "d",
        "Ljava/lang/String;",
        "e",
        "f",
        "Lcom/transsion/postdetail/ui/view/ImmScaleView$a;",
        "g",
        "Lcom/transsion/postdetail/ui/view/ImmScaleView$a;",
        "getOnModelChangeListener",
        "()Lcom/transsion/postdetail/ui/view/ImmScaleView$a;",
        "setOnModelChangeListener",
        "(Lcom/transsion/postdetail/ui/view/ImmScaleView$a;)V",
        "onModelChangeListener",
        "a",
        "PostDetail_psRelease"
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
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcom/transsion/postdetail/ui/view/ImmScaleView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 2
    sget-object p1, Lcom/transsion/baselib/helper/d;->a:Lcom/transsion/baselib/helper/d;

    invoke-virtual {p1}, Lcom/transsion/baselib/helper/d;->c()Lcom/transsion/player/enum/ScaleMode;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/view/ImmScaleView;->c(Lcom/transsion/player/enum/ScaleMode;)V

    .line 3
    new-instance v3, Lcom/transsion/postdetail/ui/view/a;

    invoke-direct {v3, p0}, Lcom/transsion/postdetail/ui/view/a;-><init>(Lcom/transsion/postdetail/ui/view/ImmScaleView;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v1, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Luf/c;->c(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    sget-object p1, Lcom/transsion/baselib/helper/d;->a:Lcom/transsion/baselib/helper/d;

    invoke-virtual {p1}, Lcom/transsion/baselib/helper/d;->c()Lcom/transsion/player/enum/ScaleMode;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/view/ImmScaleView;->c(Lcom/transsion/player/enum/ScaleMode;)V

    .line 6
    new-instance v3, Lcom/transsion/postdetail/ui/view/a;

    invoke-direct {v3, p0}, Lcom/transsion/postdetail/ui/view/a;-><init>(Lcom/transsion/postdetail/ui/view/ImmScaleView;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v1, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Luf/c;->c(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    sget-object p1, Lcom/transsion/baselib/helper/d;->a:Lcom/transsion/baselib/helper/d;

    invoke-virtual {p1}, Lcom/transsion/baselib/helper/d;->c()Lcom/transsion/player/enum/ScaleMode;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/view/ImmScaleView;->c(Lcom/transsion/player/enum/ScaleMode;)V

    .line 9
    new-instance v3, Lcom/transsion/postdetail/ui/view/a;

    invoke-direct {v3, p0}, Lcom/transsion/postdetail/ui/view/a;-><init>(Lcom/transsion/postdetail/ui/view/ImmScaleView;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v1, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Luf/c;->c(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/postdetail/ui/view/ImmScaleView;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/view/ImmScaleView;->b(Lcom/transsion/postdetail/ui/view/ImmScaleView;Landroid/view/View;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final b(Lcom/transsion/postdetail/ui/view/ImmScaleView;Landroid/view/View;)Lkotlin/Unit;
    .locals 8

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const-string v2, "it"

    .line 4
    .line 5
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object p1, Lcom/transsion/baselib/helper/d;->a:Lcom/transsion/baselib/helper/d;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/transsion/baselib/helper/d;->c()Lcom/transsion/player/enum/ScaleMode;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    sget-object v2, Lcom/transsion/postdetail/ui/view/ImmScaleView$b;->a:[I

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    aget p1, v2, p1

    .line 21
    .line 22
    const-string v2, "getString(...)"

    .line 23
    .line 24
    if-eq p1, v1, :cond_1

    .line 25
    .line 26
    if-eq p1, v0, :cond_0

    .line 27
    .line 28
    sget-object p1, Lcom/transsion/player/enum/ScaleMode;->SCALE_ASPECT_FIT:Lcom/transsion/player/enum/ScaleMode;

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    sget v4, Lcom/transsion/postdetail/R$string;->video_fit_screen:I

    .line 35
    .line 36
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    sget-object p1, Lcom/transsion/player/enum/ScaleMode;->SCALE_TO_FILL:Lcom/transsion/player/enum/ScaleMode;

    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    sget v4, Lcom/transsion/postdetail/R$string;->video_stretch:I

    .line 51
    .line 52
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    sget-object p1, Lcom/transsion/player/enum/ScaleMode;->SCALE_ASPECT_FILL:Lcom/transsion/player/enum/ScaleMode;

    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    sget v4, Lcom/transsion/postdetail/R$string;->video_crop:I

    .line 67
    .line 68
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :goto_0
    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/view/ImmScaleView;->c(Lcom/transsion/player/enum/ScaleMode;)V

    .line 76
    .line 77
    .line 78
    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ImmScaleView;->g:Lcom/transsion/postdetail/ui/view/ImmScaleView$a;

    .line 79
    .line 80
    if-eqz v2, :cond_2

    .line 81
    .line 82
    invoke-interface {v2, p1, v3}, Lcom/transsion/postdetail/ui/view/ImmScaleView$a;->a(Lcom/transsion/player/enum/ScaleMode;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    :cond_2
    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ImmScaleView;->d:Ljava/lang/String;

    .line 86
    .line 87
    if-eqz v2, :cond_3

    .line 88
    .line 89
    sget-object v3, Lqi/h;->a:Lqi/h;

    .line 90
    .line 91
    new-instance v4, Lkotlin/Pair;

    .line 92
    .line 93
    const-string v5, "module_name"

    .line 94
    .line 95
    const-string v6, "scale_mode"

    .line 96
    .line 97
    invoke-direct {v4, v5, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    new-instance v5, Lkotlin/Pair;

    .line 101
    .line 102
    const-string v6, "subject_id"

    .line 103
    .line 104
    iget-object v7, p0, Lcom/transsion/postdetail/ui/view/ImmScaleView;->e:Ljava/lang/String;

    .line 105
    .line 106
    invoke-direct {v5, v6, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    new-instance v6, Lkotlin/Pair;

    .line 110
    .line 111
    const-string v7, "ops"

    .line 112
    .line 113
    iget-object p0, p0, Lcom/transsion/postdetail/ui/view/ImmScaleView;->f:Ljava/lang/String;

    .line 114
    .line 115
    invoke-direct {v6, v7, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    new-instance p0, Lkotlin/Pair;

    .line 119
    .line 120
    invoke-virtual {p1}, Lcom/transsion/player/enum/ScaleMode;->getValue()I

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    const-string v7, "type"

    .line 129
    .line 130
    invoke-direct {p0, v7, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    const/4 p1, 0x4

    .line 134
    new-array p1, p1, [Lkotlin/Pair;

    .line 135
    .line 136
    const/4 v7, 0x0

    .line 137
    aput-object v4, p1, v7

    .line 138
    .line 139
    aput-object v5, p1, v1

    .line 140
    .line 141
    aput-object v6, p1, v0

    .line 142
    .line 143
    const/4 v0, 0x3

    .line 144
    aput-object p0, p1, v0

    .line 145
    .line 146
    invoke-static {p1}, Lkotlin/collections/MapsKt;->m([Lkotlin/Pair;)Ljava/util/Map;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    invoke-virtual {v3, v2, p0}, Lqi/h;->o(Ljava/lang/String;Ljava/util/Map;)V

    .line 151
    .line 152
    .line 153
    :cond_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 154
    .line 155
    return-object p0
.end method

.method private final c(Lcom/transsion/player/enum/ScaleMode;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/baselib/helper/d;->a:Lcom/transsion/baselib/helper/d;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/transsion/baselib/helper/d;->f(Lcom/transsion/player/enum/ScaleMode;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/transsion/postdetail/ui/view/ImmScaleView$b;->a:[I

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    aget p1, v0, p1

    .line 13
    .line 14
    const/4 v0, 0x2

    .line 15
    if-eq p1, v0, :cond_1

    .line 16
    .line 17
    const/4 v0, 0x3

    .line 18
    if-eq p1, v0, :cond_0

    .line 19
    .line 20
    sget p1, Lcom/transsion/postdetail/R$mipmap;->ic_video_stretch:I

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    sget p1, Lcom/transsion/postdetail/R$mipmap;->ic_video_crop:I

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    sget p1, Lcom/transsion/postdetail/R$mipmap;->ic_video_fit_screen:I

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 35
    .line 36
    .line 37
    :goto_0
    return-void
.end method


# virtual methods
.method public final getOnModelChangeListener()Lcom/transsion/postdetail/ui/view/ImmScaleView$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmScaleView;->g:Lcom/transsion/postdetail/ui/view/ImmScaleView$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setOnModelChangeListener(Lcom/transsion/postdetail/ui/view/ImmScaleView$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmScaleView;->g:Lcom/transsion/postdetail/ui/view/ImmScaleView$a;

    .line 2
    .line 3
    return-void
.end method

.method public final setOps(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmScaleView;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setPageParams(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "subjectId"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmScaleView;->d:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/transsion/postdetail/ui/view/ImmScaleView;->e:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method
