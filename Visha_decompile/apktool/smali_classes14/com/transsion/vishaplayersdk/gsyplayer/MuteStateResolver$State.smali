.class public final Lcom/transsion/vishaplayersdk/gsyplayer/MuteStateResolver$State;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/vishaplayersdk/gsyplayer/MuteStateResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "State"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0012\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\t\u0010\u000e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J1\u0010\u0012\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0013\u001a\u00020\u00032\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\n\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/transsion/vishaplayersdk/gsyplayer/MuteStateResolver$State;",
        "",
        "hasUserIntent",
        "",
        "userWantsMute",
        "systemTemporarilyMuted",
        "pageDefaultMute",
        "<init>",
        "(ZZZZ)V",
        "getHasUserIntent",
        "()Z",
        "getUserWantsMute",
        "getSystemTemporarilyMuted",
        "getPageDefaultMute",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
        "",
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


# instance fields
.field private final hasUserIntent:Z

.field private final pageDefaultMute:Z

.field private final systemTemporarilyMuted:Z

.field private final userWantsMute:Z


# direct methods
.method public constructor <init>(ZZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/MuteStateResolver$State;->hasUserIntent:Z

    iput-boolean p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/MuteStateResolver$State;->userWantsMute:Z

    iput-boolean p3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/MuteStateResolver$State;->systemTemporarilyMuted:Z

    iput-boolean p4, p0, Lcom/transsion/vishaplayersdk/gsyplayer/MuteStateResolver$State;->pageDefaultMute:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/vishaplayersdk/gsyplayer/MuteStateResolver$State;ZZZZILjava/lang/Object;)Lcom/transsion/vishaplayersdk/gsyplayer/MuteStateResolver$State;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/MuteStateResolver$State;->hasUserIntent:Z

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-boolean p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/MuteStateResolver$State;->userWantsMute:Z

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-boolean p3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/MuteStateResolver$State;->systemTemporarilyMuted:Z

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-boolean p4, p0, Lcom/transsion/vishaplayersdk/gsyplayer/MuteStateResolver$State;->pageDefaultMute:Z

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/vishaplayersdk/gsyplayer/MuteStateResolver$State;->copy(ZZZZ)Lcom/transsion/vishaplayersdk/gsyplayer/MuteStateResolver$State;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/MuteStateResolver$State;->hasUserIntent:Z

    return p0
.end method

.method public final component2()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/MuteStateResolver$State;->userWantsMute:Z

    return p0
.end method

.method public final component3()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/MuteStateResolver$State;->systemTemporarilyMuted:Z

    return p0
.end method

.method public final component4()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/MuteStateResolver$State;->pageDefaultMute:Z

    return p0
.end method

.method public final copy(ZZZZ)Lcom/transsion/vishaplayersdk/gsyplayer/MuteStateResolver$State;
    .locals 0

    new-instance p0, Lcom/transsion/vishaplayersdk/gsyplayer/MuteStateResolver$State;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/vishaplayersdk/gsyplayer/MuteStateResolver$State;-><init>(ZZZZ)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/vishaplayersdk/gsyplayer/MuteStateResolver$State;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/vishaplayersdk/gsyplayer/MuteStateResolver$State;

    iget-boolean v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/MuteStateResolver$State;->hasUserIntent:Z

    iget-boolean v3, p1, Lcom/transsion/vishaplayersdk/gsyplayer/MuteStateResolver$State;->hasUserIntent:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/MuteStateResolver$State;->userWantsMute:Z

    iget-boolean v3, p1, Lcom/transsion/vishaplayersdk/gsyplayer/MuteStateResolver$State;->userWantsMute:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/MuteStateResolver$State;->systemTemporarilyMuted:Z

    iget-boolean v3, p1, Lcom/transsion/vishaplayersdk/gsyplayer/MuteStateResolver$State;->systemTemporarilyMuted:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/MuteStateResolver$State;->pageDefaultMute:Z

    iget-boolean p1, p1, Lcom/transsion/vishaplayersdk/gsyplayer/MuteStateResolver$State;->pageDefaultMute:Z

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getHasUserIntent()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/MuteStateResolver$State;->hasUserIntent:Z

    return p0
.end method

.method public final getPageDefaultMute()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/MuteStateResolver$State;->pageDefaultMute:Z

    return p0
.end method

.method public final getSystemTemporarilyMuted()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/MuteStateResolver$State;->systemTemporarilyMuted:Z

    return p0
.end method

.method public final getUserWantsMute()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/MuteStateResolver$State;->userWantsMute:Z

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/MuteStateResolver$State;->hasUserIntent:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/MuteStateResolver$State;->userWantsMute:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/MuteStateResolver$State;->systemTemporarilyMuted:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/MuteStateResolver$State;->pageDefaultMute:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/MuteStateResolver$State;->hasUserIntent:Z

    iget-boolean v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/MuteStateResolver$State;->userWantsMute:Z

    iget-boolean v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/MuteStateResolver$State;->systemTemporarilyMuted:Z

    iget-boolean p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/MuteStateResolver$State;->pageDefaultMute:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "State(hasUserIntent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", userWantsMute="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", systemTemporarilyMuted="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", pageDefaultMute="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
