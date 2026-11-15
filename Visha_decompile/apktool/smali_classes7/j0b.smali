.class public final synthetic Lj0b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic a:Lcom/transsion/hubsdk/core/internal/app/TranThubAssistUtilsService;

.field public final synthetic b:Landroid/os/Bundle;

.field public final synthetic c:I

.field public final synthetic d:Lcom/transsion/hubsdk/api/internal/app/TranAssistUtilsManager$ITranVoiceInteractionSessionShowCallback;

.field public final synthetic e:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/core/internal/app/TranThubAssistUtilsService;Landroid/os/Bundle;ILcom/transsion/hubsdk/api/internal/app/TranAssistUtilsManager$ITranVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj0b;->a:Lcom/transsion/hubsdk/core/internal/app/TranThubAssistUtilsService;

    iput-object p2, p0, Lj0b;->b:Landroid/os/Bundle;

    iput p3, p0, Lj0b;->c:I

    iput-object p4, p0, Lj0b;->d:Lcom/transsion/hubsdk/api/internal/app/TranAssistUtilsManager$ITranVoiceInteractionSessionShowCallback;

    iput-object p5, p0, Lj0b;->e:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lj0b;->a:Lcom/transsion/hubsdk/core/internal/app/TranThubAssistUtilsService;

    iget-object v1, p0, Lj0b;->b:Landroid/os/Bundle;

    iget v2, p0, Lj0b;->c:I

    iget-object v3, p0, Lj0b;->d:Lcom/transsion/hubsdk/api/internal/app/TranAssistUtilsManager$ITranVoiceInteractionSessionShowCallback;

    iget-object p0, p0, Lj0b;->e:Landroid/os/IBinder;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/transsion/hubsdk/core/internal/app/TranThubAssistUtilsService;->a(Lcom/transsion/hubsdk/core/internal/app/TranThubAssistUtilsService;Landroid/os/Bundle;ILcom/transsion/hubsdk/api/internal/app/TranAssistUtilsManager$ITranVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
