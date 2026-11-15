.class public Lcom/transsion/playercommon/vishaweb/jsdata/JsPost;
.super Lcom/transsion/dbdata/beans/onlinevideo/TypeBean;
.source "SourceFile"


# instance fields
.field event:Ljava/lang/String;

.field post:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/dbdata/beans/onlinevideo/TypeBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getEvent()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/vishaweb/jsdata/JsPost;->event:Ljava/lang/String;

    return-object p0
.end method

.method public getPost()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/playercommon/vishaweb/jsdata/JsPost;->post:Ljava/util/Map;

    return-object p0
.end method

.method public setEvent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/vishaweb/jsdata/JsPost;->event:Ljava/lang/String;

    return-void
.end method

.method public setPost(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/playercommon/vishaweb/jsdata/JsPost;->post:Ljava/util/Map;

    return-void
.end method
