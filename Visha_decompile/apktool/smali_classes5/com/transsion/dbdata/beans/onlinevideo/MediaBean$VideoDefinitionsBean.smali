.class public Lcom/transsion/dbdata/beans/onlinevideo/MediaBean$VideoDefinitionsBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoDefinitionsBean"
.end annotation


# instance fields
.field private definition:Ljava/lang/Integer;

.field private pay_type:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefinition()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean$VideoDefinitionsBean;->definition:Ljava/lang/Integer;

    return-object p0
.end method

.method public getPay_type()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean$VideoDefinitionsBean;->pay_type:Ljava/lang/Integer;

    return-object p0
.end method

.method public setDefinition(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean$VideoDefinitionsBean;->definition:Ljava/lang/Integer;

    return-void
.end method

.method public setPay_type(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean$VideoDefinitionsBean;->pay_type:Ljava/lang/Integer;

    return-void
.end method
