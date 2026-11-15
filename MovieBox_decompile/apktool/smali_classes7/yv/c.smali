.class public final Lyv/c;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyv/c$a;
    }
.end annotation


# static fields
.field public static final a:Lyv/c;

.field private static b:Lcom/transsion/videodetail/music/bean/MusicLoopEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lyv/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lyv/c;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lyv/c;->a:Lyv/c;

    .line 7
    .line 8
    sget-object v0, Lcom/transsion/videodetail/music/bean/MusicLoopEnum;->NORMAL:Lcom/transsion/videodetail/music/bean/MusicLoopEnum;

    .line 9
    .line 10
    sput-object v0, Lyv/c;->b:Lcom/transsion/videodetail/music/bean/MusicLoopEnum;

    .line 11
    .line 12
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
.method public final a(Lcom/transsion/videodetail/music/bean/MusicLoopEnum;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    const-string v0, "loop"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lyv/c$a;->a:[I

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    aget p1, v0, p1

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    if-eq p1, v0, :cond_2

    .line 16
    .line 17
    const/4 v0, 0x2

    .line 18
    if-eq p1, v0, :cond_1

    .line 19
    .line 20
    const/4 v0, 0x3

    .line 21
    if-ne p1, v0, :cond_0

    .line 22
    .line 23
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    sget v0, Lcom/transsion/videodetail/R$drawable;->music_iv_loop_single:I

    .line 28
    .line 29
    invoke-static {p1, v0}, Landroidx/core/content/b;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 35
    .line 36
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 37
    .line 38
    .line 39
    throw p1

    .line 40
    :cond_1
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    sget v0, Lcom/transsion/videodetail/R$drawable;->music_iv_loop_list:I

    .line 45
    .line 46
    invoke-static {p1, v0}, Landroidx/core/content/b;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    sget v0, Lcom/transsion/videodetail/R$drawable;->music_iv_loop_normal:I

    .line 56
    .line 57
    invoke-static {p1, v0}, Landroidx/core/content/b;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    :goto_0
    return-object p1
.end method

.method public final b()Lcom/transsion/videodetail/music/bean/MusicLoopEnum;
    .locals 1

    .line 1
    sget-object v0, Lyv/c;->b:Lcom/transsion/videodetail/music/bean/MusicLoopEnum;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()Lcom/transsion/videodetail/music/bean/MusicLoopEnum;
    .locals 2

    .line 1
    sget-object v0, Lyv/c;->b:Lcom/transsion/videodetail/music/bean/MusicLoopEnum;

    .line 2
    .line 3
    sget-object v1, Lyv/c$a;->a:[I

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    aget v0, v1, v0

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-eq v0, v1, :cond_2

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    if-eq v0, v1, :cond_1

    .line 16
    .line 17
    const/4 v1, 0x3

    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    .line 20
    sget-object v0, Lcom/transsion/videodetail/music/bean/MusicLoopEnum;->NORMAL:Lcom/transsion/videodetail/music/bean/MusicLoopEnum;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 24
    .line 25
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 26
    .line 27
    .line 28
    throw v0

    .line 29
    :cond_1
    sget-object v0, Lcom/transsion/videodetail/music/bean/MusicLoopEnum;->SINGLE_LOOP:Lcom/transsion/videodetail/music/bean/MusicLoopEnum;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    sget-object v0, Lcom/transsion/videodetail/music/bean/MusicLoopEnum;->LIST_LOOP:Lcom/transsion/videodetail/music/bean/MusicLoopEnum;

    .line 33
    .line 34
    :goto_0
    sput-object v0, Lyv/c;->b:Lcom/transsion/videodetail/music/bean/MusicLoopEnum;

    .line 35
    .line 36
    return-object v0
.end method
