.class public Lcom/hunantv/media/drm/IDrmManager$SessionConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/drm/IDrmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SessionConfig"
.end annotation


# static fields
.field public static final DRM_LEVEL_DEFAULT:Ljava/lang/String; = "0"

.field public static final DRM_LEVEL_MIX:Ljava/lang/String; = "2"

.field public static final DRM_LEVEL_ONLY_COMMERCIAL:Ljava/lang/String; = "3"

.field public static final DRM_LEVEL_ONLY_NON_COMMERCIAL:Ljava/lang/String; = "1"

.field public static final STR_DRM_SOLUTION_LIGHTPLAY:Ljava/lang/String; = "6"

.field public static final STR_DRM_SOLUTION_MARLIN:Ljava/lang/String; = "0"

.field public static final STR_DRM_SOLUTION_MARLIN_CBCS:Ljava/lang/String; = "5"

.field public static final STR_DRM_SOLUTION_WIDEVINE:Ljava/lang/String; = "2"

.field public static final STR_DRM_SOLUTION_WISEPLAY:Ljava/lang/String; = "4"

.field public static final STR_DRM_TYPE_AUDIO_MAES:Ljava/lang/String; = "20"

.field public static final STR_DRM_TYPE_CBCS_HLS:Ljava/lang/String; = "6"

.field public static final STR_DRM_TYPE_CENC_HLS:Ljava/lang/String; = "4"

.field public static final STR_DRM_TYPE_MARLIN_BBTS:Ljava/lang/String; = "0"

.field public static final STR_DRM_TYPE_SM4_HLS:Ljava/lang/String; = "5"


# instance fields
.field public drmCid:Ljava/lang/String;

.field public drmInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hunantv/media/drm/MgtvDrmParams$DrmInfo;",
            ">;"
        }
    .end annotation
.end field

.field public drmLevel:Ljava/lang/String;

.field public drmToken:Ljava/lang/String;

.field public drmType:Ljava/lang/String;

.field public tokenNeedDecode:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hunantv/media/drm/IDrmManager$SessionConfig;->tokenNeedDecode:Z

    iput-object p1, p0, Lcom/hunantv/media/drm/IDrmManager$SessionConfig;->drmToken:Ljava/lang/String;

    iput-object p2, p0, Lcom/hunantv/media/drm/IDrmManager$SessionConfig;->drmCid:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/hunantv/media/drm/MgtvDrmParams$DrmInfo;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hunantv/media/drm/IDrmManager$SessionConfig;->tokenNeedDecode:Z

    iput-object p1, p0, Lcom/hunantv/media/drm/IDrmManager$SessionConfig;->drmToken:Ljava/lang/String;

    iput-object p2, p0, Lcom/hunantv/media/drm/IDrmManager$SessionConfig;->drmCid:Ljava/lang/String;

    iput-object p3, p0, Lcom/hunantv/media/drm/IDrmManager$SessionConfig;->drmType:Ljava/lang/String;

    iput-object p4, p0, Lcom/hunantv/media/drm/IDrmManager$SessionConfig;->drmInfoList:Ljava/util/List;

    const-string p1, "0"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz p4, :cond_1

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_1

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/hunantv/media/drm/MgtvDrmParams$DrmInfo;

    iget-object p4, p3, Lcom/hunantv/media/drm/MgtvDrmParams$DrmInfo;->drmSolution:Ljava/lang/String;

    invoke-virtual {p1, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_0

    iget-object p4, p3, Lcom/hunantv/media/drm/MgtvDrmParams$DrmInfo;->drmToken:Ljava/lang/String;

    iput-object p4, p0, Lcom/hunantv/media/drm/IDrmManager$SessionConfig;->drmToken:Ljava/lang/String;

    iget-object p3, p3, Lcom/hunantv/media/drm/MgtvDrmParams$DrmInfo;->drmCid:Ljava/lang/String;

    iput-object p3, p0, Lcom/hunantv/media/drm/IDrmManager$SessionConfig;->drmCid:Ljava/lang/String;

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SessionConfig{drmToken=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hunantv/media/drm/IDrmManager$SessionConfig;->drmToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", drmCid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/media/drm/IDrmManager$SessionConfig;->drmCid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", drmType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/media/drm/IDrmManager$SessionConfig;->drmType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", drmLicenseList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/hunantv/media/drm/IDrmManager$SessionConfig;->drmInfoList:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
