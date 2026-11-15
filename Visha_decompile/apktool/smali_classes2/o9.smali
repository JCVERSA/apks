.class public Lo9;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lo9;


# instance fields
.field public a:Lsp4;

.field public b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo9;

    invoke-direct {v0}, Lo9;-><init>()V

    sput-object v0, Lo9;->c:Lo9;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const-string v0, "AdxPreferencesHelper"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lo9;->b:Z

    :try_start_0
    invoke-virtual {p0}, Lo9;->a()Z

    move-result v1

    iput-boolean v1, p0, Lo9;->b:Z

    invoke-static {}, Lja1;->Log()Lja1;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mmkv is available: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lo9;->b:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lo9;->b:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lsp4;->c()Lsp4;

    move-result-object v1

    iput-object v1, p0, Lo9;->a:Lsp4;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    invoke-static {}, Lja1;->Log()Lja1;

    move-result-object v1

    const-string v2, "init mmkv error, com.tencent.mmkv.MMKV not found!"

    invoke-virtual {v1, v0, v2}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lo9;->a:Lsp4;

    :goto_0
    return-void
.end method

.method public static e()Lo9;
    .locals 1

    sget-object v0, Lo9;->c:Lo9;

    return-object v0
.end method

.method public static t()Ljava/lang/String;
    .locals 1

    const-string v0, "hisavana_sdk"

    invoke-static {v0}, Lvl4;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 6

    const/4 p0, 0x0

    :try_start_0
    sget-object v0, Lcom/tencent/mmkv/MMKV;->a:Ljava/util/EnumMap;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    invoke-static {}, Lsp4;->c()Lsp4;

    move-result-object v0

    invoke-virtual {v0}, Lsp4;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lja1;->Log()Lja1;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mmkvVersion: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AdxPreferencesHelper"

    invoke-virtual {v1, v4, v3}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "v0."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return p0

    :cond_1
    :try_start_1
    const-string/jumbo v1, "v1."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v3, 0x3

    if-ne v1, v3, :cond_4

    aget-object v1, v0, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v5, 0x2

    aget-object v0, v0, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gt v1, v3, :cond_2

    if-ne v1, v3, :cond_3

    const/16 v1, 0xe

    if-lt v0, v1, :cond_3

    :cond_2
    move p0, v2

    :cond_3
    return p0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_4
    return p0

    :cond_5
    return v2

    :goto_0
    invoke-static {}, Lja1;->Log()Lja1;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkMMKVAvailable error, e= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    :catch_0
    return p0
.end method

.method public b()V
    .locals 0

    iget-object p0, p0, Lo9;->a:Lsp4;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lsp4;->a()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lo9;->t()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lim4;->d(Ljava/lang/String;)Lim4;

    move-result-object p0

    invoke-virtual {p0}, Lim4;->b()V

    :goto_0
    return-void
.end method

.method public c(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lo9;->d(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public d(Ljava/lang/String;Z)Z
    .locals 0

    iget-object p0, p0, Lo9;->a:Lsp4;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lsp4;->b(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_0
    invoke-static {}, Lo9;->t()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lim4;->d(Ljava/lang/String;)Lim4;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lim4;->c(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public f(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lo9;->g(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public g(Ljava/lang/String;I)I
    .locals 0

    iget-object p0, p0, Lo9;->a:Lsp4;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lsp4;->d(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_0
    invoke-static {}, Lo9;->t()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lim4;->d(Ljava/lang/String;)Lim4;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lim4;->e(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public h(Ljava/lang/String;)J
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lo9;->i(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public i(Ljava/lang/String;J)J
    .locals 0

    iget-object p0, p0, Lo9;->a:Lsp4;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lsp4;->e(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0

    :cond_0
    invoke-static {}, Lo9;->t()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lim4;->d(Ljava/lang/String;)Lim4;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lim4;->f(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public j(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lo9;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lo9;->a:Lsp4;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lsp4;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lo9;->t()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lim4;->d(Ljava/lang/String;)Lim4;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lim4;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public l(Ljava/lang/String;)Ljava/util/Set;
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0, p1, v0}, Lo9;->m(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public m(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lo9;->a:Lsp4;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lsp4;->g(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lo9;->t()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lim4;->d(Ljava/lang/String;)Lim4;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lim4;->h(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public n()Z
    .locals 0

    iget-boolean p0, p0, Lo9;->b:Z

    return p0
.end method

.method public o(Ljava/lang/String;Z)V
    .locals 0

    iget-object p0, p0, Lo9;->a:Lsp4;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lsp4;->i(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lo9;->t()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lim4;->d(Ljava/lang/String;)Lim4;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lim4;->i(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public p(Ljava/lang/String;I)V
    .locals 0

    iget-object p0, p0, Lo9;->a:Lsp4;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lsp4;->j(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lo9;->t()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lim4;->d(Ljava/lang/String;)Lim4;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lim4;->j(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public q(Ljava/lang/String;J)V
    .locals 0

    iget-object p0, p0, Lo9;->a:Lsp4;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lsp4;->k(Ljava/lang/String;J)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lo9;->t()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lim4;->d(Ljava/lang/String;)Lim4;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lim4;->k(Ljava/lang/String;J)V

    :goto_0
    return-void
.end method

.method public r(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lo9;->a:Lsp4;

    if-nez p0, :cond_0

    invoke-static {}, Lo9;->t()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lim4;->d(Ljava/lang/String;)Lim4;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lim4;->l(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lsp4;->l(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public s(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lo9;->a:Lsp4;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lsp4;->m(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lo9;->t()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lim4;->d(Ljava/lang/String;)Lim4;

    move-result-object p0

    invoke-virtual {p0, p1}, Lim4;->m(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
