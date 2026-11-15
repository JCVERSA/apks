.class public Lcom/mgtv/irouting/okhttp/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgtv/irouting/okhttp/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:J

.field public b:J

.field public c:J

.field public d:J

.field public e:Ljava/lang/String;

.field public f:I

.field final synthetic g:Lcom/mgtv/irouting/okhttp/c;


# direct methods
.method public constructor <init>(Lcom/mgtv/irouting/okhttp/c;)V
    .locals 2

    iput-object p1, p0, Lcom/mgtv/irouting/okhttp/c$a;->g:Lcom/mgtv/irouting/okhttp/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mgtv/irouting/okhttp/c$a;->a:J

    iput-wide v0, p0, Lcom/mgtv/irouting/okhttp/c$a;->b:J

    iput-wide v0, p0, Lcom/mgtv/irouting/okhttp/c$a;->c:J

    iput-wide v0, p0, Lcom/mgtv/irouting/okhttp/c$a;->d:J

    const-string p1, "-1"

    iput-object p1, p0, Lcom/mgtv/irouting/okhttp/c$a;->e:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lcom/mgtv/irouting/okhttp/c$a;->f:I

    return-void
.end method


# virtual methods
.method public a()J
    .locals 4

    iget-wide v0, p0, Lcom/mgtv/irouting/okhttp/c$a;->b:J

    iget-wide v2, p0, Lcom/mgtv/irouting/okhttp/c$a;->a:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gtz p0, :cond_0

    move-wide v0, v2

    :cond_0
    return-wide v0
.end method

.method public b()J
    .locals 4

    iget-wide v0, p0, Lcom/mgtv/irouting/okhttp/c$a;->d:J

    iget-wide v2, p0, Lcom/mgtv/irouting/okhttp/c$a;->c:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gtz p0, :cond_0

    move-wide v0, v2

    :cond_0
    return-wide v0
.end method
