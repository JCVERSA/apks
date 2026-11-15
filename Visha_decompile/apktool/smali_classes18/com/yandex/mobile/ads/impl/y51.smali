.class public final Lcom/yandex/mobile/ads/impl/y51;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/y51$a;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/Object;

.field private static volatile d:Lcom/yandex/mobile/ads/impl/y51;

.field public static final synthetic e:I


# instance fields
.field private final a:Landroid/os/Handler;

.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/impl/y51;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/y51;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/y51;->a:Landroid/os/Handler;

    return-void
.end method

.method public static final synthetic a()Lcom/yandex/mobile/ads/impl/y51;
    .locals 1

    .line 11
    sget-object v0, Lcom/yandex/mobile/ads/impl/y51;->d:Lcom/yandex/mobile/ads/impl/y51;

    return-object v0
.end method

.method private final a(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 2

    .line 2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 3
    iget-boolean p2, p0, Lcom/yandex/mobile/ads/impl/y51;->b:Z

    if-nez p2, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p2

    const/4 v1, 0x2

    int-to-float v1, v1

    div-float/2addr p2, v1

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 5
    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/y51;->b:Z

    .line 6
    :cond_0
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/y51;->a:Landroid/os/Handler;

    new-instance v0, Ldyd;

    invoke-direct {v0, p0, p1}, Ldyd;-><init>(Lcom/yandex/mobile/ads/impl/y51;Landroid/view/View;)V

    const-wide/16 p0, 0x64

    invoke-virtual {p2, v0, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/y51;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/yandex/mobile/ads/impl/y51;->d:Lcom/yandex/mobile/ads/impl/y51;

    return-void
.end method

.method private static final a(Lcom/yandex/mobile/ads/impl/y51;Landroid/view/View;)V
    .locals 2

    .line 7
    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/y51;->b:Z

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/y51;->b:Z

    :cond_0
    return-void
.end method

.method public static final synthetic b()Ljava/lang/Object;
    .locals 1

    .line 5
    sget-object v0, Lcom/yandex/mobile/ads/impl/y51;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic b(Lcom/yandex/mobile/ads/impl/y51;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/y51;->a(Lcom/yandex/mobile/ads/impl/y51;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final b(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 1

    .line 2
    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "motionEvent"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    instance-of v0, p1, Landroid/widget/TextView;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/yandex/mobile/ads/impl/mn1;

    if-eqz v0, :cond_1

    .line 4
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/y51;->a(Landroid/view/View;Landroid/view/MotionEvent;)V

    :cond_1
    return-void
.end method
