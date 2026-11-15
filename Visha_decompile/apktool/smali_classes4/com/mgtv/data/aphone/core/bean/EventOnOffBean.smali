.class public Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/json/JsonInterface;


# instance fields
.field public appId:Ljava/lang/String;

.field public config:Ljava/lang/Object;

.field public data:Ljava/lang/Object;

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    const-class v0, Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;

    invoke-static {p0, v0}, Lcom/mgtv/json/a;->a(Lcom/mgtv/json/JsonInterface;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
