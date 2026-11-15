.class public final synthetic Lcom/transsion/shorttv/ad/common/a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/shorttv/ad/common/a;->a:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/ad/common/a;->a:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$showAd$1;->a(Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
