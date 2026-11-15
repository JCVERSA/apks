.class public Lcom/mgtv/ssp/play/dlnasdk/DlnaInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public isVip:Z

.field public playUrl:Ljava/lang/String;

.field public resolution:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/mgtv/ssp/play/dlnasdk/DlnaInfo;->playUrl:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgtv/ssp/play/dlnasdk/DlnaInfo;->isVip:Z

    return-void
.end method
