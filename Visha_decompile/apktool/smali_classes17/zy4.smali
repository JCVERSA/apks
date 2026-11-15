.class public final Lzy4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkga;


# instance fields
.field public final b:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lw71;->b()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lzy4;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)Lac5;
    .locals 1

    const-string v0, "templateId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lzy4;->b:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lac5;

    return-object p0
.end method

.method public final c(Ljava/lang/String;Lac5;)V
    .locals 1

    const-string v0, "templateId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jsonTemplate"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lzy4;->b:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final d(Ljava/util/Map;)V
    .locals 1

    const-string v0, "target"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lzy4;->b:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public bridge synthetic get(Ljava/lang/String;)Lza3;
    .locals 0

    invoke-virtual {p0, p1}, Lzy4;->b(Ljava/lang/String;)Lac5;

    move-result-object p0

    return-object p0
.end method
