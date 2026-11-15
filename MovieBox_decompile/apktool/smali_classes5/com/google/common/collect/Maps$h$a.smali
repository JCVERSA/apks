.class Lcom/google/common/collect/Maps$h$a;
.super Lcom/google/common/collect/Maps$i;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Maps$h;->l()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/Maps$h;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Maps$h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/Maps$h$a;->a:Lcom/google/common/collect/Maps$h;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/common/collect/Maps$i;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method a()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/Maps$h$a;->a:Lcom/google/common/collect/Maps$h;

    .line 2
    .line 3
    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/Maps$h$a;->a:Lcom/google/common/collect/Maps$h;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/common/collect/Maps$h;->m()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
