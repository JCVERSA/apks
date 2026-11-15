.class public Lcom/transsion/hubsdk/core/graphics/TranThubVectorDrawable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/graphics/ITranVectorDrawableAdapter;


# instance fields
.field private mTranVectorDrawable:Lcom/transsion/hubsdk/graphics/TranVectorDrawable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/hubsdk/graphics/TranVectorDrawable;

    invoke-direct {v0}, Lcom/transsion/hubsdk/graphics/TranVectorDrawable;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/graphics/TranThubVectorDrawable;->mTranVectorDrawable:Lcom/transsion/hubsdk/graphics/TranVectorDrawable;

    return-void
.end method


# virtual methods
.method public updateIconColor(Landroid/graphics/drawable/VectorDrawable;IIILjava/lang/String;)Z
    .locals 6

    iget-object v0, p0, Lcom/transsion/hubsdk/core/graphics/TranThubVectorDrawable;->mTranVectorDrawable:Lcom/transsion/hubsdk/graphics/TranVectorDrawable;

    if-eqz v0, :cond_0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/hubsdk/graphics/TranVectorDrawable;->updateIconColor(Landroid/graphics/drawable/VectorDrawable;IIILjava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
