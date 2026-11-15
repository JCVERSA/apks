.class public final synthetic Lx3c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic a:Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx3c;->a:Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    iget-object p0, p0, Lx3c;->a:Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;

    invoke-static {p0, p1, p2}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->K1(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method
