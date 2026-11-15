.class Lcom/google/android/material/search/i$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/search/i;->J(Lcom/google/android/material/search/SearchBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/animation/Animator;

.field final synthetic c:Lcom/google/android/material/search/i;


# direct methods
.method constructor <init>(Lcom/google/android/material/search/i;Landroid/view/View;Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/search/i$b;->c:Lcom/google/android/material/search/i;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/google/android/material/search/i$b;->a:Landroid/view/View;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/google/android/material/search/i$b;->b:Landroid/animation/Animator;

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/material/search/i$b;->a:Landroid/view/View;

    .line 2
    .line 3
    const/16 v0, 0x8

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/google/android/material/search/i$b;->b:Landroid/animation/Animator;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 11
    .line 12
    .line 13
    return-void
.end method
