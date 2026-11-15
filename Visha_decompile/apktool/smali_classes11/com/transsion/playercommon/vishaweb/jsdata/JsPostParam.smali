.class public Lcom/transsion/playercommon/vishaweb/jsdata/JsPostParam;
.super Lcom/transsion/dbdata/beans/onlinevideo/TypeBean;
.source "SourceFile"


# instance fields
.field params:Lcom/transsion/playercommon/vishaweb/jsdata/JsPost;

.field type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/dbdata/beans/onlinevideo/TypeBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getParams()Lcom/transsion/playercommon/vishaweb/jsdata/JsPost;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/vishaweb/jsdata/JsPostParam;->params:Lcom/transsion/playercommon/vishaweb/jsdata/JsPost;

    return-object p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/transsion/playercommon/vishaweb/jsdata/JsPostParam;->type:I

    return p0
.end method

.method public setParams(Lcom/transsion/playercommon/vishaweb/jsdata/JsPost;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/vishaweb/jsdata/JsPostParam;->params:Lcom/transsion/playercommon/vishaweb/jsdata/JsPost;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/playercommon/vishaweb/jsdata/JsPostParam;->type:I

    return-void
.end method
