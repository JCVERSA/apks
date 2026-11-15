.class public final Lcom/transsion/baseui/music/MusicFloatManager$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/baseui/music/MusicFloatManager;
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
    invoke-direct {p0}, Lcom/transsion/baseui/music/MusicFloatManager$a;-><init>()V

    return-void
.end method

.method private final a()Lcom/transsion/baseui/music/MusicFloatManager;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/baseui/music/MusicFloatManager;->e()Lkotlin/Lazy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/transsion/baseui/music/MusicFloatManager;

    .line 10
    .line 11
    return-object v0
.end method


# virtual methods
.method public final b()Lcom/transsion/baseui/music/MusicFloatManager;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/baseui/music/MusicFloatManager$a;->a()Lcom/transsion/baseui/music/MusicFloatManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
