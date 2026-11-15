.class public Lcom/hunantv/media/report/ReportParams$DRM;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/report/ReportParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DRM"
.end annotation


# instance fields
.field public ec:Ljava/lang/String;

.field public firm:Ljava/lang/String;

.field public lic:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/hunantv/media/report/ReportParams$DRM;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/hunantv/media/report/ReportParams$DRM;->lic:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams$DRM;->lic:Ljava/lang/String;

    iget-object v0, p1, Lcom/hunantv/media/report/ReportParams$DRM;->firm:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams$DRM;->firm:Ljava/lang/String;

    iget-object p1, p1, Lcom/hunantv/media/report/ReportParams$DRM;->ec:Ljava/lang/String;

    iput-object p1, p0, Lcom/hunantv/media/report/ReportParams$DRM;->ec:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public setEc(Ljava/lang/String;)Lcom/hunantv/media/report/ReportParams$DRM;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/report/ReportParams$DRM;->ec:Ljava/lang/String;

    return-object p0
.end method

.method public setFirm(Ljava/lang/String;)Lcom/hunantv/media/report/ReportParams$DRM;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/report/ReportParams$DRM;->firm:Ljava/lang/String;

    return-object p0
.end method

.method public setLic(Ljava/lang/String;)Lcom/hunantv/media/report/ReportParams$DRM;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/report/ReportParams$DRM;->lic:Ljava/lang/String;

    return-object p0
.end method
