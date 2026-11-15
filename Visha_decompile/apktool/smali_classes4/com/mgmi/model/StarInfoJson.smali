.class public Lcom/mgmi/model/StarInfoJson;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgadplus/netlib/json/a;
.implements Ljava/io/Serializable;


# instance fields
.field public base:Lcom/mgmi/model/EntranceBean;

.field public stars:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mgmi/model/StarsBean;",
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
.method public getBase()Lcom/mgmi/model/EntranceBean;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/StarInfoJson;->base:Lcom/mgmi/model/EntranceBean;

    return-object p0
.end method
