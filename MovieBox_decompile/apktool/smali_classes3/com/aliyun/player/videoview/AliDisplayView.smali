.class public Lcom/aliyun/player/videoview/AliDisplayView;
.super Landroid/widget/FrameLayout;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aliyun/player/videoview/AliDisplayView$OnViewStatusListener;,
        Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AliDisplayView"


# instance fields
.field private mDisplayViewHelper:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

.field private mOutOnViewStatusListener:Lcom/aliyun/player/videoview/AliDisplayView$OnViewStatusListener;

.field private mPreferDisplayViewType:Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/aliyun/player/videoview/AliDisplayView;->mDisplayViewHelper:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    .line 3
    iput-object p1, p0, Lcom/aliyun/player/videoview/AliDisplayView;->mPreferDisplayViewType:Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;

    .line 4
    iput-object p1, p0, Lcom/aliyun/player/videoview/AliDisplayView;->mOutOnViewStatusListener:Lcom/aliyun/player/videoview/AliDisplayView$OnViewStatusListener;

    .line 5
    invoke-direct {p0}, Lcom/aliyun/player/videoview/AliDisplayView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/aliyun/player/videoview/AliDisplayView;->mDisplayViewHelper:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    .line 8
    iput-object p1, p0, Lcom/aliyun/player/videoview/AliDisplayView;->mPreferDisplayViewType:Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;

    .line 9
    iput-object p1, p0, Lcom/aliyun/player/videoview/AliDisplayView;->mOutOnViewStatusListener:Lcom/aliyun/player/videoview/AliDisplayView$OnViewStatusListener;

    .line 10
    invoke-direct {p0}, Lcom/aliyun/player/videoview/AliDisplayView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lcom/aliyun/player/videoview/AliDisplayView;->mDisplayViewHelper:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    .line 13
    iput-object p1, p0, Lcom/aliyun/player/videoview/AliDisplayView;->mPreferDisplayViewType:Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;

    .line 14
    iput-object p1, p0, Lcom/aliyun/player/videoview/AliDisplayView;->mOutOnViewStatusListener:Lcom/aliyun/player/videoview/AliDisplayView$OnViewStatusListener;

    .line 15
    invoke-direct {p0}, Lcom/aliyun/player/videoview/AliDisplayView;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    .line 1
    new-instance v0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;-><init>(Lcom/aliyun/player/videoview/AliDisplayView;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/aliyun/player/videoview/AliDisplayView;->mDisplayViewHelper:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getDisplayViewHelper()Lcom/aliyun/player/nativeclass/DisplayViewHelper;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/videoview/AliDisplayView;->mDisplayViewHelper:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOnViewStatusListener()Lcom/aliyun/player/videoview/AliDisplayView$OnViewStatusListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/videoview/AliDisplayView;->mOutOnViewStatusListener:Lcom/aliyun/player/videoview/AliDisplayView$OnViewStatusListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPreferDisplayViewType()Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/videoview/AliDisplayView;->mPreferDisplayViewType:Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;

    .line 2
    .line 3
    return-object v0
.end method

.method public setOnViewStatusListener(Lcom/aliyun/player/videoview/AliDisplayView$OnViewStatusListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/videoview/AliDisplayView;->mOutOnViewStatusListener:Lcom/aliyun/player/videoview/AliDisplayView$OnViewStatusListener;

    .line 2
    .line 3
    return-void
.end method

.method public setPreferDisplayView(Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/videoview/AliDisplayView;->mPreferDisplayViewType:Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;

    .line 2
    .line 3
    return-void
.end method

.method public setSurfaceReuse(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/videoview/AliDisplayView;->mDisplayViewHelper:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->setSurfaceReuse(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
