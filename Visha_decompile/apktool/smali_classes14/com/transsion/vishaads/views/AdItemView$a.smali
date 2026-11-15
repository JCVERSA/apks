.class public Lcom/transsion/vishaads/views/AdItemView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/widgets/VideoPlayerSurfaceView$SurfaceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/vishaads/views/AdItemView;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/vishaads/views/AdItemView;


# direct methods
.method public constructor <init>(Lcom/transsion/vishaads/views/AdItemView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaads/views/AdItemView$a;->b:Lcom/transsion/vishaads/views/AdItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/vishaads/views/AdItemView$a;->b:Lcom/transsion/vishaads/views/AdItemView;

    invoke-static {v0, p1}, Lcom/transsion/vishaads/views/AdItemView;->e(Lcom/transsion/vishaads/views/AdItemView;Landroid/view/SurfaceHolder;)V

    iget-object p0, p0, Lcom/transsion/vishaads/views/AdItemView$a;->b:Lcom/transsion/vishaads/views/AdItemView;

    invoke-virtual {p0}, Lcom/transsion/vishaads/views/AdItemView;->openVideo()V

    return-void
.end method

.method public onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaads/views/AdItemView$a;->b:Lcom/transsion/vishaads/views/AdItemView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/vishaads/views/AdItemView;->e(Lcom/transsion/vishaads/views/AdItemView;Landroid/view/SurfaceHolder;)V

    return-void
.end method
