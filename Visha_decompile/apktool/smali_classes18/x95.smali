.class public final Lx95;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lx95;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/serialization/json/b;)Z
    .locals 1

    const-string v0, "element"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lx95;->a:Ljava/util/List;

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public final b()Lkotlinx/serialization/json/a;
    .locals 1

    new-instance v0, Lkotlinx/serialization/json/a;

    iget-object p0, p0, Lx95;->a:Ljava/util/List;

    invoke-direct {v0, p0}, Lkotlinx/serialization/json/a;-><init>(Ljava/util/List;)V

    return-object v0
.end method
