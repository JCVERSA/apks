.class public Lcom/mgmi/model/baike/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgmi/model/baike/b$a;
    }
.end annotation


# instance fields
.field public caption:Ljava/lang/String;

.field public content:Lcom/mgmi/model/baike/a;

.field public contentType:I

.field public expandDefault:I

.field public expandTime:I

.field public hasRender:Z

.field public landpage:Lcom/mgmi/model/LandPage;

.field public lob:Ljava/lang/String;

.field public msgId:Ljava/lang/String;

.field public pageId:I

.field public position:Lcom/mgmi/model/baike/b$a;

.field public showClose:I

.field public showTime:I

.field public skinAd:Lcom/mgmi/model/AdStyleInfo;

.field public trace:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/mgmi/model/baike/b;->pageId:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/mgmi/model/baike/b;->showClose:I

    return-void
.end method
