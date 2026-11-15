.class public Lcom/google/common/collect/a$a;
.super Lcom/google/common/collect/Multimaps$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic b:Lcom/google/common/collect/a;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/a$a;->b:Lcom/google/common/collect/a;

    invoke-direct {p0}, Lcom/google/common/collect/Multimaps$b;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Lat6;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/a$a;->b:Lcom/google/common/collect/a;

    return-object p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/a$a;->b:Lcom/google/common/collect/a;

    invoke-virtual {p0}, Lcom/google/common/collect/a;->entryIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method
