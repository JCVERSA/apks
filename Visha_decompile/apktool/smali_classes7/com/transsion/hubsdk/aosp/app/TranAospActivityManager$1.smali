.class Lcom/transsion/hubsdk/aosp/app/TranAospActivityManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$TranUserSwitchObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/hubsdk/aosp/app/TranAospActivityManager;->registerUserSwitchObserver(Lcom/transsion/hubsdk/api/app/TranUserSwitchObserver;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/hubsdk/aosp/app/TranAospActivityManager;

.field final synthetic val$observer:Lcom/transsion/hubsdk/api/app/TranUserSwitchObserver;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/aosp/app/TranAospActivityManager;Lcom/transsion/hubsdk/api/app/TranUserSwitchObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManager$1;->this$0:Lcom/transsion/hubsdk/aosp/app/TranAospActivityManager;

    iput-object p2, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManager$1;->val$observer:Lcom/transsion/hubsdk/api/app/TranUserSwitchObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserSwitchComplete(I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManager$1;->val$observer:Lcom/transsion/hubsdk/api/app/TranUserSwitchObserver;

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/api/app/TranUserSwitchObserver;->onUserSwitchComplete(I)V

    return-void
.end method

.method public onUserSwitching(I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManager$1;->val$observer:Lcom/transsion/hubsdk/api/app/TranUserSwitchObserver;

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/api/app/TranUserSwitchObserver;->onUserSwitching(I)V

    return-void
.end method
