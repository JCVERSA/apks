.class public final Lcom/transsion/player/orplayer/f$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/player/orplayer/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lhn/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/transsion/player/orplayer/f$a;->a:Landroid/content/Context;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a()Lcom/transsion/player/orplayer/f;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/player/orplayer/f$a;->a:Landroid/content/Context;

    .line 2
    .line 3
    new-instance v1, Lcom/transsion/player/orplayer/q;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/player/orplayer/f$a;->b:Lhn/d;

    .line 6
    .line 7
    invoke-direct {v1, v0, v2}, Lcom/transsion/player/orplayer/q;-><init>(Landroid/content/Context;Lhn/d;)V

    .line 8
    .line 9
    .line 10
    return-object v1
.end method

.method public final b(Lhn/d;)Lcom/transsion/player/orplayer/f$a;
    .locals 1

    .line 1
    const-string v0, "config"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/player/orplayer/f$a;->b:Lhn/d;

    .line 7
    .line 8
    return-object p0
.end method
