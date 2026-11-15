.class public Lcom/google/common/collect/Maps$e;
.super Ly6b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Maps;->c(Ljava/util/Set;Lo74;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lo74;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;Lo74;)V
    .locals 0

    iput-object p2, p0, Lcom/google/common/collect/Maps$e;->c:Lo74;

    invoke-direct {p0, p1}, Ly6b;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Maps$e;->b(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public b(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/Maps$e;->c:Lo74;

    invoke-interface {p0, p1}, Lo74;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/google/common/collect/Maps;->i(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method
