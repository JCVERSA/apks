.class public abstract Lk72;
.super Lkotlin/reflect/jvm/internal/impl/types/l;
.source "SourceFile"


# instance fields
.field public final c:Lkotlin/reflect/jvm/internal/impl/types/l;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/types/l;)V
    .locals 1

    const-string v0, "substitution"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/types/l;-><init>()V

    iput-object p1, p0, Lk72;->c:Lkotlin/reflect/jvm/internal/impl/types/l;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 0

    iget-object p0, p0, Lk72;->c:Lkotlin/reflect/jvm/internal/impl/types/l;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/l;->a()Z

    move-result p0

    return p0
.end method

.method public d(Lmd;)Lmd;
    .locals 1

    const-string v0, "annotations"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lk72;->c:Lkotlin/reflect/jvm/internal/impl/types/l;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/l;->d(Lmd;)Lmd;

    move-result-object p0

    return-object p0
.end method

.method public e(Leh5;)Lmcb;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lk72;->c:Lkotlin/reflect/jvm/internal/impl/types/l;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/l;->e(Leh5;)Lmcb;

    move-result-object p0

    return-object p0
.end method

.method public f()Z
    .locals 0

    iget-object p0, p0, Lk72;->c:Lkotlin/reflect/jvm/internal/impl/types/l;

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

    iget-object p0, p0, Lk72;->c:Lkotlin/reflect/jvm/internal/impl/types/l;

    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/l;->g(Leh5;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Leh5;

    move-result-object p0

    return-object p0
.end method
