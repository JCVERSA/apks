.class public final Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;
.super Lkotlin/reflect/jvm/internal/impl/types/checker/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/types/checker/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;->a:Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/types/checker/c;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lgh5;)Lgh5;
    .locals 0

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;->h(Lgh5;)Leh5;

    move-result-object p0

    return-object p0
.end method

.method public b(Lxw0;)Lqw0;
    .locals 0

    const-string p0, "classId"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public c(Lqw0;Lc74;)Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
    .locals 0

    const-string p0, "classDescriptor"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "compute"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lc74;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    return-object p0
.end method

.method public d(Lqq6;)Z
    .locals 0

    const-string p0, "moduleDescriptor"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public e(Lsbb;)Z
    .locals 0

    const-string p0, "typeConstructor"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic f(Lxt1;)Lpx0;
    .locals 0

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;->i(Lxt1;)Lqw0;

    move-result-object p0

    return-object p0
.end method

.method public g(Lqw0;)Ljava/util/Collection;
    .locals 0

    const-string p0, "classDescriptor"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lpx0;->m()Lsbb;

    move-result-object p0

    invoke-interface {p0}, Lsbb;->k()Ljava/util/Collection;

    move-result-object p0

    const-string p1, "classDescriptor.typeConstructor.supertypes"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public h(Lgh5;)Leh5;
    .locals 0

    const-string p0, "type"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Leh5;

    return-object p1
.end method

.method public i(Lxt1;)Lqw0;
    .locals 0

    const-string p0, "descriptor"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
