.class public Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt$TranGestureExclusionListener;
.super Lcom/transsion/hubsdk/view/ITranSystemGestureExclusionListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TranGestureExclusionListener"
.end annotation


# instance fields
.field private final mExclusionListener:Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranSystemGestureExclusionListener;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranSystemGestureExclusionListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/view/ITranSystemGestureExclusionListener$Stub;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt$TranGestureExclusionListener;->mExclusionListener:Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranSystemGestureExclusionListener;

    return-void
.end method


# virtual methods
.method public onSystemGestureExclusionChanged(ILandroid/graphics/Region;Landroid/graphics/Region;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt$TranGestureExclusionListener;->mExclusionListener:Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranSystemGestureExclusionListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranSystemGestureExclusionListener;->onSystemGestureExclusionChanged(ILandroid/graphics/Region;Landroid/graphics/Region;)V

    :cond_0
    return-void
.end method
