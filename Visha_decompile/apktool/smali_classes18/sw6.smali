.class public abstract Lsw6;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ly7a;

.field public static final b:Ly7a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ly7a;

    const-string v1, "NO_OWNER"

    invoke-direct {v0, v1}, Ly7a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsw6;->a:Ly7a;

    new-instance v0, Ly7a;

    const-string v1, "ALREADY_LOCKED_BY_OWNER"

    invoke-direct {v0, v1}, Ly7a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsw6;->b:Ly7a;

    return-void
.end method

.method public static final a(Z)Lnw6;
    .locals 1

    new-instance v0, Lkotlinx/coroutines/sync/a;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/sync/a;-><init>(Z)V

    return-object v0
.end method

.method public static synthetic b(ZILjava/lang/Object;)Lnw6;
    .locals 0

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-static {p0}, Lsw6;->a(Z)Lnw6;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c()Ly7a;
    .locals 1

    sget-object v0, Lsw6;->a:Ly7a;

    return-object v0
.end method
