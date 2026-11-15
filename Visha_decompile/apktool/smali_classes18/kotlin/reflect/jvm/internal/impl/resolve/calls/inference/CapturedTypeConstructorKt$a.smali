.class public final Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedTypeConstructorKt$a;
.super Lk72;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedTypeConstructorKt;->e(Lkotlin/reflect/jvm/internal/impl/types/l;Z)Lkotlin/reflect/jvm/internal/impl/types/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic d:Z


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/types/l;Z)V
    .locals 0

    iput-boolean p2, p0, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedTypeConstructorKt$a;->d:Z

    invoke-direct {p0, p1}, Lk72;-><init>(Lkotlin/reflect/jvm/internal/impl/types/l;)V

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 0

    iget-boolean p0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedTypeConstructorKt$a;->d:Z

    return p0
.end method

.method public e(Leh5;)Lmcb;
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lk72;->e(Leh5;)Lmcb;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Leh5;->I0()Lsbb;

    move-result-object p1

    invoke-interface {p1}, Lsbb;->c()Lpx0;

    move-result-object p1

    instance-of v1, p1, Lhcb;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lhcb;

    :cond_0
    invoke-static {p0, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedTypeConstructorKt;->a(Lmcb;Lhcb;)Lmcb;

    move-result-object v0

    :cond_1
    return-object v0
.end method
