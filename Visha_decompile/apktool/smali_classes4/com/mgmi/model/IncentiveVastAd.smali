.class public Lcom/mgmi/model/IncentiveVastAd;
.super Lcom/mgmi/model/VASTAd;
.source "SourceFile"


# instance fields
.field private coverBg:Ljava/lang/String;

.field private entryce:Ljava/lang/String;

.field private smallIcon:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mgmi/model/VASTAd;-><init>()V

    return-void
.end method


# virtual methods
.method public getEntryce()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/IncentiveVastAd;->entryce:Ljava/lang/String;

    return-object p0
.end method

.method public getSmallIcon()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/IncentiveVastAd;->smallIcon:Ljava/lang/String;

    return-object p0
.end method

.method public setCover(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/IncentiveVastAd;->coverBg:Ljava/lang/String;

    return-void
.end method

.method public setEntryce(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/IncentiveVastAd;->entryce:Ljava/lang/String;

    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/IncentiveVastAd;->smallIcon:Ljava/lang/String;

    return-void
.end method
