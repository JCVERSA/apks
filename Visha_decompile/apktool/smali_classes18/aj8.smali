.class public final Laj8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpw0;


# instance fields
.field public final a:Lcy6;

.field public final b:Lse0;

.field public final c:Le74;

.field public final d:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$PackageFragment;Lcy6;Lse0;Le74;)V
    .locals 1

    const-string v0, "proto"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metadataVersion"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "classSource"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Laj8;->a:Lcy6;

    iput-object p3, p0, Laj8;->b:Lse0;

    iput-object p4, p0, Laj8;->c:Le74;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$PackageFragment;->getClass_List()Ljava/util/List;

    move-result-object p1

    const-string p2, "proto.class_List"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    const/16 p2, 0xa

    invoke-static {p1, p2}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result p2

    invoke-static {p2}, Lky5;->g(I)I

    move-result p2

    const/16 p3, 0x10

    invoke-static {p2, p3}, Lwn8;->d(II)I

    move-result p2

    new-instance p3, Ljava/util/LinkedHashMap;

    invoke-direct {p3, p2}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object p4, p2

    check-cast p4, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;

    iget-object v0, p0, Laj8;->a:Lcy6;

    invoke-virtual {p4}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getFqName()I

    move-result p4

    invoke-static {v0, p4}, Ley6;->a(Lcy6;I)Lxw0;

    move-result-object p4

    invoke-interface {p3, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object p3, p0, Laj8;->d:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Lxw0;)Low0;
    .locals 4

    const-string v0, "classId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Laj8;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v1, Low0;

    iget-object v2, p0, Laj8;->a:Lcy6;

    iget-object v3, p0, Laj8;->b:Lse0;

    iget-object p0, p0, Laj8;->c:Le74;

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyt9;

    invoke-direct {v1, v2, v0, v3, p0}, Low0;-><init>(Lcy6;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;Lse0;Lyt9;)V

    return-object v1
.end method

.method public final b()Ljava/util/Collection;
    .locals 0

    iget-object p0, p0, Laj8;->d:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method
