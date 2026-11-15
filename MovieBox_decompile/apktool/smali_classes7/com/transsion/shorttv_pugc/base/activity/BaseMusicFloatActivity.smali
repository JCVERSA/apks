.class public abstract Lcom/transsion/shorttv_pugc/base/activity/BaseMusicFloatActivity;
.super Lcom/transsion/shorttv_pugc/base/activity/BaseCommonActivity;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lf4/a;",
        ">",
        "Lcom/transsion/shorttv_pugc/base/activity/BaseCommonActivity<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008&\u0018\u0000*\u0008\u0008\u0000\u0010\u0002*\u00020\u00012\u0008\u0012\u0004\u0012\u00028\u00000\u0003B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0019\u0010\t\u001a\u00020\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nR\u001d\u0010\u0010\u001a\u0004\u0018\u00010\u000b8DX\u0084\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/transsion/shorttv_pugc/base/activity/BaseMusicFloatActivity;",
        "Lf4/a;",
        "T",
        "Lcom/transsion/shorttv_pugc/base/activity/BaseCommonActivity;",
        "<init>",
        "()V",
        "Landroid/view/MotionEvent;",
        "ev",
        "",
        "dispatchTouchEvent",
        "(Landroid/view/MotionEvent;)Z",
        "Lvs/g;",
        "c",
        "Lkotlin/Lazy;",
        "P",
        "()Lvs/g;",
        "shortMusicAudioProvider",
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
.field private final c:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/shorttv_pugc/base/activity/BaseCommonActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/transsion/shorttv_pugc/base/activity/a;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/transsion/shorttv_pugc/base/activity/a;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/transsion/shorttv_pugc/base/activity/BaseMusicFloatActivity;->c:Lkotlin/Lazy;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic O()Lvs/g;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/shorttv_pugc/base/activity/BaseMusicFloatActivity;->Q()Lvs/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static final Q()Lvs/g;
    .locals 1

    .line 1
    sget-object v0, Lcs/a;->a:Lcs/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcs/a;->b()Lws/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Lws/a;->g()Lvs/g;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return-object v0
.end method


# virtual methods
.method protected final P()Lvs/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/base/activity/BaseMusicFloatActivity;->c:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lvs/g;

    .line 8
    .line 9
    return-object v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-nez v0, :cond_1

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/transsion/shorttv_pugc/base/activity/BaseMusicFloatActivity;->P()Lvs/g;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-interface {v0, p0, p1}, Lvs/g;->c(Landroid/app/Activity;Landroid/view/MotionEvent;)V

    .line 29
    .line 30
    .line 31
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    return p1
.end method
