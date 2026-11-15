.class public Lcom/transsion/magicvideo/activities/VideoPlayerActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->o2()V
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

    iput-object p1, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity$c;->c:Lcom/transsion/magicvideo/activities/VideoPlayerActivity;

    iput-object p2, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity$c;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity$c;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity$c;->c:Lcom/transsion/magicvideo/activities/VideoPlayerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->e1(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity$c;->c:Lcom/transsion/magicvideo/activities/VideoPlayerActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->c1(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;Z)V

    iget-object p0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity$c;->c:Lcom/transsion/magicvideo/activities/VideoPlayerActivity;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->i2()V

    return v1
.end method
