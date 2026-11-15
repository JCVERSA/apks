.class public Lcom/mgmi/net/bean/BaseAdWidgetInfoImpBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgadplus/netlib/json/a;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x775659d1ad6331faL


# instance fields
.field protected adLogoAndOriginName:Ljava/lang/String;

.field protected cid:Ljava/lang/String;

.field protected mid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/mgmi/net/bean/BaseAdWidgetInfoImpBean;->adLogoAndOriginName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public setAdLogoAndOriginName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/net/bean/BaseAdWidgetInfoImpBean;->adLogoAndOriginName:Ljava/lang/String;

    return-void
.end method

.method public setCid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/net/bean/BaseAdWidgetInfoImpBean;->cid:Ljava/lang/String;

    return-void
.end method

.method public setMid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/net/bean/BaseAdWidgetInfoImpBean;->mid:Ljava/lang/String;

    return-void
.end method
