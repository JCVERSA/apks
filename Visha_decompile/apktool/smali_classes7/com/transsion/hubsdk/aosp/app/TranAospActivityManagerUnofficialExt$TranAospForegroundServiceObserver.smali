.class public Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerUnofficialExt$TranAospForegroundServiceObserver;
.super Landroid/app/IForegroundServiceObserver$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerUnofficialExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TranAospForegroundServiceObserver"
.end annotation


# instance fields
.field private mObserver:Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerUnofficialExt$TranForegroundServiceObserver;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerUnofficialExt$TranForegroundServiceObserver;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/IForegroundServiceObserver$Stub;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerUnofficialExt$TranAospForegroundServiceObserver;->mObserver:Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerUnofficialExt$TranForegroundServiceObserver;

    return-void
.end method


# virtual methods
.method public onForegroundStateChanged(Landroid/os/IBinder;Ljava/lang/String;IZ)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerUnofficialExt$TranAospForegroundServiceObserver;->mObserver:Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerUnofficialExt$TranForegroundServiceObserver;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerUnofficialExt$TranForegroundServiceObserver;->onForegroundStateChanged(Landroid/os/IBinder;Ljava/lang/String;IZ)V

    :cond_0
    return-void
.end method
