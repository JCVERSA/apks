.class public Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageManagerExt$TranAospPackageDeleteObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageManagerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TranAospPackageDeleteObserver"
.end annotation


# instance fields
.field private mObserver:Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageManagerExt$ITranPackageDeleteObserver;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageManagerExt$ITranPackageDeleteObserver;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageManagerExt$TranAospPackageDeleteObserver;->mObserver:Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageManagerExt$ITranPackageDeleteObserver;

    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageManagerExt$TranAospPackageDeleteObserver;->mObserver:Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageManagerExt$ITranPackageDeleteObserver;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageManagerExt$ITranPackageDeleteObserver;->packageDeleted(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
