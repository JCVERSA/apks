.class public Lcom/transsion/hubsdk/aosp/internal/app/TranAospAssistUtilsService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/internal/app/ITranAssistUtilsAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranAospAssistUtilsService"

.field private static sClassName:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.android.internal.app.AssistUtils"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/internal/app/TranAospAssistUtilsService;->sClassName:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/transsion/hubsdk/common/init/TranHubSdkManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/internal/app/TranAospAssistUtilsService;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public showSessionForActiveService(Landroid/os/Bundle;ILcom/transsion/hubsdk/api/internal/app/TranAssistUtilsManager$ITranVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/aosp/internal/app/TranAospAssistUtilsService;->showSessionForActiveServiceExt(Landroid/os/Bundle;ILcom/transsion/hubsdk/api/internal/app/TranAssistUtilsManager$ITranVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z

    move-result p0

    return p0
.end method

.method public showSessionForActiveServiceExt(Landroid/os/Bundle;ILcom/transsion/hubsdk/api/internal/app/TranAssistUtilsManager$ITranVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/aosp/internal/app/TranAospAssistUtilsExt;

    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/internal/app/TranAospAssistUtilsService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/hubsdk/aosp/internal/app/TranAospAssistUtilsExt;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/transsion/hubsdk/aosp/internal/app/TranAospAssistUtilsService$1;

    invoke-direct {v1, p0, p3}, Lcom/transsion/hubsdk/aosp/internal/app/TranAospAssistUtilsService$1;-><init>(Lcom/transsion/hubsdk/aosp/internal/app/TranAospAssistUtilsService;Lcom/transsion/hubsdk/api/internal/app/TranAssistUtilsManager$ITranVoiceInteractionSessionShowCallback;)V

    invoke-virtual {v0, p1, p2, v1, p4}, Lcom/transsion/hubsdk/aosp/internal/app/TranAospAssistUtilsExt;->showSessionForActiveService(Landroid/os/Bundle;ILcom/transsion/hubsdk/aosp/internal/app/TranAospAssistUtilsExt$ITranVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z

    move-result p0

    return p0
.end method
