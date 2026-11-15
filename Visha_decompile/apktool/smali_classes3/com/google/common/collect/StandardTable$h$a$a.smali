.class public Lcom/google/common/collect/StandardTable$h$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/StandardTable$h$a;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/google/common/collect/StandardTable$h$a;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/StandardTable$h$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/StandardTable$h$a$a;->b:Lcom/google/common/collect/StandardTable$h$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/StandardTable$h$a$a;->b:Lcom/google/common/collect/StandardTable$h$a;

    iget-object p0, p0, Lcom/google/common/collect/StandardTable$h$a;->c:Lcom/google/common/collect/StandardTable$h;

    iget-object p0, p0, Lcom/google/common/collect/StandardTable$h;->e:Lcom/google/common/collect/StandardTable;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/StandardTable;->row(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/StandardTable$h$a$a;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
