.class public Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt$TranDreamServiceWrapper;,
        Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt$ITranDreamService;,
        Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt$ITranRemoteCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TranAospDreamServiceWrapperExt"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTranDreamServiceWrapper(Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt$ITranDreamService;)Landroid/os/IBinder;
    .locals 0

    new-instance p0, Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt$TranDreamServiceWrapper;

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt$TranDreamServiceWrapper;-><init>(Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt$ITranDreamService;)V

    return-object p0
.end method
