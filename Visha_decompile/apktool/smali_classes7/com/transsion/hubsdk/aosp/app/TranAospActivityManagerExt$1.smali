.class Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$1;
.super Landroid/app/UserSwitchObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt;->registerUserSwitchObserver(Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$TranUserSwitchObserver;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt;

.field final synthetic val$observer:Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$TranUserSwitchObserver;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt;Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$TranUserSwitchObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$1;->this$0:Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt;

    iput-object p2, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$1;->val$observer:Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$TranUserSwitchObserver;

    invoke-direct {p0}, Landroid/app/UserSwitchObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserSwitchComplete(I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$1;->val$observer:Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$TranUserSwitchObserver;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$TranUserSwitchObserver;->onUserSwitchComplete(I)V

    :cond_0
    return-void
.end method

.method public onUserSwitching(ILandroid/os/IRemoteCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$1;->val$observer:Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$TranUserSwitchObserver;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$TranUserSwitchObserver;->onUserSwitching(I)V

    :cond_0
    return-void
.end method
