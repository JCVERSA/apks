.class public Lorg/mozilla/javascript/HashSlotMap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/javascript/SlotMap;


# instance fields
.field private final map:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Object;",
            "Lorg/mozilla/javascript/ScriptableObject$Slot;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/HashSlotMap;->map:Ljava/util/LinkedHashMap;

    return-void
.end method

.method private createSlot(Ljava/lang/Object;ILjava/lang/Object;Lorg/mozilla/javascript/ScriptableObject$SlotAccess;)Lorg/mozilla/javascript/ScriptableObject$Slot;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/HashSlotMap;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/ScriptableObject$Slot;

    if-eqz v0, :cond_3

    sget-object p1, Lorg/mozilla/javascript/ScriptableObject$SlotAccess;->MODIFY_GETTER_SETTER:Lorg/mozilla/javascript/ScriptableObject$SlotAccess;

    if-ne p4, p1, :cond_0

    instance-of p1, v0, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;

    if-nez p1, :cond_0

    new-instance p1, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;

    iget p2, v0, Lorg/mozilla/javascript/ScriptableObject$Slot;->indexOrHash:I

    invoke-virtual {v0}, Lorg/mozilla/javascript/ScriptableObject$Slot;->getAttributes()I

    move-result p4

    invoke-direct {p1, p3, p2, p4}, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;-><init>(Ljava/lang/Object;II)V

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/mozilla/javascript/ScriptableObject$SlotAccess;->CONVERT_ACCESSOR_TO_DATA:Lorg/mozilla/javascript/ScriptableObject$SlotAccess;

    if-ne p4, p1, :cond_1

    instance-of p1, v0, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;

    if-eqz p1, :cond_1

    new-instance p1, Lorg/mozilla/javascript/ScriptableObject$Slot;

    iget p2, v0, Lorg/mozilla/javascript/ScriptableObject$Slot;->indexOrHash:I

    invoke-virtual {v0}, Lorg/mozilla/javascript/ScriptableObject$Slot;->getAttributes()I

    move-result p4

    invoke-direct {p1, p3, p2, p4}, Lorg/mozilla/javascript/ScriptableObject$Slot;-><init>(Ljava/lang/Object;II)V

    :goto_0
    iget-object p2, v0, Lorg/mozilla/javascript/ScriptableObject$Slot;->value:Ljava/lang/Object;

    iput-object p2, p1, Lorg/mozilla/javascript/ScriptableObject$Slot;->value:Ljava/lang/Object;

    iget-object p0, p0, Lorg/mozilla/javascript/HashSlotMap;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p3, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :cond_1
    sget-object p0, Lorg/mozilla/javascript/ScriptableObject$SlotAccess;->MODIFY_CONST:Lorg/mozilla/javascript/ScriptableObject$SlotAccess;

    if-ne p4, p0, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    return-object v0

    :cond_3
    sget-object p3, Lorg/mozilla/javascript/ScriptableObject$SlotAccess;->MODIFY_GETTER_SETTER:Lorg/mozilla/javascript/ScriptableObject$SlotAccess;

    const/4 v0, 0x0

    if-ne p4, p3, :cond_4

    new-instance p3, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;

    invoke-direct {p3, p1, p2, v0}, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;-><init>(Ljava/lang/Object;II)V

    goto :goto_1

    :cond_4
    new-instance p3, Lorg/mozilla/javascript/ScriptableObject$Slot;

    invoke-direct {p3, p1, p2, v0}, Lorg/mozilla/javascript/ScriptableObject$Slot;-><init>(Ljava/lang/Object;II)V

    :goto_1
    sget-object p1, Lorg/mozilla/javascript/ScriptableObject$SlotAccess;->MODIFY_CONST:Lorg/mozilla/javascript/ScriptableObject$SlotAccess;

    if-ne p4, p1, :cond_5

    const/16 p1, 0xd

    invoke-virtual {p3, p1}, Lorg/mozilla/javascript/ScriptableObject$Slot;->setAttributes(I)V

    :cond_5
    invoke-virtual {p0, p3}, Lorg/mozilla/javascript/HashSlotMap;->addSlot(Lorg/mozilla/javascript/ScriptableObject$Slot;)V

    return-object p3
.end method


# virtual methods
.method public addSlot(Lorg/mozilla/javascript/ScriptableObject$Slot;)V
    .locals 1

    iget-object v0, p1, Lorg/mozilla/javascript/ScriptableObject$Slot;->name:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget v0, p1, Lorg/mozilla/javascript/ScriptableObject$Slot;->indexOrHash:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object p0, p0, Lorg/mozilla/javascript/HashSlotMap;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v0, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public get(Ljava/lang/Object;ILorg/mozilla/javascript/ScriptableObject$SlotAccess;)Lorg/mozilla/javascript/ScriptableObject$Slot;
    .locals 4

    if-nez p1, :cond_0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iget-object v1, p0, Lorg/mozilla/javascript/HashSlotMap;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/javascript/ScriptableObject$Slot;

    sget-object v2, Lorg/mozilla/javascript/HashSlotMap$a;->a:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_5

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    instance-of v2, v1, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;

    if-nez v2, :cond_4

    return-object v1

    :cond_2
    instance-of v2, v1, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;

    if-eqz v2, :cond_4

    return-object v1

    :cond_3
    if-eqz v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    invoke-direct {p0, p1, p2, v0, p3}, Lorg/mozilla/javascript/HashSlotMap;->createSlot(Ljava/lang/Object;ILjava/lang/Object;Lorg/mozilla/javascript/ScriptableObject$SlotAccess;)Lorg/mozilla/javascript/ScriptableObject$Slot;

    move-result-object p0

    return-object p0

    :cond_5
    return-object v1
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lorg/mozilla/javascript/HashSlotMap;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/mozilla/javascript/ScriptableObject$Slot;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/mozilla/javascript/HashSlotMap;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public query(Ljava/lang/Object;I)Lorg/mozilla/javascript/ScriptableObject$Slot;
    .locals 0

    if-nez p1, :cond_0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object p0, p0, Lorg/mozilla/javascript/HashSlotMap;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/mozilla/javascript/ScriptableObject$Slot;

    return-object p0
.end method

.method public remove(Ljava/lang/Object;I)V
    .locals 1

    if-nez p1, :cond_0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    iget-object v0, p0, Lorg/mozilla/javascript/HashSlotMap;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/ScriptableObject$Slot;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/mozilla/javascript/ScriptableObject$Slot;->getAttributes()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object p0

    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->isStrictMode()Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    const-string p0, "msg.delete.property.with.configurable.false"

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0

    :cond_2
    iget-object p0, p0, Lorg/mozilla/javascript/HashSlotMap;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p2}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lorg/mozilla/javascript/HashSlotMap;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/AbstractMap;->size()I

    move-result p0

    return p0
.end method
