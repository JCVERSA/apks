.class public final Lg9i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public final b:Ld9i;

.field public final c:Lb9i;

.field public final d:Lp9i;

.field public e:Lh9i;

.field public f:Li9i;


# direct methods
.method public synthetic constructor <init>(Lp9i;Lk9i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p2, Ld9i;->b:Ld9i;

    iput-object p2, p0, Lg9i;->b:Ld9i;

    const/4 p2, 0x0

    iput-object p2, p0, Lg9i;->e:Lh9i;

    iput-object p2, p0, Lg9i;->f:Li9i;

    iput-object p2, p0, Lg9i;->c:Lb9i;

    iput-object p1, p0, Lg9i;->d:Lp9i;

    return-void
.end method

.method public static bridge synthetic a(Lg9i;)Lb9i;
    .locals 0

    iget-object p0, p0, Lg9i;->c:Lb9i;

    const/4 p0, 0x0

    return-object p0
.end method

.method public static bridge synthetic b(Lg9i;)Ld9i;
    .locals 0

    iget-object p0, p0, Lg9i;->b:Ld9i;

    return-object p0
.end method

.method public static bridge synthetic e(Lg9i;)Lh9i;
    .locals 0

    iget-object p0, p0, Lg9i;->e:Lh9i;

    return-object p0
.end method

.method public static bridge synthetic f(Lg9i;)Li9i;
    .locals 0

    iget-object p0, p0, Lg9i;->f:Li9i;

    return-object p0
.end method

.method public static bridge synthetic g(Lg9i;)Lp9i;
    .locals 0

    iget-object p0, p0, Lg9i;->d:Lp9i;

    return-object p0
.end method

.method public static bridge synthetic h(Lg9i;Li9i;)V
    .locals 0

    iput-object p1, p0, Lg9i;->f:Li9i;

    return-void
.end method

.method public static bridge synthetic i(Lg9i;Z)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lg9i;->a:Z

    return-void
.end method

.method public static bridge synthetic j(Lg9i;)Z
    .locals 0

    iget-boolean p0, p0, Lg9i;->a:Z

    return p0
.end method


# virtual methods
.method public final c()Lg9i;
    .locals 1

    iget-object v0, p0, Lg9i;->f:Li9i;

    if-eqz v0, :cond_0

    invoke-static {v0}, Li9i;->c(Li9i;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lg9i;->a:Z

    return-object p0
.end method

.method public final d()Lg9i;
    .locals 1

    invoke-static {}, Lh9i;->b()Lh9i;

    move-result-object v0

    iput-object v0, p0, Lg9i;->e:Lh9i;

    return-object p0
.end method
