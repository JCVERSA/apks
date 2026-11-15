.class Landroidx/core/view/WindowInsetsCompat$i;
.super Landroidx/core/view/WindowInsetsCompat$h;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "i"
.end annotation


# instance fields
.field private o:Lz0/c;

.field private p:Lz0/c;

.field private q:Lz0/c;


# direct methods
.method constructor <init>(Landroidx/core/view/WindowInsetsCompat;Landroid/view/WindowInsets;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/core/view/WindowInsetsCompat$h;-><init>(Landroidx/core/view/WindowInsetsCompat;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Landroidx/core/view/WindowInsetsCompat$i;->o:Lz0/c;

    .line 3
    iput-object p1, p0, Landroidx/core/view/WindowInsetsCompat$i;->p:Lz0/c;

    .line 4
    iput-object p1, p0, Landroidx/core/view/WindowInsetsCompat$i;->q:Lz0/c;

    return-void
.end method

.method constructor <init>(Landroidx/core/view/WindowInsetsCompat;Landroidx/core/view/WindowInsetsCompat$i;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Landroidx/core/view/WindowInsetsCompat$h;-><init>(Landroidx/core/view/WindowInsetsCompat;Landroidx/core/view/WindowInsetsCompat$h;)V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Landroidx/core/view/WindowInsetsCompat$i;->o:Lz0/c;

    .line 7
    iput-object p1, p0, Landroidx/core/view/WindowInsetsCompat$i;->p:Lz0/c;

    .line 8
    iput-object p1, p0, Landroidx/core/view/WindowInsetsCompat$i;->q:Lz0/c;

    return-void
.end method


# virtual methods
.method i()Lz0/c;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$i;->p:Lz0/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$f;->c:Landroid/view/WindowInsets;

    .line 6
    .line 7
    invoke-static {v0}, Landroidx/core/view/d2;->a(Landroid/view/WindowInsets;)Landroid/graphics/Insets;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lz0/c;->f(Landroid/graphics/Insets;)Lz0/c;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat$i;->p:Lz0/c;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$i;->p:Lz0/c;

    .line 18
    .line 19
    return-object v0
.end method

.method k()Lz0/c;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$i;->o:Lz0/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$f;->c:Landroid/view/WindowInsets;

    .line 6
    .line 7
    invoke-static {v0}, Landroidx/core/view/e2;->a(Landroid/view/WindowInsets;)Landroid/graphics/Insets;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lz0/c;->f(Landroid/graphics/Insets;)Lz0/c;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat$i;->o:Lz0/c;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$i;->o:Lz0/c;

    .line 18
    .line 19
    return-object v0
.end method

.method m()Lz0/c;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$i;->q:Lz0/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$f;->c:Landroid/view/WindowInsets;

    .line 6
    .line 7
    invoke-static {v0}, Landroidx/core/view/b2;->a(Landroid/view/WindowInsets;)Landroid/graphics/Insets;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lz0/c;->f(Landroid/graphics/Insets;)Lz0/c;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat$i;->q:Lz0/c;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$i;->q:Lz0/c;

    .line 18
    .line 19
    return-object v0
.end method

.method n(IIII)Landroidx/core/view/WindowInsetsCompat;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$f;->c:Landroid/view/WindowInsets;

    .line 2
    .line 3
    invoke-static {v0, p1, p2, p3, p4}, Landroidx/core/view/c2;->a(Landroid/view/WindowInsets;IIII)Landroid/view/WindowInsets;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/WindowInsets;)Landroidx/core/view/WindowInsetsCompat;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public u(Lz0/c;)V
    .locals 0

    .line 1
    return-void
.end method
