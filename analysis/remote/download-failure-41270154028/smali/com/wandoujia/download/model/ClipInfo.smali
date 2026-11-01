.class public Lcom/wandoujia/download/model/ClipInfo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private end:Ljava/lang/String;

.field private start:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEnd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/wandoujia/download/model/ClipInfo;->end:Ljava/lang/String;

    return-object v0
.end method

.method public getStart()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/wandoujia/download/model/ClipInfo;->start:Ljava/lang/String;

    return-object v0
.end method
