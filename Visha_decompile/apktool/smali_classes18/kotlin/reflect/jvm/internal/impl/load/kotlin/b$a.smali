.class public abstract Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/load/kotlin/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/load/kotlin/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/b;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/b;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lby6;Lxw0;Lby6;)V
    .locals 1

    const-string v0, "enumClassId"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "enumEntryName"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lfb3;

    invoke-direct {v0, p2, p3}, Lfb3;-><init>(Lxw0;Lby6;)V

    invoke-virtual {p0, p1, v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a;->g(Lby6;Lpf1;)V

    return-void
.end method

.method public b(Lby6;Lxw0;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/c$a;
    .locals 4

    const-string v0, "classId"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/b;

    sget-object v2, Lyt9;->a:Lyt9;

    const-string v3, "NO_SOURCE"

    invoke-static {v2, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p2, v2, v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b;->w(Lxw0;Lyt9;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/c$a;

    move-result-object p2

    invoke-static {p2}, Ly45;->g(Ljava/lang/Object;)V

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a$a;

    invoke-direct {v1, p2, p0, p1, v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a$a;-><init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/c$a;Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a;Lby6;Ljava/util/ArrayList;)V

    return-object v1
.end method

.method public c(Lby6;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/b;

    invoke-static {v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b;->I(Lkotlin/reflect/jvm/internal/impl/load/kotlin/b;Lby6;Ljava/lang/Object;)Lpf1;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a;->g(Lby6;Lpf1;)V

    return-void
.end method

.method public d(Lby6;Lzw0;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lee5;

    invoke-direct {v0, p2}, Lee5;-><init>(Lzw0;)V

    invoke-virtual {p0, p1, v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a;->g(Lby6;Lpf1;)V

    return-void
.end method

.method public e(Lby6;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/c$b;
    .locals 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a$b;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/b;

    invoke-direct {v0, v1, p1, p0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a$b;-><init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/b;Lby6;Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a;)V

    return-object v0
.end method

.method public abstract f(Lby6;Ljava/util/ArrayList;)V
.end method

.method public abstract g(Lby6;Lpf1;)V
.end method
