.class Lcom/transsion/hubsdk/core/dragdrop/TranThubDragDropManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/dragdrop/TranDragDropManager$DrawShadowCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/hubsdk/core/dragdrop/TranThubDragDropManager;->toCommonCallback(Lcom/transsion/hubsdk/api/dragdrop/TranDragDropManager$DrawShadowCallback;)Lcom/transsion/hubsdk/dragdrop/TranDragDropManager$DrawShadowCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/hubsdk/core/dragdrop/TranThubDragDropManager;

.field final synthetic val$callback:Lcom/transsion/hubsdk/api/dragdrop/TranDragDropManager$DrawShadowCallback;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/core/dragdrop/TranThubDragDropManager;Lcom/transsion/hubsdk/api/dragdrop/TranDragDropManager$DrawShadowCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/hubsdk/core/dragdrop/TranThubDragDropManager$1;->this$0:Lcom/transsion/hubsdk/core/dragdrop/TranThubDragDropManager;

    iput-object p2, p0, Lcom/transsion/hubsdk/core/dragdrop/TranThubDragDropManager$1;->val$callback:Lcom/transsion/hubsdk/api/dragdrop/TranDragDropManager$DrawShadowCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdateDrawShadow(Ljava/lang/String;I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/dragdrop/TranThubDragDropManager$1;->val$callback:Lcom/transsion/hubsdk/api/dragdrop/TranDragDropManager$DrawShadowCallback;

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/api/dragdrop/TranDragDropManager$DrawShadowCallback;->onUpdateDrawShadow(Ljava/lang/String;I)V

    return-void
.end method
