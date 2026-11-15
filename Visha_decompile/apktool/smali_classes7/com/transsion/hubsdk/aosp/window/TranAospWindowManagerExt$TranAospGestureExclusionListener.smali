.class public Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt$TranAospGestureExclusionListener;
.super Landroid/view/ISystemGestureExclusionListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TranAospGestureExclusionListener"
.end annotation


# instance fields
.field mExclusionListener:Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranSystemGestureExclusionListener;

.field final synthetic this$0:Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt;Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranSystemGestureExclusionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt$TranAospGestureExclusionListener;->this$0:Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt;

    invoke-direct {p0}, Landroid/view/ISystemGestureExclusionListener$Stub;-><init>()V

    iput-object p2, p0, Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt$TranAospGestureExclusionListener;->mExclusionListener:Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranSystemGestureExclusionListener;

    return-void
.end method


# virtual methods
.method public onSystemGestureExclusionChanged(ILandroid/graphics/Region;Landroid/graphics/Region;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt$TranAospGestureExclusionListener;->mExclusionListener:Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranSystemGestureExclusionListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranSystemGestureExclusionListener;->onSystemGestureExclusionChanged(ILandroid/graphics/Region;Landroid/graphics/Region;)V

    :cond_0
    return-void
.end method
