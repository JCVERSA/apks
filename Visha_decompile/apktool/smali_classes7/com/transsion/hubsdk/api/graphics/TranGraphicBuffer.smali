.class public Lcom/transsion/hubsdk/api/graphics/TranGraphicBuffer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mHeight:I

.field public mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 0

    iget p0, p0, Lcom/transsion/hubsdk/api/graphics/TranGraphicBuffer;->mHeight:I

    return p0
.end method

.method public getWidth()I
    .locals 0

    iget p0, p0, Lcom/transsion/hubsdk/api/graphics/TranGraphicBuffer;->mWidth:I

    return p0
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/hubsdk/api/graphics/TranGraphicBuffer;->mHeight:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/hubsdk/api/graphics/TranGraphicBuffer;->mWidth:I

    return-void
.end method
