.class public final synthetic Lcom/google/android/material/search/e;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/material/search/i;

.field public final synthetic b:Lcom/google/android/material/search/SearchBar;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Lcom/google/android/material/appbar/AppBarLayout;

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/search/i;Lcom/google/android/material/search/SearchBar;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/material/search/e;->a:Lcom/google/android/material/search/i;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/material/search/e;->b:Lcom/google/android/material/search/SearchBar;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/material/search/e;->c:Landroid/view/View;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/material/search/e;->d:Lcom/google/android/material/appbar/AppBarLayout;

    .line 11
    .line 12
    iput-boolean p5, p0, Lcom/google/android/material/search/e;->e:Z

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/material/search/e;->a:Lcom/google/android/material/search/i;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/material/search/e;->b:Lcom/google/android/material/search/SearchBar;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/material/search/e;->c:Landroid/view/View;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/google/android/material/search/e;->d:Lcom/google/android/material/appbar/AppBarLayout;

    .line 8
    .line 9
    iget-boolean v4, p0, Lcom/google/android/material/search/e;->e:Z

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/material/search/i;->b(Lcom/google/android/material/search/i;Lcom/google/android/material/search/SearchBar;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;Z)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
