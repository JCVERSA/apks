.class public final synthetic Landroidx/core/view/insets/d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic a:Landroidx/core/view/insets/f;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/view/insets/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/core/view/insets/d;->a:Landroidx/core/view/insets/f;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/insets/d;->a:Landroidx/core/view/insets/f;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Landroidx/core/view/insets/f;->b(Landroidx/core/view/insets/f;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
