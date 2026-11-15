.class public Lcom/transsion/hubsdk/core/graphics/TranThubPath;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/graphics/ITranPathAdapter;


# instance fields
.field private final mService:Lcom/transsion/hubsdk/graphics/TranPath;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/transsion/hubsdk/graphics/TranPath;->getInstance()Lcom/transsion/hubsdk/graphics/TranPath;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/graphics/TranThubPath;->mService:Lcom/transsion/hubsdk/graphics/TranPath;

    return-void
.end method


# virtual methods
.method public getSmoothCapsule(FFFFFF)Landroid/graphics/Path;
    .locals 9

    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    iget-object v0, p0, Lcom/transsion/hubsdk/core/graphics/TranThubPath;->mService:Lcom/transsion/hubsdk/graphics/TranPath;

    move-object v1, v8

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/transsion/hubsdk/graphics/TranPath;->addSmoothCapsule(Landroid/graphics/Path;FFFFFF)V

    return-object v8
.end method

.method public smoothCapsuleEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/graphics/TranThubPath;->mService:Lcom/transsion/hubsdk/graphics/TranPath;

    invoke-virtual {p0}, Lcom/transsion/hubsdk/graphics/TranPath;->smoothCapsuleEnabled()Z

    move-result p0

    return p0
.end method
