.class public final Lkotlin/reflect/jvm/internal/impl/types/l$c;
.super Lkotlin/reflect/jvm/internal/impl/types/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/types/l;->h()Lkotlin/reflect/jvm/internal/impl/types/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lkotlin/reflect/jvm/internal/impl/types/l;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/types/l;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/types/l$c;->c:Lkotlin/reflect/jvm/internal/impl/types/l;

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/types/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public b()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public d(Lmd;)Lmd;
    .locals 1

    const-string v0, "annotations"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/types/l$c;->c:Lkotlin/reflect/jvm/internal/impl/types/l;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/l;->d(Lmd;)Lmd;

    move-result-object p0

    return-object p0
.end method

.method public e(Leh5;)Lmcb;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/types/l$c;->c:Lkotlin/reflect/jvm/internal/impl/types/l;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/l;->e(Leh5;)Lmcb;

    move-result-object p0

    return-object p0
.end method

.method public f()Z
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/types/l$c;->c:Lkotlin/reflect/jvm/internal/impl/types/l;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/l;->f()Z

    move-result p0

    return p0
.end method

.method public g(Leh5;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Leh5;
    .locals 1

    const-string v0, "topLevelType"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "position"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/types/l$c;->c:Lkotlin/reflect/jvm/internal/impl/types/l;

    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/l;->g(Leh5;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Leh5;

    move-result-object p0

    return-object p0
.end method
