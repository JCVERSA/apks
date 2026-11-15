.class public Lcom/hisavana/common/param/CloudConfigPostBody;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field public application:Lcom/hisavana/common/param/ApplicationDTO;

.field public applicationId:Ljava/lang/String;

.field public codeSeatFilterEnable:Z

.field public codeSeatFilterIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public device:Lcom/hisavana/common/param/DeviceDTO;

.field public ext:Lcom/hisavana/common/param/Ext;

.field public testRequest:Ljava/lang/Boolean;

.field public user:Lcom/hisavana/common/param/UserDTO;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
