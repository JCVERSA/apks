.class public final Lsmg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lxmg;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lxmg;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsmg;->a:Lxmg;

    invoke-virtual {p1}, Lxmg;->i()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lsmg;->c:Ljava/util/Map;

    iput-object p2, p0, Lsmg;->b:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static bridge synthetic b(Lsmg;)Lxmg;
    .locals 0

    iget-object p0, p0, Lsmg;->a:Lxmg;

    return-object p0
.end method

.method public static bridge synthetic c(Lsmg;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lsmg;->c:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic d(Lsmg;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lsmg;->b:Ljava/util/concurrent/Executor;

    return-object p0
.end method


# virtual methods
.method public final a()Lrmg;
    .locals 1

    new-instance v0, Lrmg;

    invoke-direct {v0, p0}, Lrmg;-><init>(Lsmg;)V

    invoke-static {v0}, Lrmg;->a(Lrmg;)Lrmg;

    return-object v0
.end method

.method public final e()V
    .locals 2

    sget-object v0, Lcye;->Jb:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lsmg;->a()Lrmg;

    move-result-object p0

    const-string v0, "action"

    const-string v1, "pecr"

    invoke-virtual {p0, v0, v1}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    invoke-virtual {p0}, Lrmg;->j()V

    return-void
.end method
