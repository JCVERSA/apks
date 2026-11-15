.class Lcom/transsion/hubsdk/aosp/internal/app/TranAospAssistUtilsService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/aosp/internal/app/TranAospAssistUtilsExt$ITranVoiceInteractionSessionShowCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/hubsdk/aosp/internal/app/TranAospAssistUtilsService;->showSessionForActiveServiceExt(Landroid/os/Bundle;ILcom/transsion/hubsdk/api/internal/app/TranAssistUtilsManager$ITranVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/hubsdk/aosp/internal/app/TranAospAssistUtilsService;

.field final synthetic val$showCallback:Lcom/transsion/hubsdk/api/internal/app/TranAssistUtilsManager$ITranVoiceInteractionSessionShowCallback;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/aosp/internal/app/TranAospAssistUtilsService;Lcom/transsion/hubsdk/api/internal/app/TranAssistUtilsManager$ITranVoiceInteractionSessionShowCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/internal/app/TranAospAssistUtilsService$1;->this$0:Lcom/transsion/hubsdk/aosp/internal/app/TranAospAssistUtilsService;

    iput-object p2, p0, Lcom/transsion/hubsdk/aosp/internal/app/TranAospAssistUtilsService$1;->val$showCallback:Lcom/transsion/hubsdk/api/internal/app/TranAssistUtilsManager$ITranVoiceInteractionSessionShowCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/internal/app/TranAospAssistUtilsService$1;->val$showCallback:Lcom/transsion/hubsdk/api/internal/app/TranAssistUtilsManager$ITranVoiceInteractionSessionShowCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/hubsdk/api/internal/app/TranAssistUtilsManager$ITranVoiceInteractionSessionShowCallback;->onFailed()V

    :cond_0
    return-void
.end method

.method public onShown()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/internal/app/TranAospAssistUtilsService$1;->val$showCallback:Lcom/transsion/hubsdk/api/internal/app/TranAssistUtilsManager$ITranVoiceInteractionSessionShowCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/hubsdk/api/internal/app/TranAssistUtilsManager$ITranVoiceInteractionSessionShowCallback;->onShown()V

    :cond_0
    return-void
.end method
