.class public abstract Lwb9;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I

.field public static final b:Ly7a;

.field public static final c:Ly7a;

.field public static final d:Ly7a;

.field public static final e:Ly7a;

.field public static final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v4, 0xc

    const/4 v5, 0x0

    const-string v0, "kotlinx.coroutines.semaphore.maxSpinCycles"

    const/16 v1, 0x64

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lnaa;->g(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result v0

    sput v0, Lwb9;->a:I

    new-instance v0, Ly7a;

    const-string v1, "PERMIT"

    invoke-direct {v0, v1}, Ly7a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lwb9;->b:Ly7a;

    new-instance v0, Ly7a;

    const-string v1, "TAKEN"

    invoke-direct {v0, v1}, Ly7a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lwb9;->c:Ly7a;

    new-instance v0, Ly7a;

    const-string v1, "BROKEN"

    invoke-direct {v0, v1}, Ly7a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lwb9;->d:Ly7a;

    new-instance v0, Ly7a;

    const-string v1, "CANCELLED"

    invoke-direct {v0, v1}, Ly7a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lwb9;->e:Ly7a;

    const/16 v6, 0xc

    const/4 v7, 0x0

    const-string v2, "kotlinx.coroutines.semaphore.segmentSize"

    const/16 v3, 0x10

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lnaa;->g(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result v0

    sput v0, Lwb9;->f:I

    return-void
.end method

.method public static final synthetic a(JLxb9;)Lxb9;
    .locals 0

    invoke-static {p0, p1, p2}, Lwb9;->h(JLxb9;)Lxb9;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b()Ly7a;
    .locals 1

    sget-object v0, Lwb9;->d:Ly7a;

    return-object v0
.end method

.method public static final synthetic c()Ly7a;
    .locals 1

    sget-object v0, Lwb9;->e:Ly7a;

    return-object v0
.end method

.method public static final synthetic d()I
    .locals 1

    sget v0, Lwb9;->a:I

    return v0
.end method

.method public static final synthetic e()Ly7a;
    .locals 1

    sget-object v0, Lwb9;->b:Ly7a;

    return-object v0
.end method

.method public static final synthetic f()I
    .locals 1

    sget v0, Lwb9;->f:I

    return v0
.end method

.method public static final synthetic g()Ly7a;
    .locals 1

    sget-object v0, Lwb9;->c:Ly7a;

    return-object v0
.end method

.method public static final h(JLxb9;)Lxb9;
    .locals 2

    new-instance v0, Lxb9;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lxb9;-><init>(JLxb9;I)V

    return-object v0
.end method
