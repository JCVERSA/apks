.class public Lcom/transsion/dbdata/beans/media/JumpMediaItem;
.super Lcom/transsion/dbdata/beans/media/MediaItem;
.source "SourceFile"


# instance fields
.field private jumpBean:Lcom/transsion/dbdata/beans/appconfig/JumpBean$JumpInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/dbdata/beans/media/MediaItem;-><init>()V

    return-void
.end method


# virtual methods
.method public getJumpBean()Lcom/transsion/dbdata/beans/appconfig/JumpBean$JumpInfo;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/JumpMediaItem;->jumpBean:Lcom/transsion/dbdata/beans/appconfig/JumpBean$JumpInfo;

    return-object p0
.end method

.method public setJumpBean(Lcom/transsion/dbdata/beans/appconfig/JumpBean$JumpInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/media/JumpMediaItem;->jumpBean:Lcom/transsion/dbdata/beans/appconfig/JumpBean$JumpInfo;

    return-void
.end method
