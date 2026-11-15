.class public final Lagj;
.super Lcom/google/android/gms/common/api/b;
.source "SourceFile"

# interfaces
.implements Lye;


# static fields
.field public static final m:Lcom/google/android/gms/common/api/a$g;

.field public static final n:Lcom/google/android/gms/common/api/a$a;

.field public static final o:Lcom/google/android/gms/common/api/a;


# instance fields
.field public final k:Landroid/content/Context;

.field public final l:Laj4;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/a$g;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/a$g;-><init>()V

    sput-object v0, Lagj;->m:Lcom/google/android/gms/common/api/a$g;

    new-instance v1, Lvbj;

    invoke-direct {v1}, Lvbj;-><init>()V

    sput-object v1, Lagj;->n:Lcom/google/android/gms/common/api/a$a;

    new-instance v2, Lcom/google/android/gms/common/api/a;

    const-string v3, "AppSet.API"

    invoke-direct {v2, v3, v1, v0}, Lcom/google/android/gms/common/api/a;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/a$a;Lcom/google/android/gms/common/api/a$g;)V

    sput-object v2, Lagj;->o:Lcom/google/android/gms/common/api/a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Laj4;)V
    .locals 3

    sget-object v0, Lagj;->o:Lcom/google/android/gms/common/api/a;

    sget-object v1, Lcom/google/android/gms/common/api/a$d;->w6:Lcom/google/android/gms/common/api/a$d$a;

    sget-object v2, Lcom/google/android/gms/common/api/b$a;->c:Lcom/google/android/gms/common/api/b$a;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/common/api/b;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/b$a;)V

    iput-object p1, p0, Lagj;->k:Landroid/content/Context;

    iput-object p2, p0, Lagj;->l:Laj4;

    return-void
.end method


# virtual methods
.method public final a()Lxda;
    .locals 3

    iget-object v0, p0, Lagj;->l:Laj4;

    iget-object v1, p0, Lagj;->k:Landroid/content/Context;

    const v2, 0xcaf1200

    invoke-virtual {v0, v1, v2}, Laj4;->i(Landroid/content/Context;I)I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lyda;->a()Lyda$a;

    move-result-object v0

    sget-object v1, Lavg;->a:Lcom/google/android/gms/common/Feature;

    filled-new-array {v1}, [Lcom/google/android/gms/common/Feature;

    move-result-object v1

    invoke-virtual {v0, v1}, Lyda$a;->d([Lcom/google/android/gms/common/Feature;)Lyda$a;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/appset/b;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/appset/b;-><init>(Lagj;)V

    invoke-virtual {v0, v1}, Lyda$a;->b(Las8;)Lyda$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lyda$a;->c(Z)Lyda$a;

    move-result-object v0

    const/16 v1, 0x6bd1

    invoke-virtual {v0, v1}, Lyda$a;->e(I)Lyda$a;

    move-result-object v0

    invoke-virtual {v0}, Lyda$a;->a()Lyda;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/b;->g(Lyda;)Lxda;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/google/android/gms/common/api/ApiException;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-static {p0}, Lcom/google/android/gms/tasks/a;->d(Ljava/lang/Exception;)Lxda;

    move-result-object p0

    return-object p0
.end method
