.class public final Lu65;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpw0;


# instance fields
.field public final a:Lvg5;

.field public final b:Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;


# direct methods
.method public constructor <init>(Lvg5;Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;)V
    .locals 1

    const-string v0, "kotlinClassFinder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deserializedDescriptorResolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu65;->a:Lvg5;

    iput-object p2, p0, Lu65;->b:Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;

    return-void
.end method


# virtual methods
.method public a(Lxw0;)Low0;
    .locals 2

    const-string v0, "classId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lu65;->a:Lvg5;

    iget-object v1, p0, Lu65;->b:Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;->d()Le92;

    move-result-object v1

    invoke-virtual {v1}, Le92;->g()Lh92;

    move-result-object v1

    invoke-static {v1}, Lj92;->a(Lh92;)Ljd5;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lwg5;->a(Lvg5;Lxw0;Ljd5;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/c;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/c;->c()Lxw0;

    move-result-object v1

    invoke-static {v1, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object p0, p0, Lu65;->b:Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;

    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;->j(Lkotlin/reflect/jvm/internal/impl/load/kotlin/c;)Low0;

    move-result-object p0

    return-object p0
.end method
