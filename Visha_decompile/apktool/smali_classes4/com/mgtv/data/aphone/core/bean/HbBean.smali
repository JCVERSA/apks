.class public Lcom/mgtv/data/aphone/core/bean/HbBean;
.super Lcom/mgtv/data/aphone/core/bean/BaseBean;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/json/JsonInterface;


# instance fields
.field public act:Ljava/lang/String;

.field public ap:Ljava/lang/String;

.field public bdid:Ljava/lang/String;

.field public cf:Ljava/lang/String;

.field public cid:Ljava/lang/String;

.field public cpn:Ljava/lang/String;

.field public def:Ljava/lang/String;

.field public istry:Ljava/lang/String;

.field public list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mgtv/data/aphone/core/bean/HbListBean;",
            ">;"
        }
    .end annotation
.end field

.field public pay:Ljava/lang/String;

.field public plid:Ljava/lang/String;

.field public pt:Ljava/lang/String;

.field public suuid:Ljava/lang/String;

.field public vid:Ljava/lang/String;

.field public vts:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/mgtv/data/aphone/core/bean/BaseBean;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mgtv/data/aphone/core/bean/BaseBean;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    const-class v0, Lcom/mgtv/data/aphone/core/bean/HbBean;

    invoke-static {p0, v0}, Lcom/mgtv/json/a;->a(Lcom/mgtv/json/JsonInterface;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
