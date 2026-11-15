.class public final Ln6e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le7e;

.field public c:Lzdf;

.field public d:Lmgf;

.field public final e:Ljava/util/List;

.field public final f:Lvbf;

.field public g:Ltbg;

.field public h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Le7e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Ln6e;->a:Landroid/content/Context;

    iput-object p2, p0, Ln6e;->b:Le7e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfww;->zzn()Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object p1

    iput-object p1, p0, Ln6e;->e:Ljava/util/List;

    sget-object p1, Lvbf;->a:Lvbf;

    iput-object p1, p0, Ln6e;->f:Lvbf;

    sget-object p1, Ltbg;->a:Ltbg;

    iput-object p1, p0, Ln6e;->g:Ltbg;

    return-void
.end method

.method public static bridge synthetic a(Ln6e;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Ln6e;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic b(Ln6e;)Lvbf;
    .locals 0

    iget-object p0, p0, Ln6e;->f:Lvbf;

    return-object p0
.end method

.method public static bridge synthetic c(Ln6e;)Lmgf;
    .locals 0

    iget-object p0, p0, Ln6e;->d:Lmgf;

    return-object p0
.end method

.method public static bridge synthetic d(Ln6e;)Ltbg;
    .locals 0

    iget-object p0, p0, Ln6e;->g:Ltbg;

    return-object p0
.end method

.method public static bridge synthetic g(Ln6e;)Le7e;
    .locals 0

    iget-object p0, p0, Ln6e;->b:Le7e;

    return-object p0
.end method

.method public static bridge synthetic h(Ln6e;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Ln6e;->e:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final e(Ltbg;)Ln6e;
    .locals 0

    iput-object p1, p0, Ln6e;->g:Ltbg;

    return-object p0
.end method

.method public final f()Lt6e;
    .locals 3

    iget-boolean v0, p0, Ln6e;->h:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Ln7g;->f(Z)V

    iget-object v0, p0, Ln6e;->d:Lmgf;

    if-nez v0, :cond_1

    iget-object v0, p0, Ln6e;->c:Lzdf;

    if-nez v0, :cond_0

    new-instance v0, Lq6e;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lq6e;-><init>(Z)V

    iput-object v0, p0, Ln6e;->c:Lzdf;

    :cond_0
    new-instance v0, Lr6e;

    iget-object v2, p0, Ln6e;->c:Lzdf;

    invoke-direct {v0, v2}, Lr6e;-><init>(Lzdf;)V

    iput-object v0, p0, Ln6e;->d:Lmgf;

    :cond_1
    new-instance v0, Lt6e;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lt6e;-><init>(Ln6e;Ls6e;)V

    iput-boolean v1, p0, Ln6e;->h:Z

    return-object v0
.end method
