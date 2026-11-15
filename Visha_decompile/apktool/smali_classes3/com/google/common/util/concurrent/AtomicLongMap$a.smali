.class public Lcom/google/common/util/concurrent/AtomicLongMap$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/AtomicLongMap;->createAsMap()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/google/common/util/concurrent/AtomicLongMap;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/AtomicLongMap;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/util/concurrent/AtomicLongMap$a;->b:Lcom/google/common/util/concurrent/AtomicLongMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/concurrent/atomic/AtomicLong;)Ljava/lang/Long;
    .locals 0

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/AtomicLongMap$a;->a(Ljava/util/concurrent/atomic/AtomicLong;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
