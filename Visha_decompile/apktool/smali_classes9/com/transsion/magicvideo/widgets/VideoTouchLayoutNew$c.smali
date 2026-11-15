.class public Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$c;->b:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$c;->b:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    invoke-static {p1}, Lcom/transsion/magicvideo/widgets/PlayUIDisplayView;->isPlayUIShowing(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$c;->b:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->t0(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->showNewPlayerFeaturesBubble(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method
