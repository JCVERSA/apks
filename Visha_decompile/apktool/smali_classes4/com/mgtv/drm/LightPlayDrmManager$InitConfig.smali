.class public Lcom/mgtv/drm/LightPlayDrmManager$InitConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgtv/drm/LightPlayDrmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InitConfig"
.end annotation


# instance fields
.field public autoLibLoad:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mgtv/drm/LightPlayDrmManager$InitConfig;->autoLibLoad:Z

    return-void
.end method


# virtual methods
.method public setAutoLibLoad(Z)Lcom/mgtv/drm/LightPlayDrmManager$InitConfig;
    .locals 0

    iput-boolean p1, p0, Lcom/mgtv/drm/LightPlayDrmManager$InitConfig;->autoLibLoad:Z

    return-object p0
.end method
