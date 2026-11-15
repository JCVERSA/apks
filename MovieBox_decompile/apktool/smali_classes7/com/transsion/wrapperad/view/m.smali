.class public final synthetic Lcom/transsion/wrapperad/view/m;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/wrapperad/view/NativeSlideshowView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/wrapperad/view/NativeSlideshowView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/wrapperad/view/m;->a:Lcom/transsion/wrapperad/view/NativeSlideshowView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/wrapperad/view/m;->a:Lcom/transsion/wrapperad/view/NativeSlideshowView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/wrapperad/view/NativeSlideshowView$loadBottomAd$1;->x(Lcom/transsion/wrapperad/view/NativeSlideshowView;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
