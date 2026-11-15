.class public Lcom/transsion/magicvideo/data/SubtitleOptStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private optSuccess:Z

.field private subtitleHistory:Lcom/transsion/dbdata/beans/SubtitleHistory;


# direct methods
.method public constructor <init>(Lcom/transsion/dbdata/beans/SubtitleHistory;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/magicvideo/data/SubtitleOptStatus;->subtitleHistory:Lcom/transsion/dbdata/beans/SubtitleHistory;

    iput-boolean p2, p0, Lcom/transsion/magicvideo/data/SubtitleOptStatus;->optSuccess:Z

    return-void
.end method


# virtual methods
.method public getSubtitleHistory()Lcom/transsion/dbdata/beans/SubtitleHistory;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/data/SubtitleOptStatus;->subtitleHistory:Lcom/transsion/dbdata/beans/SubtitleHistory;

    return-object p0
.end method

.method public isOptSuccess()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/magicvideo/data/SubtitleOptStatus;->optSuccess:Z

    return p0
.end method
