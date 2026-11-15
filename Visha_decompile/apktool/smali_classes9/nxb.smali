.class public final synthetic Lnxb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic a:Lcom/transsion/magicvideo/activities/VideoPlayerActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnxb;->a:Lcom/transsion/magicvideo/activities/VideoPlayerActivity;

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    iget-object p0, p0, Lnxb;->a:Lcom/transsion/magicvideo/activities/VideoPlayerActivity;

    invoke-static {p0, p1, p2}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->W0(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method
