.class public final Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/load/kotlin/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a;->b(Lby6;Lxw0;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/c$a;

.field public final synthetic b:Lkotlin/reflect/jvm/internal/impl/load/kotlin/c$a;

.field public final synthetic c:Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a;

.field public final synthetic d:Lby6;

.field public final synthetic e:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/c$a;Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a;Lby6;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a$a;->b:Lkotlin/reflect/jvm/internal/impl/load/kotlin/c$a;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a$a;->c:Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a;

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a$a;->d:Lby6;

    iput-object p4, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a$a;->e:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a$a;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/c$a;

    return-void
.end method


# virtual methods
.method public a(Lby6;Lxw0;Lby6;)V
    .locals 1

    const-string v0, "enumClassId"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "enumEntryName"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a$a;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/c$a;

    invoke-interface {p0, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/c$a;->a(Lby6;Lxw0;Lby6;)V

    return-void
.end method

.method public b(Lby6;Lxw0;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/c$a;
    .locals 1

    const-string v0, "classId"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a$a;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/c$a;

    invoke-interface {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/c$a;->b(Lby6;Lxw0;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/c$a;

    move-result-object p0

    return-object p0
.end method

.method public c(Lby6;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a$a;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/c$a;

    invoke-interface {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/c$a;->c(Lby6;Ljava/lang/Object;)V

    return-void
.end method

.method public d(Lby6;Lzw0;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a$a;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/c$a;

    invoke-interface {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/c$a;->d(Lby6;Lzw0;)V

    return-void
.end method

.method public e(Lby6;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/c$b;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a$a;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/c$a;

    invoke-interface {p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/c$a;->e(Lby6;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/c$b;

    move-result-object p0

    return-object p0
.end method

.method public visitEnd()V
    .locals 3

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a$a;->b:Lkotlin/reflect/jvm/internal/impl/load/kotlin/c$a;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/c$a;->visitEnd()V

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a$a;->c:Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a$a;->d:Lby6;

    new-instance v2, Lld;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a$a;->e:Ljava/util/ArrayList;

    invoke-static {p0}, Li81;->O0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgd;

    invoke-direct {v2, p0}, Lld;-><init>(Lgd;)V

    invoke-virtual {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a;->g(Lby6;Lpf1;)V

    return-void
.end method
