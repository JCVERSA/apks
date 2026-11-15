.class public Lcom/mgtv/ssp/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:I

.field public c:Lcom/mgtv/ssp/bean/VideoBean;

.field public d:Lcom/mgtv/ssp/bean/VideoDetailInfoBean;

.field public e:Z

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/mgtv/ssp/f;->b:I

    return-void
.end method

.method public constructor <init>(ILcom/mgtv/ssp/bean/VideoBean;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/mgtv/ssp/f;->b:I

    .line 5
    iput-object p2, p0, Lcom/mgtv/ssp/f;->c:Lcom/mgtv/ssp/bean/VideoBean;

    return-void
.end method

.method public constructor <init>(ILcom/mgtv/ssp/bean/VideoDetailInfoBean;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p1, p0, Lcom/mgtv/ssp/f;->b:I

    .line 8
    iput-object p2, p0, Lcom/mgtv/ssp/f;->d:Lcom/mgtv/ssp/bean/VideoDetailInfoBean;

    return-void
.end method
