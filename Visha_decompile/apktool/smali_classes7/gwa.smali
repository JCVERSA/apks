.class public final synthetic Lgwa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt$ITranRemoteCallback;


# instance fields
.field public final synthetic a:Landroid/os/IRemoteCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/os/IRemoteCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgwa;->a:Landroid/os/IRemoteCallback;

    return-void
.end method


# virtual methods
.method public final sendResult(Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lgwa;->a:Landroid/os/IRemoteCallback;

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt$TranDreamServiceWrapper;->c(Landroid/os/IRemoteCallback;Landroid/os/Bundle;)V

    return-void
.end method
