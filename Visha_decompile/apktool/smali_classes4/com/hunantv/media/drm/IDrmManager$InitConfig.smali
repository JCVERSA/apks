.class public Lcom/hunantv/media/drm/IDrmManager$InitConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/drm/IDrmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InitConfig"
.end annotation


# instance fields
.field public enableRoot:Z

.field public initDirPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hunantv/media/drm/IDrmManager$InitConfig;->initDirPath:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/hunantv/media/drm/IDrmManager$InitConfig;->enableRoot:Z

    return-void
.end method
