.class public Lcom/mgtv/ssp/play/playsdk/VideoDefinitions;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public definition:I

.field public needPay:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/mgtv/ssp/play/playsdk/VideoDefinitions;->definition:I

    .line 4
    iput p2, p0, Lcom/mgtv/ssp/play/playsdk/VideoDefinitions;->needPay:I

    return-void
.end method
