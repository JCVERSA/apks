.class public final Lcom/transsion/postdetail/ui/view/ImmSpeedView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0012\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u001b\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\u0008B#\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0004\u0010\u000bJ\u001f\u0010\u0010\u001a\u00020\u000f2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u000e\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0017\u0010\u0013\u001a\u00020\u000f2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u001f\u0010\u0019\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u00152\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0017\u00a2\u0006\u0004\u0008\u0019\u0010\u001aR\u0018\u0010\r\u001a\u0004\u0018\u00010\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001cR\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001cR\"\u0010%\u001a\u00020\u00178\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R\"\u0010\'\u001a\u00020\u00178\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008&\u0010 \u001a\u0004\u0008\'\u0010\"\"\u0004\u0008(\u0010$\u00a8\u0006)"
    }
    d2 = {
        "Lcom/transsion/postdetail/ui/view/ImmSpeedView;",
        "Landroidx/appcompat/widget/AppCompatTextView;",
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
        "",
        "pageName",
        "subjectId",
        "",
        "setPageParams",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "ops",
        "setOps",
        "(Ljava/lang/String;)V",
        "",
        "speed",
        "",
        "fromInit",
        "updateSpeed",
        "(FZ)V",
        "a",
        "Ljava/lang/String;",
        "b",
        "c",
        "d",
        "Z",
        "getPkStyle",
        "()Z",
        "setPkStyle",
        "(Z)V",
        "pkStyle",
        "e",
        "isPortrait",
        "setPortrait",
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
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    .line 2
    sget-object p1, Lcom/transsion/baselib/helper/d;->a:Lcom/transsion/baselib/helper/d;

    invoke-virtual {p1}, Lcom/transsion/baselib/helper/d;->d()F

    move-result p1

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/transsion/postdetail/ui/view/ImmSpeedView;->updateSpeed(FZ)V

    .line 4
    new-instance p1, Lcom/transsion/postdetail/ui/view/b;

    invoke-direct {p1, p0}, Lcom/transsion/postdetail/ui/view/b;-><init>(Lcom/transsion/postdetail/ui/view/ImmSpeedView;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iput-boolean v0, p0, Lcom/transsion/postdetail/ui/view/ImmSpeedView;->d:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    sget-object p1, Lcom/transsion/baselib/helper/d;->a:Lcom/transsion/baselib/helper/d;

    invoke-virtual {p1}, Lcom/transsion/baselib/helper/d;->d()F

    move-result p1

    const/4 p2, 0x1

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/ui/view/ImmSpeedView;->updateSpeed(FZ)V

    .line 9
    new-instance p1, Lcom/transsion/postdetail/ui/view/b;

    invoke-direct {p1, p0}, Lcom/transsion/postdetail/ui/view/b;-><init>(Lcom/transsion/postdetail/ui/view/ImmSpeedView;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iput-boolean p2, p0, Lcom/transsion/postdetail/ui/view/ImmSpeedView;->d:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 12
    sget-object p1, Lcom/transsion/baselib/helper/d;->a:Lcom/transsion/baselib/helper/d;

    invoke-virtual {p1}, Lcom/transsion/baselib/helper/d;->d()F

    move-result p1

    const/4 p2, 0x1

    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/ui/view/ImmSpeedView;->updateSpeed(FZ)V

    .line 14
    new-instance p1, Lcom/transsion/postdetail/ui/view/b;

    invoke-direct {p1, p0}, Lcom/transsion/postdetail/ui/view/b;-><init>(Lcom/transsion/postdetail/ui/view/ImmSpeedView;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iput-boolean p2, p0, Lcom/transsion/postdetail/ui/view/ImmSpeedView;->d:Z

    return-void
.end method

.method public static synthetic b(Lcom/transsion/postdetail/ui/view/ImmSpeedView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/view/ImmSpeedView;->c(Lcom/transsion/postdetail/ui/view/ImmSpeedView;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final c(Lcom/transsion/postdetail/ui/view/ImmSpeedView;Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmSpeedView;->a:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    sget-object v0, Lqi/h;->a:Lqi/h;

    .line 6
    .line 7
    new-instance v1, Lkotlin/Pair;

    .line 8
    .line 9
    const-string v2, "module_name"

    .line 10
    .line 11
    const-string v3, "speed"

    .line 12
    .line 13
    invoke-direct {v1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    new-instance v2, Lkotlin/Pair;

    .line 17
    .line 18
    const-string v3, "subject_id"

    .line 19
    .line 20
    iget-object v4, p0, Lcom/transsion/postdetail/ui/view/ImmSpeedView;->b:Ljava/lang/String;

    .line 21
    .line 22
    invoke-direct {v2, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    new-instance v3, Lkotlin/Pair;

    .line 26
    .line 27
    const-string v4, "type"

    .line 28
    .line 29
    const-string v5, "0"

    .line 30
    .line 31
    invoke-direct {v3, v4, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    const/4 v4, 0x3

    .line 35
    new-array v4, v4, [Lkotlin/Pair;

    .line 36
    .line 37
    const/4 v5, 0x0

    .line 38
    aput-object v1, v4, v5

    .line 39
    .line 40
    const/4 v1, 0x1

    .line 41
    aput-object v2, v4, v1

    .line 42
    .line 43
    const/4 v1, 0x2

    .line 44
    aput-object v3, v4, v1

    .line 45
    .line 46
    invoke-static {v4}, Lkotlin/collections/MapsKt;->m([Lkotlin/Pair;)Ljava/util/Map;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, p1, v1}, Lqi/h;->o(Ljava/lang/String;Ljava/util/Map;)V

    .line 51
    .line 52
    .line 53
    :cond_0
    new-instance p1, Lcom/transsion/postdetail/ui/dialog/SpeedConfigDialog;

    .line 54
    .line 55
    invoke-direct {p1}, Lcom/transsion/postdetail/ui/dialog/SpeedConfigDialog;-><init>()V

    .line 56
    .line 57
    .line 58
    iget-boolean v0, p0, Lcom/transsion/postdetail/ui/view/ImmSpeedView;->e:Z

    .line 59
    .line 60
    invoke-virtual {p1, v0}, Lcom/transsion/postdetail/ui/dialog/SpeedConfigDialog;->q0(Z)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    const-string v0, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity"

    .line 68
    .line 69
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    check-cast p0, Landroidx/fragment/app/FragmentActivity;

    .line 73
    .line 74
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    const-string v0, "getSupportFragmentManager(...)"

    .line 79
    .line 80
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    const-string v0, "SpeedConfigDialog"

    .line 84
    .line 85
    invoke-virtual {p1, p0, v0}, Lcom/transsion/baseui/dialog/BaseDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method public static synthetic updateSpeed$default(Lcom/transsion/postdetail/ui/view/ImmSpeedView;FZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/ui/view/ImmSpeedView;->updateSpeed(FZ)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final getPkStyle()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/postdetail/ui/view/ImmSpeedView;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isPortrait()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/postdetail/ui/view/ImmSpeedView;->e:Z

    .line 2
    .line 3
    return v0
.end method

.method public final setOps(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmSpeedView;->c:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmSpeedView;->a:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/transsion/postdetail/ui/view/ImmSpeedView;->b:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method public final setPkStyle(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/postdetail/ui/view/ImmSpeedView;->d:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setPortrait(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/postdetail/ui/view/ImmSpeedView;->e:Z

    .line 2
    .line 3
    return-void
.end method

.method public final updateSpeed(FZ)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/high16 v2, 0x3f800000    # 1.0f

    .line 4
    .line 5
    cmpg-float v2, p1, v2

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    iget-boolean v2, p0, Lcom/transsion/postdetail/ui/view/ImmSpeedView;->d:Z

    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    sget v2, Lcom/transsion/postdetail/R$drawable;->ic_player_speed:I

    .line 15
    .line 16
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    invoke-virtual {p0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 24
    .line 25
    .line 26
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    .line 27
    .line 28
    float-to-int v2, p1

    .line 29
    int-to-float v3, v2

    .line 30
    cmpg-float v3, v3, p1

    .line 31
    .line 32
    if-nez v3, :cond_1

    .line 33
    .line 34
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    :goto_0
    new-array v3, v1, [Ljava/lang/Object;

    .line 44
    .line 45
    aput-object v2, v3, v0

    .line 46
    .line 47
    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    const-string v3, "%sx"

    .line 52
    .line 53
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    const-string v3, "format(...)"

    .line 58
    .line 59
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    .line 64
    .line 65
    :goto_1
    if-nez p2, :cond_2

    .line 66
    .line 67
    iget-object p2, p0, Lcom/transsion/postdetail/ui/view/ImmSpeedView;->a:Ljava/lang/String;

    .line 68
    .line 69
    if-eqz p2, :cond_2

    .line 70
    .line 71
    sget-object v2, Lqi/h;->a:Lqi/h;

    .line 72
    .line 73
    new-instance v3, Lkotlin/Pair;

    .line 74
    .line 75
    const-string v4, "module_name"

    .line 76
    .line 77
    const-string v5, "speed"

    .line 78
    .line 79
    invoke-direct {v3, v4, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    new-instance v4, Lkotlin/Pair;

    .line 83
    .line 84
    const-string v5, "subject_id"

    .line 85
    .line 86
    iget-object v6, p0, Lcom/transsion/postdetail/ui/view/ImmSpeedView;->b:Ljava/lang/String;

    .line 87
    .line 88
    invoke-direct {v4, v5, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    new-instance v5, Lkotlin/Pair;

    .line 92
    .line 93
    const-string v6, "ops"

    .line 94
    .line 95
    iget-object v7, p0, Lcom/transsion/postdetail/ui/view/ImmSpeedView;->c:Ljava/lang/String;

    .line 96
    .line 97
    invoke-direct {v5, v6, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    new-instance v6, Lkotlin/Pair;

    .line 101
    .line 102
    const-string v7, "type"

    .line 103
    .line 104
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-direct {v6, v7, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    const/4 p1, 0x4

    .line 112
    new-array p1, p1, [Lkotlin/Pair;

    .line 113
    .line 114
    aput-object v3, p1, v0

    .line 115
    .line 116
    aput-object v4, p1, v1

    .line 117
    .line 118
    const/4 v0, 0x2

    .line 119
    aput-object v5, p1, v0

    .line 120
    .line 121
    const/4 v0, 0x3

    .line 122
    aput-object v6, p1, v0

    .line 123
    .line 124
    invoke-static {p1}, Lkotlin/collections/MapsKt;->m([Lkotlin/Pair;)Ljava/util/Map;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-virtual {v2, p2, p1}, Lqi/h;->o(Ljava/lang/String;Ljava/util/Map;)V

    .line 129
    .line 130
    .line 131
    :cond_2
    return-void
.end method
