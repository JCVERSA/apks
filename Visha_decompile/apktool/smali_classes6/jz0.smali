.class public final synthetic Ljz0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le74;


# instance fields
.field public final synthetic b:Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljz0;->b:Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ljz0;->b:Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;

    check-cast p1, Lcom/transsion/playercommon/share/model/SharePlatformInfo;

    invoke-static {p0, p1}, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;->j0(Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;Lcom/transsion/playercommon/share/model/SharePlatformInfo;)Lzfb;

    move-result-object p0

    return-object p0
.end method
