.class public final synthetic Lcom/google/android/material/search/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic b:Lcom/google/android/material/search/SearchViewAnimationHelper;

.field public final synthetic c:F

.field public final synthetic d:F

.field public final synthetic e:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/search/SearchViewAnimationHelper;FFLandroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/search/f;->b:Lcom/google/android/material/search/SearchViewAnimationHelper;

    iput p2, p0, Lcom/google/android/material/search/f;->c:F

    iput p3, p0, Lcom/google/android/material/search/f;->d:F

    iput-object p4, p0, Lcom/google/android/material/search/f;->e:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/search/f;->b:Lcom/google/android/material/search/SearchViewAnimationHelper;

    iget v1, p0, Lcom/google/android/material/search/f;->c:F

    iget v2, p0, Lcom/google/android/material/search/f;->d:F

    iget-object p0, p0, Lcom/google/android/material/search/f;->e:Landroid/graphics/Rect;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->b(Lcom/google/android/material/search/SearchViewAnimationHelper;FFLandroid/graphics/Rect;Landroid/animation/ValueAnimator;)V

    return-void
.end method
