.class public Lcom/mgmi/model/CreativeMediaData$MediaParams;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgadplus/netlib/json/a;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgmi/model/CreativeMediaData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgmi/model/CreativeMediaData$MediaParams$Position;
    }
.end annotation


# instance fields
.field public baseOn:Ljava/lang/String;

.field public clickOpenWebview:I

.field public fill:I

.field public fit:Ljava/lang/String;

.field public fullScreen:I

.field public height:I

.field public interactJson:Ljava/lang/String;

.field public keepShow:I

.field public key:Ljava/lang/String;

.field public position:Lcom/mgmi/model/CreativeMediaData$MediaParams$Position;

.field public scale:F

.field public showCloseButton:I

.field public src:Ljava/lang/String;

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
