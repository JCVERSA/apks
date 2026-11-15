.class public Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials$Definitions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Definitions"
.end annotation


# instance fields
.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field private payType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pay_type"
    .end annotation
.end field

.field private type:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials$Definitions;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getPayType()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials$Definitions;->payType:I

    return p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials$Definitions;->type:I

    return p0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials$Definitions;->name:Ljava/lang/String;

    return-void
.end method

.method public setPayType(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials$Definitions;->payType:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials$Definitions;->type:I

    return-void
.end method
