.class public final Lcom/transsion/ninegridview/a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lvm/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/ninegridview/a$a;
    }
.end annotation


# static fields
.field public static final h:Lcom/transsion/ninegridview/a$a;

.field private static final i:Lhn/d;


# instance fields
.field private a:Lcom/transsion/player/orplayer/f;

.field private b:Lwm/a;

.field private c:Lvm/c;

.field private d:Lyg/m;

.field private e:Z

.field private f:Lvm/a;

.field private g:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 23

    .line 1
    new-instance v0, Lcom/transsion/ninegridview/a$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/ninegridview/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/ninegridview/a;->h:Lcom/transsion/ninegridview/a$a;

    .line 8
    .line 9
    new-instance v0, Lhn/d;

    .line 10
    .line 11
    move-object v2, v0

    .line 12
    sget-object v3, Lcom/transsion/player/config/RenderType;->TEXTURE_VIEW:Lcom/transsion/player/config/RenderType;

    .line 13
    .line 14
    const v21, 0x1ff86

    .line 15
    .line 16
    .line 17
    const/16 v22, 0x0

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    const/4 v5, 0x0

    .line 21
    const/16 v6, 0x3e8

    .line 22
    .line 23
    const/16 v7, 0x3e8

    .line 24
    .line 25
    const/16 v8, 0xc8

    .line 26
    .line 27
    const/16 v9, 0xa

    .line 28
    .line 29
    const/4 v10, 0x0

    .line 30
    const-wide/16 v11, 0x0

    .line 31
    .line 32
    const/4 v13, 0x0

    .line 33
    const/4 v14, 0x0

    .line 34
    const/4 v15, 0x0

    .line 35
    const/16 v16, 0x0

    .line 36
    .line 37
    const/16 v17, 0x0

    .line 38
    .line 39
    const/16 v18, 0x0

    .line 40
    .line 41
    const/16 v19, 0x0

    .line 42
    .line 43
    const/16 v20, 0x0

    .line 44
    .line 45
    invoke-direct/range {v2 .. v22}, Lhn/d;-><init>(Lcom/transsion/player/config/RenderType;ZIIIIIIJIIZZZZZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 46
    .line 47
    .line 48
    sput-object v0, Lcom/transsion/ninegridview/a;->i:Lhn/d;

    .line 49
    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic b(Lcom/transsion/ninegridview/a;)Lvm/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/ninegridview/a;->f:Lvm/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic c(Lcom/transsion/ninegridview/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/transsion/ninegridview/a;->e:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic d()Lhn/d;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/ninegridview/a;->i:Lhn/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic e(Lcom/transsion/ninegridview/a;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/ninegridview/a;->e:Z

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ninegridview/a;->g:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/transsion/ninegridview/a;->j(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/ninegridview/a;->a:Lcom/transsion/player/orplayer/f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->release()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/transsion/ninegridview/a;->a:Lcom/transsion/player/orplayer/f;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/transsion/ninegridview/a;->b:Lwm/a;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {v1}, Lwm/a;->a()V

    .line 16
    .line 17
    .line 18
    :cond_1
    iput-object v0, p0, Lcom/transsion/ninegridview/a;->b:Lwm/a;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/transsion/ninegridview/a;->c:Lvm/c;

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    invoke-virtual {v1}, Lvm/c;->e()V

    .line 25
    .line 26
    .line 27
    :cond_2
    iput-object v0, p0, Lcom/transsion/ninegridview/a;->c:Lvm/c;

    .line 28
    .line 29
    sget-object v1, Lyg/l;->a:Lyg/l;

    .line 30
    .line 31
    iget-object v2, p0, Lcom/transsion/ninegridview/a;->d:Lyg/m;

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Lyg/l;->m(Lyg/m;)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lcom/transsion/ninegridview/a;->d:Lyg/m;

    .line 37
    .line 38
    return-void
.end method

.method public final g()Lwm/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ninegridview/a;->b:Lwm/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ninegridview/a;->c:Lvm/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lvm/c;

    .line 6
    .line 7
    invoke-direct {v0}, Lvm/c;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/transsion/ninegridview/a;->c:Lvm/c;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/transsion/ninegridview/a;->c:Lvm/c;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Lvm/c;->e()V

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method

.method public final i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/ninegridview/a;->d:Lyg/m;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/transsion/ninegridview/a$b;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/transsion/ninegridview/a$b;-><init>(Lcom/transsion/ninegridview/a;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/transsion/ninegridview/a;->d:Lyg/m;

    .line 11
    .line 12
    sget-object v1, Lyg/l;->a:Lyg/l;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Lyg/l;->l(Lyg/m;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final j(Landroid/content/Context;)V
    .locals 7

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/ninegridview/a;->a:Lcom/transsion/player/orplayer/f;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    new-instance v0, Lcom/transsion/player/ui/ORPlayerView;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, "getApplicationContext(...)"

    .line 17
    .line 18
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sget-object v3, Lcom/transsion/player/config/RenderType;->TEXTURE_VIEW:Lcom/transsion/player/config/RenderType;

    .line 22
    .line 23
    invoke-direct {v0, v1, v3}, Lcom/transsion/player/ui/ORPlayerView;-><init>(Landroid/content/Context;Lcom/transsion/player/config/RenderType;)V

    .line 24
    .line 25
    .line 26
    new-instance v1, Lcom/transsion/player/orplayer/f$a;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-direct {v1, p1}, Lcom/transsion/player/orplayer/f$a;-><init>(Landroid/content/Context;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/transsion/player/orplayer/f$a;->a()Lcom/transsion/player/orplayer/f;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    sget-object v1, Lcom/transsion/ninegridview/a;->i:Lhn/d;

    .line 43
    .line 44
    invoke-interface {p1, v1}, Lcom/transsion/player/orplayer/f;->setPlayerConfig(Lhn/d;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/transsion/player/ui/ORPlayerView;->getTextureView()Landroid/view/TextureView;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-interface {p1, v1}, Lcom/transsion/player/orplayer/f;->setTextureView(Landroid/view/TextureView;)V

    .line 52
    .line 53
    .line 54
    sget-object v1, Lcom/transsion/player/enum/ScaleMode;->SCALE_ASPECT_FILL:Lcom/transsion/player/enum/ScaleMode;

    .line 55
    .line 56
    invoke-interface {p1, v1}, Lcom/transsion/player/orplayer/f;->setScaleMode(Lcom/transsion/player/enum/ScaleMode;)V

    .line 57
    .line 58
    .line 59
    const/4 v1, 0x1

    .line 60
    invoke-interface {p1, v1}, Lcom/transsion/player/orplayer/f;->setMute(Z)V

    .line 61
    .line 62
    .line 63
    new-instance v1, Lwm/a;

    .line 64
    .line 65
    invoke-direct {v1, p1, v0}, Lwm/a;-><init>(Lcom/transsion/player/orplayer/f;Lcom/transsion/player/ui/ORPlayerView;)V

    .line 66
    .line 67
    .line 68
    iput-object v1, p0, Lcom/transsion/ninegridview/a;->b:Lwm/a;

    .line 69
    .line 70
    new-instance v0, Lvm/a;

    .line 71
    .line 72
    invoke-direct {v0}, Lvm/a;-><init>()V

    .line 73
    .line 74
    .line 75
    iget-object v1, p0, Lcom/transsion/ninegridview/a;->b:Lwm/a;

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Lvm/a;->b(Lwm/a;)V

    .line 78
    .line 79
    .line 80
    invoke-interface {p1, v0}, Lcom/transsion/player/orplayer/f;->setPlayerListener(Lcom/transsion/player/orplayer/e;)V

    .line 81
    .line 82
    .line 83
    iput-object v0, p0, Lcom/transsion/ninegridview/a;->f:Lvm/a;

    .line 84
    .line 85
    iput-object p1, p0, Lcom/transsion/ninegridview/a;->a:Lcom/transsion/player/orplayer/f;

    .line 86
    .line 87
    iget-object p1, p0, Lcom/transsion/ninegridview/a;->c:Lvm/c;

    .line 88
    .line 89
    if-eqz p1, :cond_0

    .line 90
    .line 91
    iget-object v0, p0, Lcom/transsion/ninegridview/a;->b:Lwm/a;

    .line 92
    .line 93
    invoke-virtual {p1, v0}, Lvm/c;->k(Lwm/a;)V

    .line 94
    .line 95
    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/ninegridview/a;->i()V

    .line 97
    .line 98
    .line 99
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 100
    .line 101
    const/4 v5, 0x4

    .line 102
    const/4 v6, 0x0

    .line 103
    const-string v2, "GifPlayerManager"

    .line 104
    .line 105
    const-string v3, "initPlayer"

    .line 106
    .line 107
    const/4 v4, 0x0

    .line 108
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    :cond_1
    return-void
.end method

.method public final k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ninegridview/a;->a:Lcom/transsion/player/orplayer/f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->pause()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final l()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ninegridview/a;->a:Lcom/transsion/player/orplayer/f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->play()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final m()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/ninegridview/a;->b:Lwm/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, -0x1

    .line 6
    invoke-virtual {v0, v1}, Lwm/a;->x(I)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public final n(Landroidx/recyclerview/widget/RecyclerView;Lcom/chad/library/adapter/base/BaseQuickAdapter;)V
    .locals 1

    .line 1
    const-string v0, "recyclerView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/transsion/ninegridview/a;->g:Landroid/content/Context;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/transsion/ninegridview/a;->h()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/transsion/ninegridview/a;->c:Lvm/c;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0, p2}, Lvm/c;->j(Lcom/chad/library/adapter/base/BaseQuickAdapter;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object p1, p0, Lcom/transsion/ninegridview/a;->c:Lvm/c;

    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    invoke-virtual {p1, p0}, Lvm/c;->l(Lvm/d;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method
