.class public final synthetic Lcom/transsion/baseui/activity/c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Lcom/transsion/baseui/activity/BaseActivity;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Lcom/transsion/baseui/activity/BaseActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/baseui/activity/c;->a:Landroid/view/View;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/baseui/activity/c;->b:Lcom/transsion/baseui/activity/BaseActivity;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/baseui/activity/c;->a:Landroid/view/View;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/baseui/activity/c;->b:Lcom/transsion/baseui/activity/BaseActivity;

    .line 4
    .line 5
    invoke-static {v0, v1, p1, p2}, Lcom/transsion/baseui/activity/BaseActivity;->X(Landroid/view/View;Lcom/transsion/baseui/activity/BaseActivity;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
