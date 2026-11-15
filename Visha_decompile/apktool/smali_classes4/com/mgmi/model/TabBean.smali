.class public Lcom/mgmi/model/TabBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgadplus/netlib/json/a;
.implements Ljava/io/Serializable;


# static fields
.field public static TAB_H5:I = 0x2

.field public static TAB_H5_NEW:I = 0x3

.field public static TAB_NATIVE:I = 0x1


# instance fields
.field public def:I

.field public fileName:Ljava/lang/String;

.field public h5Url:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public index:I

.field public isLocal:Z

.field public isReported:Z

.field public mCurUrl:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public params:Ljava/lang/String;

.field public tabAd:Lcom/mgmi/model/baike/TabAd;

.field public type:I

.field public zipUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 0

    iget p0, p0, Lcom/mgmi/model/TabBean;->type:I

    return p0
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/model/TabBean;->type:I

    return-void
.end method
