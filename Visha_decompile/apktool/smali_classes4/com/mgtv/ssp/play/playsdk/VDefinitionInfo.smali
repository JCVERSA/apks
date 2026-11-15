.class public Lcom/mgtv/ssp/play/playsdk/VDefinitionInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public definition:I

.field public name:Ljava/lang/String;

.field public vip:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/mgtv/ssp/play/playsdk/VDefinitionInfo;->definition:I

    .line 4
    iput p2, p0, Lcom/mgtv/ssp/play/playsdk/VDefinitionInfo;->vip:I

    .line 5
    iput-object p3, p0, Lcom/mgtv/ssp/play/playsdk/VDefinitionInfo;->name:Ljava/lang/String;

    return-void
.end method
