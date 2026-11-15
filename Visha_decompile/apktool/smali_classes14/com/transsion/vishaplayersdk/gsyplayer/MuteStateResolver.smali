.class public final Lcom/transsion/vishaplayersdk/gsyplayer/MuteStateResolver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/vishaplayersdk/gsyplayer/MuteStateResolver$State;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u000cB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J(\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0005H\u0007J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000bH\u0007\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/transsion/vishaplayersdk/gsyplayer/MuteStateResolver;",
        "",
        "<init>",
        "()V",
        "resolveMute",
        "",
        "hasUserIntent",
        "userWantsMute",
        "systemTemporarilyMuted",
        "pageDefaultMute",
        "state",
        "Lcom/transsion/vishaplayersdk/gsyplayer/MuteStateResolver$State;",
        "State",
        "vishaplayersdk_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/transsion/vishaplayersdk/gsyplayer/MuteStateResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/vishaplayersdk/gsyplayer/MuteStateResolver;

    invoke-direct {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/MuteStateResolver;-><init>()V

    sput-object v0, Lcom/transsion/vishaplayersdk/gsyplayer/MuteStateResolver;->INSTANCE:Lcom/transsion/vishaplayersdk/gsyplayer/MuteStateResolver;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final resolveMute(Lcom/transsion/vishaplayersdk/gsyplayer/MuteStateResolver$State;)Z
    .locals 3

    const-string v0, "state"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/MuteStateResolver$State;->getHasUserIntent()Z

    move-result v0

    .line 3
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/MuteStateResolver$State;->getUserWantsMute()Z

    move-result v1

    .line 4
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/MuteStateResolver$State;->getSystemTemporarilyMuted()Z

    move-result v2

    .line 5
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/MuteStateResolver$State;->getPageDefaultMute()Z

    move-result p0

    .line 6
    invoke-static {v0, v1, v2, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/MuteStateResolver;->resolveMute(ZZZZ)Z

    move-result p0

    return p0
.end method

.method public static final resolveMute(ZZZZ)Z
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    return p1

    :cond_0
    if-eqz p2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return p3
.end method
