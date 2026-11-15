.class public final Ltpb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldx4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltpb$a;
    }
.end annotation


# static fields
.field public static final b:Ltpb$a;

.field public static final c:Lyi5;


# instance fields
.field public final a:Lyi5;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ltpb$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltpb$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ltpb;->b:Ltpb$a;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lrpb;

    invoke-direct {v1}, Lrpb;-><init>()V

    invoke-static {v0, v1}, Lkotlin/b;->b(Lkotlin/LazyThreadSafetyMode;Lc74;)Lyi5;

    move-result-object v0

    sput-object v0, Ltpb;->c:Lyi5;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lspb;

    invoke-direct {v1, p0}, Lspb;-><init>(Ltpb;)V

    invoke-static {v0, v1}, Lkotlin/b;->b(Lkotlin/LazyThreadSafetyMode;Lc74;)Lyi5;

    move-result-object v0

    iput-object v0, p0, Ltpb;->a:Lyi5;

    return-void
.end method

.method public static synthetic g0()Ltpb;
    .locals 1

    invoke-static {}, Ltpb;->o0()Ltpb;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic h0(Ltpb;)Ldx4;
    .locals 0

    invoke-static {p0}, Ltpb;->n0(Ltpb;)Ldx4;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic i0()Lyi5;
    .locals 1

    sget-object v0, Ltpb;->c:Lyi5;

    return-object v0
.end method

.method public static final j0()Ltpb;
    .locals 1

    sget-object v0, Ltpb;->b:Ltpb$a;

    invoke-virtual {v0}, Ltpb$a;->a()Ltpb;

    move-result-object v0

    return-object v0
.end method

.method public static final n0(Ltpb;)Ldx4;
    .locals 0

    invoke-virtual {p0}, Ltpb;->p0()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lgk5;->a:Lgk5;

    goto :goto_0

    :cond_0
    sget-object p0, Liq6;->a:Liq6;

    :goto_0
    return-object p0
.end method

.method public static final o0()Ltpb;
    .locals 1

    new-instance v0, Ltpb;

    invoke-direct {v0}, Ltpb;-><init>()V

    return-object v0
.end method


# virtual methods
.method public A(IILcom/transsion/dbdata/beans/media/MediaItem;Z)Lcom/transsion/dbdata/database/PlayListMediaItem;
    .locals 1

    const-string v0, "mediaItem"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ltpb;->k0()Ldx4;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Ldx4;->A(IILcom/transsion/dbdata/beans/media/MediaItem;Z)Lcom/transsion/dbdata/database/PlayListMediaItem;

    move-result-object p0

    return-object p0
.end method

.method public B(Lcom/transsion/dbdata/beans/media/PlayVideoData;Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/beans/PlayerStates;)Z
    .locals 1

    const-string v0, "videoData"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaItem"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playStates"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ltpb;->k0()Ldx4;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Ldx4;->B(Lcom/transsion/dbdata/beans/media/PlayVideoData;Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/beans/PlayerStates;)Z

    move-result p0

    return p0
.end method

.method public C(Lcom/transsion/dbdata/beans/media/MediaItem;)Z
    .locals 1

    const-string v0, "mediaItem"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ltpb;->k0()Ldx4;

    move-result-object p0

    invoke-interface {p0, p1}, Ldx4;->C(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result p0

    return p0
.end method

.method public D(Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0}, Ltpb;->k0()Ldx4;

    move-result-object p0

    invoke-interface {p0, p1}, Ldx4;->D(Ljava/util/List;)V

    return-void
.end method

.method public E(J)Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Ltpb;->k0()Ldx4;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Ldx4;->E(J)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public F(Lcom/transsion/dbdata/beans/media/MediaItem;Le74;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delete"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ltpb;->k0()Ldx4;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Ldx4;->F(Lcom/transsion/dbdata/beans/media/MediaItem;Le74;)V

    return-void
.end method

.method public G(Lcom/transsion/dbdata/beans/media/MediaItem;)Z
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ltpb;->k0()Ldx4;

    move-result-object p0

    invoke-interface {p0, p1}, Ldx4;->G(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result p0

    return p0
.end method

.method public H()Lcom/transsion/dbdata/beans/media/VideoTotalTrack;
    .locals 0

    invoke-virtual {p0}, Ltpb;->k0()Ldx4;

    move-result-object p0

    invoke-interface {p0}, Ldx4;->H()Lcom/transsion/dbdata/beans/media/VideoTotalTrack;

    move-result-object p0

    return-object p0
.end method

.method public I(Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 1

    const-string v0, "fileName"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ltpb;->k0()Ldx4;

    move-result-object p0

    invoke-interface {p0, p1}, Ldx4;->I(Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method public J(II)I
    .locals 0

    invoke-virtual {p0}, Ltpb;->k0()Ldx4;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Ldx4;->J(II)I

    move-result p0

    return p0
.end method

.method public K(ILcom/transsion/dbdata/beans/media/MediaItem;Z)I
    .locals 1

    const-string v0, "mediaItem"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ltpb;->k0()Ldx4;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Ldx4;->K(ILcom/transsion/dbdata/beans/media/MediaItem;Z)I

    move-result p0

    return p0
.end method

.method public L()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ltpb;->k0()Ldx4;

    move-result-object p0

    invoke-interface {p0}, Ldx4;->L()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public M(II)Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Ltpb;->k0()Ldx4;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Ldx4;->M(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public N(ILjava/util/List;Z)Ljava/util/List;
    .locals 1

    const-string v0, "mediaItems"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ltpb;->k0()Ldx4;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Ldx4;->N(ILjava/util/List;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public O(ZIZ)Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Ltpb;->k0()Ldx4;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Ldx4;->O(ZIZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public P(Ljava/util/List;Le74;)V
    .locals 1

    const-string v0, "items"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delete"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ltpb;->k0()Ldx4;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Ldx4;->P(Ljava/util/List;Le74;)V

    return-void
.end method

.method public Q(Ljava/lang/String;JLcom/transsion/dbdata/beans/media/MediaItem;Z)I
    .locals 7

    const-string v0, "playListName"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaItem"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ltpb;->k0()Ldx4;

    move-result-object v1

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Ldx4;->Q(Ljava/lang/String;JLcom/transsion/dbdata/beans/media/MediaItem;Z)I

    move-result p0

    return p0
.end method

.method public R()Z
    .locals 0

    invoke-virtual {p0}, Ltpb;->k0()Ldx4;

    move-result-object p0

    invoke-interface {p0}, Ldx4;->R()Z

    move-result p0

    return p0
.end method

.method public S()Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Ltpb;->k0()Ldx4;

    move-result-object p0

    invoke-interface {p0}, Ldx4;->S()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public T(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0}, Ltpb;->k0()Ldx4;

    move-result-object p0

    invoke-interface {p0, p1}, Ldx4;->T(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public U(I)Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Ltpb;->k0()Ldx4;

    move-result-object p0

    invoke-interface {p0, p1}, Ldx4;->U(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public V(Ljava/lang/String;JLjava/util/ArrayList;Z)Ljava/util/List;
    .locals 7

    const-string v0, "playListName"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaItems"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ltpb;->k0()Ldx4;

    move-result-object v1

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Ldx4;->V(Ljava/lang/String;JLjava/util/ArrayList;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public W()Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Ltpb;->k0()Ldx4;

    move-result-object p0

    invoke-interface {p0}, Ldx4;->W()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public X(ILjava/lang/String;)Z
    .locals 1

    const-string v0, "filePath"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ltpb;->k0()Ldx4;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Ldx4;->X(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public Y(Lcom/transsion/dbdata/beans/media/MediaItem;)Z
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ltpb;->k0()Ldx4;

    move-result-object p0

    invoke-interface {p0, p1}, Ldx4;->Y(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result p0

    return p0
.end method

.method public Z(ZLe74;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Ltpb;->k0()Ldx4;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Ldx4;->Z(ZLe74;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public a(Ljava/util/List;)Ljava/util/List;
    .locals 1

    const-string v0, "mediaIds"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ltpb;->k0()Ldx4;

    move-result-object p0

    invoke-interface {p0, p1}, Ldx4;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public a0(Lcom/transsion/dbdata/database/VideoPlayList;)I
    .locals 1

    const-string v0, "playList"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ltpb;->k0()Ldx4;

    move-result-object p0

    invoke-interface {p0, p1}, Ldx4;->a0(Lcom/transsion/dbdata/database/VideoPlayList;)I

    move-result p0

    return p0
.end method

.method public b(I)Lcom/transsion/dbdata/database/PlayListMediaItem;
    .locals 0

    invoke-virtual {p0}, Ltpb;->k0()Ldx4;

    move-result-object p0

    invoke-interface {p0, p1}, Ldx4;->b(I)Lcom/transsion/dbdata/database/PlayListMediaItem;

    move-result-object p0

    return-object p0
.end method

.method public b0(Lcom/transsion/dbdata/beans/media/PlayVideoData;)Ljava/util/List;
    .locals 1

    const-string v0, "videoData"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ltpb;->k0()Ldx4;

    move-result-object p0

    invoke-interface {p0, p1}, Ldx4;->b0(Lcom/transsion/dbdata/beans/media/PlayVideoData;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public c()Lcom/transsion/dbdata/beans/SubtitleSettingData;
    .locals 0

    invoke-virtual {p0}, Ltpb;->k0()Ldx4;

    move-result-object p0

    invoke-interface {p0}, Ldx4;->c()Lcom/transsion/dbdata/beans/SubtitleSettingData;

    move-result-object p0

    return-object p0
.end method

.method public c0(Lcom/transsion/dbdata/beans/media/MediaItem;)I
    .locals 1

    const-string v0, "mediaItem"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ltpb;->k0()Ldx4;

    move-result-object p0

    invoke-interface {p0, p1}, Ldx4;->c0(Lcom/transsion/dbdata/beans/media/MediaItem;)I

    move-result p0

    return p0
.end method

.method public d(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ltpb;->k0()Ldx4;

    move-result-object p0

    invoke-interface {p0, p1}, Ldx4;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public d0()Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Ltpb;->k0()Ldx4;

    move-result-object p0

    invoke-interface {p0}, Ldx4;->d0()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public e(Lcom/transsion/dbdata/beans/SubtitleHistory;)I
    .locals 1

    const-string v0, "record"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ltpb;->k0()Ldx4;

    move-result-object p0

    invoke-interface {p0, p1}, Ldx4;->e(Lcom/transsion/dbdata/beans/SubtitleHistory;)I

    move-result p0

    return p0
.end method

.method public e0(I)Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Ltpb;->k0()Ldx4;

    move-result-object p0

    invoke-interface {p0, p1}, Ldx4;->e0(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public f(Ljava/lang/String;)J
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ltpb;->k0()Ldx4;

    move-result-object p0

    invoke-interface {p0, p1}, Ldx4;->f(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public f0(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    const-string v0, "parentPath"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ltpb;->k0()Ldx4;

    move-result-object p0

    invoke-interface {p0, p1}, Ldx4;->f0(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public g(J)I
    .locals 0

    invoke-virtual {p0}, Ltpb;->k0()Ldx4;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Ldx4;->g(J)I

    move-result p0

    return p0
.end method

.method public getAudioTrack(I)Lcom/transsion/dbdata/database/AudioTrack;
    .locals 0

    invoke-virtual {p0}, Ltpb;->k0()Ldx4;

    move-result-object p0

    invoke-interface {p0, p1}, Ldx4;->getAudioTrack(I)Lcom/transsion/dbdata/database/AudioTrack;

    move-result-object p0

    return-object p0
.end method

.method public h(I)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 0

    invoke-virtual {p0}, Ltpb;->k0()Ldx4;

    move-result-object p0

    invoke-interface {p0, p1}, Ldx4;->h(I)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method public i(Lcom/transsion/dbdata/beans/media/MediaBucket;)Ljava/util/List;
    .locals 1

    const-string v0, "mediaBucket"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ltpb;->k0()Ldx4;

    move-result-object p0

    invoke-interface {p0, p1}, Ldx4;->i(Lcom/transsion/dbdata/beans/media/MediaBucket;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public insertSubtitleSetting(Lcom/transsion/dbdata/beans/SubtitleSettingData;)I
    .locals 1

    const-string v0, "subtitleSetting"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ltpb;->k0()Ldx4;

    move-result-object p0

    invoke-interface {p0, p1}, Ldx4;->insertSubtitleSetting(Lcom/transsion/dbdata/beans/SubtitleSettingData;)I

    move-result p0

    return p0
.end method

.method public j(ZLcom/transsion/dbdata/beans/media/MediaItem;)Z
    .locals 1

    const-string v0, "item"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ltpb;->k0()Ldx4;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Ldx4;->j(ZLcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result p0

    return p0
.end method

.method public k(IILjava/lang/String;)I
    .locals 0

    invoke-virtual {p0}, Ltpb;->k0()Ldx4;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Ldx4;->k(IILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final k0()Ldx4;
    .locals 0

    iget-object p0, p0, Ltpb;->a:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldx4;

    return-object p0
.end method

.method public l(Ljava/util/List;)Ljava/util/List;
    .locals 1

    const-string v0, "mediaItems"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ltpb;->k0()Ldx4;

    move-result-object p0

    invoke-interface {p0, p1}, Ldx4;->l(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final l0(Lcom/transsion/dbdata/beans/media/PlayVideoData;Lcom/transsion/dbdata/beans/media/MediaItem;)J
    .locals 3

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    return-wide v0

    :cond_0
    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->h(Landroid/content/Context;)Lcom/transsion/dbdata/database/VideoRoomDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->f()Lg5c;

    move-result-object p0

    iget-boolean v2, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isFromNet:Z

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mYoutubeId:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-static {v2}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mYoutubeId:Ljava/lang/String;

    invoke-interface {p0, p1}, Lg5c;->getTheVideoRecordMediaCountByData(Ljava/lang/String;)Lcom/transsion/dbdata/database/VideoRecord;

    move-result-object p0

    goto :goto_4

    :cond_2
    :goto_0
    iget v2, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mediaId:I

    invoke-static {v2}, Lcom/transsion/dbdata/utils/LoadDataUtils;->m(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget p1, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mediaId:I

    invoke-interface {p0, p1}, Lg5c;->getTheVideoRecordMediaCountById(I)Lcom/transsion/dbdata/database/VideoRecord;

    move-result-object p0

    goto :goto_4

    :cond_3
    iget-object v2, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->path:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-static {v2}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->path:Ljava/lang/String;

    invoke-interface {p0, p1}, Lg5c;->getTheVideoRecordMediaCountByData(Ljava/lang/String;)Lcom/transsion/dbdata/database/VideoRecord;

    move-result-object p0

    goto :goto_4

    :cond_5
    :goto_1
    if-eqz p2, :cond_6

    iget p1, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {p1}, Lcom/transsion/dbdata/utils/LoadDataUtils;->m(I)Z

    move-result p1

    if-eqz p1, :cond_6

    iget p1, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-interface {p0, p1}, Lg5c;->getTheVideoRecordMediaCountById(I)Lcom/transsion/dbdata/database/VideoRecord;

    move-result-object p0

    goto :goto_4

    :cond_6
    const/4 p1, 0x0

    if-eqz p2, :cond_7

    iget-object v2, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    goto :goto_2

    :cond_7
    move-object v2, p1

    :goto_2
    if-eqz v2, :cond_9

    invoke-static {v2}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_3

    :cond_8
    invoke-static {p2}, Ly45;->g(Ljava/lang/Object;)V

    iget-object p1, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-interface {p0, p1}, Lg5c;->getTheVideoRecordMediaCountByData(Ljava/lang/String;)Lcom/transsion/dbdata/database/VideoRecord;

    move-result-object p0

    goto :goto_4

    :cond_9
    :goto_3
    move-object p0, p1

    :goto_4
    if-eqz p0, :cond_a

    iget p1, p0, Lcom/transsion/dbdata/database/VideoRecord;->isPlayCompleted:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_a

    iget p0, p0, Lcom/transsion/dbdata/database/VideoRecord;->position:I

    int-to-long v0, p0

    :cond_a
    return-wide v0
.end method

.method public m(Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 1

    const-string v0, "path"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ltpb;->k0()Ldx4;

    move-result-object p0

    invoke-interface {p0, p1}, Ldx4;->m(Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method public final m0(Lcom/transsion/dbdata/beans/media/MediaItem;)Z
    .locals 2

    const-string p0, "mediaItem"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide p0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    const-wide/32 v0, 0x493e0

    cmp-long p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public n(Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 1

    const-string v0, "uri"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ltpb;->k0()Ldx4;

    move-result-object p0

    invoke-interface {p0, p1}, Ldx4;->n(Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method public o(I)I
    .locals 0

    invoke-virtual {p0}, Ltpb;->k0()Ldx4;

    move-result-object p0

    invoke-interface {p0, p1}, Ldx4;->o(I)I

    move-result p0

    return p0
.end method

.method public p(Ljava/util/List;)Ljava/util/List;
    .locals 1

    const-string v0, "mediaItems"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ltpb;->k0()Ldx4;

    move-result-object p0

    invoke-interface {p0, p1}, Ldx4;->p(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final p0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public q(Ljava/lang/String;)I
    .locals 1

    const-string v0, "subtitlePath"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ltpb;->k0()Ldx4;

    move-result-object p0

    invoke-interface {p0, p1}, Ldx4;->q(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public r(I)Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Ltpb;->k0()Ldx4;

    move-result-object p0

    invoke-interface {p0, p1}, Ldx4;->r(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public s()Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Ltpb;->k0()Ldx4;

    move-result-object p0

    invoke-interface {p0}, Ldx4;->s()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public t(ILcom/transsion/dbdata/beans/media/SubtitleTrackInfo;)I
    .locals 1

    const-string v0, "subtitle"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ltpb;->k0()Ldx4;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Ldx4;->t(ILcom/transsion/dbdata/beans/media/SubtitleTrackInfo;)I

    move-result p0

    return p0
.end method

.method public u(Z)Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Ltpb;->k0()Ldx4;

    move-result-object p0

    invoke-interface {p0, p1}, Ldx4;->u(Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public v(Lcom/transsion/dbdata/beans/SubtitleHistory;)I
    .locals 1

    const-string v0, "record"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ltpb;->k0()Ldx4;

    move-result-object p0

    invoke-interface {p0, p1}, Ldx4;->v(Lcom/transsion/dbdata/beans/SubtitleHistory;)I

    move-result p0

    return p0
.end method

.method public w(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Ltpb;->k0()Ldx4;

    move-result-object p0

    invoke-interface {p0, p1}, Ldx4;->w(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public x()V
    .locals 0

    invoke-virtual {p0}, Ltpb;->k0()Ldx4;

    move-result-object p0

    invoke-interface {p0}, Ldx4;->x()V

    return-void
.end method

.method public y(Ljava/util/List;)Ljava/util/List;
    .locals 1

    const-string v0, "paths"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ltpb;->k0()Ldx4;

    move-result-object p0

    invoke-interface {p0, p1}, Ldx4;->y(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public z(Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 0

    invoke-virtual {p0}, Ltpb;->k0()Ldx4;

    move-result-object p0

    invoke-interface {p0, p1}, Ldx4;->z(Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0
.end method
