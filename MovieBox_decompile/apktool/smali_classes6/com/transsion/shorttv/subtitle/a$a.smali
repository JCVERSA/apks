.class public final Lcom/transsion/shorttv/subtitle/a$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/shorttv/subtitle/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final synthetic a:Lcom/transsion/shorttv/subtitle/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/shorttv/subtitle/a$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/shorttv/subtitle/a$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/shorttv/subtitle/a$a;->a:Lcom/transsion/shorttv/subtitle/a$a;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Landroidx/fragment/app/FragmentActivity;Lqr/k0;Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;Lnr/e;Ljava/lang/String;)Lcom/transsion/shorttv/subtitle/a;
    .locals 7

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "viewBinding"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "epItem"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;

    .line 17
    .line 18
    move-object v1, v0

    .line 19
    move-object v2, p1

    .line 20
    move-object v3, p2

    .line 21
    move-object v4, p3

    .line 22
    move-object v5, p4

    .line 23
    move-object v6, p5

    .line 24
    invoke-direct/range {v1 .. v6}, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;-><init>(Landroidx/fragment/app/FragmentActivity;Lqr/k0;Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;Lnr/e;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-object v0
.end method
