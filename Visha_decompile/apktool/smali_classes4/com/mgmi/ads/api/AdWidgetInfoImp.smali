.class public interface abstract Lcom/mgmi/ads/api/AdWidgetInfoImp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final PLAYER_TYPE_AUTO_VIDEO:Ljava/lang/String; = "AUTO_VIDEO"

.field public static final PLAYER_TYPE_INTERECT_VIDEO:Ljava/lang/String; = "INTERECT_VIDEO"

.field public static final PLAYER_TYPE_MID_VIDEO:Ljava/lang/String; = "MID_VIDEO"

.field public static final PLAYER_TYPE_OFF_VIDEO:Ljava/lang/String; = "OFF_VIDEO"

.field public static final PLAYER_TYPE_PRE_VIDEO:Ljava/lang/String; = "PRE_VIDEO"

.field public static final RES_TYPE_IMAGE:I = 0x0

.field public static final RES_TYPE_VIDEO:I = 0x1

.field public static final RES_TYPE_VIDEO_FULLSCR_H5:I = 0x2

.field public static final RES_TYPE_VIDEO_HALFSCR_H5:I = 0x3


# virtual methods
.method public abstract autoLand()Z
.end method

.method public abstract getAdDurationRemain()I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getAdLogoAndOriginName()Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getAdOrigin()Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getAidColor()I
.end method

.method public abstract getAwayAppType()Lcom/mgmi/ads/api/d;
.end method

.method public abstract getCid()Ljava/lang/String;
.end method

.method public abstract getClickThrought()Ljava/lang/String;
.end method

.method public abstract getClickUrl()Ljava/lang/String;
.end method

.method public abstract getContLabel()Ljava/lang/String;
.end method

.method public abstract getCornerType()Lcom/mgmi/ads/api/f;
.end method

.method public abstract getDiscription()Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getErrorCode()I
.end method

.method public abstract getErrorMsg()Ljava/lang/String;
.end method

.method public abstract getLoaderInterface()Lcom/mgmi/ads/api/a/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getMid()Ljava/lang/String;
.end method

.method public abstract getPauseType()I
.end method

.method public abstract getResType()I
.end method

.method public abstract getResourceUrl()Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getSchGuideA()I
.end method

.method public abstract getSchGuideM()I
.end method

.method public abstract getThumbnailPic()Ljava/lang/String;
.end method

.method public abstract getTitleText()Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getUuid()Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getValuesTag()Ljava/lang/String;
.end method

.method public abstract getWidgetType()Ljava/lang/String;
.end method

.method public abstract isAdComplete()Z
.end method

.method public abstract isAdLogEnnable()Z
.end method

.method public abstract isPlayerUse()Z
.end method

.method public abstract setPauseType(I)V
.end method

.method public abstract setValuesTag(Ljava/lang/String;)V
.end method

.method public abstract setWidgetType(Ljava/lang/String;)Lcom/mgmi/ads/api/AdWidgetInfoImp;
.end method
