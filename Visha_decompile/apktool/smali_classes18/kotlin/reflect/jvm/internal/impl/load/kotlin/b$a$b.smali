.class public final Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/load/kotlin/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a;->e(Lby6;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/c$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final synthetic b:Lkotlin/reflect/jvm/internal/impl/load/kotlin/b;

.field public final synthetic c:Lby6;

.field public final synthetic d:Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/b;Lby6;Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a$b;->b:Lkotlin/reflect/jvm/internal/impl/load/kotlin/b;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a$b;->c:Lby6;

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a$b;->d:Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a$b;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public static final synthetic e(Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a$b;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a$b;->a:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public a(Lxw0;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/c$a;
    .locals 4

    const-string v0, "classId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a$b;->b:Lkotlin/reflect/jvm/internal/impl/load/kotlin/b;

    sget-object v2, Lyt9;->a:Lyt9;

    const-string v3, "NO_SOURCE"

    invoke-static {v2, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1, v2, v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b;->w(Lxw0;Lyt9;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/c$a;

    move-result-object p1

    invoke-static {p1}, Ly45;->g(Ljava/lang/Object;)V

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a$b$a;

    invoke-direct {v1, p1, p0, v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a$b$a;-><init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/c$a;Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a$b;Ljava/util/ArrayList;)V

    return-object v1
.end method

.method public b(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a$b;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a$b;->b:Lkotlin/reflect/jvm/internal/impl/load/kotlin/b;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a$b;->c:Lby6;

    invoke-static {v1, p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b;->I(Lkotlin/reflect/jvm/internal/impl/load/kotlin/b;Lby6;Ljava/lang/Object;)Lpf1;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c(Lzw0;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a$b;->a:Ljava/util/ArrayList;

    new-instance v0, Lee5;

    invoke-direct {v0, p1}, Lee5;-><init>(Lzw0;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public d(Lxw0;Lby6;)V
    .locals 1

    const-string v0, "enumClassId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "enumEntryName"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a$b;->a:Ljava/util/ArrayList;

    new-instance v0, Lfb3;

    invoke-direct {v0, p1, p2}, Lfb3;-><init>(Lxw0;Lby6;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public visitEnd()V
    .locals 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a$b;->d:Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a$b;->c:Lby6;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a;->f(Lby6;Ljava/util/ArrayList;)V

    return-void
.end method
