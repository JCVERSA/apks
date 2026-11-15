.class public final Lfbb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lhcb;

.field public final b:Leh5;

.field public final c:Leh5;


# direct methods
.method public constructor <init>(Lhcb;Leh5;Leh5;)V
    .locals 1

    const-string v0, "typeParameter"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inProjection"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outProjection"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfbb;->a:Lhcb;

    iput-object p2, p0, Lfbb;->b:Leh5;

    iput-object p3, p0, Lfbb;->c:Leh5;

    return-void
.end method


# virtual methods
.method public final a()Leh5;
    .locals 0

    iget-object p0, p0, Lfbb;->b:Leh5;

    return-object p0
.end method

.method public final b()Leh5;
    .locals 0

    iget-object p0, p0, Lfbb;->c:Leh5;

    return-object p0
.end method

.method public final c()Lhcb;
    .locals 0

    iget-object p0, p0, Lfbb;->a:Lhcb;

    return-object p0
.end method

.method public final d()Z
    .locals 2

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/checker/b;->a:Lkotlin/reflect/jvm/internal/impl/types/checker/b;

    iget-object v1, p0, Lfbb;->b:Leh5;

    iget-object p0, p0, Lfbb;->c:Leh5;

    invoke-interface {v0, v1, p0}, Lkotlin/reflect/jvm/internal/impl/types/checker/b;->c(Leh5;Leh5;)Z

    move-result p0

    return p0
.end method
