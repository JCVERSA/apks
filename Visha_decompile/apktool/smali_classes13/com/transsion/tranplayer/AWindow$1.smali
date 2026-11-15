.class Lcom/transsion/tranplayer/AWindow$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tranplayer/AWindow;->setVideoLayout(IIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/tranplayer/AWindow;

.field final synthetic val$height:I

.field final synthetic val$sarDen:I

.field final synthetic val$sarNum:I

.field final synthetic val$visibleHeight:I

.field final synthetic val$visibleWidth:I

.field final synthetic val$width:I


# direct methods
.method public constructor <init>(Lcom/transsion/tranplayer/AWindow;IIIIII)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tranplayer/AWindow$1;->this$0:Lcom/transsion/tranplayer/AWindow;

    iput p2, p0, Lcom/transsion/tranplayer/AWindow$1;->val$width:I

    iput p3, p0, Lcom/transsion/tranplayer/AWindow$1;->val$height:I

    iput p4, p0, Lcom/transsion/tranplayer/AWindow$1;->val$visibleWidth:I

    iput p5, p0, Lcom/transsion/tranplayer/AWindow$1;->val$visibleHeight:I

    iput p6, p0, Lcom/transsion/tranplayer/AWindow$1;->val$sarNum:I

    iput p7, p0, Lcom/transsion/tranplayer/AWindow$1;->val$sarDen:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lcom/transsion/tranplayer/AWindow$1;->this$0:Lcom/transsion/tranplayer/AWindow;

    invoke-static {v0}, Lcom/transsion/tranplayer/AWindow;->access$1400(Lcom/transsion/tranplayer/AWindow;)Lcom/transsion/tranplayer/IVLCVout$OnNewVideoLayoutListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/tranplayer/AWindow$1;->this$0:Lcom/transsion/tranplayer/AWindow;

    invoke-static {v0}, Lcom/transsion/tranplayer/AWindow;->access$1400(Lcom/transsion/tranplayer/AWindow;)Lcom/transsion/tranplayer/IVLCVout$OnNewVideoLayoutListener;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/tranplayer/AWindow$1;->this$0:Lcom/transsion/tranplayer/AWindow;

    iget v3, p0, Lcom/transsion/tranplayer/AWindow$1;->val$width:I

    iget v4, p0, Lcom/transsion/tranplayer/AWindow$1;->val$height:I

    iget v5, p0, Lcom/transsion/tranplayer/AWindow$1;->val$visibleWidth:I

    iget v6, p0, Lcom/transsion/tranplayer/AWindow$1;->val$visibleHeight:I

    iget v7, p0, Lcom/transsion/tranplayer/AWindow$1;->val$sarNum:I

    iget v8, p0, Lcom/transsion/tranplayer/AWindow$1;->val$sarDen:I

    invoke-interface/range {v1 .. v8}, Lcom/transsion/tranplayer/IVLCVout$OnNewVideoLayoutListener;->onNewVideoLayout(Lcom/transsion/tranplayer/IVLCVout;IIIIII)V

    :cond_0
    return-void
.end method
