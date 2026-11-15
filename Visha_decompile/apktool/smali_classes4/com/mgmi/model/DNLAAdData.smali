.class public Lcom/mgmi/model/DNLAAdData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgadplus/netlib/json/a;


# static fields
.field private static final serialVersionUID:J = 0x3de1ed39bba61ab4L


# instance fields
.field private castid:Ljava/lang/String;

.field private debug:Lcom/mgmi/model/DebugBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCastid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/DNLAAdData;->castid:Ljava/lang/String;

    return-object p0
.end method

.method public getDebug()Lcom/mgmi/model/DebugBean;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/DNLAAdData;->debug:Lcom/mgmi/model/DebugBean;

    return-object p0
.end method

.method public setCastid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/DNLAAdData;->castid:Ljava/lang/String;

    return-void
.end method

.method public setDebug(Lcom/mgmi/model/DebugBean;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/DNLAAdData;->debug:Lcom/mgmi/model/DebugBean;

    return-void
.end method
