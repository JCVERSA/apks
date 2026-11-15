.class public final Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;
.super Landroid/widget/FrameLayout;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\'\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\r\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\r\u0010\r\u001a\u00020\n\u00a2\u0006\u0004\u0008\r\u0010\u000cR\u0014\u0010\u0010\u001a\u00020\u00018\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR$\u0010\u0018\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R$\u0010 \u001a\u0004\u0018\u00010\u00198\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR$\u0010(\u001a\u0004\u0018\u00010!8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\"\u0010#\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'\u00a8\u0006)"
    }
    d2 = {
        "Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;",
        "Landroid/widget/FrameLayout;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "",
        "addAdView",
        "()V",
        "removeAdView",
        "a",
        "Landroid/widget/FrameLayout;",
        "rootView",
        "Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;",
        "b",
        "Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;",
        "getNativeAdView",
        "()Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;",
        "setNativeAdView",
        "(Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;)V",
        "nativeAdView",
        "Landroid/widget/TextView;",
        "c",
        "Landroid/widget/TextView;",
        "getCountdownView",
        "()Landroid/widget/TextView;",
        "setCountdownView",
        "(Landroid/widget/TextView;)V",
        "countdownView",
        "Landroid/widget/ImageView;",
        "d",
        "Landroid/widget/ImageView;",
        "getCloseView",
        "()Landroid/widget/ImageView;",
        "setCloseView",
        "(Landroid/widget/ImageView;)V",
        "closeView",
        "shortTvLib_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final a:Landroid/widget/FrameLayout;

.field private b:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/transsion/shorttv/R$layout;->shortv_player_ad_overlay_container_layout:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 6
    sget p1, Lcom/transsion/shorttv/R$id;->root_view:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;->a:Landroid/widget/FrameLayout;

    .line 7
    sget p1, Lcom/transsion/shorttv/R$id;->native_ad_view:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    iput-object p1, p0, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;->b:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    .line 8
    sget p1, Lcom/transsion/shorttv/R$id;->count_down_view:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;->c:Landroid/widget/TextView;

    .line 9
    sget p1, Lcom/transsion/shorttv/R$id;->close_view:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;->d:Landroid/widget/ImageView;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 3
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final addAdView()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;->removeAdView()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string v2, "getContext(...)"

    .line 11
    .line 12
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x2

    .line 17
    invoke-direct {v0, v1, v2, v3, v2}, Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;->b:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;->a:Landroid/widget/FrameLayout;

    .line 23
    .line 24
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 25
    .line 26
    const/4 v3, -0x1

    .line 27
    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 28
    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    invoke-virtual {v1, v0, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final getCloseView()Landroid/widget/ImageView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;->d:Landroid/widget/ImageView;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCountdownView()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;->c:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getNativeAdView()Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;->b:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    .line 2
    .line 3
    return-object v0
.end method

.method public final removeAdView()V
    .locals 2

    .line 1
    sget-object v0, Lci/q;->a:Lci/q;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;->b:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lci/q;->a(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;->b:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    .line 10
    .line 11
    return-void
.end method

.method public final setCloseView(Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;->d:Landroid/widget/ImageView;

    .line 2
    .line 3
    return-void
.end method

.method public final setCountdownView(Landroid/widget/TextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;->c:Landroid/widget/TextView;

    .line 2
    .line 3
    return-void
.end method

.method public final setNativeAdView(Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;->b:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    .line 2
    .line 3
    return-void
.end method
