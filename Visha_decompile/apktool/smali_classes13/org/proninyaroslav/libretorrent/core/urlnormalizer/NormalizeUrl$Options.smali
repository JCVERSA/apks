.class public Lorg/proninyaroslav/libretorrent/core/urlnormalizer/NormalizeUrl$Options;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/proninyaroslav/libretorrent/core/urlnormalizer/NormalizeUrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Options"
.end annotation


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:[Ljava/lang/String;

.field public e:Z

.field public f:[Ljava/lang/String;

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/proninyaroslav/libretorrent/core/urlnormalizer/NormalizeUrl$Options;->a:Z

    const-string v1, "http"

    iput-object v1, p0, Lorg/proninyaroslav/libretorrent/core/urlnormalizer/NormalizeUrl$Options;->b:Ljava/lang/String;

    iput-boolean v0, p0, Lorg/proninyaroslav/libretorrent/core/urlnormalizer/NormalizeUrl$Options;->c:Z

    const-string v1, "utm_\\w+"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/proninyaroslav/libretorrent/core/urlnormalizer/NormalizeUrl$Options;->d:[Ljava/lang/String;

    iput-boolean v0, p0, Lorg/proninyaroslav/libretorrent/core/urlnormalizer/NormalizeUrl$Options;->e:Z

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lorg/proninyaroslav/libretorrent/core/urlnormalizer/NormalizeUrl$Options;->f:[Ljava/lang/String;

    iput-boolean v0, p0, Lorg/proninyaroslav/libretorrent/core/urlnormalizer/NormalizeUrl$Options;->g:Z

    iput-boolean v0, p0, Lorg/proninyaroslav/libretorrent/core/urlnormalizer/NormalizeUrl$Options;->h:Z

    iput-boolean v1, p0, Lorg/proninyaroslav/libretorrent/core/urlnormalizer/NormalizeUrl$Options;->i:Z

    iput-boolean v1, p0, Lorg/proninyaroslav/libretorrent/core/urlnormalizer/NormalizeUrl$Options;->j:Z

    iput-boolean v1, p0, Lorg/proninyaroslav/libretorrent/core/urlnormalizer/NormalizeUrl$Options;->k:Z

    iput-boolean v1, p0, Lorg/proninyaroslav/libretorrent/core/urlnormalizer/NormalizeUrl$Options;->l:Z

    iput-boolean v0, p0, Lorg/proninyaroslav/libretorrent/core/urlnormalizer/NormalizeUrl$Options;->m:Z

    return-void
.end method
