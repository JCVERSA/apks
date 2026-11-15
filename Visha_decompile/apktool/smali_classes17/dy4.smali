.class public Ldy4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/graphics/RectF;

.field public b:Landroid/graphics/RectF;

.field public c:F

.field public d:F


# direct methods
.method public constructor <init>(Landroid/graphics/RectF;Landroid/graphics/RectF;FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldy4;->a:Landroid/graphics/RectF;

    iput-object p2, p0, Ldy4;->b:Landroid/graphics/RectF;

    iput p3, p0, Ldy4;->c:F

    iput p4, p0, Ldy4;->d:F

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Ldy4;->a:Landroid/graphics/RectF;

    return-object p0
.end method

.method public b()F
    .locals 0

    iget p0, p0, Ldy4;->d:F

    return p0
.end method

.method public c()Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Ldy4;->b:Landroid/graphics/RectF;

    return-object p0
.end method

.method public d()F
    .locals 0

    iget p0, p0, Ldy4;->c:F

    return p0
.end method
