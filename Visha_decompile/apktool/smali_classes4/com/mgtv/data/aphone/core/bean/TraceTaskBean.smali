.class public Lcom/mgtv/data/aphone/core/bean/TraceTaskBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/json/JsonInterface;


# instance fields
.field public localLog:I

.field public reportUrl:Ljava/lang/String;

.field public upTask:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mgtv/data/aphone/core/bean/TraceTaskDetailBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    const-class v0, Lcom/mgtv/data/aphone/core/bean/TraceTaskBean;

    invoke-static {p0, v0}, Lcom/mgtv/json/a;->a(Lcom/mgtv/json/JsonInterface;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
