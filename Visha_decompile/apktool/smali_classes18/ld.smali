.class public final Lld;
.super Lpf1;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lgd;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lpf1;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Lqq6;)Leh5;
    .locals 1

    const-string v0, "module"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lpf1;->b()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgd;

    invoke-interface {p0}, Lgd;->getType()Leh5;

    move-result-object p0

    return-object p0
.end method
