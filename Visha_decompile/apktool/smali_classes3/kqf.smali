.class public final Lkqf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ls7f;

.field public final c:Ljava/util/concurrent/Executor;

.field public d:Loqf;

.field public final e:Ln3f;

.field public final f:Ln3f;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ls7f;Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Liqf;

    invoke-direct {v0, p0}, Liqf;-><init>(Lkqf;)V

    iput-object v0, p0, Lkqf;->e:Ln3f;

    new-instance v0, Ljqf;

    invoke-direct {v0, p0}, Ljqf;-><init>(Lkqf;)V

    iput-object v0, p0, Lkqf;->f:Ln3f;

    iput-object p1, p0, Lkqf;->a:Ljava/lang/String;

    iput-object p2, p0, Lkqf;->b:Ls7f;

    iput-object p3, p0, Lkqf;->c:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static bridge synthetic a(Lkqf;)Loqf;
    .locals 0

    iget-object p0, p0, Lkqf;->d:Loqf;

    return-object p0
.end method

.method public static bridge synthetic b(Lkqf;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lkqf;->c:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public static bridge synthetic g(Lkqf;Ljava/util/Map;)Z
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "hashCode"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lkqf;->a:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final c(Loqf;)V
    .locals 3

    iget-object v0, p0, Lkqf;->b:Ls7f;

    const-string v1, "/updateActiveView"

    iget-object v2, p0, Lkqf;->e:Ln3f;

    invoke-virtual {v0, v1, v2}, Ls7f;->b(Ljava/lang/String;Ln3f;)V

    const-string v1, "/untrackActiveViewUnit"

    iget-object v2, p0, Lkqf;->f:Ln3f;

    invoke-virtual {v0, v1, v2}, Ls7f;->b(Ljava/lang/String;Ln3f;)V

    iput-object p1, p0, Lkqf;->d:Loqf;

    return-void
.end method

.method public final d(Lejf;)V
    .locals 2

    const-string v0, "/updateActiveView"

    iget-object v1, p0, Lkqf;->e:Ln3f;

    invoke-interface {p1, v0, v1}, Lejf;->zzag(Ljava/lang/String;Ln3f;)V

    const-string v0, "/untrackActiveViewUnit"

    iget-object p0, p0, Lkqf;->f:Ln3f;

    invoke-interface {p1, v0, p0}, Lejf;->zzag(Ljava/lang/String;Ln3f;)V

    return-void
.end method

.method public final e()V
    .locals 3

    iget-object v0, p0, Lkqf;->b:Ls7f;

    const-string v1, "/updateActiveView"

    iget-object v2, p0, Lkqf;->e:Ln3f;

    invoke-virtual {v0, v1, v2}, Ls7f;->c(Ljava/lang/String;Ln3f;)V

    const-string v1, "/untrackActiveViewUnit"

    iget-object p0, p0, Lkqf;->f:Ln3f;

    invoke-virtual {v0, v1, p0}, Ls7f;->c(Ljava/lang/String;Ln3f;)V

    return-void
.end method

.method public final f(Lejf;)V
    .locals 2

    const-string v0, "/updateActiveView"

    iget-object v1, p0, Lkqf;->e:Ln3f;

    invoke-interface {p1, v0, v1}, Lejf;->zzaz(Ljava/lang/String;Ln3f;)V

    const-string v0, "/untrackActiveViewUnit"

    iget-object p0, p0, Lkqf;->f:Ln3f;

    invoke-interface {p1, v0, p0}, Lejf;->zzaz(Ljava/lang/String;Ln3f;)V

    return-void
.end method
