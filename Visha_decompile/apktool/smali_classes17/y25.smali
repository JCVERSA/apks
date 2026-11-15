.class public final Ly25;
.super Ll25;
.source "SourceFile"


# static fields
.field public static final a:Ly25;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ly25;

    invoke-direct {v0}, Ly25;-><init>()V

    sput-object v0, Ly25;->a:Ly25;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "value"

    invoke-direct {p0, v0}, Ll25;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Lqnb$f;

    invoke-virtual {p0, p1, p2}, Ly25;->d(Lqnb$f;I)V

    return-void
.end method

.method public c(Lqnb$f;)Ljava/lang/Integer;
    .locals 0

    const-string p0, "target"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lqnb;->c()Ljava/lang/Object;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type kotlin.Long"

    invoke-static {p0, p1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public d(Lqnb$f;I)V
    .locals 2

    const-string p0, "target"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-long v0, p2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p1, p0}, Lqnb;->p(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lqnb$f;

    invoke-virtual {p0, p1}, Ly25;->c(Lqnb$f;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
