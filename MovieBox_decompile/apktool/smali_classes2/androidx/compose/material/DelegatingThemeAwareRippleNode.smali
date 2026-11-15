.class final Landroidx/compose/material/DelegatingThemeAwareRippleNode;
.super Landroidx/compose/ui/node/i;
.source "source.java"

# interfaces
.implements Landroidx/compose/ui/node/d;
.implements Landroidx/compose/ui/node/u0;


# instance fields
.field private final p:Lp/g;

.field private final q:Z

.field private final r:F

.field private final s:Landroidx/compose/ui/graphics/x1;

.field private t:Landroidx/compose/ui/node/f;


# direct methods
.method private constructor <init>(Lp/g;ZFLandroidx/compose/ui/graphics/x1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroidx/compose/ui/node/i;-><init>()V

    .line 3
    iput-object p1, p0, Landroidx/compose/material/DelegatingThemeAwareRippleNode;->p:Lp/g;

    .line 4
    iput-boolean p2, p0, Landroidx/compose/material/DelegatingThemeAwareRippleNode;->q:Z

    .line 5
    iput p3, p0, Landroidx/compose/material/DelegatingThemeAwareRippleNode;->r:F

    .line 6
    iput-object p4, p0, Landroidx/compose/material/DelegatingThemeAwareRippleNode;->s:Landroidx/compose/ui/graphics/x1;

    return-void
.end method

.method public synthetic constructor <init>(Lp/g;ZFLandroidx/compose/ui/graphics/x1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/material/DelegatingThemeAwareRippleNode;-><init>(Lp/g;ZFLandroidx/compose/ui/graphics/x1;)V

    return-void
.end method

.method public static final synthetic I1(Landroidx/compose/material/DelegatingThemeAwareRippleNode;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/material/DelegatingThemeAwareRippleNode;->M1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic J1(Landroidx/compose/material/DelegatingThemeAwareRippleNode;)Landroidx/compose/ui/graphics/x1;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/material/DelegatingThemeAwareRippleNode;->s:Landroidx/compose/ui/graphics/x1;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic K1(Landroidx/compose/material/DelegatingThemeAwareRippleNode;)Landroidx/compose/ui/node/f;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/material/DelegatingThemeAwareRippleNode;->t:Landroidx/compose/ui/node/f;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic L1(Landroidx/compose/material/DelegatingThemeAwareRippleNode;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/material/DelegatingThemeAwareRippleNode;->N1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final M1()V
    .locals 5

    .line 1
    new-instance v0, Landroidx/compose/material/DelegatingThemeAwareRippleNode$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/compose/material/DelegatingThemeAwareRippleNode$a;-><init>(Landroidx/compose/material/DelegatingThemeAwareRippleNode;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroidx/compose/material/DelegatingThemeAwareRippleNode$attachNewRipple$calculateRippleAlpha$1;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Landroidx/compose/material/DelegatingThemeAwareRippleNode$attachNewRipple$calculateRippleAlpha$1;-><init>(Landroidx/compose/material/DelegatingThemeAwareRippleNode;)V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Landroidx/compose/material/DelegatingThemeAwareRippleNode;->p:Lp/g;

    .line 12
    .line 13
    iget-boolean v3, p0, Landroidx/compose/material/DelegatingThemeAwareRippleNode;->q:Z

    .line 14
    .line 15
    iget v4, p0, Landroidx/compose/material/DelegatingThemeAwareRippleNode;->r:F

    .line 16
    .line 17
    invoke-static {v2, v3, v4, v0, v1}, Landroidx/compose/material/ripple/h;->c(Lp/g;ZFLandroidx/compose/ui/graphics/x1;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/node/f;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/i;->C1(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/f;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Landroidx/compose/material/DelegatingThemeAwareRippleNode;->t:Landroidx/compose/ui/node/f;

    .line 26
    .line 27
    return-void
.end method

.method private final N1()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/material/DelegatingThemeAwareRippleNode;->t:Landroidx/compose/ui/node/f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/i;->F1(Landroidx/compose/ui/node/f;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private final O1()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/material/DelegatingThemeAwareRippleNode$updateConfiguration$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/compose/material/DelegatingThemeAwareRippleNode$updateConfiguration$1;-><init>(Landroidx/compose/material/DelegatingThemeAwareRippleNode;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Landroidx/compose/ui/node/v0;->a(Landroidx/compose/ui/f$c;Lkotlin/jvm/functions/Function0;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public Z()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/material/DelegatingThemeAwareRippleNode;->O1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public m1()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/material/DelegatingThemeAwareRippleNode;->O1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
