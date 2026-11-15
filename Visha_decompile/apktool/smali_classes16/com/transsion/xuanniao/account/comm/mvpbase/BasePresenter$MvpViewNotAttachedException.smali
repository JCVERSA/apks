.class public Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter$MvpViewNotAttachedException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MvpViewNotAttachedException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1da36305529d8603L


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Please call Presenter.attachView(MvpView) before requesting data to the Presenter"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method
