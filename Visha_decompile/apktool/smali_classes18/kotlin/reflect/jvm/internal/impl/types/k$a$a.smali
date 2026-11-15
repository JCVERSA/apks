.class public final Lkotlin/reflect/jvm/internal/impl/types/k$a$a;
.super Lkotlin/reflect/jvm/internal/impl/types/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/types/k$a;->d(Ljava/util/Map;Z)Lkotlin/reflect/jvm/internal/impl/types/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic d:Ljava/util/Map;

.field public final synthetic e:Z


# direct methods
.method public constructor <init>(Ljava/util/Map;Z)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/types/k$a$a;->d:Ljava/util/Map;

    iput-boolean p2, p0, Lkotlin/reflect/jvm/internal/impl/types/k$a$a;->e:Z

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/types/k;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 0

    iget-boolean p0, p0, Lkotlin/reflect/jvm/internal/impl/types/k$a$a;->e:Z

    return p0
.end method

.method public f()Z
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/types/k$a$a;->d:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public k(Lsbb;)Lmcb;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/types/k$a$a;->d:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmcb;

    return-object p0
.end method
