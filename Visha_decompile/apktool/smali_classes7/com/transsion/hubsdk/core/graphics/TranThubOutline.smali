.class public Lcom/transsion/hubsdk/core/graphics/TranThubOutline;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/graphics/ITranOutlineAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubOutline"


# instance fields
.field private mService:Lcom/transsion/hubsdk/graphics/TranOutline;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/hubsdk/graphics/TranOutline;

    invoke-direct {v0}, Lcom/transsion/hubsdk/graphics/TranOutline;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/graphics/TranThubOutline;->mService:Lcom/transsion/hubsdk/graphics/TranOutline;

    return-void
.end method


# virtual methods
.method public setSmoothRoundRect(Landroid/graphics/Outline;IIIIFI)V
    .locals 8

    iget-object v0, p0, Lcom/transsion/hubsdk/core/graphics/TranThubOutline;->mService:Lcom/transsion/hubsdk/graphics/TranOutline;

    if-eqz v0, :cond_0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/transsion/hubsdk/graphics/TranOutline;->setSmoothRoundRect(Landroid/graphics/Outline;IIIIFI)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/transsion/hubsdk/core/graphics/TranThubOutline;->TAG:Ljava/lang/String;

    const-string p1, "cannot get core"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public smoothcornerCubicEdgeEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/graphics/TranThubOutline;->mService:Lcom/transsion/hubsdk/graphics/TranOutline;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/hubsdk/graphics/TranOutline;->smoothcornerCubicEdgeEnabled()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
