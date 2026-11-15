.class public final Li37;
.super Lpf1;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lpf1;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lqq6;)Leh5;
    .locals 0

    invoke-virtual {p0, p1}, Li37;->c(Lqq6;)Lsm9;

    move-result-object p0

    return-object p0
.end method

.method public c(Lqq6;)Lsm9;
    .locals 0

    const-string p0, "module"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lqq6;->o()Lkotlin/reflect/jvm/internal/impl/builtins/d;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/d;->J()Lsm9;

    move-result-object p0

    const-string p1, "module.builtIns.nullableNothingType"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
