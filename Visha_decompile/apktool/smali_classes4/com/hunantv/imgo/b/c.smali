.class public Lcom/hunantv/imgo/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final x:Lcom/hunantv/imgo/b/c;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:I

.field public p:I

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hunantv/imgo/b/c;

    invoke-direct {v0}, Lcom/hunantv/imgo/b/c;-><init>()V

    sput-object v0, Lcom/hunantv/imgo/b/c;->x:Lcom/hunantv/imgo/b/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/hunantv/imgo/b/c;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/imgo/b/c;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/imgo/b/c;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/imgo/b/c;->e:Ljava/lang/String;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hunantv/imgo/b/c;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/imgo/b/c;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/imgo/b/c;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/imgo/b/c;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/imgo/b/c;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/imgo/b/c;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/imgo/b/c;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/imgo/b/c;->m:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/imgo/b/c;->q:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/imgo/b/c;->r:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/imgo/b/c;->s:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/imgo/b/c;->t:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/imgo/b/c;->u:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/imgo/b/c;->v:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/imgo/b/c;->w:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/hunantv/imgo/b/c;
    .locals 1

    .line 1
    sget-object v0, Lcom/hunantv/imgo/b/c;->x:Lcom/hunantv/imgo/b/c;

    return-object v0
.end method


# virtual methods
.method public a(ZZ)Ljava/lang/String;
    .locals 2

    .line 2
    const-string p0, "detail"

    const-string v0, "immersion"

    const-string v1, "card"

    if-eqz p2, :cond_9

    .line 3
    invoke-static {}, Lcom/hunantv/imgo/b/c;->a()Lcom/hunantv/imgo/b/c;

    move-result-object p2

    iget-object p2, p2, Lcom/hunantv/imgo/b/c;->w:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    .line 4
    const-string p0, "v_card"

    goto :goto_0

    :cond_0
    const-string p0, "8129"

    :goto_0
    return-object p0

    .line 5
    :cond_1
    invoke-static {}, Lcom/hunantv/imgo/b/c;->a()Lcom/hunantv/imgo/b/c;

    move-result-object p2

    iget-object p2, p2, Lcom/hunantv/imgo/b/c;->w:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    if-eqz p1, :cond_2

    .line 6
    const-string p0, "v_immerse"

    goto :goto_1

    :cond_2
    const-string p0, "1101"

    :goto_1
    return-object p0

    .line 7
    :cond_3
    invoke-static {}, Lcom/hunantv/imgo/b/c;->a()Lcom/hunantv/imgo/b/c;

    move-result-object p2

    iget-object p2, p2, Lcom/hunantv/imgo/b/c;->w:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    if-eqz p1, :cond_4

    .line 8
    const-string p0, "v_playDetail"

    goto :goto_2

    :cond_4
    const-string p0, "8176"

    :goto_2
    return-object p0

    .line 9
    :cond_5
    invoke-static {}, Lcom/hunantv/imgo/b/c;->a()Lcom/hunantv/imgo/b/c;

    move-result-object p0

    iget-object p0, p0, Lcom/hunantv/imgo/b/c;->w:Ljava/lang/String;

    const-string p2, "live"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    if-eqz p1, :cond_6

    .line 10
    const-string p0, "live_play"

    goto :goto_3

    :cond_6
    const-string p0, "8179"

    :goto_3
    return-object p0

    :cond_7
    if-eqz p1, :cond_8

    .line 11
    const-string p0, "v_play"

    goto :goto_4

    :cond_8
    const-string p0, "40"

    :goto_4
    return-object p0

    .line 12
    :cond_9
    invoke-static {}, Lcom/hunantv/imgo/b/c;->a()Lcom/hunantv/imgo/b/c;

    move-result-object p1

    iget-object p1, p1, Lcom/hunantv/imgo/b/c;->w:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 13
    const-string p0, "28"

    return-object p0

    .line 14
    :cond_a
    invoke-static {}, Lcom/hunantv/imgo/b/c;->a()Lcom/hunantv/imgo/b/c;

    move-result-object p1

    iget-object p1, p1, Lcom/hunantv/imgo/b/c;->w:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 15
    const-string p0, "22"

    return-object p0

    .line 16
    :cond_b
    invoke-static {}, Lcom/hunantv/imgo/b/c;->a()Lcom/hunantv/imgo/b/c;

    move-result-object p1

    iget-object p1, p1, Lcom/hunantv/imgo/b/c;->w:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    .line 17
    const-string p0, "29"

    return-object p0

    .line 18
    :cond_c
    const-string p0, "1"

    return-object p0
.end method
