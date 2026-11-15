.class public abstract Lq95;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ly7a;

.field public static final b:Ly7a;

.field public static final c:Ly7a;

.field public static final d:Ly7a;

.field public static final e:Ly7a;

.field public static final f:Ll93;

.field public static final g:Ll93;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ly7a;

    const-string v1, "COMPLETING_ALREADY"

    invoke-direct {v0, v1}, Ly7a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lq95;->a:Ly7a;

    new-instance v0, Ly7a;

    const-string v1, "COMPLETING_WAITING_CHILDREN"

    invoke-direct {v0, v1}, Ly7a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lq95;->b:Ly7a;

    new-instance v0, Ly7a;

    const-string v1, "COMPLETING_RETRY"

    invoke-direct {v0, v1}, Ly7a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lq95;->c:Ly7a;

    new-instance v0, Ly7a;

    const-string v1, "TOO_LATE_TO_CANCEL"

    invoke-direct {v0, v1}, Ly7a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lq95;->d:Ly7a;

    new-instance v0, Ly7a;

    const-string v1, "SEALED"

    invoke-direct {v0, v1}, Ly7a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lq95;->e:Ly7a;

    new-instance v0, Ll93;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ll93;-><init>(Z)V

    sput-object v0, Lq95;->f:Ll93;

    new-instance v0, Ll93;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ll93;-><init>(Z)V

    sput-object v0, Lq95;->g:Ll93;

    return-void
.end method

.method public static final synthetic a()Ly7a;
    .locals 1

    sget-object v0, Lq95;->a:Ly7a;

    return-object v0
.end method

.method public static final synthetic b()Ly7a;
    .locals 1

    sget-object v0, Lq95;->c:Ly7a;

    return-object v0
.end method

.method public static final synthetic c()Ll93;
    .locals 1

    sget-object v0, Lq95;->g:Ll93;

    return-object v0
.end method

.method public static final synthetic d()Ll93;
    .locals 1

    sget-object v0, Lq95;->f:Ll93;

    return-object v0
.end method

.method public static final synthetic e()Ly7a;
    .locals 1

    sget-object v0, Lq95;->e:Ly7a;

    return-object v0
.end method

.method public static final synthetic f()Ly7a;
    .locals 1

    sget-object v0, Lq95;->d:Ly7a;

    return-object v0
.end method

.method public static final g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p0, Ldz4;

    if-eqz v0, :cond_0

    new-instance v0, Lez4;

    check-cast p0, Ldz4;

    invoke-direct {v0, p0}, Lez4;-><init>(Ldz4;)V

    move-object p0, v0

    :cond_0
    return-object p0
.end method

.method public static final h(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p0, Lez4;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lez4;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, v0, Lez4;->a:Ldz4;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object p0, v0

    :cond_2
    :goto_1
    return-object p0
.end method
