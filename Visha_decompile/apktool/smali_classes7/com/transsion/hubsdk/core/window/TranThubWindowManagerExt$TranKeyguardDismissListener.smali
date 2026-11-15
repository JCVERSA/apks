.class public Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt$TranKeyguardDismissListener;
.super Lcom/transsion/hubsdk/internal/policy/ITranKeyguardDismissCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TranKeyguardDismissListener"
.end annotation


# instance fields
.field private final mCallback:Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranKeyguardDismissCallback;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranKeyguardDismissCallback;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/internal/policy/ITranKeyguardDismissCallback$Stub;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt$TranKeyguardDismissListener;->mCallback:Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranKeyguardDismissCallback;

    return-void
.end method


# virtual methods
.method public onDismissCancelled()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt$TranKeyguardDismissListener;->mCallback:Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranKeyguardDismissCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranKeyguardDismissCallback;->onDismissCancelled()V

    :cond_0
    return-void
.end method

.method public onDismissError()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt$TranKeyguardDismissListener;->mCallback:Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranKeyguardDismissCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranKeyguardDismissCallback;->onDismissError()V

    :cond_0
    return-void
.end method

.method public onDismissSucceeded()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt$TranKeyguardDismissListener;->mCallback:Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranKeyguardDismissCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranKeyguardDismissCallback;->onDismissSucceeded()V

    :cond_0
    return-void
.end method
