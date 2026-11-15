.class public final Ldve;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:F

.field public final b:F

.field public final c:F

.field public final d:F

.field public final e:I


# direct methods
.method public constructor <init>(FFFFI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ldve;->a:F

    iput p2, p0, Ldve;->b:F

    add-float/2addr p1, p3

    iput p1, p0, Ldve;->c:F

    add-float/2addr p2, p4

    iput p2, p0, Ldve;->d:F

    iput p5, p0, Ldve;->e:I

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 0

    iget p0, p0, Ldve;->d:F

    return p0
.end method

.method public final b()F
    .locals 0

    iget p0, p0, Ldve;->a:F

    return p0
.end method

.method public final c()F
    .locals 0

    iget p0, p0, Ldve;->c:F

    return p0
.end method

.method public final d()F
    .locals 0

    iget p0, p0, Ldve;->b:F

    return p0
.end method

.method public final e()I
    .locals 0

    iget p0, p0, Ldve;->e:I

    return p0
.end method
