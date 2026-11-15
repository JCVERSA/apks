.class public Lcom/mgmi/model/WebviewResourceBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgadplus/netlib/json/a;
.implements Ljava/io/Serializable;


# instance fields
.field public addr:Ljava/lang/String;

.field public ctype:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mgmi/model/WebviewResourceBean;->ctype:Ljava/lang/String;

    iput-object p2, p0, Lcom/mgmi/model/WebviewResourceBean;->addr:Ljava/lang/String;

    return-void
.end method
