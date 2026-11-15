.class public Lcom/transsion/hubsdk/core/media/TranThubAudioRecordingConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/media/ITranAudioRecordingConfigurationAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubAudioRecordingConfiguration"


# instance fields
.field private mService:Lcom/transsion/hubsdk/media/TranAudioRecordingConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/hubsdk/media/TranAudioRecordingConfiguration;

    invoke-direct {v0}, Lcom/transsion/hubsdk/media/TranAudioRecordingConfiguration;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioRecordingConfiguration;->mService:Lcom/transsion/hubsdk/media/TranAudioRecordingConfiguration;

    return-void
.end method


# virtual methods
.method public getClientPackageName(Landroid/media/AudioRecordingConfiguration;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioRecordingConfiguration;->mService:Lcom/transsion/hubsdk/media/TranAudioRecordingConfiguration;

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/media/TranAudioRecordingConfiguration;->getClientPackageName(Landroid/media/AudioRecordingConfiguration;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toLogFriendlyString(Landroid/media/AudioRecordingConfiguration;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/transsion/hubsdk/media/TranAudioRecordingConfiguration;->toLogFriendlyString(Landroid/media/AudioRecordingConfiguration;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
