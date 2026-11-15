.class public Lcom/mgmi/model/InnerAiHead;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgadplus/netlib/json/a;
.implements Ljava/io/Serializable;


# instance fields
.field public color:Ljava/lang/String;

.field public head:Ljava/lang/String;

.field public isChecked:Z

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "#EB5528"

    iput-object v0, p0, Lcom/mgmi/model/InnerAiHead;->color:Ljava/lang/String;

    return-void
.end method
