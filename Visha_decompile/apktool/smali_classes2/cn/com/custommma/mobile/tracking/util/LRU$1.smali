.class Lcn/com/custommma/mobile/tracking/util/LRU$1;
.super Ljava/util/LinkedHashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/custommma/mobile/tracking/util/LRU;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/custommma/mobile/tracking/util/LRU;

.field final synthetic val$cacheSize:I


# direct methods
.method public constructor <init>(Lcn/com/custommma/mobile/tracking/util/LRU;IFZI)V
    .locals 0

    iput-object p1, p0, Lcn/com/custommma/mobile/tracking/util/LRU$1;->this$0:Lcn/com/custommma/mobile/tracking/util/LRU;

    iput p5, p0, Lcn/com/custommma/mobile/tracking/util/LRU$1;->val$cacheSize:I

    invoke-direct {p0, p2, p3, p4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method public removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 1

    iget p1, p0, Lcn/com/custommma/mobile/tracking/util/LRU$1;->val$cacheSize:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iget-object p0, p0, Lcn/com/custommma/mobile/tracking/util/LRU$1;->this$0:Lcn/com/custommma/mobile/tracking/util/LRU;

    invoke-static {p0}, Lcn/com/custommma/mobile/tracking/util/LRU;->a(Lcn/com/custommma/mobile/tracking/util/LRU;)Ljava/util/LinkedHashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/AbstractMap;->size()I

    move-result p0

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
