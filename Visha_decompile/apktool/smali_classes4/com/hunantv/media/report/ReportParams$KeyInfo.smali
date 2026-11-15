.class public Lcom/hunantv/media/report/ReportParams$KeyInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/report/ReportParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyInfo"
.end annotation


# instance fields
.field public keyInfoExist:Z

.field public keyInfoRet:I

.field public keyInfoSet:Z

.field public keyInfoSetLayer:I

.field public keyinfoDef:Ljava/lang/String;

.field public keyinfoFileName:Ljava/lang/String;

.field public keyinfoUrl:Ljava/lang/String;

.field public keyinfoVid:Ljava/lang/String;

.field public reqErrMsg:Ljava/lang/String;

.field public reqHttpCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "n"

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams$KeyInfo;->reqHttpCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams$KeyInfo;->reqErrMsg:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams$KeyInfo;->keyinfoVid:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams$KeyInfo;->keyinfoUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams$KeyInfo;->keyinfoDef:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams$KeyInfo;->keyinfoFileName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/hunantv/media/report/ReportParams$KeyInfo;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "n"

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams$KeyInfo;->reqHttpCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams$KeyInfo;->reqErrMsg:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams$KeyInfo;->keyinfoVid:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams$KeyInfo;->keyinfoUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams$KeyInfo;->keyinfoDef:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams$KeyInfo;->keyinfoFileName:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/hunantv/media/report/ReportParams$KeyInfo;->keyInfoExist:Z

    iput-boolean v0, p0, Lcom/hunantv/media/report/ReportParams$KeyInfo;->keyInfoExist:Z

    iget-boolean v0, p1, Lcom/hunantv/media/report/ReportParams$KeyInfo;->keyInfoSet:Z

    iput-boolean v0, p0, Lcom/hunantv/media/report/ReportParams$KeyInfo;->keyInfoSet:Z

    iget v0, p1, Lcom/hunantv/media/report/ReportParams$KeyInfo;->keyInfoSetLayer:I

    iput v0, p0, Lcom/hunantv/media/report/ReportParams$KeyInfo;->keyInfoSetLayer:I

    iget v0, p1, Lcom/hunantv/media/report/ReportParams$KeyInfo;->keyInfoRet:I

    iput v0, p0, Lcom/hunantv/media/report/ReportParams$KeyInfo;->keyInfoRet:I

    iget-object v0, p1, Lcom/hunantv/media/report/ReportParams$KeyInfo;->reqHttpCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams$KeyInfo;->reqHttpCode:Ljava/lang/String;

    iget-object v0, p1, Lcom/hunantv/media/report/ReportParams$KeyInfo;->reqErrMsg:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams$KeyInfo;->reqErrMsg:Ljava/lang/String;

    iget-object v0, p1, Lcom/hunantv/media/report/ReportParams$KeyInfo;->keyinfoVid:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams$KeyInfo;->keyinfoVid:Ljava/lang/String;

    iget-object v0, p1, Lcom/hunantv/media/report/ReportParams$KeyInfo;->keyinfoUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams$KeyInfo;->keyinfoUrl:Ljava/lang/String;

    iget-object v0, p1, Lcom/hunantv/media/report/ReportParams$KeyInfo;->keyinfoDef:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams$KeyInfo;->keyinfoDef:Ljava/lang/String;

    iget-object p1, p1, Lcom/hunantv/media/report/ReportParams$KeyInfo;->keyinfoFileName:Ljava/lang/String;

    iput-object p1, p0, Lcom/hunantv/media/report/ReportParams$KeyInfo;->keyinfoFileName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hunantv/media/report/ReportParams$KeyInfo;->keyInfoExist:Z

    iput-boolean v0, p0, Lcom/hunantv/media/report/ReportParams$KeyInfo;->keyInfoSet:Z

    iput v0, p0, Lcom/hunantv/media/report/ReportParams$KeyInfo;->keyInfoSetLayer:I

    iput v0, p0, Lcom/hunantv/media/report/ReportParams$KeyInfo;->keyInfoRet:I

    const-string v0, "n"

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams$KeyInfo;->reqHttpCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams$KeyInfo;->reqErrMsg:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams$KeyInfo;->keyinfoVid:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams$KeyInfo;->keyinfoUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams$KeyInfo;->keyinfoDef:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams$KeyInfo;->keyinfoFileName:Ljava/lang/String;

    return-void
.end method
