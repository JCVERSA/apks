.class public Lcom/transsion/dbdata/beans/sniff/SniffSoucreBean$PostValue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/dbdata/beans/sniff/SniffSoucreBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PostValue"
.end annotation


# instance fields
.field private sniffDomain:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sniff_domain"
    .end annotation
.end field

.field private sniffModel:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sniff_model"
    .end annotation
.end field

.field private sniffUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sniff_url"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSniffDomain()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/sniff/SniffSoucreBean$PostValue;->sniffDomain:Ljava/lang/String;

    return-object p0
.end method

.method public getSniffModel()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/sniff/SniffSoucreBean$PostValue;->sniffModel:Ljava/lang/Integer;

    return-object p0
.end method

.method public getSniffUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/sniff/SniffSoucreBean$PostValue;->sniffUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setSniffDomain(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/sniff/SniffSoucreBean$PostValue;->sniffDomain:Ljava/lang/String;

    return-void
.end method

.method public setSniffModel(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/sniff/SniffSoucreBean$PostValue;->sniffModel:Ljava/lang/Integer;

    return-void
.end method

.method public setSniffUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/sniff/SniffSoucreBean$PostValue;->sniffUrl:Ljava/lang/String;

    return-void
.end method
