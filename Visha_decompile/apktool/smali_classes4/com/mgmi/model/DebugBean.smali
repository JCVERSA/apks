.class public Lcom/mgmi/model/DebugBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgadplus/netlib/json/a;


# static fields
.field private static final serialVersionUID:J = -0x260a679809ef2a65L


# instance fields
.field private host:Ljava/lang/String;

.field private server:Ljava/lang/String;

.field private st:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHost()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/DebugBean;->host:Ljava/lang/String;

    return-object p0
.end method

.method public getServer()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/DebugBean;->server:Ljava/lang/String;

    return-object p0
.end method

.method public getSt()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/DebugBean;->st:Ljava/lang/String;

    return-object p0
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/DebugBean;->host:Ljava/lang/String;

    return-void
.end method

.method public setServer(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/DebugBean;->server:Ljava/lang/String;

    return-void
.end method

.method public setSt(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/DebugBean;->st:Ljava/lang/String;

    return-void
.end method
