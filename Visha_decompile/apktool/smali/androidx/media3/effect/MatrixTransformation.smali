.class public interface abstract Landroidx/media3/effect/MatrixTransformation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/effect/GlMatrixTransformation;


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation


# virtual methods
.method public getGlMatrixArray(J)[F
    .locals 0

    invoke-interface {p0, p1, p2}, Landroidx/media3/effect/MatrixTransformation;->getMatrix(J)Landroid/graphics/Matrix;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/effect/MatrixUtils;->getGlMatrixArray(Landroid/graphics/Matrix;)[F

    move-result-object p0

    return-object p0
.end method

.method public abstract getMatrix(J)Landroid/graphics/Matrix;
.end method
