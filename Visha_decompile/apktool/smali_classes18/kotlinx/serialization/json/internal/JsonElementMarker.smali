.class public final Lkotlinx/serialization/json/internal/JsonElementMarker;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ll83;

.field public b:Z


# direct methods
.method public constructor <init>(Lkotlinx/serialization/descriptors/a;)V
    .locals 2

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ll83;

    new-instance v1, Lkotlinx/serialization/json/internal/JsonElementMarker$origin$1;

    invoke-direct {v1, p0}, Lkotlinx/serialization/json/internal/JsonElementMarker$origin$1;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, p1, v1}, Ll83;-><init>(Lkotlinx/serialization/descriptors/a;Ls74;)V

    iput-object v0, p0, Lkotlinx/serialization/json/internal/JsonElementMarker;->a:Ll83;

    return-void
.end method

.method public static final synthetic a(Lkotlinx/serialization/json/internal/JsonElementMarker;Lkotlinx/serialization/descriptors/a;I)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/internal/JsonElementMarker;->e(Lkotlinx/serialization/descriptors/a;I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final b()Z
    .locals 0

    iget-boolean p0, p0, Lkotlinx/serialization/json/internal/JsonElementMarker;->b:Z

    return p0
.end method

.method public final c(I)V
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/json/internal/JsonElementMarker;->a:Ll83;

    invoke-virtual {p0, p1}, Ll83;->a(I)V

    return-void
.end method

.method public final d()I
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/json/internal/JsonElementMarker;->a:Ll83;

    invoke-virtual {p0}, Ll83;->d()I

    move-result p0

    return p0
.end method

.method public final e(Lkotlinx/serialization/descriptors/a;I)Z
    .locals 1

    invoke-interface {p1, p2}, Lkotlinx/serialization/descriptors/a;->i(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1, p2}, Lkotlinx/serialization/descriptors/a;->d(I)Lkotlinx/serialization/descriptors/a;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/a;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lkotlinx/serialization/json/internal/JsonElementMarker;->b:Z

    return p1
.end method
