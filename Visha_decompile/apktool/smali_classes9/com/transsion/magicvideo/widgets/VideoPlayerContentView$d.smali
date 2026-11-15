.class public Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/magicvideo/widgets/VideoRetreatForwardLayout$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->B7(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$d;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$d;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->E1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/widgets/VideoTouchPlayUIDisplayView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUIDisplayView;->h0()V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$d;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->t1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$d;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->P1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$d;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->P1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/widgets/PlayerViewController;->K(Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$d;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->p3(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public show()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$d;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->E1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/widgets/VideoTouchPlayUIDisplayView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUIDisplayView;->j0()V

    return-void
.end method
