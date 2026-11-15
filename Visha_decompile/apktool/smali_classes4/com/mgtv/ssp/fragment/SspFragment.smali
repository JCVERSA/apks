.class public abstract Lcom/mgtv/ssp/fragment/SspFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# instance fields
.field protected isOuterPrepared:Z

.field protected isStarted:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgtv/ssp/fragment/SspFragment;->isStarted:Z

    iput-boolean v0, p0, Lcom/mgtv/ssp/fragment/SspFragment;->isOuterPrepared:Z

    return-void
.end method


# virtual methods
.method public isStarted()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgtv/ssp/fragment/SspFragment;->isStarted:Z

    return p0
.end method

.method public onClickBack()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract requestData()V
.end method

.method public abstract start(Z)V
.end method
