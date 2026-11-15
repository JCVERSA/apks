.class public Lcom/transsion/liblan/util/DisplayManager$SecondaryDisplay;
.super Landroid/app/Presentation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/liblan/util/DisplayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SecondaryDisplay"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "LAN/SecondaryDisplay"


# instance fields
.field private mSubtitlesSurfaceView:Landroid/view/SurfaceView;

.field private mSurfaceFrame:Landroid/widget/FrameLayout;

.field private mSurfaceView:Landroid/view/SurfaceView;

.field final synthetic this$0:Lcom/transsion/liblan/util/DisplayManager;


# direct methods
.method public constructor <init>(Lcom/transsion/liblan/util/DisplayManager;Landroid/content/Context;Landroid/view/Display;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/liblan/util/DisplayManager$SecondaryDisplay;->this$0:Lcom/transsion/liblan/util/DisplayManager;

    .line 2
    invoke-direct {p0, p2, p3}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/liblan/util/DisplayManager;Landroid/content/Context;Landroid/view/Display;I)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/transsion/liblan/util/DisplayManager$SecondaryDisplay;->this$0:Lcom/transsion/liblan/util/DisplayManager;

    .line 4
    invoke-direct {p0, p2, p3, p4}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;I)V

    return-void
.end method


# virtual methods
.method public getSubtitlesSurfaceView()Landroid/view/SurfaceView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/liblan/util/DisplayManager$SecondaryDisplay;->mSubtitlesSurfaceView:Landroid/view/SurfaceView;

    return-object p0
.end method

.method public getSurfaceFrame()Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/transsion/liblan/util/DisplayManager$SecondaryDisplay;->mSurfaceFrame:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public getSurfaceView()Landroid/view/SurfaceView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/liblan/util/DisplayManager$SecondaryDisplay;->mSurfaceView:Landroid/view/SurfaceView;

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/transsion/liblan/R$layout;->player_remote:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    sget p1, Lcom/transsion/liblan/R$id;->remote_player_surface_frame:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/transsion/liblan/util/DisplayManager$SecondaryDisplay;->mSurfaceFrame:Landroid/widget/FrameLayout;

    sget v0, Lcom/transsion/liblan/R$id;->remote_player_surface:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/SurfaceView;

    iput-object p1, p0, Lcom/transsion/liblan/util/DisplayManager$SecondaryDisplay;->mSurfaceView:Landroid/view/SurfaceView;

    iget-object p1, p0, Lcom/transsion/liblan/util/DisplayManager$SecondaryDisplay;->mSurfaceFrame:Landroid/widget/FrameLayout;

    sget v0, Lcom/transsion/liblan/R$id;->remote_subtitles_surface:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/SurfaceView;

    iput-object p1, p0, Lcom/transsion/liblan/util/DisplayManager$SecondaryDisplay;->mSubtitlesSurfaceView:Landroid/view/SurfaceView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    iget-object p0, p0, Lcom/transsion/liblan/util/DisplayManager$SecondaryDisplay;->mSubtitlesSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    const/4 p1, -0x3

    invoke-interface {p0, p1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    return-void
.end method
