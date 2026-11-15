.class public final Lcom/transsion/ad/test/ad_example/TestAdNativeMultipleActivity;
.super Lcom/transsion/ad/test/TestBaseActivity;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00009\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0005*\u0001\u0015\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\t\u0010\u0003J\u000f\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0016\u0010\u0010\u001a\u00020\r8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u0016\u0010\u0014\u001a\u00020\u00118\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0018\u001a\u00020\u00158\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/transsion/ad/test/ad_example/TestAdNativeMultipleActivity;",
        "Lcom/transsion/ad/test/TestBaseActivity;",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onDestroy",
        "",
        "getLogTag",
        "()Ljava/lang/String;",
        "Lsh/n;",
        "a",
        "Lsh/n;",
        "binding",
        "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;",
        "b",
        "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;",
        "nativeManager",
        "com/transsion/ad/test/ad_example/TestAdNativeMultipleActivity$a",
        "c",
        "Lcom/transsion/ad/test/ad_example/TestAdNativeMultipleActivity$a;",
        "nativeListener",
        "lib_ad_gpRelease"
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
.field private a:Lsh/n;

.field private b:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

.field private final c:Lcom/transsion/ad/test/ad_example/TestAdNativeMultipleActivity$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/ad/test/TestBaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/transsion/ad/test/ad_example/TestAdNativeMultipleActivity$a;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/transsion/ad/test/ad_example/TestAdNativeMultipleActivity$a;-><init>(Lcom/transsion/ad/test/ad_example/TestAdNativeMultipleActivity;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/transsion/ad/test/ad_example/TestAdNativeMultipleActivity;->c:Lcom/transsion/ad/test/ad_example/TestAdNativeMultipleActivity$a;

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic O(Lcom/transsion/ad/test/ad_example/TestAdNativeMultipleActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/ad/test/ad_example/TestAdNativeMultipleActivity;->S(Lcom/transsion/ad/test/ad_example/TestAdNativeMultipleActivity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic P(Lcom/transsion/ad/test/ad_example/TestAdNativeMultipleActivity;)Lsh/n;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/ad/test/ad_example/TestAdNativeMultipleActivity;->a:Lsh/n;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic Q(Lcom/transsion/ad/test/ad_example/TestAdNativeMultipleActivity;)Lcom/transsion/ad/test/ad_example/TestAdNativeMultipleActivity$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/ad/test/ad_example/TestAdNativeMultipleActivity;->c:Lcom/transsion/ad/test/ad_example/TestAdNativeMultipleActivity$a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic R(Lcom/transsion/ad/test/ad_example/TestAdNativeMultipleActivity;)Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/ad/test/ad_example/TestAdNativeMultipleActivity;->b:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 2
    .line 3
    return-object p0
.end method

.method private static final S(Lcom/transsion/ad/test/ad_example/TestAdNativeMultipleActivity;Landroid/view/View;)V
    .locals 6

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v3, Lcom/transsion/ad/test/ad_example/TestAdNativeMultipleActivity$onCreate$1$1;

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-direct {v3, p0, p1}, Lcom/transsion/ad/test/ad_example/TestAdNativeMultipleActivity$onCreate$1$1;-><init>(Lcom/transsion/ad/test/ad_example/TestAdNativeMultipleActivity;Lkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    const/4 v4, 0x3

    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public getLogTag()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "ad_n"

    .line 2
    .line 3
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-static {p1}, Lsh/n;->c(Landroid/view/LayoutInflater;)Lsh/n;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/transsion/ad/test/ad_example/TestAdNativeMultipleActivity;->a:Lsh/n;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    const-string v1, "binding"

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    move-object p1, v0

    .line 23
    :cond_0
    invoke-virtual {p1}, Lsh/n;->b()Landroid/widget/LinearLayout;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 28
    .line 29
    .line 30
    new-instance p1, Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 31
    .line 32
    invoke-direct {p1}, Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lcom/transsion/ad/test/ad_example/TestAdNativeMultipleActivity;->b:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 36
    .line 37
    iget-object p1, p0, Lcom/transsion/ad/test/ad_example/TestAdNativeMultipleActivity;->a:Lsh/n;

    .line 38
    .line 39
    if-nez p1, :cond_1

    .line 40
    .line 41
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    move-object v0, p1

    .line 46
    :goto_0
    iget-object p1, v0, Lsh/n;->b:Landroid/widget/Button;

    .line 47
    .line 48
    new-instance v0, Lcom/transsion/ad/test/ad_example/q;

    .line 49
    .line 50
    invoke-direct {v0, p0}, Lcom/transsion/ad/test/ad_example/q;-><init>(Lcom/transsion/ad/test/ad_example/TestAdNativeMultipleActivity;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/ad/test/ad_example/TestAdNativeMultipleActivity;->b:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const-string v0, "nativeManager"

    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    :cond_0
    invoke-virtual {v0}, Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;->U()V

    .line 15
    .line 16
    .line 17
    return-void
.end method
