.class public Lcom/mgmi/model/AdStyleInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgadplus/netlib/json/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgmi/model/AdStyleInfo$BackgroundConfig;,
        Lcom/mgmi/model/AdStyleInfo$TextConfig;,
        Lcom/mgmi/model/AdStyleInfo$IconConfig;
    }
.end annotation


# instance fields
.field public advertiser:Ljava/lang/String;

.field public background:Lcom/mgmi/model/AdStyleInfo$BackgroundConfig;

.field public closeTime:I

.field public events:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mgmi/model/baike/TabEvent;",
            ">;"
        }
    .end annotation
.end field

.field public icon:Lcom/mgmi/model/AdStyleInfo$IconConfig;

.field public resInfo:Ljava/lang/String;

.field public showAdflag:I

.field public showClose:I

.field public textStyle:Lcom/mgmi/model/AdStyleInfo$TextConfig;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/mgmi/model/AdStyleInfo;->showClose:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/mgmi/model/AdStyleInfo;->showAdflag:I

    return-void
.end method
