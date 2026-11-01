.class public Lcom/wandoujia/download/rpc/m;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wandoujia/download/rpc/m$b;
    }
.end annotation


# static fields
.field public static final s:Lo/bg5;


# instance fields
.field public final a:Ljava/util/Map;

.field public final b:Ljava/util/Map;

.field public c:J

.field public final d:Ljava/lang/String;

.field public final e:I

.field public f:Lcom/mobiuspace/youtube/ump/proto/PlaybackCookie;

.field public g:Ljava/lang/String;

.field public h:J

.field public final i:Ljava/util/List;

.field public final j:Ljava/util/List;

.field public final k:Ljava/util/Map;

.field public l:Lcom/wandoujia/download/rpc/m$b;

.field public volatile m:Z

.field public n:I

.field public o:Z

.field public final p:Z

.field public final q:Ljava/lang/String;

.field public r:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lo/bg5$a;

    invoke-direct {v0}, Lo/bg5$a;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v2, v3, v1}, Lo/bg5$a;->e(JLjava/util/concurrent/TimeUnit;)Lo/bg5$a;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v1}, Lo/bg5$a;->R(JLjava/util/concurrent/TimeUnit;)Lo/bg5$a;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v1}, Lo/bg5$a;->j0(JLjava/util/concurrent/TimeUnit;)Lo/bg5$a;

    move-result-object v0

    invoke-virtual {v0}, Lo/bg5$a;->c()Lo/bg5;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/download/rpc/m;->s:Lo/bg5;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/mobiuspace/youtube/ump/proto/FormatId;Lcom/mobiuspace/youtube/ump/proto/FormatId;Ljava/lang/String;I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/download/rpc/m;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/download/rpc/m;->b:Ljava/util/Map;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/wandoujia/download/rpc/m;->c:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/wandoujia/download/rpc/m;->h:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/download/rpc/m;->i:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/wandoujia/download/rpc/m;->j:Ljava/util/List;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/wandoujia/download/rpc/m;->k:Ljava/util/Map;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/wandoujia/download/rpc/m;->m:Z

    const/4 v3, -0x1

    iput v3, p0, Lcom/wandoujia/download/rpc/m;->n:I

    iput-boolean v2, p0, Lcom/wandoujia/download/rpc/m;->o:Z

    const/4 v3, 0x1

    iput v3, p0, Lcom/wandoujia/download/rpc/m;->r:I

    iput-object p1, p0, Lcom/wandoujia/download/rpc/m;->g:Ljava/lang/String;

    iput-object p2, p0, Lcom/wandoujia/download/rpc/m;->d:Ljava/lang/String;

    iput p6, p0, Lcom/wandoujia/download/rpc/m;->e:I

    if-eqz p3, :cond_0

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p4, :cond_1

    invoke-interface {v1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz p3, :cond_2

    const/4 v2, 0x1

    :cond_2
    iput-boolean v2, p0, Lcom/wandoujia/download/rpc/m;->p:Z

    iput-object p5, p0, Lcom/wandoujia/download/rpc/m;->q:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic a(Lcom/wandoujia/download/rpc/m;I)V
    .locals 0

    iput p1, p0, Lcom/wandoujia/download/rpc/m;->n:I

    return-void
.end method

.method public static bridge synthetic b(Lcom/wandoujia/download/rpc/m;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/wandoujia/download/rpc/m;->t(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/wandoujia/download/rpc/m;Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/wandoujia/download/rpc/m;->y(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public static bridge synthetic d(Lcom/wandoujia/download/rpc/m;Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/wandoujia/download/rpc/m;->z(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public static bridge synthetic e(Lcom/wandoujia/download/rpc/m;Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/wandoujia/download/rpc/m;->A(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public static bridge synthetic f(Lcom/wandoujia/download/rpc/m;Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/wandoujia/download/rpc/m;->B(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public static bridge synthetic g(Lcom/wandoujia/download/rpc/m;Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/wandoujia/download/rpc/m;->C(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public static bridge synthetic h(Lcom/wandoujia/download/rpc/m;Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/wandoujia/download/rpc/m;->D(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public static bridge synthetic i(Lcom/wandoujia/download/rpc/m;Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/wandoujia/download/rpc/m;->E(Ljava/nio/ByteBuffer;)V

    return-void
.end method


# virtual methods
.method public final A(Ljava/nio/ByteBuffer;)V
    .locals 1

    sget-object v0, Lcom/mobiuspace/youtube/ump/proto/FormatInitializationMetadata;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/squareup/wire/ProtoAdapter;->decode([B)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mobiuspace/youtube/ump/proto/FormatInitializationMetadata;

    invoke-virtual {p1}, Lcom/mobiuspace/youtube/ump/proto/FormatInitializationMetadata;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wandoujia/download/rpc/m;->t(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/wandoujia/download/rpc/m;->G(Lcom/mobiuspace/youtube/ump/proto/FormatInitializationMetadata;)V

    iget-object v0, p0, Lcom/wandoujia/download/rpc/m;->l:Lcom/wandoujia/download/rpc/m$b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/wandoujia/download/rpc/m$b;->a(Lcom/mobiuspace/youtube/ump/proto/FormatInitializationMetadata;)V

    :cond_0
    return-void
.end method

.method public final B(Ljava/nio/ByteBuffer;)V
    .locals 3

    new-instance v0, Lo/so0;

    invoke-direct {v0, p1}, Lo/so0;-><init>(Ljava/nio/ByteBuffer;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lo/so0;->b(I)I

    move-result p1

    invoke-virtual {v0}, Lo/so0;->c()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v2, v1}, Lo/so0;->d(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/download/rpc/m;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/wandoujia/download/rpc/m;->a:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/sm3;

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v1, v1, Lo/sm3;->e:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/ko4;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0}, Lo/ko4;->a(Ljava/nio/ByteBuffer;)V

    :cond_2
    return-void
.end method

.method public final C(Ljava/nio/ByteBuffer;)V
    .locals 6

    sget-object v0, Lcom/mobiuspace/youtube/ump/proto/MediaHeader;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/squareup/wire/ProtoAdapter;->decode([B)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mobiuspace/youtube/ump/proto/MediaHeader;

    iget-object v0, p1, Lcom/mobiuspace/youtube/ump/proto/MediaHeader;->format_id:Lcom/mobiuspace/youtube/ump/proto/FormatId;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/mobiuspace/youtube/ump/proto/MediaHeader;->header_id:Ljava/lang/Integer;

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/mobiuspace/youtube/ump/proto/MediaHeader;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wandoujia/download/rpc/m;->t(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/mobiuspace/youtube/ump/proto/MediaHeader;->format_id:Lcom/mobiuspace/youtube/ump/proto/FormatId;

    invoke-virtual {p0, v0}, Lcom/wandoujia/download/rpc/m;->r(Lcom/mobiuspace/youtube/ump/proto/FormatId;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/download/rpc/m;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/sm3;

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Lcom/wandoujia/download/rpc/m;->b:Ljava/util/Map;

    iget-object v3, p1, Lcom/mobiuspace/youtube/ump/proto/MediaHeader;->header_id:Ljava/lang/Integer;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/mobiuspace/youtube/ump/proto/MediaHeader;->sequence_number:Ljava/lang/Long;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/wandoujia/download/rpc/m;->m(Lo/sm3;J)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p1, Lcom/mobiuspace/youtube/ump/proto/MediaHeader;->format_id:Lcom/mobiuspace/youtube/ump/proto/FormatId;

    iget-object v2, p1, Lcom/mobiuspace/youtube/ump/proto/MediaHeader;->sequence_number:Ljava/lang/Long;

    invoke-virtual {p0, v0, v2}, Lcom/wandoujia/download/rpc/m;->H(Lcom/mobiuspace/youtube/ump/proto/FormatId;Ljava/lang/Long;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_2
    iget-object v0, v1, Lo/sm3;->e:Ljava/util/TreeMap;

    iget-object v2, p1, Lcom/mobiuspace/youtube/ump/proto/MediaHeader;->header_id:Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/wandoujia/download/rpc/m;->w(Lcom/mobiuspace/youtube/ump/proto/MediaHeader;)Lo/ko4;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lo/sm3;->f:Lcom/mobiuspace/youtube/ump/proto/BufferedRange;

    iget-object v2, v0, Lcom/mobiuspace/youtube/ump/proto/BufferedRange;->duration_ms:Ljava/lang/Long;

    iget-object v0, v0, Lcom/mobiuspace/youtube/ump/proto/BufferedRange;->end_segment_index:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    iget-object v3, p1, Lcom/mobiuspace/youtube/ump/proto/MediaHeader;->duration_ms:Ljava/lang/Integer;

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object p1, p1, Lcom/mobiuspace/youtube/ump/proto/MediaHeader;->duration_ms:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v4, p1

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_4
    iget-object p1, v1, Lo/sm3;->f:Lcom/mobiuspace/youtube/ump/proto/BufferedRange;

    invoke-virtual {p1}, Lcom/mobiuspace/youtube/ump/proto/BufferedRange;->newBuilder()Lcom/mobiuspace/youtube/ump/proto/BufferedRange$Builder;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/mobiuspace/youtube/ump/proto/BufferedRange$Builder;->duration_ms(Ljava/lang/Long;)Lcom/mobiuspace/youtube/ump/proto/BufferedRange$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/mobiuspace/youtube/ump/proto/BufferedRange$Builder;->end_segment_index(Ljava/lang/Integer;)Lcom/mobiuspace/youtube/ump/proto/BufferedRange$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mobiuspace/youtube/ump/proto/BufferedRange$Builder;->build()Lcom/mobiuspace/youtube/ump/proto/BufferedRange;

    move-result-object p1

    iput-object p1, v1, Lo/sm3;->f:Lcom/mobiuspace/youtube/ump/proto/BufferedRange;

    :cond_5
    :goto_0
    return-void
.end method

.method public final D(Ljava/nio/ByteBuffer;)V
    .locals 1

    sget-object v0, Lcom/mobiuspace/youtube/ump/proto/NextRequestPolicy;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/squareup/wire/ProtoAdapter;->decode([B)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mobiuspace/youtube/ump/proto/NextRequestPolicy;

    iget-object v0, p1, Lcom/mobiuspace/youtube/ump/proto/NextRequestPolicy;->playback_cookie:Lcom/mobiuspace/youtube/ump/proto/PlaybackCookie;

    iput-object v0, p0, Lcom/wandoujia/download/rpc/m;->f:Lcom/mobiuspace/youtube/ump/proto/PlaybackCookie;

    invoke-virtual {p1}, Lcom/mobiuspace/youtube/ump/proto/NextRequestPolicy;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/wandoujia/download/rpc/m;->t(Ljava/lang/String;)V

    return-void
.end method

.method public final E(Ljava/nio/ByteBuffer;)V
    .locals 2

    const-string v0, "processRedirect"

    invoke-virtual {p0, v0}, Lcom/wandoujia/download/rpc/m;->t(Ljava/lang/String;)V

    sget-object v0, Lcom/mobiuspace/youtube/ump/proto/SabrRedirect;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/squareup/wire/ProtoAdapter;->decode([B)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mobiuspace/youtube/ump/proto/SabrRedirect;

    iget-object v0, p1, Lcom/mobiuspace/youtube/ump/proto/SabrRedirect;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p1, Lcom/mobiuspace/youtube/ump/proto/SabrRedirect;->url:Ljava/lang/String;

    iput-object p1, p0, Lcom/wandoujia/download/rpc/m;->g:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/wandoujia/download/rpc/m;->o:Z

    return-void

    :cond_0
    new-instance p1, Lcom/mobiuspace/youtube/ump/UmpException;

    const/4 v0, -0x2

    const-string v1, "redirect url is empty"

    invoke-direct {p1, v0, v1}, Lcom/mobiuspace/youtube/ump/UmpException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public final F(Ljava/util/List;)V
    .locals 6

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/sm3;

    iget-object v1, v0, Lo/sm3;->a:Lcom/mobiuspace/youtube/ump/proto/FormatId;

    iget-object v2, p0, Lcom/wandoujia/download/rpc/m;->k:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/wandoujia/download/rpc/m;->k:Ljava/util/Map;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, v0, Lo/sm3;->e:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/ko4;

    iget-object v3, p0, Lcom/wandoujia/download/rpc/m;->k:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    iget-wide v4, v2, Lo/ko4;->f:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final G(Lcom/mobiuspace/youtube/ump/proto/FormatInitializationMetadata;)V
    .locals 5

    iget-object v0, p1, Lcom/mobiuspace/youtube/ump/proto/FormatInitializationMetadata;->format_id:Lcom/mobiuspace/youtube/ump/proto/FormatId;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/wandoujia/download/rpc/m;->r(Lcom/mobiuspace/youtube/ump/proto/FormatId;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/download/rpc/m;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lo/sm3;

    invoke-direct {v1}, Lo/sm3;-><init>()V

    iget-object v2, p1, Lcom/mobiuspace/youtube/ump/proto/FormatInitializationMetadata;->format_id:Lcom/mobiuspace/youtube/ump/proto/FormatId;

    iput-object v2, v1, Lo/sm3;->a:Lcom/mobiuspace/youtube/ump/proto/FormatId;

    iget-object v2, p1, Lcom/mobiuspace/youtube/ump/proto/FormatInitializationMetadata;->end_time_ms:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v1, Lo/sm3;->b:J

    iget-object v2, p1, Lcom/mobiuspace/youtube/ump/proto/FormatInitializationMetadata;->mime_type:Ljava/lang/String;

    iput-object v2, v1, Lo/sm3;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/mobiuspace/youtube/ump/proto/FormatInitializationMetadata;->field4:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lo/sm3;->d:I

    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    iput-object v2, v1, Lo/sm3;->e:Ljava/util/TreeMap;

    new-instance v2, Lcom/mobiuspace/youtube/ump/proto/BufferedRange$Builder;

    invoke-direct {v2}, Lcom/mobiuspace/youtube/ump/proto/BufferedRange$Builder;-><init>()V

    iget-object p1, p1, Lcom/mobiuspace/youtube/ump/proto/FormatInitializationMetadata;->format_id:Lcom/mobiuspace/youtube/ump/proto/FormatId;

    invoke-virtual {v2, p1}, Lcom/mobiuspace/youtube/ump/proto/BufferedRange$Builder;->format_id(Lcom/mobiuspace/youtube/ump/proto/FormatId;)Lcom/mobiuspace/youtube/ump/proto/BufferedRange$Builder;

    move-result-object p1

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/mobiuspace/youtube/ump/proto/BufferedRange$Builder;->start_time_ms(Ljava/lang/Long;)Lcom/mobiuspace/youtube/ump/proto/BufferedRange$Builder;

    move-result-object p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/mobiuspace/youtube/ump/proto/BufferedRange$Builder;->duration_ms(Ljava/lang/Long;)Lcom/mobiuspace/youtube/ump/proto/BufferedRange$Builder;

    move-result-object p1

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/mobiuspace/youtube/ump/proto/BufferedRange$Builder;->start_segment_index(Ljava/lang/Integer;)Lcom/mobiuspace/youtube/ump/proto/BufferedRange$Builder;

    move-result-object p1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/mobiuspace/youtube/ump/proto/BufferedRange$Builder;->end_segment_index(Ljava/lang/Integer;)Lcom/mobiuspace/youtube/ump/proto/BufferedRange$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mobiuspace/youtube/ump/proto/BufferedRange$Builder;->build()Lcom/mobiuspace/youtube/ump/proto/BufferedRange;

    move-result-object p1

    iput-object p1, v1, Lo/sm3;->f:Lcom/mobiuspace/youtube/ump/proto/BufferedRange;

    iget-object p1, p0, Lcom/wandoujia/download/rpc/m;->a:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lo/sm3;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-wide v0, v1, Lo/sm3;->b:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    iput-wide v0, p0, Lcom/wandoujia/download/rpc/m;->c:J

    :cond_1
    return-void
.end method

.method public final H(Lcom/mobiuspace/youtube/ump/proto/FormatId;Ljava/lang/Long;)Z
    .locals 1

    iget-object v0, p0, Lcom/wandoujia/download/rpc/m;->k:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public I(J)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setStartTimeMs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wandoujia/download/rpc/m;->t(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 p1, -0x1

    :goto_0
    iput-wide p1, p0, Lcom/wandoujia/download/rpc/m;->h:J

    return-void
.end method

.method public final j()Lo/yk4;
    .locals 7

    new-instance v0, Lcom/mobiuspace/youtube/ump/proto/ClientAbrState$Builder;

    invoke-direct {v0}, Lcom/mobiuspace/youtube/ump/proto/ClientAbrState$Builder;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobiuspace/youtube/ump/proto/ClientAbrState$Builder;->last_manual_direction(Ljava/lang/Integer;)Lcom/mobiuspace/youtube/ump/proto/ClientAbrState$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/mobiuspace/youtube/ump/proto/ClientAbrState$Builder;->time_since_last_manual_format_selection_ms(Ljava/lang/Integer;)Lcom/mobiuspace/youtube/ump/proto/ClientAbrState$Builder;

    move-result-object v0

    iget v2, p0, Lcom/wandoujia/download/rpc/m;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mobiuspace/youtube/ump/proto/ClientAbrState$Builder;->quality(Ljava/lang/Integer;)Lcom/mobiuspace/youtube/ump/proto/ClientAbrState$Builder;

    move-result-object v0

    iget v2, p0, Lcom/wandoujia/download/rpc/m;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mobiuspace/youtube/ump/proto/ClientAbrState$Builder;->selected_quality_height(Ljava/lang/Integer;)Lcom/mobiuspace/youtube/ump/proto/ClientAbrState$Builder;

    move-result-object v0

    iget-wide v2, p0, Lcom/wandoujia/download/rpc/m;->h:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    goto :goto_0

    :cond_0
    move-wide v2, v4

    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mobiuspace/youtube/ump/proto/ClientAbrState$Builder;->start_time_ms(Ljava/lang/Long;)Lcom/mobiuspace/youtube/ump/proto/ClientAbrState$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/mobiuspace/youtube/ump/proto/ClientAbrState$Builder;->visibility(Ljava/lang/Integer;)Lcom/mobiuspace/youtube/ump/proto/ClientAbrState$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/wandoujia/download/rpc/m;->p:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/mobiuspace/youtube/ump/proto/ClientAbrState$MediaType;->MEDIA_TYPE_DEFAULT:Lcom/mobiuspace/youtube/ump/proto/ClientAbrState$MediaType;

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/mobiuspace/youtube/ump/proto/ClientAbrState$MediaType;->MEDIA_TYPE_AUDIO:Lcom/mobiuspace/youtube/ump/proto/ClientAbrState$MediaType;

    :goto_1
    invoke-virtual {v0, v1}, Lcom/mobiuspace/youtube/ump/proto/ClientAbrState$Builder;->media_type(Lcom/mobiuspace/youtube/ump/proto/ClientAbrState$MediaType;)Lcom/mobiuspace/youtube/ump/proto/ClientAbrState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobiuspace/youtube/ump/proto/ClientAbrState$Builder;->build()Lcom/mobiuspace/youtube/ump/proto/ClientAbrState;

    move-result-object v0

    new-instance v1, Lo/yk4;

    iget-object v2, p0, Lcom/wandoujia/download/rpc/m;->j:Ljava/util/List;

    iget-object v3, p0, Lcom/wandoujia/download/rpc/m;->i:Ljava/util/List;

    invoke-direct {v1, v0, v2, v3}, Lo/yk4;-><init>(Lcom/mobiuspace/youtube/ump/proto/ClientAbrState;Ljava/util/List;Ljava/util/List;)V

    return-object v1
.end method

.method public k()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/download/rpc/m;->m:Z

    return-void
.end method

.method public final l()V
    .locals 2

    iget-object v0, p0, Lcom/wandoujia/download/rpc/m;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/wandoujia/download/rpc/m;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/sm3;

    iget-object v1, v1, Lo/sm3;->e:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->clear()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/download/rpc/m;->o:Z

    const-string v0, "clear sequenceList"

    invoke-virtual {p0, v0}, Lcom/wandoujia/download/rpc/m;->t(Ljava/lang/String;)V

    return-void
.end method

.method public final m(Lo/sm3;J)Z
    .locals 3

    iget-object p1, p1, Lo/sm3;->e:Ljava/util/TreeMap;

    invoke-virtual {p1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ko4;

    iget-wide v0, v0, Lo/ko4;->f:J

    cmp-long v2, v0, p2

    if-nez v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public n(Lcom/wandoujia/download/rpc/m$b;)V
    .locals 7

    iput-object p1, p0, Lcom/wandoujia/download/rpc/m;->l:Lcom/wandoujia/download/rpc/m$b;

    :goto_0
    const/16 v0, -0x64

    :try_start_0
    iget-boolean v1, p0, Lcom/wandoujia/download/rpc/m;->m:Z

    if-nez v1, :cond_6

    iget-wide v1, p0, Lcom/wandoujia/download/rpc/m;->c:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    iget-wide v3, p0, Lcom/wandoujia/download/rpc/m;->h:J

    cmp-long v5, v3, v1

    if-gez v5, :cond_6

    goto :goto_1

    :catch_0
    move-exception p1

    goto/16 :goto_3

    :catch_1
    move-exception p1

    goto/16 :goto_4

    :catch_2
    move-exception p1

    goto/16 :goto_5

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/wandoujia/download/rpc/m;->l()V

    const-string v1, "########################################################"

    invoke-virtual {p0, v1}, Lcom/wandoujia/download/rpc/m;->t(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/wandoujia/download/rpc/m;->h:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/wandoujia/download/rpc/m;->t(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/wandoujia/download/rpc/m;->j()Lo/yk4;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/wandoujia/download/rpc/m;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&rn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/wandoujia/download/rpc/m;->r:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/wandoujia/download/rpc/m;->r:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/wandoujia/download/rpc/m;->o(Lo/yk4;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iget-boolean v2, p0, Lcom/wandoujia/download/rpc/m;->m:Z

    if-nez v2, :cond_5

    invoke-interface {p1, v1}, Lcom/wandoujia/download/rpc/m$b;->b(Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/wandoujia/download/rpc/m;->F(Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/wandoujia/download/rpc/m;->s(Ljava/util/List;)Lo/sm3;

    move-result-object v1

    iget-object v2, v1, Lo/sm3;->e:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v2

    iget-boolean v3, p0, Lcom/wandoujia/download/rpc/m;->o:Z

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_4

    iget-object v2, v1, Lo/sm3;->e:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/ko4;

    iget v1, v1, Lo/sm3;->d:I

    int-to-long v3, v1

    iget-wide v5, v2, Lo/ko4;->f:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    const-string v1, "download complete"

    invoke-virtual {p0, v1}, Lcom/wandoujia/download/rpc/m;->t(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/wandoujia/download/rpc/m$b;->onFinish()V

    goto :goto_2

    :cond_2
    iget v1, v2, Lo/ko4;->d:I

    int-to-long v3, v1

    iget-wide v1, v2, Lo/ko4;->e:J

    add-long/2addr v3, v1

    iget-wide v1, p0, Lcom/wandoujia/download/rpc/m;->h:J

    cmp-long v5, v3, v1

    if-lez v5, :cond_3

    iput-wide v3, p0, Lcom/wandoujia/download/rpc/m;->h:J

    goto/16 :goto_0

    :cond_3
    new-instance p1, Lcom/mobiuspace/youtube/ump/UmpException;

    const-string v1, "startTimeMs invalid"

    invoke-direct {p1, v0, v1}, Lcom/mobiuspace/youtube/ump/UmpException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Lcom/mobiuspace/youtube/ump/UmpException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sequenceMap is empty, protect code is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/wandoujia/download/rpc/m;->n:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x5

    invoke-direct {p1, v2, v1}, Lcom/mobiuspace/youtube/ump/UmpException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_5
    const-string p1, "canceled "

    invoke-virtual {p0, p1}, Lcom/wandoujia/download/rpc/m;->t(Ljava/lang/String;)V

    new-instance p1, Lcom/mobiuspace/youtube/ump/UmpException;

    const-string v1, "canceled"

    const/4 v2, -0x7

    invoke-direct {p1, v2, v1}, Lcom/mobiuspace/youtube/ump/UmpException;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/mobiuspace/youtube/ump/UmpException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_2
    return-void

    :goto_3
    new-instance v1, Lcom/mobiuspace/youtube/ump/UmpException;

    invoke-direct {v1, v0, p1}, Lcom/mobiuspace/youtube/ump/UmpException;-><init>(ILjava/lang/Exception;)V

    throw v1

    :goto_4
    new-instance v0, Lcom/mobiuspace/youtube/ump/UmpException;

    const/4 v1, -0x3

    invoke-direct {v0, v1, p1}, Lcom/mobiuspace/youtube/ump/UmpException;-><init>(ILjava/lang/Exception;)V

    throw v0

    :goto_5
    throw p1
.end method

.method public final o(Lo/yk4;Ljava/lang/String;)Ljava/util/List;
    .locals 4

    new-instance v0, Lcom/mobiuspace/youtube/ump/proto/StreamerContext$ClientInfo$Builder;

    invoke-direct {v0}, Lcom/mobiuspace/youtube/ump/proto/StreamerContext$ClientInfo$Builder;-><init>()V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobiuspace/youtube/ump/proto/StreamerContext$ClientInfo$Builder;->client_name(Ljava/lang/Integer;)Lcom/mobiuspace/youtube/ump/proto/StreamerContext$ClientInfo$Builder;

    move-result-object v0

    const-string v1, "2.2040620.05.00"

    invoke-virtual {v0, v1}, Lcom/mobiuspace/youtube/ump/proto/StreamerContext$ClientInfo$Builder;->client_version(Ljava/lang/String;)Lcom/mobiuspace/youtube/ump/proto/StreamerContext$ClientInfo$Builder;

    move-result-object v0

    const-string v1, "Windows"

    invoke-virtual {v0, v1}, Lcom/mobiuspace/youtube/ump/proto/StreamerContext$ClientInfo$Builder;->os_name(Ljava/lang/String;)Lcom/mobiuspace/youtube/ump/proto/StreamerContext$ClientInfo$Builder;

    move-result-object v0

    const-string v1, "10.0"

    invoke-virtual {v0, v1}, Lcom/mobiuspace/youtube/ump/proto/StreamerContext$ClientInfo$Builder;->os_version(Ljava/lang/String;)Lcom/mobiuspace/youtube/ump/proto/StreamerContext$ClientInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobiuspace/youtube/ump/proto/StreamerContext$ClientInfo$Builder;->build()Lcom/mobiuspace/youtube/ump/proto/StreamerContext$ClientInfo;

    move-result-object v0

    new-instance v1, Lcom/mobiuspace/youtube/ump/proto/StreamerContext$Builder;

    invoke-direct {v1}, Lcom/mobiuspace/youtube/ump/proto/StreamerContext$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mobiuspace/youtube/ump/proto/StreamerContext$Builder;->client_info(Lcom/mobiuspace/youtube/ump/proto/StreamerContext$ClientInfo;)Lcom/mobiuspace/youtube/ump/proto/StreamerContext$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/download/rpc/m;->f:Lcom/mobiuspace/youtube/ump/proto/PlaybackCookie;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget-object v3, Lcom/mobiuspace/youtube/ump/proto/PlaybackCookie;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v1}, Lcom/squareup/wire/ProtoAdapter;->encode(Ljava/lang/Object;)[B

    move-result-object v1

    invoke-static {v1}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/mobiuspace/youtube/ump/proto/StreamerContext$Builder;->playback_cookie(Lokio/ByteString;)Lcom/mobiuspace/youtube/ump/proto/StreamerContext$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/download/rpc/m;->q:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/wandoujia/download/rpc/m;->q:Ljava/lang/String;

    invoke-static {v1}, Lokio/ByteString;->decodeBase64(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v2

    :cond_1
    invoke-virtual {v0, v2}, Lcom/mobiuspace/youtube/ump/proto/StreamerContext$Builder;->po_token(Lokio/ByteString;)Lcom/mobiuspace/youtube/ump/proto/StreamerContext$Builder;

    move-result-object v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobiuspace/youtube/ump/proto/StreamerContext$Builder;->field5(Ljava/util/List;)Lcom/mobiuspace/youtube/ump/proto/StreamerContext$Builder;

    move-result-object v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobiuspace/youtube/ump/proto/StreamerContext$Builder;->field6(Ljava/util/List;)Lcom/mobiuspace/youtube/ump/proto/StreamerContext$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobiuspace/youtube/ump/proto/StreamerContext$Builder;->build()Lcom/mobiuspace/youtube/ump/proto/StreamerContext;

    move-result-object v0

    new-instance v1, Lcom/mobiuspace/youtube/ump/proto/VideoPlaybackAbrRequest$Builder;

    invoke-direct {v1}, Lcom/mobiuspace/youtube/ump/proto/VideoPlaybackAbrRequest$Builder;-><init>()V

    iget-object v2, p1, Lo/yk4;->a:Lcom/mobiuspace/youtube/ump/proto/ClientAbrState;

    invoke-virtual {v1, v2}, Lcom/mobiuspace/youtube/ump/proto/VideoPlaybackAbrRequest$Builder;->client_abr_state(Lcom/mobiuspace/youtube/ump/proto/ClientAbrState;)Lcom/mobiuspace/youtube/ump/proto/VideoPlaybackAbrRequest$Builder;

    move-result-object v1

    iget-object v2, p1, Lo/yk4;->b:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/mobiuspace/youtube/ump/proto/VideoPlaybackAbrRequest$Builder;->selected_audio_format_ids(Ljava/util/List;)Lcom/mobiuspace/youtube/ump/proto/VideoPlaybackAbrRequest$Builder;

    move-result-object v1

    iget-object p1, p1, Lo/yk4;->c:Ljava/util/List;

    invoke-virtual {v1, p1}, Lcom/mobiuspace/youtube/ump/proto/VideoPlaybackAbrRequest$Builder;->selected_video_format_ids(Ljava/util/List;)Lcom/mobiuspace/youtube/ump/proto/VideoPlaybackAbrRequest$Builder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/wandoujia/download/rpc/m;->v()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/mobiuspace/youtube/ump/proto/VideoPlaybackAbrRequest$Builder;->selected_format_ids(Ljava/util/List;)Lcom/mobiuspace/youtube/ump/proto/VideoPlaybackAbrRequest$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/wandoujia/download/rpc/m;->d:Ljava/lang/String;

    invoke-static {v1}, Lokio/ByteString;->decodeBase64(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/mobiuspace/youtube/ump/proto/VideoPlaybackAbrRequest$Builder;->video_playback_ustreamer_config(Lokio/ByteString;)Lcom/mobiuspace/youtube/ump/proto/VideoPlaybackAbrRequest$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/mobiuspace/youtube/ump/proto/VideoPlaybackAbrRequest$Builder;->streamer_context(Lcom/mobiuspace/youtube/ump/proto/StreamerContext;)Lcom/mobiuspace/youtube/ump/proto/VideoPlaybackAbrRequest$Builder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/wandoujia/download/rpc/m;->u()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mobiuspace/youtube/ump/proto/VideoPlaybackAbrRequest$Builder;->buffered_ranges(Ljava/util/List;)Lcom/mobiuspace/youtube/ump/proto/VideoPlaybackAbrRequest$Builder;

    move-result-object p1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mobiuspace/youtube/ump/proto/VideoPlaybackAbrRequest$Builder;->field1000(Ljava/util/List;)Lcom/mobiuspace/youtube/ump/proto/VideoPlaybackAbrRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mobiuspace/youtube/ump/proto/VideoPlaybackAbrRequest$Builder;->build()Lcom/mobiuspace/youtube/ump/proto/VideoPlaybackAbrRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mobiuspace/youtube/ump/proto/VideoPlaybackAbrRequest;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wandoujia/download/rpc/m;->t(Ljava/lang/String;)V

    sget-object v0, Lcom/mobiuspace/youtube/ump/proto/VideoPlaybackAbrRequest;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/squareup/wire/ProtoAdapter;->encode(Ljava/lang/Object;)[B

    move-result-object p1

    new-instance v0, Lo/zk6$a;

    invoke-direct {v0}, Lo/zk6$a;-><init>()V

    invoke-virtual {v0, p2}, Lo/zk6$a;->s(Ljava/lang/String;)Lo/zk6$a;

    move-result-object p2

    const-string v0, "accept"

    const-string v1, "*/*"

    invoke-virtual {p2, v0, v1}, Lo/zk6$a;->a(Ljava/lang/String;Ljava/lang/String;)Lo/zk6$a;

    move-result-object p2

    const-string v0, "accept-language"

    const-string v1, "*"

    invoke-virtual {p2, v0, v1}, Lo/zk6$a;->a(Ljava/lang/String;Ljava/lang/String;)Lo/zk6$a;

    move-result-object p2

    const-string v0, "accept-encoding"

    const-string v1, "br,gzip,deflate"

    invoke-virtual {p2, v0, v1}, Lo/zk6$a;->a(Ljava/lang/String;Ljava/lang/String;)Lo/zk6$a;

    move-result-object p2

    const-string v0, "sec-fetch-mode"

    const-string v1, "cors"

    invoke-virtual {p2, v0, v1}, Lo/zk6$a;->a(Ljava/lang/String;Ljava/lang/String;)Lo/zk6$a;

    move-result-object p2

    const-string v0, "user-agent"

    const-string v1, "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36"

    invoke-virtual {p2, v0, v1}, Lo/zk6$a;->a(Ljava/lang/String;Ljava/lang/String;)Lo/zk6$a;

    move-result-object p2

    const-string v0, "application/x-protobuf"

    invoke-static {v0}, Lo/up4;->f(Ljava/lang/String;)Lo/up4;

    move-result-object v0

    invoke-static {p1}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object p1

    invoke-static {v0, p1}, Lo/bl6;->create(Lo/up4;Lokio/ByteString;)Lo/bl6;

    move-result-object p1

    invoke-virtual {p2, p1}, Lo/zk6$a;->k(Lo/bl6;)Lo/zk6$a;

    move-result-object p1

    invoke-virtual {p1}, Lo/zk6$a;->b()Lo/zk6;

    move-result-object p1

    sget-object p2, Lcom/wandoujia/download/rpc/m;->s:Lo/bg5;

    invoke-virtual {p2, p1}, Lo/bg5;->a(Lo/zk6;)Lo/jg0;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->execute(Lo/jg0;)Lo/ym6;

    move-result-object p1

    invoke-virtual {p1}, Lo/ym6;->isSuccessful()Z

    move-result p2

    if-eqz p2, :cond_2

    :try_start_0
    invoke-virtual {p1}, Lo/ym6;->a()Lo/zm6;

    move-result-object p1

    invoke-virtual {p1}, Lo/zm6;->bytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/wandoujia/download/rpc/m;->x([B)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lcom/mobiuspace/youtube/ump/UmpException;

    const/4 v0, -0x5

    invoke-direct {p2, v0, p1}, Lcom/mobiuspace/youtube/ump/UmpException;-><init>(ILjava/lang/Exception;)V

    throw p2

    :cond_2
    new-instance p2, Lcom/mobiuspace/youtube/ump/UmpException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lo/ym6;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lo/ym6;->s()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x4

    invoke-direct {p2, v0, p1}, Lcom/mobiuspace/youtube/ump/UmpException;-><init>(ILjava/lang/String;)V

    throw p2
.end method

.method public final p(Ljava/util/List;)V
    .locals 3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/sm3;

    iget-wide v1, p0, Lcom/wandoujia/download/rpc/m;->h:J

    iput-wide v1, v0, Lo/sm3;->g:J

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final q(Ljava/util/List;)Lo/sm3;
    .locals 3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/sm3;

    iget-object v1, v0, Lo/sm3;->c:Ljava/lang/String;

    const-string v2, "video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final r(Lcom/mobiuspace/youtube/ump/proto/FormatId;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/mobiuspace/youtube/ump/proto/FormatId;->itag:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/mobiuspace/youtube/ump/proto/FormatId;->last_modified:Ljava/lang/Long;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/util/List;)Lo/sm3;
    .locals 2

    iget-boolean v0, p0, Lcom/wandoujia/download/rpc/m;->p:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/wandoujia/download/rpc/m;->q(Ljava/util/List;)Lo/sm3;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/sm3;

    :goto_0
    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    new-instance p1, Lcom/mobiuspace/youtube/ump/UmpException;

    const/16 v0, -0x64

    const-string v1, "can`t find target format"

    invoke-direct {p1, v0, v1}, Lcom/mobiuspace/youtube/ump/UmpException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public final t(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lo/bg8;->h(Ljava/lang/String;)V

    return-void
.end method

.method public final u()Ljava/util/List;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/wandoujia/download/rpc/m;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/sm3;

    iget-object v2, v2, Lo/sm3;->f:Lcom/mobiuspace/youtube/ump/proto/BufferedRange;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final v()Ljava/util/List;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/wandoujia/download/rpc/m;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/sm3;

    iget-object v2, v2, Lo/sm3;->a:Lcom/mobiuspace/youtube/ump/proto/FormatId;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final w(Lcom/mobiuspace/youtube/ump/proto/MediaHeader;)Lo/ko4;
    .locals 17

    move-object/from16 v0, p1

    new-instance v12, Lo/ko4;

    iget-object v1, v0, Lcom/mobiuspace/youtube/ump/proto/MediaHeader;->header_id:Ljava/lang/Integer;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v3, v0, Lcom/mobiuspace/youtube/ump/proto/MediaHeader;->itag:Ljava/lang/Integer;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    iget-object v4, v0, Lcom/mobiuspace/youtube/ump/proto/MediaHeader;->format_id:Lcom/mobiuspace/youtube/ump/proto/FormatId;

    iget-object v5, v0, Lcom/mobiuspace/youtube/ump/proto/MediaHeader;->start_ms:Ljava/lang/Integer;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    iget-object v6, v0, Lcom/mobiuspace/youtube/ump/proto/MediaHeader;->duration_ms:Ljava/lang/Integer;

    const-wide/16 v7, 0x0

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-long v9, v6

    goto :goto_3

    :cond_3
    move-wide v9, v7

    :goto_3
    iget-object v6, v0, Lcom/mobiuspace/youtube/ump/proto/MediaHeader;->sequence_number:Ljava/lang/Long;

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    goto :goto_4

    :cond_4
    move-wide v13, v7

    :goto_4
    iget-object v6, v0, Lcom/mobiuspace/youtube/ump/proto/MediaHeader;->start_data_range:Ljava/lang/Integer;

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v11, v2

    goto :goto_5

    :cond_5
    const/4 v11, 0x0

    :goto_5
    iget-object v0, v0, Lcom/mobiuspace/youtube/ump/proto/MediaHeader;->content_length:Ljava/lang/Long;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-wide v15, v6

    goto :goto_6

    :cond_6
    move-wide v15, v7

    :goto_6
    move-object v0, v12

    move v2, v3

    move-object v3, v4

    move v4, v5

    move-wide v5, v9

    move-wide v7, v13

    move v9, v11

    move-wide v10, v15

    invoke-direct/range {v0 .. v11}, Lo/ko4;-><init>(IILcom/mobiuspace/youtube/ump/proto/FormatId;IJJIJ)V

    return-object v12
.end method

.method public final x([B)Ljava/util/List;
    .locals 1

    new-instance v0, Lo/df8;

    invoke-direct {v0, p1}, Lo/df8;-><init>([B)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/wandoujia/download/rpc/m;->n:I

    new-instance p1, Lcom/wandoujia/download/rpc/m$a;

    invoke-direct {p1, p0}, Lcom/wandoujia/download/rpc/m$a;-><init>(Lcom/wandoujia/download/rpc/m;)V

    invoke-virtual {v0, p1}, Lo/df8;->a(Lo/df8$a;)V

    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/wandoujia/download/rpc/m;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1}, Lcom/wandoujia/download/rpc/m;->p(Ljava/util/List;)V

    return-object p1
.end method

.method public final y(Ljava/nio/ByteBuffer;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    invoke-static {p1}, Lo/ro0;->a(B)I

    move-result p1

    iget-object v0, p0, Lcom/wandoujia/download/rpc/m;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processEndOfMedia == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/wandoujia/download/rpc/m;->t(Ljava/lang/String;)V

    return-void
.end method

.method public final z(Ljava/nio/ByteBuffer;)V
    .locals 3

    sget-object v0, Lcom/mobiuspace/youtube/ump/proto/SabrError;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/squareup/wire/ProtoAdapter;->decode([B)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mobiuspace/youtube/ump/proto/SabrError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wandoujia/download/rpc/m;->t(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/wandoujia/download/rpc/m;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wandoujia/download/rpc/m;->t(Ljava/lang/String;)V

    new-instance v0, Lcom/mobiuspace/youtube/ump/UmpException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/mobiuspace/youtube/ump/proto/SabrError;->code:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/mobiuspace/youtube/ump/proto/SabrError;->type:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, -0x1

    invoke-direct {v0, v1, p1}, Lcom/mobiuspace/youtube/ump/UmpException;-><init>(ILjava/lang/String;)V

    throw v0
.end method
