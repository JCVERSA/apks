.class public final Ltw8$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ltw8$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/ClassLoader;)Ltw8;
    .locals 7

    const-string p0, "classLoader"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lrq8;

    invoke-direct {p0, p1}, Lrq8;-><init>(Ljava/lang/ClassLoader;)V

    sget-object v0, Lf92;->b:Lf92$a;

    new-instance v2, Lrq8;

    const-class v1, Lzfb;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v3, "Unit::class.java.classLoader"

    invoke-static {v1, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v1}, Lrq8;-><init>(Ljava/lang/ClassLoader;)V

    new-instance v3, Lwp8;

    invoke-direct {v3, p1}, Lwp8;-><init>(Ljava/lang/ClassLoader;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "runtime module for "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lsw8;->b:Lsw8;

    sget-object v6, Luw8;->a:Luw8;

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lf92$a;->a(Lvg5;Lvg5;Lx65;Ljava/lang/String;Led3;Lj85;)Lf92$a$a;

    move-result-object p1

    new-instance v0, Ltw8;

    invoke-virtual {p1}, Lf92$a$a;->a()Lf92;

    move-result-object v1

    invoke-virtual {v1}, Lf92;->a()Le92;

    move-result-object v1

    new-instance v2, Lmv7;

    invoke-virtual {p1}, Lf92$a$a;->b()Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;

    move-result-object p1

    invoke-direct {v2, p1, p0}, Lmv7;-><init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;Lrq8;)V

    const/4 p0, 0x0

    invoke-direct {v0, v1, v2, p0}, Ltw8;-><init>(Le92;Lmv7;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
