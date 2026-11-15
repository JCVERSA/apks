.class abstract Lcom/google/android/material/progressindicator/h;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/progressindicator/h$a;
    }
.end annotation


# instance fields
.field a:Lcom/google/android/material/progressindicator/b;


# direct methods
.method public constructor <init>(Lcom/google/android/material/progressindicator/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/material/progressindicator/h;->a:Lcom/google/android/material/progressindicator/b;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method abstract a(Landroid/graphics/Canvas;Landroid/graphics/Rect;FZZ)V
.end method

.method abstract b(Landroid/graphics/Canvas;Landroid/graphics/Paint;II)V
.end method

.method abstract c(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/android/material/progressindicator/h$a;I)V
.end method

.method abstract d(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIII)V
.end method

.method abstract e()I
.end method

.method abstract f()I
.end method

.method g(Landroid/graphics/Canvas;Landroid/graphics/Rect;FZZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/progressindicator/h;->a:Lcom/google/android/material/progressindicator/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/b;->e()V

    .line 4
    .line 5
    .line 6
    invoke-virtual/range {p0 .. p5}, Lcom/google/android/material/progressindicator/h;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;FZZ)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
