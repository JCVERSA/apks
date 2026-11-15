.class public final Ljq8;
.super Llq8;
.source "SourceFile"

# interfaces
.implements Lz75;


# instance fields
.field public final b:Ljava/lang/Class;

.field public final c:Ljava/util/Collection;

.field public final d:Z


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1

    const-string v0, "reflectType"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Llq8;-><init>()V

    iput-object p1, p0, Ljq8;->b:Ljava/lang/Class;

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    iput-object p1, p0, Ljq8;->c:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public bridge synthetic O()Ljava/lang/reflect/Type;
    .locals 0

    invoke-virtual {p0}, Ljq8;->P()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public P()Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Ljq8;->b:Ljava/lang/Class;

    return-object p0
.end method

.method public getAnnotations()Ljava/util/Collection;
    .locals 0

    iget-object p0, p0, Ljq8;->c:Ljava/util/Collection;

    return-object p0
.end method

.method public getType()Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;
    .locals 2

    invoke-virtual {p0}, Ljq8;->P()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljq8;->P()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->get(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->getPrimitiveType()Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public x()Z
    .locals 0

    iget-boolean p0, p0, Ljq8;->d:Z

    return p0
.end method
