.class public final synthetic Lhxa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/api/service/dream/TranDreamService$ITranRemoteCallback;


# instance fields
.field public final synthetic a:Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt$ITranRemoteCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt$ITranRemoteCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhxa;->a:Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt$ITranRemoteCallback;

    return-void
.end method


# virtual methods
.method public final sendResult(Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lhxa;->a:Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt$ITranRemoteCallback;

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt$ITranRemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void
.end method
