.class Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerUnofficial$TranAospForegroundServiceObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerUnofficialExt$TranForegroundServiceObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerUnofficial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TranAospForegroundServiceObserver"
.end annotation


# instance fields
.field mObserver:Lcom/transsion/hubsdk/api/app/TranActivityManagerUnofficial$TranForegroundServiceObserver;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/api/app/TranActivityManagerUnofficial$TranForegroundServiceObserver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerUnofficial$TranAospForegroundServiceObserver;->mObserver:Lcom/transsion/hubsdk/api/app/TranActivityManagerUnofficial$TranForegroundServiceObserver;

    return-void
.end method


# virtual methods
.method public onForegroundStateChanged(Landroid/os/IBinder;Ljava/lang/String;IZ)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerUnofficial$TranAospForegroundServiceObserver;->mObserver:Lcom/transsion/hubsdk/api/app/TranActivityManagerUnofficial$TranForegroundServiceObserver;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/api/app/TranActivityManagerUnofficial$TranForegroundServiceObserver;->onForegroundStateChanged(Landroid/os/IBinder;Ljava/lang/String;IZ)V

    :cond_0
    return-void
.end method
