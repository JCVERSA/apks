.class public Lcom/transsion/xuanniao/account/model/data/CountryData$Country;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/xuanniao/account/model/data/CountryData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Country"
.end annotation


# instance fields
.field public code:Ljava/lang/String;

.field public country:Ljava/lang/String;

.field public displayName:Ljava/lang/String;

.field public isSelected:Z

.field public iso:Ljava/lang/String;

.field public language:Ljava/lang/String;

.field public localName:Ljava/lang/String;

.field public mcc:Ljava/lang/String;

.field public resId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    .line 9
    invoke-direct/range {v0 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;->iso:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;->country:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;->code:Ljava/lang/String;

    .line 5
    iput-object p5, p0, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;->mcc:Ljava/lang/String;

    .line 6
    iput p6, p0, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;->resId:I

    .line 7
    iput-boolean p7, p0, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;->isSelected:Z

    .line 8
    iput-object p2, p0, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;->localName:Ljava/lang/String;

    return-void
.end method
