.class Lcom/transsion/liblan/TranWindow$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/liblan/TranWindow;->setVideoLayout(IIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/liblan/TranWindow;

.field final synthetic val$height:I

.field final synthetic val$sarDen:I

.field final synthetic val$sarNum:I

.field final synthetic val$visibleHeight:I

.field final synthetic val$visibleWidth:I

.field final synthetic val$width:I


# direct methods
.method public constructor <init>(Lcom/transsion/liblan/TranWindow;IIIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/liblan/TranWindow$1;->this$0:Lcom/transsion/liblan/TranWindow;

    iput p2, p0, Lcom/transsion/liblan/TranWindow$1;->val$width:I

    iput p3, p0, Lcom/transsion/liblan/TranWindow$1;->val$height:I

    iput p4, p0, Lcom/transsion/liblan/TranWindow$1;->val$visibleWidth:I

    iput p5, p0, Lcom/transsion/liblan/TranWindow$1;->val$visibleHeight:I

    iput p6, p0, Lcom/transsion/liblan/TranWindow$1;->val$sarNum:I

    iput p7, p0, Lcom/transsion/liblan/TranWindow$1;->val$sarDen:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lcom/transsion/liblan/TranWindow$1;->this$0:Lcom/transsion/liblan/TranWindow;

    invoke-static {v0}, Lcom/transsion/liblan/TranWindow;->a(Lcom/transsion/liblan/TranWindow;)Lcom/transsion/liblan/interfaces/ITranLANVout$OnNewLanVideoLayoutListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/liblan/TranWindow$1;->this$0:Lcom/transsion/liblan/TranWindow;

    invoke-static {v0}, Lcom/transsion/liblan/TranWindow;->a(Lcom/transsion/liblan/TranWindow;)Lcom/transsion/liblan/interfaces/ITranLANVout$OnNewLanVideoLayoutListener;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/liblan/TranWindow$1;->this$0:Lcom/transsion/liblan/TranWindow;

    iget v3, p0, Lcom/transsion/liblan/TranWindow$1;->val$width:I

    iget v4, p0, Lcom/transsion/liblan/TranWindow$1;->val$height:I

    iget v5, p0, Lcom/transsion/liblan/TranWindow$1;->val$visibleWidth:I

    iget v6, p0, Lcom/transsion/liblan/TranWindow$1;->val$visibleHeight:I

    iget v7, p0, Lcom/transsion/liblan/TranWindow$1;->val$sarNum:I

    iget v8, p0, Lcom/transsion/liblan/TranWindow$1;->val$sarDen:I

    invoke-interface/range {v1 .. v8}, Lcom/transsion/liblan/interfaces/ITranLANVout$OnNewLanVideoLayoutListener;->onLanNewVideoLayout(Lcom/transsion/liblan/interfaces/ITranLANVout;IIIIII)V

    :cond_0
    return-void
.end method
