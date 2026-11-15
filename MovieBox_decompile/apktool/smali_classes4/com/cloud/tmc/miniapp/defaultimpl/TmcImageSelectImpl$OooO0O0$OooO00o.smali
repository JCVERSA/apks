.class public final Lcom/cloud/tmc/miniapp/defaultimpl/TmcImageSelectImpl$OooO0O0$OooO00o;
.super Lkotlin/jvm/internal/Lambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/defaultimpl/TmcImageSelectImpl$OooO0O0;->onDenied()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/TmcImageSelectImpl$OooO0O0$OooO00o;->OooO00o:Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/TmcImageSelectImpl$OooO0O0$OooO00o;->OooO00o:Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;->onDialogClickCancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    :catchall_0
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object v0
.end method
