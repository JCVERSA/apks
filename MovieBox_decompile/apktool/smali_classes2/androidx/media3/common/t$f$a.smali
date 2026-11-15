.class public final Landroidx/media3/common/t$f$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/t$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/util/UUID;

.field private b:Landroid/net/Uri;

.field private c:Lcom/google/common/collect/ImmutableMap;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Lcom/google/common/collect/ImmutableList;

.field private h:[B


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/t$f$a;->c:Lcom/google/common/collect/ImmutableMap;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/media3/common/t$f$a;->e:Z

    .line 6
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/t$f$a;->g:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/common/t$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/media3/common/t$f$a;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroidx/media3/common/t$f;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iget-object v0, p1, Landroidx/media3/common/t$f;->a:Ljava/util/UUID;

    iput-object v0, p0, Landroidx/media3/common/t$f$a;->a:Ljava/util/UUID;

    .line 9
    iget-object v0, p1, Landroidx/media3/common/t$f;->c:Landroid/net/Uri;

    iput-object v0, p0, Landroidx/media3/common/t$f$a;->b:Landroid/net/Uri;

    .line 10
    iget-object v0, p1, Landroidx/media3/common/t$f;->e:Lcom/google/common/collect/ImmutableMap;

    iput-object v0, p0, Landroidx/media3/common/t$f$a;->c:Lcom/google/common/collect/ImmutableMap;

    .line 11
    iget-boolean v0, p1, Landroidx/media3/common/t$f;->f:Z

    iput-boolean v0, p0, Landroidx/media3/common/t$f$a;->d:Z

    .line 12
    iget-boolean v0, p1, Landroidx/media3/common/t$f;->g:Z

    iput-boolean v0, p0, Landroidx/media3/common/t$f$a;->e:Z

    .line 13
    iget-boolean v0, p1, Landroidx/media3/common/t$f;->h:Z

    iput-boolean v0, p0, Landroidx/media3/common/t$f$a;->f:Z

    .line 14
    iget-object v0, p1, Landroidx/media3/common/t$f;->j:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Landroidx/media3/common/t$f$a;->g:Lcom/google/common/collect/ImmutableList;

    .line 15
    invoke-static {p1}, Landroidx/media3/common/t$f;->a(Landroidx/media3/common/t$f;)[B

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/common/t$f$a;->h:[B

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/common/t$f;Landroidx/media3/common/t$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroidx/media3/common/t$f$a;-><init>(Landroidx/media3/common/t$f;)V

    return-void
.end method

.method static synthetic a(Landroidx/media3/common/t$f$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/media3/common/t$f$a;->d:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic b(Landroidx/media3/common/t$f$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/media3/common/t$f$a;->e:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic c(Landroidx/media3/common/t$f$a;)Lcom/google/common/collect/ImmutableList;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/common/t$f$a;->g:Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Landroidx/media3/common/t$f$a;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/common/t$f$a;->h:[B

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Landroidx/media3/common/t$f$a;)Landroid/net/Uri;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/common/t$f$a;->b:Landroid/net/Uri;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f(Landroidx/media3/common/t$f$a;)Ljava/util/UUID;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/common/t$f$a;->a:Ljava/util/UUID;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic g(Landroidx/media3/common/t$f$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/media3/common/t$f$a;->f:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic h(Landroidx/media3/common/t$f$a;)Lcom/google/common/collect/ImmutableMap;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/common/t$f$a;->c:Lcom/google/common/collect/ImmutableMap;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public i()Landroidx/media3/common/t$f;
    .locals 2

    .line 1
    new-instance v0, Landroidx/media3/common/t$f;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Landroidx/media3/common/t$f;-><init>(Landroidx/media3/common/t$f$a;Landroidx/media3/common/t$a;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method
