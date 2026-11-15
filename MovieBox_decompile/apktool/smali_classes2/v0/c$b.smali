.class Lv0/c$b;
.super Lv0/c;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field h:[F

.field protected i:Landroidx/constraintlayout/widget/ConstraintAttribute;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lv0/c;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    new-array v0, v0, [F

    .line 6
    .line 7
    iput-object v0, p0, Lv0/c$b;->h:[F

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method protected c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 2
    .line 3
    iput-object p1, p0, Lv0/c$b;->i:Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 4
    .line 5
    return-void
.end method

.method public j(Landroid/view/View;F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lv0/c$b;->h:[F

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->a(F)F

    .line 5
    .line 6
    .line 7
    move-result p2

    .line 8
    aput p2, v0, v1

    .line 9
    .line 10
    iget-object p2, p0, Lv0/c$b;->i:Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 11
    .line 12
    iget-object v0, p0, Lv0/c$b;->h:[F

    .line 13
    .line 14
    invoke-static {p2, p1, v0}, Lv0/a;->b(Landroidx/constraintlayout/widget/ConstraintAttribute;Landroid/view/View;[F)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
