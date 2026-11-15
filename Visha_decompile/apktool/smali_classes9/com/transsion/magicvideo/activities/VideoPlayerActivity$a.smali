.class public Lcom/transsion/magicvideo/activities/VideoPlayerActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Lcom/transsion/magicvideo/activities/VideoPlayerActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity$a;->c:Lcom/transsion/magicvideo/activities/VideoPlayerActivity;

    iput-object p2, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity$a;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity$a;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object p0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity$a;->c:Lcom/transsion/magicvideo/activities/VideoPlayerActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->startPostponedEnterTransition()V

    const/4 p0, 0x1

    return p0
.end method
