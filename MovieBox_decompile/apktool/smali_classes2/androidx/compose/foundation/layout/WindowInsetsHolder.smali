.class public final Landroidx/compose/foundation/layout/WindowInsetsHolder;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;
    }
.end annotation


# static fields
.field private static A:Z

.field public static final x:Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;

.field public static final y:I

.field private static final z:Ljava/util/WeakHashMap;


# instance fields
.field private final a:Landroidx/compose/foundation/layout/a;

.field private final b:Landroidx/compose/foundation/layout/a;

.field private final c:Landroidx/compose/foundation/layout/a;

.field private final d:Landroidx/compose/foundation/layout/a;

.field private final e:Landroidx/compose/foundation/layout/a;

.field private final f:Landroidx/compose/foundation/layout/a;

.field private final g:Landroidx/compose/foundation/layout/a;

.field private final h:Landroidx/compose/foundation/layout/a;

.field private final i:Landroidx/compose/foundation/layout/a;

.field private final j:Landroidx/compose/foundation/layout/g0;

.field private final k:Landroidx/compose/foundation/layout/h0;

.field private final l:Landroidx/compose/foundation/layout/h0;

.field private final m:Landroidx/compose/foundation/layout/h0;

.field private final n:Landroidx/compose/foundation/layout/g0;

.field private final o:Landroidx/compose/foundation/layout/g0;

.field private final p:Landroidx/compose/foundation/layout/g0;

.field private final q:Landroidx/compose/foundation/layout/g0;

.field private final r:Landroidx/compose/foundation/layout/g0;

.field private final s:Landroidx/compose/foundation/layout/g0;

.field private final t:Landroidx/compose/foundation/layout/g0;

.field private final u:Z

.field private v:I

.field private final w:Landroidx/compose/foundation/layout/InsetsListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->x:Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    sput v0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->y:I

    .line 12
    .line 13
    new-instance v0, Ljava/util/WeakHashMap;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    sput-object v0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->z:Ljava/util/WeakHashMap;

    .line 19
    .line 20
    return-void
.end method

.method private constructor <init>(Landroidx/core/view/WindowInsetsCompat;Landroid/view/View;)V
    .locals 9

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->x:Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->captionBar()I

    move-result v1

    const-string v2, "captionBar"

    invoke-static {v0, p1, v1, v2}, Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;->a(Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;Landroidx/core/view/WindowInsetsCompat;ILjava/lang/String;)Landroidx/compose/foundation/layout/a;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->a:Landroidx/compose/foundation/layout/a;

    .line 4
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->displayCutout()I

    move-result v1

    const-string v2, "displayCutout"

    invoke-static {v0, p1, v1, v2}, Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;->a(Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;Landroidx/core/view/WindowInsetsCompat;ILjava/lang/String;)Landroidx/compose/foundation/layout/a;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->b:Landroidx/compose/foundation/layout/a;

    .line 5
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v2

    const-string v3, "ime"

    invoke-static {v0, p1, v2, v3}, Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;->a(Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;Landroidx/core/view/WindowInsetsCompat;ILjava/lang/String;)Landroidx/compose/foundation/layout/a;

    move-result-object v2

    iput-object v2, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->c:Landroidx/compose/foundation/layout/a;

    .line 6
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->mandatorySystemGestures()I

    move-result v3

    .line 7
    const-string v4, "mandatorySystemGestures"

    .line 8
    invoke-static {v0, p1, v3, v4}, Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;->a(Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;Landroidx/core/view/WindowInsetsCompat;ILjava/lang/String;)Landroidx/compose/foundation/layout/a;

    move-result-object v3

    iput-object v3, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->d:Landroidx/compose/foundation/layout/a;

    .line 9
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->navigationBars()I

    move-result v4

    const-string v5, "navigationBars"

    invoke-static {v0, p1, v4, v5}, Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;->a(Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;Landroidx/core/view/WindowInsetsCompat;ILjava/lang/String;)Landroidx/compose/foundation/layout/a;

    move-result-object v4

    iput-object v4, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->e:Landroidx/compose/foundation/layout/a;

    .line 10
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->statusBars()I

    move-result v4

    const-string v5, "statusBars"

    invoke-static {v0, p1, v4, v5}, Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;->a(Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;Landroidx/core/view/WindowInsetsCompat;ILjava/lang/String;)Landroidx/compose/foundation/layout/a;

    move-result-object v4

    iput-object v4, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->f:Landroidx/compose/foundation/layout/a;

    .line 11
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v4

    const-string v5, "systemBars"

    invoke-static {v0, p1, v4, v5}, Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;->a(Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;Landroidx/core/view/WindowInsetsCompat;ILjava/lang/String;)Landroidx/compose/foundation/layout/a;

    move-result-object v4

    iput-object v4, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->g:Landroidx/compose/foundation/layout/a;

    .line 12
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemGestures()I

    move-result v5

    const-string v6, "systemGestures"

    invoke-static {v0, p1, v5, v6}, Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;->a(Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;Landroidx/core/view/WindowInsetsCompat;ILjava/lang/String;)Landroidx/compose/foundation/layout/a;

    move-result-object v5

    iput-object v5, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->h:Landroidx/compose/foundation/layout/a;

    .line 13
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->tappableElement()I

    move-result v6

    const-string v7, "tappableElement"

    invoke-static {v0, p1, v6, v7}, Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;->a(Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;Landroidx/core/view/WindowInsetsCompat;ILjava/lang/String;)Landroidx/compose/foundation/layout/a;

    move-result-object v6

    iput-object v6, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->i:Landroidx/compose/foundation/layout/a;

    if-eqz p1, :cond_0

    .line 14
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->getDisplayCutout()Landroidx/core/view/DisplayCutoutCompat;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroidx/core/view/DisplayCutoutCompat;->getWaterfallInsets()Lz0/c;

    move-result-object v7

    if-nez v7, :cond_1

    :cond_0
    sget-object v7, Lz0/c;->e:Lz0/c;

    :cond_1
    const-string v8, "waterfall"

    invoke-static {v7, v8}, Landroidx/compose/foundation/layout/j0;->a(Lz0/c;Ljava/lang/String;)Landroidx/compose/foundation/layout/g0;

    move-result-object v7

    iput-object v7, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->j:Landroidx/compose/foundation/layout/g0;

    .line 15
    invoke-static {v4, v2}, Landroidx/compose/foundation/layout/i0;->c(Landroidx/compose/foundation/layout/h0;Landroidx/compose/foundation/layout/h0;)Landroidx/compose/foundation/layout/h0;

    move-result-object v2

    invoke-static {v2, v1}, Landroidx/compose/foundation/layout/i0;->c(Landroidx/compose/foundation/layout/h0;Landroidx/compose/foundation/layout/h0;)Landroidx/compose/foundation/layout/h0;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->k:Landroidx/compose/foundation/layout/h0;

    .line 16
    invoke-static {v6, v3}, Landroidx/compose/foundation/layout/i0;->c(Landroidx/compose/foundation/layout/h0;Landroidx/compose/foundation/layout/h0;)Landroidx/compose/foundation/layout/h0;

    move-result-object v2

    invoke-static {v2, v5}, Landroidx/compose/foundation/layout/i0;->c(Landroidx/compose/foundation/layout/h0;Landroidx/compose/foundation/layout/h0;)Landroidx/compose/foundation/layout/h0;

    move-result-object v2

    invoke-static {v2, v7}, Landroidx/compose/foundation/layout/i0;->c(Landroidx/compose/foundation/layout/h0;Landroidx/compose/foundation/layout/h0;)Landroidx/compose/foundation/layout/h0;

    move-result-object v2

    iput-object v2, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->l:Landroidx/compose/foundation/layout/h0;

    .line 17
    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/i0;->c(Landroidx/compose/foundation/layout/h0;Landroidx/compose/foundation/layout/h0;)Landroidx/compose/foundation/layout/h0;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->m:Landroidx/compose/foundation/layout/h0;

    .line 18
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->captionBar()I

    move-result v1

    .line 19
    const-string v2, "captionBarIgnoringVisibility"

    .line 20
    invoke-static {v0, p1, v1, v2}, Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;->b(Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;Landroidx/core/view/WindowInsetsCompat;ILjava/lang/String;)Landroidx/compose/foundation/layout/g0;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->n:Landroidx/compose/foundation/layout/g0;

    .line 21
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->navigationBars()I

    move-result v1

    const-string v2, "navigationBarsIgnoringVisibility"

    .line 22
    invoke-static {v0, p1, v1, v2}, Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;->b(Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;Landroidx/core/view/WindowInsetsCompat;ILjava/lang/String;)Landroidx/compose/foundation/layout/g0;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->o:Landroidx/compose/foundation/layout/g0;

    .line 23
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->statusBars()I

    move-result v1

    .line 24
    const-string v2, "statusBarsIgnoringVisibility"

    .line 25
    invoke-static {v0, p1, v1, v2}, Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;->b(Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;Landroidx/core/view/WindowInsetsCompat;ILjava/lang/String;)Landroidx/compose/foundation/layout/g0;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->p:Landroidx/compose/foundation/layout/g0;

    .line 26
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v1

    .line 27
    const-string v2, "systemBarsIgnoringVisibility"

    .line 28
    invoke-static {v0, p1, v1, v2}, Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;->b(Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;Landroidx/core/view/WindowInsetsCompat;ILjava/lang/String;)Landroidx/compose/foundation/layout/g0;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->q:Landroidx/compose/foundation/layout/g0;

    .line 29
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->tappableElement()I

    move-result v1

    .line 30
    const-string v2, "tappableElementIgnoringVisibility"

    .line 31
    invoke-static {v0, p1, v1, v2}, Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;->b(Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;Landroidx/core/view/WindowInsetsCompat;ILjava/lang/String;)Landroidx/compose/foundation/layout/g0;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->r:Landroidx/compose/foundation/layout/g0;

    .line 32
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v1

    .line 33
    const-string v2, "imeAnimationTarget"

    .line 34
    invoke-static {v0, p1, v1, v2}, Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;->b(Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;Landroidx/core/view/WindowInsetsCompat;ILjava/lang/String;)Landroidx/compose/foundation/layout/g0;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->s:Landroidx/compose/foundation/layout/g0;

    .line 35
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v1

    .line 36
    const-string v2, "imeAnimationSource"

    .line 37
    invoke-static {v0, p1, v1, v2}, Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;->b(Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;Landroidx/core/view/WindowInsetsCompat;ILjava/lang/String;)Landroidx/compose/foundation/layout/g0;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->t:Landroidx/compose/foundation/layout/g0;

    .line 38
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p2, p1, Landroid/view/View;

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_2
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_3

    sget p2, Landroidx/compose/ui/R$id;->consume_window_insets_tag:I

    invoke-virtual {p1, p2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_3
    move-object p1, v0

    :goto_1
    instance-of p2, p1, Ljava/lang/Boolean;

    if-eqz p2, :cond_4

    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_2

    :cond_5
    const/4 p1, 0x1

    :goto_2
    iput-boolean p1, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->u:Z

    .line 39
    new-instance p1, Landroidx/compose/foundation/layout/InsetsListener;

    invoke-direct {p1, p0}, Landroidx/compose/foundation/layout/InsetsListener;-><init>(Landroidx/compose/foundation/layout/WindowInsetsHolder;)V

    iput-object p1, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->w:Landroidx/compose/foundation/layout/InsetsListener;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/core/view/WindowInsetsCompat;Landroid/view/View;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/layout/WindowInsetsHolder;-><init>(Landroidx/core/view/WindowInsetsCompat;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic a()Ljava/util/WeakHashMap;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->z:Ljava/util/WeakHashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic r(Landroidx/compose/foundation/layout/WindowInsetsHolder;Landroidx/core/view/WindowInsetsCompat;IILjava/lang/Object;)V
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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/layout/WindowInsetsHolder;->q(Landroidx/core/view/WindowInsetsCompat;I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final b(Landroid/view/View;)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->v:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    iput v0, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->v:I

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setWindowInsetsAnimationCallback(Landroid/view/View;Landroidx/core/view/WindowInsetsAnimationCompat$Callback;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->w:Landroidx/compose/foundation/layout/InsetsListener;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final c()Landroidx/compose/foundation/layout/a;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->a:Landroidx/compose/foundation/layout/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->u:Z

    .line 2
    .line 3
    return v0
.end method

.method public final e()Landroidx/compose/foundation/layout/a;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->b:Landroidx/compose/foundation/layout/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final f()Landroidx/compose/foundation/layout/a;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->c:Landroidx/compose/foundation/layout/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final g()Landroidx/compose/foundation/layout/a;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->d:Landroidx/compose/foundation/layout/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h()Landroidx/compose/foundation/layout/a;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->e:Landroidx/compose/foundation/layout/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final i()Landroidx/compose/foundation/layout/h0;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->m:Landroidx/compose/foundation/layout/h0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final j()Landroidx/compose/foundation/layout/h0;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->k:Landroidx/compose/foundation/layout/h0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final k()Landroidx/compose/foundation/layout/h0;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->l:Landroidx/compose/foundation/layout/h0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final l()Landroidx/compose/foundation/layout/a;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->f:Landroidx/compose/foundation/layout/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final m()Landroidx/compose/foundation/layout/a;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->g:Landroidx/compose/foundation/layout/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final n()Landroidx/compose/foundation/layout/a;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->h:Landroidx/compose/foundation/layout/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final o()Landroidx/compose/foundation/layout/g0;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->j:Landroidx/compose/foundation/layout/g0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final p(Landroid/view/View;)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->v:I

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->w:Landroidx/compose/foundation/layout/InsetsListener;

    .line 6
    .line 7
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/View;->requestApplyInsets()V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->w:Landroidx/compose/foundation/layout/InsetsListener;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->w:Landroidx/compose/foundation/layout/InsetsListener;

    .line 25
    .line 26
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setWindowInsetsAnimationCallback(Landroid/view/View;Landroidx/core/view/WindowInsetsAnimationCompat$Callback;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    iget p1, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->v:I

    .line 30
    .line 31
    add-int/lit8 p1, p1, 0x1

    .line 32
    .line 33
    iput p1, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->v:I

    .line 34
    .line 35
    return-void
.end method

.method public final q(Landroidx/core/view/WindowInsetsCompat;I)V
    .locals 1

    .line 1
    sget-boolean v0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->A:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsets()Landroid/view/WindowInsets;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/WindowInsets;)Landroidx/core/view/WindowInsetsCompat;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->a:Landroidx/compose/foundation/layout/a;

    .line 17
    .line 18
    invoke-virtual {v0, p1, p2}, Landroidx/compose/foundation/layout/a;->h(Landroidx/core/view/WindowInsetsCompat;I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->c:Landroidx/compose/foundation/layout/a;

    .line 22
    .line 23
    invoke-virtual {v0, p1, p2}, Landroidx/compose/foundation/layout/a;->h(Landroidx/core/view/WindowInsetsCompat;I)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->b:Landroidx/compose/foundation/layout/a;

    .line 27
    .line 28
    invoke-virtual {v0, p1, p2}, Landroidx/compose/foundation/layout/a;->h(Landroidx/core/view/WindowInsetsCompat;I)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->e:Landroidx/compose/foundation/layout/a;

    .line 32
    .line 33
    invoke-virtual {v0, p1, p2}, Landroidx/compose/foundation/layout/a;->h(Landroidx/core/view/WindowInsetsCompat;I)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->f:Landroidx/compose/foundation/layout/a;

    .line 37
    .line 38
    invoke-virtual {v0, p1, p2}, Landroidx/compose/foundation/layout/a;->h(Landroidx/core/view/WindowInsetsCompat;I)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->g:Landroidx/compose/foundation/layout/a;

    .line 42
    .line 43
    invoke-virtual {v0, p1, p2}, Landroidx/compose/foundation/layout/a;->h(Landroidx/core/view/WindowInsetsCompat;I)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->h:Landroidx/compose/foundation/layout/a;

    .line 47
    .line 48
    invoke-virtual {v0, p1, p2}, Landroidx/compose/foundation/layout/a;->h(Landroidx/core/view/WindowInsetsCompat;I)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->i:Landroidx/compose/foundation/layout/a;

    .line 52
    .line 53
    invoke-virtual {v0, p1, p2}, Landroidx/compose/foundation/layout/a;->h(Landroidx/core/view/WindowInsetsCompat;I)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->d:Landroidx/compose/foundation/layout/a;

    .line 57
    .line 58
    invoke-virtual {v0, p1, p2}, Landroidx/compose/foundation/layout/a;->h(Landroidx/core/view/WindowInsetsCompat;I)V

    .line 59
    .line 60
    .line 61
    if-nez p2, :cond_1

    .line 62
    .line 63
    iget-object p2, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->n:Landroidx/compose/foundation/layout/g0;

    .line 64
    .line 65
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->captionBar()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsetsIgnoringVisibility(I)Lz0/c;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-static {v0}, Landroidx/compose/foundation/layout/j0;->b(Lz0/c;)Landroidx/compose/foundation/layout/r;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {p2, v0}, Landroidx/compose/foundation/layout/g0;->f(Landroidx/compose/foundation/layout/r;)V

    .line 78
    .line 79
    .line 80
    iget-object p2, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->o:Landroidx/compose/foundation/layout/g0;

    .line 81
    .line 82
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->navigationBars()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsetsIgnoringVisibility(I)Lz0/c;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-static {v0}, Landroidx/compose/foundation/layout/j0;->b(Lz0/c;)Landroidx/compose/foundation/layout/r;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {p2, v0}, Landroidx/compose/foundation/layout/g0;->f(Landroidx/compose/foundation/layout/r;)V

    .line 95
    .line 96
    .line 97
    iget-object p2, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->p:Landroidx/compose/foundation/layout/g0;

    .line 98
    .line 99
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->statusBars()I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsetsIgnoringVisibility(I)Lz0/c;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-static {v0}, Landroidx/compose/foundation/layout/j0;->b(Lz0/c;)Landroidx/compose/foundation/layout/r;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {p2, v0}, Landroidx/compose/foundation/layout/g0;->f(Landroidx/compose/foundation/layout/r;)V

    .line 112
    .line 113
    .line 114
    iget-object p2, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->q:Landroidx/compose/foundation/layout/g0;

    .line 115
    .line 116
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsetsIgnoringVisibility(I)Lz0/c;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-static {v0}, Landroidx/compose/foundation/layout/j0;->b(Lz0/c;)Landroidx/compose/foundation/layout/r;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {p2, v0}, Landroidx/compose/foundation/layout/g0;->f(Landroidx/compose/foundation/layout/r;)V

    .line 129
    .line 130
    .line 131
    iget-object p2, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->r:Landroidx/compose/foundation/layout/g0;

    .line 132
    .line 133
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->tappableElement()I

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsetsIgnoringVisibility(I)Lz0/c;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-static {v0}, Landroidx/compose/foundation/layout/j0;->b(Lz0/c;)Landroidx/compose/foundation/layout/r;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-virtual {p2, v0}, Landroidx/compose/foundation/layout/g0;->f(Landroidx/compose/foundation/layout/r;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->getDisplayCutout()Landroidx/core/view/DisplayCutoutCompat;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    if-eqz p1, :cond_1

    .line 153
    .line 154
    invoke-virtual {p1}, Landroidx/core/view/DisplayCutoutCompat;->getWaterfallInsets()Lz0/c;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    iget-object p2, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->j:Landroidx/compose/foundation/layout/g0;

    .line 159
    .line 160
    invoke-static {p1}, Landroidx/compose/foundation/layout/j0;->b(Lz0/c;)Landroidx/compose/foundation/layout/r;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-virtual {p2, p1}, Landroidx/compose/foundation/layout/g0;->f(Landroidx/compose/foundation/layout/r;)V

    .line 165
    .line 166
    .line 167
    :cond_1
    sget-object p1, Landroidx/compose/runtime/snapshots/j;->e:Landroidx/compose/runtime/snapshots/j$a;

    .line 168
    .line 169
    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/j$a;->n()V

    .line 170
    .line 171
    .line 172
    return-void
.end method

.method public final s(Landroidx/core/view/WindowInsetsCompat;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->t:Landroidx/compose/foundation/layout/g0;

    .line 2
    .line 3
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {p1, v1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Lz0/c;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Landroidx/compose/foundation/layout/j0;->b(Lz0/c;)Landroidx/compose/foundation/layout/r;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {v0, p1}, Landroidx/compose/foundation/layout/g0;->f(Landroidx/compose/foundation/layout/r;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final t(Landroidx/core/view/WindowInsetsCompat;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->s:Landroidx/compose/foundation/layout/g0;

    .line 2
    .line 3
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {p1, v1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Lz0/c;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Landroidx/compose/foundation/layout/j0;->b(Lz0/c;)Landroidx/compose/foundation/layout/r;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {v0, p1}, Landroidx/compose/foundation/layout/g0;->f(Landroidx/compose/foundation/layout/r;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
