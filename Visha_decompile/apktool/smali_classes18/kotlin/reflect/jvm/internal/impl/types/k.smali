.class public abstract Lkotlin/reflect/jvm/internal/impl/types/k;
.super Lkotlin/reflect/jvm/internal/impl/types/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/types/k$a;
    }
.end annotation


# static fields
.field public static final c:Lkotlin/reflect/jvm/internal/impl/types/k$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/k$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/types/k$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/k;->c:Lkotlin/reflect/jvm/internal/impl/types/k$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/types/l;-><init>()V

    return-void
.end method

.method public static final i(Lsbb;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/types/l;
    .locals 1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/k;->c:Lkotlin/reflect/jvm/internal/impl/types/k$a;

    invoke-virtual {v0, p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/k$a;->b(Lsbb;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/types/l;

    move-result-object p0

    return-object p0
.end method

.method public static final j(Ljava/util/Map;)Lkotlin/reflect/jvm/internal/impl/types/k;
    .locals 1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/k;->c:Lkotlin/reflect/jvm/internal/impl/types/k$a;

    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/types/k$a;->c(Ljava/util/Map;)Lkotlin/reflect/jvm/internal/impl/types/k;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public e(Leh5;)Lmcb;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Leh5;->I0()Lsbb;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/k;->k(Lsbb;)Lmcb;

    move-result-object p0

    return-object p0
.end method

.method public abstract k(Lsbb;)Lmcb;
.end method
