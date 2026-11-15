.class public final Lf47;
.super Lzy3;
.source "SourceFile"


# static fields
.field public static final a:Lf47;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lf47;

    invoke-direct {v0}, Lf47;-><init>()V

    sput-object v0, Lf47;->a:Lf47;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "value"

    invoke-direct {p0, v0}, Lzy3;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Lqnb$e;

    invoke-virtual {p0, p1, p2}, Lf47;->d(Lqnb$e;F)V

    return-void
.end method

.method public c(Lqnb$e;)Ljava/lang/Float;
    .locals 0

    const-string p0, "target"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lqnb;->c()Ljava/lang/Object;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type kotlin.Double"

    invoke-static {p0, p1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    double-to-float p0, p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public d(Lqnb$e;F)V
    .locals 2

    const-string p0, "target"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "set variable value: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NumberValueProperty"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    float-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p1, p0}, Lqnb;->p(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lqnb$e;

    invoke-virtual {p0, p1}, Lf47;->c(Lqnb$e;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
