.class public final synthetic Lz16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/canvas/CanvasCompat$CanvasOperation;


# instance fields
.field public final synthetic a:Lcom/google/android/material/carousel/MaskableFrameLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/carousel/MaskableFrameLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz16;->a:Lcom/google/android/material/carousel/MaskableFrameLayout;

    return-void
.end method


# virtual methods
.method public final run(Landroid/graphics/Canvas;)V
    .locals 0

    iget-object p0, p0, Lz16;->a:Lcom/google/android/material/carousel/MaskableFrameLayout;

    invoke-static {p0, p1}, Lcom/google/android/material/carousel/MaskableFrameLayout;->b(Lcom/google/android/material/carousel/MaskableFrameLayout;Landroid/graphics/Canvas;)V

    return-void
.end method
