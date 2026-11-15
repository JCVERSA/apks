.class public final Lcom/transsion/playercommon/vishaapis/appconfig/AppControlConfig$API;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/playercommon/vishaapis/appconfig/AppControlConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "API"
.end annotation


# static fields
.field public static final API_GET_AI_SUBTITLE_CONFIG:Ljava/lang/String; = "/visha/api/aiSub/config/get"

.field public static final API_GET_API_KEYS_CONFIG:Ljava/lang/String; = "/visha/api/intelligent_edit/api_key/get"

.field public static final API_GET_CHECK_NEW_VERSION:Ljava/lang/String; = "/visha/api/version/update-info"

.field public static final API_GET_CLOUD_CTRL_CONFIG:Ljava/lang/String; = "/visha/api/cloud-ctrl-config/get"

.field public static final API_GET_DOWNLOAD_CONFIG:Ljava/lang/String; = "/visha/api/aggregation_config/sniff_global_config/query/v1"

.field public static final API_GET_GLOBAL_CONFIG:Ljava/lang/String; = "/visha/api/aggregation_config/global_config/query/v2"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
