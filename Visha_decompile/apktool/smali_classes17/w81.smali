.class public final Lw81;
.super Ll25;
.source "SourceFile"


# static fields
.field public static final a:Lw81;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lw81;

    invoke-direct {v0}, Lw81;-><init>()V

    sput-object v0, Lw81;->a:Lw81;

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

    check-cast p1, Lqnb$c;

    invoke-virtual {p0, p1, p2}, Lw81;->d(Lqnb$c;I)V

    return-void
.end method

.method public c(Lqnb$c;)Ljava/lang/Integer;
    .locals 0

    const-string p0, "target"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lqnb;->c()Ljava/lang/Object;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type com.yandex.div.evaluable.types.Color"

    invoke-static {p0, p1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lk81;

    invoke-virtual {p0}, Lk81;->k()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public d(Lqnb$c;I)V
    .locals 0

    const-string p0, "target"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lk81;->d(I)I

    move-result p0

    invoke-static {p0}, Lk81;->c(I)Lk81;

    move-result-object p0

    invoke-virtual {p1, p0}, Lqnb;->p(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lqnb$c;

    invoke-virtual {p0, p1}, Lw81;->c(Lqnb$c;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
