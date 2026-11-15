.class public Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$TranAospPackageDataObserver;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TranAospPackageDataObserver"
.end annotation


# instance fields
.field private mObserverInner:Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$ITranPackageDataObserverExtInner;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$ITranPackageDataObserverExtInner;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$TranAospPackageDataObserver;->mObserverInner:Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$ITranPackageDataObserverExtInner;

    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$TranAospPackageDataObserver;->mObserverInner:Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$ITranPackageDataObserverExtInner;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$ITranPackageDataObserverExtInner;->onRemoveCompleted(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
