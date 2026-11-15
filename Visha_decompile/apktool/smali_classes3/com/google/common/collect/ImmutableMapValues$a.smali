.class public Lcom/google/common/collect/ImmutableMapValues$a;
.super Ldgb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ImmutableMapValues;->iterator()Ldgb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final b:Ldgb;

.field public final synthetic c:Lcom/google/common/collect/ImmutableMapValues;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ImmutableMapValues;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/ImmutableMapValues$a;->c:Lcom/google/common/collect/ImmutableMapValues;

    invoke-direct {p0}, Ldgb;-><init>()V

    invoke-static {p1}, Lcom/google/common/collect/ImmutableMapValues;->access$000(Lcom/google/common/collect/ImmutableMapValues;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableSet;->iterator()Ldgb;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/ImmutableMapValues$a;->b:Ldgb;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/ImmutableMapValues$a;->b:Ldgb;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/ImmutableMapValues$a;->b:Ldgb;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
