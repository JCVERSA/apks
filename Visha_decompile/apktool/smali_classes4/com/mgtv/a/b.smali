.class public Lcom/mgtv/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/a/a;


# static fields
.field private static c:Lcom/mgtv/a/b;


# instance fields
.field private a:I

.field private b:I

.field private d:Lcom/mgtv/a/a;

.field private e:Lcom/mgtv/easydatasource/jni/c;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/mgtv/a/b;->a:I

    iput v0, p0, Lcom/mgtv/a/b;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mgtv/a/b;->e:Lcom/mgtv/easydatasource/jni/c;

    return-void
.end method

.method public static d()Lcom/mgtv/a/b;
    .locals 1

    sget-object v0, Lcom/mgtv/a/b;->c:Lcom/mgtv/a/b;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mgtv/a/b;->e()V

    :cond_0
    sget-object v0, Lcom/mgtv/a/b;->c:Lcom/mgtv/a/b;

    return-object v0
.end method

.method private static declared-synchronized e()V
    .locals 2

    const-class v0, Lcom/mgtv/a/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/mgtv/a/b;->c:Lcom/mgtv/a/b;

    if-nez v1, :cond_0

    new-instance v1, Lcom/mgtv/a/b;

    invoke-direct {v1}, Lcom/mgtv/a/b;-><init>()V

    sput-object v1, Lcom/mgtv/a/b;->c:Lcom/mgtv/a/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public a()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/a/b;->d:Lcom/mgtv/a/a;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-interface {p0}, Lcom/mgtv/a/a;->a()I

    move-result p0

    return p0
.end method

.method public a(Lcom/mgtv/a/c;Ljava/lang/String;[BJJ[J[I)J
    .locals 10

    .line 2
    move-object v0, p0

    iget-object v0, v0, Lcom/mgtv/a/b;->d:Lcom/mgtv/a/a;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Lcom/mgtv/a/a;->a(Lcom/mgtv/a/c;Ljava/lang/String;[BJJ[J[I)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Lcom/mgtv/a/c;)Lcom/mgtv/a/d;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/mgtv/a/b;->d:Lcom/mgtv/a/a;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0, p1}, Lcom/mgtv/a/a;->a(Lcom/mgtv/a/c;)Lcom/mgtv/a/d;

    move-result-object p0

    return-object p0
.end method

.method public a(I)V
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/mgtv/a/b;->d:Lcom/mgtv/a/a;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Lcom/mgtv/a/a;->a(I)V

    return-void
.end method

.method public a(Lcom/mgtv/a/a$a;)V
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/mgtv/a/b;->d:Lcom/mgtv/a/a;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Lcom/mgtv/a/a;->a(Lcom/mgtv/a/a$a;)V

    return-void
.end method

.method public a(Lcom/mgtv/a/c;IZ)V
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/mgtv/a/b;->d:Lcom/mgtv/a/a;

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1, p2, p3}, Lcom/mgtv/a/a;->a(Lcom/mgtv/a/c;IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/mgtv/a/b;->c()I

    move-result p0

    if-nez p0, :cond_1

    invoke-static {p1, p2, p3}, Lcom/yunfan/net/Yfnet;->a(Ljava/lang/String;Ljava/util/List;Z)I

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Lcom/mgtv/a/c;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/a/b;->d:Lcom/mgtv/a/a;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-interface {p0, p1}, Lcom/mgtv/a/a;->b(Lcom/mgtv/a/c;)I

    move-result p0

    return p0
.end method

.method public b()Ljava/lang/String;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/mgtv/a/b;->d:Lcom/mgtv/a/a;

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-interface {p0}, Lcom/mgtv/a/a;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public b(Lcom/mgtv/a/a$a;)V
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/mgtv/a/b;->d:Lcom/mgtv/a/a;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Lcom/mgtv/a/a;->b(Lcom/mgtv/a/a$a;)V

    return-void
.end method

.method public c()I
    .locals 0

    iget p0, p0, Lcom/mgtv/a/b;->a:I

    return p0
.end method
