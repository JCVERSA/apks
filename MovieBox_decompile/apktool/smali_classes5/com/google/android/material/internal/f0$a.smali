.class Lcom/google/android/material/internal/f0$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/material/internal/f0$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/internal/f0;->e(Landroid/view/View;Landroid/util/AttributeSet;IILcom/google/android/material/internal/f0$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Z

.field final synthetic d:Lcom/google/android/material/internal/f0$d;


# direct methods
.method constructor <init>(ZZZLcom/google/android/material/internal/f0$d;)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/internal/f0$a;->a:Z

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/google/android/material/internal/f0$a;->b:Z

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/google/android/material/internal/f0$a;->c:Z

    .line 6
    .line 7
    iput-object p4, p0, Lcom/google/android/material/internal/f0$a;->d:Lcom/google/android/material/internal/f0$d;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;Lcom/google/android/material/internal/f0$e;)Landroidx/core/view/WindowInsetsCompat;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/internal/f0$a;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p3, Lcom/google/android/material/internal/f0$e;->d:I

    .line 6
    .line 7
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    add-int/2addr v0, v1

    .line 12
    iput v0, p3, Lcom/google/android/material/internal/f0$e;->d:I

    .line 13
    .line 14
    :cond_0
    invoke-static {p1}, Lcom/google/android/material/internal/f0;->p(Landroid/view/View;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget-boolean v1, p0, Lcom/google/android/material/internal/f0$a;->b:Z

    .line 19
    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget v1, p3, Lcom/google/android/material/internal/f0$e;->c:I

    .line 25
    .line 26
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    add-int/2addr v1, v2

    .line 31
    iput v1, p3, Lcom/google/android/material/internal/f0$e;->c:I

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget v1, p3, Lcom/google/android/material/internal/f0$e;->a:I

    .line 35
    .line 36
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    add-int/2addr v1, v2

    .line 41
    iput v1, p3, Lcom/google/android/material/internal/f0$e;->a:I

    .line 42
    .line 43
    :cond_2
    :goto_0
    iget-boolean v1, p0, Lcom/google/android/material/internal/f0$a;->c:Z

    .line 44
    .line 45
    if-eqz v1, :cond_4

    .line 46
    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    iget v0, p3, Lcom/google/android/material/internal/f0$e;->a:I

    .line 50
    .line 51
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    add-int/2addr v0, v1

    .line 56
    iput v0, p3, Lcom/google/android/material/internal/f0$e;->a:I

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_3
    iget v0, p3, Lcom/google/android/material/internal/f0$e;->c:I

    .line 60
    .line 61
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    add-int/2addr v0, v1

    .line 66
    iput v0, p3, Lcom/google/android/material/internal/f0$e;->c:I

    .line 67
    .line 68
    :cond_4
    :goto_1
    invoke-virtual {p3, p1}, Lcom/google/android/material/internal/f0$e;->a(Landroid/view/View;)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/google/android/material/internal/f0$a;->d:Lcom/google/android/material/internal/f0$d;

    .line 72
    .line 73
    if-eqz v0, :cond_5

    .line 74
    .line 75
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/material/internal/f0$d;->a(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;Lcom/google/android/material/internal/f0$e;)Landroidx/core/view/WindowInsetsCompat;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    :cond_5
    return-object p2
.end method
