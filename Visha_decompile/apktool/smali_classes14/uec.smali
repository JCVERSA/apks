.class public final synthetic Luec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

.field public final synthetic c:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luec;->b:Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    iput-object p2, p0, Luec;->c:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Luec;->b:Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    iget-object p0, p0, Luec;->c:Landroid/view/View;

    invoke-static {v0, p0}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;->H(Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;Landroid/view/View;)V

    return-void
.end method
