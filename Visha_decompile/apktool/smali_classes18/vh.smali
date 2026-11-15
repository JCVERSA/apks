.class public Lvh;
.super Lpf1;
.source "SourceFile"


# instance fields
.field public final b:Le74;


# direct methods
.method public constructor <init>(Ljava/util/List;Le74;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "computeType"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lpf1;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lvh;->b:Le74;

    return-void
.end method


# virtual methods
.method public a(Lqq6;)Leh5;
    .locals 1

    const-string v0, "module"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lvh;->b:Le74;

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Leh5;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/d;->c0(Leh5;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/d;->q0(Leh5;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/d;->D0(Leh5;)Z

    :cond_0
    return-object p0
.end method
