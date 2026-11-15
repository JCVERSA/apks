.class public Lcom/transsion/commercialization/gameres/GameResView;
.super Lcom/noober/background/view/BLConstraintLayout;
.source "source.java"

# interfaces
.implements Lwj/c;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010%\n\u0002\u0008\u0004\u0008\u0016\u0018\u00002\u00020\u00012\u00020\u0002B\u0011\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006B\u001b\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\tB#\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0005\u0010\u000cJ\u0017\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R\u001a\u0010\u001b\u001a\u00020\u00168\u0004X\u0084\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001aR\"\u0010!\u001a\u00020\u00128\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010\u0015R\u0018\u0010$\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R \u0010(\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00120%8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008&\u0010\'\u00a8\u0006)"
    }
    d2 = {
        "Lcom/transsion/commercialization/gameres/GameResView;",
        "Lcom/noober/background/view/BLConstraintLayout;",
        "Lwj/c;",
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
        "Luj/a;",
        "info",
        "",
        "setContent",
        "(Luj/a;)V",
        "",
        "style",
        "setPageStyle",
        "(Ljava/lang/String;)V",
        "Lsj/j;",
        "a",
        "Lsj/j;",
        "getViewBinding",
        "()Lsj/j;",
        "viewBinding",
        "b",
        "Ljava/lang/String;",
        "getGamePageStyle",
        "()Ljava/lang/String;",
        "setGamePageStyle",
        "gamePageStyle",
        "c",
        "Luj/a;",
        "infoData",
        "",
        "d",
        "Ljava/util/Map;",
        "pageStyleBrowsedMap",
        "Commercialization_psRelease"
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
.field private final a:Lsj/j;

.field private b:Ljava/lang/String;

.field private c:Luj/a;

.field private final d:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/noober/background/view/BLConstraintLayout;-><init>(Landroid/content/Context;)V

    .line 2
    const-string p1, "detail"

    iput-object p1, p0, Lcom/transsion/commercialization/gameres/GameResView;->b:Ljava/lang/String;

    .line 3
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/transsion/commercialization/gameres/GameResView;->d:Ljava/util/Map;

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/transsion/commercialization/R$layout;->view_game_resource:I

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 5
    invoke-static {p0}, Lsj/j;->a(Landroid/view/View;)Lsj/j;

    move-result-object p1

    const-string v0, "bind(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/commercialization/gameres/GameResView;->a:Lsj/j;

    .line 6
    new-instance p1, Lcom/noober/background/drawable/DrawableCreator$Builder;

    invoke-direct {p1}, Lcom/noober/background/drawable/DrawableCreator$Builder;-><init>()V

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/noober/background/drawable/DrawableCreator$Builder;->setCornersRadius(F)Lcom/noober/background/drawable/DrawableCreator$Builder;

    move-result-object p1

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/tn/lib/widget/R$color;->module_04:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/noober/background/drawable/DrawableCreator$Builder;->setSolidColor(I)Lcom/noober/background/drawable/DrawableCreator$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/noober/background/drawable/DrawableCreator$Builder;->build()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/noober/background/view/BLConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    const-string p1, "detail"

    iput-object p1, p0, Lcom/transsion/commercialization/gameres/GameResView;->b:Ljava/lang/String;

    .line 11
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/transsion/commercialization/gameres/GameResView;->d:Ljava/util/Map;

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/transsion/commercialization/R$layout;->view_game_resource:I

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 13
    invoke-static {p0}, Lsj/j;->a(Landroid/view/View;)Lsj/j;

    move-result-object p1

    const-string p2, "bind(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/commercialization/gameres/GameResView;->a:Lsj/j;

    .line 14
    new-instance p1, Lcom/noober/background/drawable/DrawableCreator$Builder;

    invoke-direct {p1}, Lcom/noober/background/drawable/DrawableCreator$Builder;-><init>()V

    const/high16 p2, 0x41000000    # 8.0f

    invoke-static {p2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Lcom/noober/background/drawable/DrawableCreator$Builder;->setCornersRadius(F)Lcom/noober/background/drawable/DrawableCreator$Builder;

    move-result-object p1

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/tn/lib/widget/R$color;->module_04:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/noober/background/drawable/DrawableCreator$Builder;->setSolidColor(I)Lcom/noober/background/drawable/DrawableCreator$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/noober/background/drawable/DrawableCreator$Builder;->build()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 16
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/noober/background/view/BLConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    const-string p1, "detail"

    iput-object p1, p0, Lcom/transsion/commercialization/gameres/GameResView;->b:Ljava/lang/String;

    .line 19
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/transsion/commercialization/gameres/GameResView;->d:Ljava/util/Map;

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/transsion/commercialization/R$layout;->view_game_resource:I

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 21
    invoke-static {p0}, Lsj/j;->a(Landroid/view/View;)Lsj/j;

    move-result-object p1

    const-string p2, "bind(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/commercialization/gameres/GameResView;->a:Lsj/j;

    .line 22
    new-instance p1, Lcom/noober/background/drawable/DrawableCreator$Builder;

    invoke-direct {p1}, Lcom/noober/background/drawable/DrawableCreator$Builder;-><init>()V

    const/high16 p2, 0x41000000    # 8.0f

    invoke-static {p2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Lcom/noober/background/drawable/DrawableCreator$Builder;->setCornersRadius(F)Lcom/noober/background/drawable/DrawableCreator$Builder;

    move-result-object p1

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/tn/lib/widget/R$color;->module_04:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/noober/background/drawable/DrawableCreator$Builder;->setSolidColor(I)Lcom/noober/background/drawable/DrawableCreator$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/noober/background/drawable/DrawableCreator$Builder;->build()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 24
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method protected final getGamePageStyle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/commercialization/gameres/GameResView;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method protected final getViewBinding()Lsj/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/commercialization/gameres/GameResView;->a:Lsj/j;

    .line 2
    .line 3
    return-object v0
.end method

.method public setContent(Luj/a;)V
    .locals 3

    .line 1
    const-string v0, "info"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/commercialization/gameres/GameResView;->c:Luj/a;

    .line 7
    .line 8
    sget-object v0, Lni/f;->a:Lni/f$a;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, "getContext(...)"

    .line 15
    .line 16
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p1}, Luj/a;->c()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const/high16 v1, 0x42400000    # 48.0f

    .line 32
    .line 33
    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-virtual {v0, v1}, Lni/f$b;->m(I)Lni/f$b;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/transsion/commercialization/gameres/GameResView;->a:Lsj/j;

    .line 42
    .line 43
    iget-object v1, v1, Lsj/j;->b:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 44
    .line 45
    const-string v2, "ivCover"

    .line 46
    .line 47
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/transsion/commercialization/gameres/GameResView;->a:Lsj/j;

    .line 54
    .line 55
    iget-object v0, v0, Lsj/j;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 56
    .line 57
    invoke-virtual {p1}, Luj/a;->d()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/transsion/commercialization/gameres/GameResView;->a:Lsj/j;

    .line 65
    .line 66
    iget-object v0, v0, Lsj/j;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 67
    .line 68
    invoke-virtual {p1}, Luj/a;->f()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/transsion/commercialization/gameres/GameResView;->a:Lsj/j;

    .line 76
    .line 77
    iget-object v0, v0, Lsj/j;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 78
    .line 79
    invoke-virtual {p1}, Luj/a;->e()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/transsion/commercialization/gameres/GameResView;->a:Lsj/j;

    .line 87
    .line 88
    iget-object v0, v0, Lsj/j;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 89
    .line 90
    invoke-virtual {p1}, Luj/a;->b()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method protected final setGamePageStyle(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/commercialization/gameres/GameResView;->b:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public setPageStyle(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "style"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/commercialization/gameres/GameResView;->b:Ljava/lang/String;

    .line 7
    .line 8
    const-string v0, "fullscreen"

    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/high16 v1, 0x41000000    # 8.0f

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    new-instance v0, Lcom/noober/background/drawable/DrawableCreator$Builder;

    .line 19
    .line 20
    invoke-direct {v0}, Lcom/noober/background/drawable/DrawableCreator$Builder;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    int-to-float v1, v1

    .line 28
    invoke-virtual {v0, v1}, Lcom/noober/background/drawable/DrawableCreator$Builder;->setCornersRadius(F)Lcom/noober/background/drawable/DrawableCreator$Builder;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    sget v2, Lcom/tn/lib/widget/R$color;->black_50:I

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    invoke-virtual {v0, v1}, Lcom/noober/background/drawable/DrawableCreator$Builder;->setSolidColor(I)Lcom/noober/background/drawable/DrawableCreator$Builder;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lcom/noober/background/drawable/DrawableCreator$Builder;->build()Landroid/graphics/drawable/Drawable;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/transsion/commercialization/gameres/GameResView;->a:Lsj/j;

    .line 58
    .line 59
    iget-object v0, v0, Lsj/j;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    sget v2, Lcom/tn/lib/widget/R$color;->white:I

    .line 70
    .line 71
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    sget v1, Lcom/tn/lib/widget/R$color;->white_60:I

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    iget-object v1, p0, Lcom/transsion/commercialization/gameres/GameResView;->a:Lsj/j;

    .line 93
    .line 94
    iget-object v1, v1, Lsj/j;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 95
    .line 96
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 97
    .line 98
    .line 99
    iget-object v1, p0, Lcom/transsion/commercialization/gameres/GameResView;->a:Lsj/j;

    .line 100
    .line 101
    iget-object v1, v1, Lsj/j;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 102
    .line 103
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 104
    .line 105
    .line 106
    iget-object v1, p0, Lcom/transsion/commercialization/gameres/GameResView;->a:Lsj/j;

    .line 107
    .line 108
    iget-object v1, v1, Lsj/j;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 109
    .line 110
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 111
    .line 112
    .line 113
    iget-object v1, p0, Lcom/transsion/commercialization/gameres/GameResView;->a:Lsj/j;

    .line 114
    .line 115
    iget-object v1, v1, Lsj/j;->i:Landroid/view/View;

    .line 116
    .line 117
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_0
    const-string v0, "detail"

    .line 122
    .line 123
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-eqz v0, :cond_1

    .line 128
    .line 129
    new-instance v0, Lcom/noober/background/drawable/DrawableCreator$Builder;

    .line 130
    .line 131
    invoke-direct {v0}, Lcom/noober/background/drawable/DrawableCreator$Builder;-><init>()V

    .line 132
    .line 133
    .line 134
    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    int-to-float v1, v1

    .line 139
    invoke-virtual {v0, v1}, Lcom/noober/background/drawable/DrawableCreator$Builder;->setCornersRadius(F)Lcom/noober/background/drawable/DrawableCreator$Builder;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    sget v2, Lcom/tn/lib/widget/R$color;->module_04:I

    .line 152
    .line 153
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    invoke-virtual {v0, v1}, Lcom/noober/background/drawable/DrawableCreator$Builder;->setSolidColor(I)Lcom/noober/background/drawable/DrawableCreator$Builder;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-virtual {v0}, Lcom/noober/background/drawable/DrawableCreator$Builder;->build()Landroid/graphics/drawable/Drawable;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 166
    .line 167
    .line 168
    iget-object v0, p0, Lcom/transsion/commercialization/gameres/GameResView;->a:Lsj/j;

    .line 169
    .line 170
    iget-object v0, v0, Lsj/j;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 171
    .line 172
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    sget v2, Lcom/tn/lib/widget/R$color;->text_01:I

    .line 181
    .line 182
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    sget v1, Lcom/tn/lib/widget/R$color;->text_01:I

    .line 198
    .line 199
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    iget-object v1, p0, Lcom/transsion/commercialization/gameres/GameResView;->a:Lsj/j;

    .line 204
    .line 205
    iget-object v1, v1, Lsj/j;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 206
    .line 207
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 208
    .line 209
    .line 210
    iget-object v1, p0, Lcom/transsion/commercialization/gameres/GameResView;->a:Lsj/j;

    .line 211
    .line 212
    iget-object v1, v1, Lsj/j;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 213
    .line 214
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 215
    .line 216
    .line 217
    iget-object v1, p0, Lcom/transsion/commercialization/gameres/GameResView;->a:Lsj/j;

    .line 218
    .line 219
    iget-object v1, v1, Lsj/j;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 220
    .line 221
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 222
    .line 223
    .line 224
    iget-object v1, p0, Lcom/transsion/commercialization/gameres/GameResView;->a:Lsj/j;

    .line 225
    .line 226
    iget-object v1, v1, Lsj/j;->i:Landroid/view/View;

    .line 227
    .line 228
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 229
    .line 230
    .line 231
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/commercialization/gameres/GameResView;->d:Ljava/util/Map;

    .line 232
    .line 233
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    if-nez v0, :cond_2

    .line 238
    .line 239
    iget-object v0, p0, Lcom/transsion/commercialization/gameres/GameResView;->d:Ljava/util/Map;

    .line 240
    .line 241
    const-string v1, ""

    .line 242
    .line 243
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    iget-object v0, p0, Lcom/transsion/commercialization/gameres/GameResView;->c:Luj/a;

    .line 247
    .line 248
    if-eqz v0, :cond_2

    .line 249
    .line 250
    sget-object v1, Lvj/a;->a:Lvj/a;

    .line 251
    .line 252
    invoke-virtual {v1, v0, p1}, Lvj/a;->c(Luj/a;Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    :cond_2
    return-void
.end method
