.class public final Lcom/transsion/shorttv/subtitle/manager/b$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/shorttv/subtitle/manager/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final synthetic a:Lcom/transsion/shorttv/subtitle/manager/b$a;

.field private static final b:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/shorttv/subtitle/manager/b$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/shorttv/subtitle/manager/b$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/shorttv/subtitle/manager/b$a;->a:Lcom/transsion/shorttv/subtitle/manager/b$a;

    .line 7
    .line 8
    new-instance v0, Lcom/transsion/shorttv/subtitle/manager/a;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/transsion/shorttv/subtitle/manager/a;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/transsion/shorttv/subtitle/manager/b$a;->b:Lkotlin/Lazy;

    .line 18
    .line 19
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

.method public static synthetic a()Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/shorttv/subtitle/manager/b$a;->c()Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static final c()Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final b()Lcom/transsion/shorttv/subtitle/manager/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/shorttv/subtitle/manager/b$a;->b:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/shorttv/subtitle/manager/b;

    .line 8
    .line 9
    return-object v0
.end method
