.class public Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerUnofficial;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerUnofficialAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerUnofficial$TranAospForegroundServiceObserver;
    }
.end annotation


# instance fields
.field private final mManagerExt:Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerUnofficialExt;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerUnofficialExt;

    invoke-direct {v0}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerUnofficialExt;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerUnofficial;->mManagerExt:Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerUnofficialExt;

    return-void
.end method


# virtual methods
.method public registerForegroundServiceObserver(Lcom/transsion/hubsdk/api/app/TranActivityManagerUnofficial$TranForegroundServiceObserver;)Z
    .locals 1

    new-instance v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerUnofficial$TranAospForegroundServiceObserver;

    invoke-direct {v0, p1}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerUnofficial$TranAospForegroundServiceObserver;-><init>(Lcom/transsion/hubsdk/api/app/TranActivityManagerUnofficial$TranForegroundServiceObserver;)V

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerUnofficial;->mManagerExt:Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerUnofficialExt;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerUnofficialExt;->registerForegroundServiceObserver(Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerUnofficialExt$TranForegroundServiceObserver;)Z

    move-result p0

    return p0
.end method
