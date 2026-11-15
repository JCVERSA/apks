.class public Lcom/transsion/hubsdk/aosp/internal/app/TranAospAssistUtilsExt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/aosp/internal/app/TranAospAssistUtilsExt$TranAospVoiceInteractionSessionShowCallback;,
        Lcom/transsion/hubsdk/aosp/internal/app/TranAospAssistUtilsExt$ITranVoiceInteractionSessionShowCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TranAospAssistUtilsExt"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/internal/app/TranAospAssistUtilsExt;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public showSessionForActiveService(Landroid/os/Bundle;ILcom/transsion/hubsdk/aosp/internal/app/TranAospAssistUtilsExt$ITranVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z
    .locals 1

    :try_start_0
    new-instance v0, Lcom/android/internal/app/AssistUtils;

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/internal/app/TranAospAssistUtilsExt;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/internal/app/AssistUtils;-><init>(Landroid/content/Context;)V

    new-instance p0, Lcom/transsion/hubsdk/aosp/internal/app/TranAospAssistUtilsExt$TranAospVoiceInteractionSessionShowCallback;

    invoke-direct {p0, p3}, Lcom/transsion/hubsdk/aosp/internal/app/TranAospAssistUtilsExt$TranAospVoiceInteractionSessionShowCallback;-><init>(Lcom/transsion/hubsdk/aosp/internal/app/TranAospAssistUtilsExt$ITranVoiceInteractionSessionShowCallback;)V

    invoke-virtual {v0, p1, p2, p0, p4}, Lcom/android/internal/app/AssistUtils;->showSessionForActiveService(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "showSessionForActiveService fail "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TranAospAssistUtilsExt"

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method
