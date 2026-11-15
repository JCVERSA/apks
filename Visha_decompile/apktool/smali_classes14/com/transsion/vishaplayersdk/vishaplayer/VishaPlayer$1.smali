.class Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;->initGestureDetector()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;


# direct methods
.method public constructor <init>(Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer$1;->this$0:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer$1;->this$0:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer$1;->this$0:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer$1$1;

    invoke-direct {v3, p0}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer$1$1;-><init>(Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer$1;)V

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    invoke-static {v0, v1}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;->access$002(Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;Landroid/view/GestureDetector;)Landroid/view/GestureDetector;

    return-void
.end method
