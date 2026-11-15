.class public final synthetic Lar/c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(ILandroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lar/c;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Lar/c;->b:Landroid/view/View;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 2

    .line 1
    iget v0, p0, Lar/c;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lar/c;->b:Landroid/view/View;

    .line 4
    .line 5
    invoke-static {v0, v1, p1, p2}, Lcom/transsion/shorttv/base/dialog/BaseDialog;->Y(ILandroid/view/View;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
