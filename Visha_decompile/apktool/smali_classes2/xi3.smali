.class public final synthetic Lxi3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/effect/MatrixTransformation;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMatrix(J)Landroid/graphics/Matrix;
    .locals 0

    invoke-static {p1, p2}, Landroidx/media3/transformer/ExperimentalFrameExtractor;->d(J)Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0
.end method
