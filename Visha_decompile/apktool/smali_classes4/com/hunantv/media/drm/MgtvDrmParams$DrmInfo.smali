.class public Lcom/hunantv/media/drm/MgtvDrmParams$DrmInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/drm/MgtvDrmParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DrmInfo"
.end annotation


# instance fields
.field public drmCid:Ljava/lang/String;

.field public drmFirm:Ljava/lang/String;

.field public drmSolution:Ljava/lang/String;

.field public drmToken:Ljava/lang/String;

.field public drmType:Ljava/lang/String;

.field public licenseUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hunantv/media/drm/MgtvDrmParams$DrmInfo;->drmFirm:Ljava/lang/String;

    iput-object p2, p0, Lcom/hunantv/media/drm/MgtvDrmParams$DrmInfo;->drmSolution:Ljava/lang/String;

    iput-object p3, p0, Lcom/hunantv/media/drm/MgtvDrmParams$DrmInfo;->licenseUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hunantv/media/drm/MgtvDrmParams$DrmInfo;->drmFirm:Ljava/lang/String;

    iput-object p2, p0, Lcom/hunantv/media/drm/MgtvDrmParams$DrmInfo;->drmSolution:Ljava/lang/String;

    iput-object p3, p0, Lcom/hunantv/media/drm/MgtvDrmParams$DrmInfo;->licenseUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/hunantv/media/drm/MgtvDrmParams$DrmInfo;->drmType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hunantv/media/drm/MgtvDrmParams$DrmInfo;->drmFirm:Ljava/lang/String;

    iput-object p2, p0, Lcom/hunantv/media/drm/MgtvDrmParams$DrmInfo;->drmSolution:Ljava/lang/String;

    iput-object p3, p0, Lcom/hunantv/media/drm/MgtvDrmParams$DrmInfo;->licenseUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/hunantv/media/drm/MgtvDrmParams$DrmInfo;->drmCid:Ljava/lang/String;

    iput-object p5, p0, Lcom/hunantv/media/drm/MgtvDrmParams$DrmInfo;->drmToken:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public setDrmType(Ljava/lang/String;)Lcom/hunantv/media/drm/MgtvDrmParams$DrmInfo;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/drm/MgtvDrmParams$DrmInfo;->drmType:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DrmInfo{drmFirm=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hunantv/media/drm/MgtvDrmParams$DrmInfo;->drmFirm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", drmSolution=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/media/drm/MgtvDrmParams$DrmInfo;->drmSolution:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", licenseUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/media/drm/MgtvDrmParams$DrmInfo;->licenseUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", drmCid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/media/drm/MgtvDrmParams$DrmInfo;->drmCid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", drmToken=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/media/drm/MgtvDrmParams$DrmInfo;->drmToken:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", drmType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/hunantv/media/drm/MgtvDrmParams$DrmInfo;->drmType:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
