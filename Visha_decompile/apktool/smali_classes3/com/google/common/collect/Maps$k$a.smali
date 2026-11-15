.class public Lcom/google/common/collect/Maps$k$a;
.super Lcom/google/common/collect/Maps$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Maps$k;->entrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/google/common/collect/Maps$k;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/Maps$k;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/Maps$k$a;->b:Lcom/google/common/collect/Maps$k;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$i;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/Maps$k$a;->b:Lcom/google/common/collect/Maps$k;

    return-object p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/Maps$k$a;->b:Lcom/google/common/collect/Maps$k;

    invoke-virtual {p0}, Lcom/google/common/collect/Maps$k;->a()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method
