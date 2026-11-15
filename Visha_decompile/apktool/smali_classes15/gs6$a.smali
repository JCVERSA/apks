.class public final Lgs6$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgs6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/view/View;

.field public final b:Landroid/util/Property;

.field public final c:F

.field public d:F

.field public final e:F

.field public final f:F

.field public final g:F

.field public final h:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/util/Property;FFFFLandroid/view/animation/Interpolator;)V
    .locals 1

    const-string v0, "mTarget"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mProperty"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "i"

    invoke-static {p7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgs6$a;->a:Landroid/view/View;

    iput-object p2, p0, Lgs6$a;->b:Landroid/util/Property;

    iput p3, p0, Lgs6$a;->c:F

    iput p3, p0, Lgs6$a;->d:F

    iput p4, p0, Lgs6$a;->e:F

    iput p5, p0, Lgs6$a;->f:F

    iput p6, p0, Lgs6$a;->g:F

    iput-object p7, p0, Lgs6$a;->h:Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 0

    iget p0, p0, Lgs6$a;->f:F

    return p0
.end method

.method public final b()F
    .locals 0

    iget p0, p0, Lgs6$a;->g:F

    return p0
.end method

.method public final c()F
    .locals 0

    iget p0, p0, Lgs6$a;->e:F

    return p0
.end method

.method public final d()Landroid/view/animation/Interpolator;
    .locals 0

    iget-object p0, p0, Lgs6$a;->h:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public final e()Landroid/util/Property;
    .locals 0

    iget-object p0, p0, Lgs6$a;->b:Landroid/util/Property;

    return-object p0
.end method

.method public final f()F
    .locals 0

    iget p0, p0, Lgs6$a;->c:F

    return p0
.end method

.method public final g()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lgs6$a;->a:Landroid/view/View;

    return-object p0
.end method

.method public final h()F
    .locals 0

    iget p0, p0, Lgs6$a;->d:F

    return p0
.end method

.method public final i(F)V
    .locals 0

    iput p1, p0, Lgs6$a;->d:F

    return-void
.end method
