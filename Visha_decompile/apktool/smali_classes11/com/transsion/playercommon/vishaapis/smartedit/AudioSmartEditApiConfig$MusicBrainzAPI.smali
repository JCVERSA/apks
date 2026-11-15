.class public final Lcom/transsion/playercommon/vishaapis/smartedit/AudioSmartEditApiConfig$MusicBrainzAPI;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/playercommon/vishaapis/smartedit/AudioSmartEditApiConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MusicBrainzAPI"
.end annotation


# static fields
.field public static final API_GET_RECORDING_DETAILS:Ljava/lang/String; = "/ws/2/recording/{mbid}"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
