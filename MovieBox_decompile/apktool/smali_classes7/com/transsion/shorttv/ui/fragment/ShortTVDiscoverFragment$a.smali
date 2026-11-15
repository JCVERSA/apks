.class public final Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment$a;-><init>()V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment$a;ZLandroid/os/Bundle;ILjava/lang/Object;)Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment$a;->a(ZLandroid/os/Bundle;)Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method


# virtual methods
.method public final a(ZLandroid/os/Bundle;)Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroid/os/Bundle;

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    invoke-direct {v1, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 15
    .line 16
    .line 17
    :goto_0
    const-string p2, "arg_has_top_tabs"

    .line 18
    .line 19
    invoke-virtual {v1, p2, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method
