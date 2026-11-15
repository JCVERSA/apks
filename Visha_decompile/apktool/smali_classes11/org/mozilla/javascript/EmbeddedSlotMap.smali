.class public Lorg/mozilla/javascript/EmbeddedSlotMap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/javascript/SlotMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/javascript/EmbeddedSlotMap$b;
    }
.end annotation


# static fields
.field private static final INITIAL_SLOT_SIZE:I = 0x4


# instance fields
.field private count:I

.field private firstAdded:Lorg/mozilla/javascript/ScriptableObject$Slot;

.field private lastAdded:Lorg/mozilla/javascript/ScriptableObject$Slot;

.field private slots:[Lorg/mozilla/javascript/ScriptableObject$Slot;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addKnownAbsentSlot([Lorg/mozilla/javascript/ScriptableObject$Slot;Lorg/mozilla/javascript/ScriptableObject$Slot;)V
    .locals 2

    array-length v0, p0

    iget v1, p1, Lorg/mozilla/javascript/ScriptableObject$Slot;->indexOrHash:I

    invoke-static {v0, v1}, Lorg/mozilla/javascript/EmbeddedSlotMap;->getSlotIndex(II)I

    move-result v0

    aget-object v1, p0, v0

    aput-object p1, p0, v0

    iput-object v1, p1, Lorg/mozilla/javascript/ScriptableObject$Slot;->next:Lorg/mozilla/javascript/ScriptableObject$Slot;

    return-void
.end method

.method private static copyTable([Lorg/mozilla/javascript/ScriptableObject$Slot;[Lorg/mozilla/javascript/ScriptableObject$Slot;)V
    .locals 5

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    :goto_1
    if-eqz v2, :cond_0

    iget-object v3, v2, Lorg/mozilla/javascript/ScriptableObject$Slot;->next:Lorg/mozilla/javascript/ScriptableObject$Slot;

    const/4 v4, 0x0

    iput-object v4, v2, Lorg/mozilla/javascript/ScriptableObject$Slot;->next:Lorg/mozilla/javascript/ScriptableObject$Slot;

    invoke-static {p1, v2}, Lorg/mozilla/javascript/EmbeddedSlotMap;->addKnownAbsentSlot([Lorg/mozilla/javascript/ScriptableObject$Slot;Lorg/mozilla/javascript/ScriptableObject$Slot;)V

    move-object v2, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private createSlot(Ljava/lang/Object;ILorg/mozilla/javascript/ScriptableObject$SlotAccess;Lorg/mozilla/javascript/ScriptableObject$Slot;)Lorg/mozilla/javascript/ScriptableObject$Slot;
    .locals 5

    iget v0, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->count:I

    const/4 v1, 0x4

    if-nez v0, :cond_0

    new-array p4, v1, [Lorg/mozilla/javascript/ScriptableObject$Slot;

    iput-object p4, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->slots:[Lorg/mozilla/javascript/ScriptableObject$Slot;

    goto/16 :goto_6

    :cond_0
    if-eqz p4, :cond_b

    iget-object p4, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->slots:[Lorg/mozilla/javascript/ScriptableObject$Slot;

    array-length p4, p4

    invoke-static {p4, p2}, Lorg/mozilla/javascript/EmbeddedSlotMap;->getSlotIndex(II)I

    move-result p4

    iget-object v0, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->slots:[Lorg/mozilla/javascript/ScriptableObject$Slot;

    aget-object v0, v0, p4

    move-object v2, v0

    :goto_0
    if-eqz v0, :cond_2

    iget v3, v0, Lorg/mozilla/javascript/ScriptableObject$Slot;->indexOrHash:I

    if-ne v3, p2, :cond_1

    iget-object v3, v0, Lorg/mozilla/javascript/ScriptableObject$Slot;->name:Ljava/lang/Object;

    if-eq v3, p1, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, v0, Lorg/mozilla/javascript/ScriptableObject$Slot;->next:Lorg/mozilla/javascript/ScriptableObject$Slot;

    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v0, :cond_b

    sget-object v1, Lorg/mozilla/javascript/ScriptableObject$SlotAccess;->MODIFY_GETTER_SETTER:Lorg/mozilla/javascript/ScriptableObject$SlotAccess;

    if-ne p3, v1, :cond_3

    instance-of v1, v0, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;

    if-nez v1, :cond_3

    new-instance p3, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ScriptableObject$Slot;->getAttributes()I

    move-result v1

    invoke-direct {p3, p1, p2, v1}, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;-><init>(Ljava/lang/Object;II)V

    goto :goto_2

    :cond_3
    sget-object v1, Lorg/mozilla/javascript/ScriptableObject$SlotAccess;->CONVERT_ACCESSOR_TO_DATA:Lorg/mozilla/javascript/ScriptableObject$SlotAccess;

    if-ne p3, v1, :cond_9

    instance-of v1, v0, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;

    if-eqz v1, :cond_9

    new-instance p3, Lorg/mozilla/javascript/ScriptableObject$Slot;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ScriptableObject$Slot;->getAttributes()I

    move-result v1

    invoke-direct {p3, p1, p2, v1}, Lorg/mozilla/javascript/ScriptableObject$Slot;-><init>(Ljava/lang/Object;II)V

    :goto_2
    iget-object p1, v0, Lorg/mozilla/javascript/ScriptableObject$Slot;->value:Ljava/lang/Object;

    iput-object p1, p3, Lorg/mozilla/javascript/ScriptableObject$Slot;->value:Ljava/lang/Object;

    iget-object p1, v0, Lorg/mozilla/javascript/ScriptableObject$Slot;->next:Lorg/mozilla/javascript/ScriptableObject$Slot;

    iput-object p1, p3, Lorg/mozilla/javascript/ScriptableObject$Slot;->next:Lorg/mozilla/javascript/ScriptableObject$Slot;

    iget-object p1, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->firstAdded:Lorg/mozilla/javascript/ScriptableObject$Slot;

    if-ne v0, p1, :cond_4

    iput-object p3, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->firstAdded:Lorg/mozilla/javascript/ScriptableObject$Slot;

    goto :goto_4

    :cond_4
    :goto_3
    if-eqz p1, :cond_5

    iget-object p2, p1, Lorg/mozilla/javascript/ScriptableObject$Slot;->orderedNext:Lorg/mozilla/javascript/ScriptableObject$Slot;

    if-eq p2, v0, :cond_5

    move-object p1, p2

    goto :goto_3

    :cond_5
    if-eqz p1, :cond_6

    iput-object p3, p1, Lorg/mozilla/javascript/ScriptableObject$Slot;->orderedNext:Lorg/mozilla/javascript/ScriptableObject$Slot;

    :cond_6
    :goto_4
    iget-object p1, v0, Lorg/mozilla/javascript/ScriptableObject$Slot;->orderedNext:Lorg/mozilla/javascript/ScriptableObject$Slot;

    iput-object p1, p3, Lorg/mozilla/javascript/ScriptableObject$Slot;->orderedNext:Lorg/mozilla/javascript/ScriptableObject$Slot;

    iget-object p1, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->lastAdded:Lorg/mozilla/javascript/ScriptableObject$Slot;

    if-ne v0, p1, :cond_7

    iput-object p3, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->lastAdded:Lorg/mozilla/javascript/ScriptableObject$Slot;

    :cond_7
    if-ne v2, v0, :cond_8

    iget-object p0, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->slots:[Lorg/mozilla/javascript/ScriptableObject$Slot;

    aput-object p3, p0, p4

    goto :goto_5

    :cond_8
    iput-object p3, v2, Lorg/mozilla/javascript/ScriptableObject$Slot;->next:Lorg/mozilla/javascript/ScriptableObject$Slot;

    :goto_5
    return-object p3

    :cond_9
    sget-object p0, Lorg/mozilla/javascript/ScriptableObject$SlotAccess;->MODIFY_CONST:Lorg/mozilla/javascript/ScriptableObject$SlotAccess;

    if-ne p3, p0, :cond_a

    const/4 p0, 0x0

    return-object p0

    :cond_a
    return-object v0

    :cond_b
    :goto_6
    iget p4, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->count:I

    add-int/lit8 p4, p4, 0x1

    mul-int/2addr p4, v1

    iget-object v0, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->slots:[Lorg/mozilla/javascript/ScriptableObject$Slot;

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x3

    if-le p4, v1, :cond_c

    array-length p4, v0

    mul-int/lit8 p4, p4, 0x2

    new-array p4, p4, [Lorg/mozilla/javascript/ScriptableObject$Slot;

    invoke-static {v0, p4}, Lorg/mozilla/javascript/EmbeddedSlotMap;->copyTable([Lorg/mozilla/javascript/ScriptableObject$Slot;[Lorg/mozilla/javascript/ScriptableObject$Slot;)V

    iput-object p4, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->slots:[Lorg/mozilla/javascript/ScriptableObject$Slot;

    :cond_c
    sget-object p4, Lorg/mozilla/javascript/ScriptableObject$SlotAccess;->MODIFY_GETTER_SETTER:Lorg/mozilla/javascript/ScriptableObject$SlotAccess;

    const/4 v0, 0x0

    if-ne p3, p4, :cond_d

    new-instance p4, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;

    invoke-direct {p4, p1, p2, v0}, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;-><init>(Ljava/lang/Object;II)V

    goto :goto_7

    :cond_d
    new-instance p4, Lorg/mozilla/javascript/ScriptableObject$Slot;

    invoke-direct {p4, p1, p2, v0}, Lorg/mozilla/javascript/ScriptableObject$Slot;-><init>(Ljava/lang/Object;II)V

    :goto_7
    sget-object p1, Lorg/mozilla/javascript/ScriptableObject$SlotAccess;->MODIFY_CONST:Lorg/mozilla/javascript/ScriptableObject$SlotAccess;

    if-ne p3, p1, :cond_e

    const/16 p1, 0xd

    invoke-virtual {p4, p1}, Lorg/mozilla/javascript/ScriptableObject$Slot;->setAttributes(I)V

    :cond_e
    invoke-direct {p0, p4}, Lorg/mozilla/javascript/EmbeddedSlotMap;->insertNewSlot(Lorg/mozilla/javascript/ScriptableObject$Slot;)V

    return-object p4
.end method

.method private static getSlotIndex(II)I
    .locals 0

    add-int/lit8 p0, p0, -0x1

    and-int/2addr p0, p1

    return p0
.end method

.method private insertNewSlot(Lorg/mozilla/javascript/ScriptableObject$Slot;)V
    .locals 1

    iget v0, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->count:I

    iget-object v0, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->lastAdded:Lorg/mozilla/javascript/ScriptableObject$Slot;

    if-eqz v0, :cond_0

    iput-object p1, v0, Lorg/mozilla/javascript/ScriptableObject$Slot;->orderedNext:Lorg/mozilla/javascript/ScriptableObject$Slot;

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->firstAdded:Lorg/mozilla/javascript/ScriptableObject$Slot;

    if-nez v0, :cond_1

    iput-object p1, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->firstAdded:Lorg/mozilla/javascript/ScriptableObject$Slot;

    :cond_1
    iput-object p1, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->lastAdded:Lorg/mozilla/javascript/ScriptableObject$Slot;

    iget-object p0, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->slots:[Lorg/mozilla/javascript/ScriptableObject$Slot;

    invoke-static {p0, p1}, Lorg/mozilla/javascript/EmbeddedSlotMap;->addKnownAbsentSlot([Lorg/mozilla/javascript/ScriptableObject$Slot;Lorg/mozilla/javascript/ScriptableObject$Slot;)V

    return-void
.end method


# virtual methods
.method public addSlot(Lorg/mozilla/javascript/ScriptableObject$Slot;)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->slots:[Lorg/mozilla/javascript/ScriptableObject$Slot;

    if-nez v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/mozilla/javascript/ScriptableObject$Slot;

    iput-object v0, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->slots:[Lorg/mozilla/javascript/ScriptableObject$Slot;

    :cond_0
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/EmbeddedSlotMap;->insertNewSlot(Lorg/mozilla/javascript/ScriptableObject$Slot;)V

    return-void
.end method

.method public get(Ljava/lang/Object;ILorg/mozilla/javascript/ScriptableObject$SlotAccess;)Lorg/mozilla/javascript/ScriptableObject$Slot;
    .locals 3

    iget-object v0, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->slots:[Lorg/mozilla/javascript/ScriptableObject$Slot;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lorg/mozilla/javascript/ScriptableObject$SlotAccess;->QUERY:Lorg/mozilla/javascript/ScriptableObject$SlotAccess;

    if-ne p3, v0, :cond_0

    return-object v1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p2

    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->slots:[Lorg/mozilla/javascript/ScriptableObject$Slot;

    if-eqz v0, :cond_8

    array-length v0, v0

    invoke-static {v0, p2}, Lorg/mozilla/javascript/EmbeddedSlotMap;->getSlotIndex(II)I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->slots:[Lorg/mozilla/javascript/ScriptableObject$Slot;

    aget-object v0, v1, v0

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_3

    iget-object v0, v1, Lorg/mozilla/javascript/ScriptableObject$Slot;->name:Ljava/lang/Object;

    iget v2, v1, Lorg/mozilla/javascript/ScriptableObject$Slot;->indexOrHash:I

    if-ne p2, v2, :cond_2

    if-eq v0, p1, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, v1, Lorg/mozilla/javascript/ScriptableObject$Slot;->next:Lorg/mozilla/javascript/ScriptableObject$Slot;

    goto :goto_0

    :cond_3
    :goto_1
    sget-object v0, Lorg/mozilla/javascript/EmbeddedSlotMap$a;->a:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_7

    const/4 v2, 0x2

    if-eq v0, v2, :cond_6

    const/4 v2, 0x3

    if-eq v0, v2, :cond_6

    const/4 v2, 0x4

    if-eq v0, v2, :cond_5

    const/4 v2, 0x5

    if-eq v0, v2, :cond_4

    goto :goto_2

    :cond_4
    instance-of v0, v1, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;

    if-nez v0, :cond_8

    return-object v1

    :cond_5
    instance-of v0, v1, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;

    if-eqz v0, :cond_8

    return-object v1

    :cond_6
    if-eqz v1, :cond_8

    :cond_7
    return-object v1

    :cond_8
    :goto_2
    invoke-direct {p0, p1, p2, p3, v1}, Lorg/mozilla/javascript/EmbeddedSlotMap;->createSlot(Ljava/lang/Object;ILorg/mozilla/javascript/ScriptableObject$SlotAccess;Lorg/mozilla/javascript/ScriptableObject$Slot;)Lorg/mozilla/javascript/ScriptableObject$Slot;

    move-result-object p0

    return-object p0
.end method

.method public isEmpty()Z
    .locals 0

    iget p0, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->count:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/mozilla/javascript/ScriptableObject$Slot;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/mozilla/javascript/EmbeddedSlotMap$b;

    iget-object p0, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->firstAdded:Lorg/mozilla/javascript/ScriptableObject$Slot;

    invoke-direct {v0, p0}, Lorg/mozilla/javascript/EmbeddedSlotMap$b;-><init>(Lorg/mozilla/javascript/ScriptableObject$Slot;)V

    return-object v0
.end method

.method public query(Ljava/lang/Object;I)Lorg/mozilla/javascript/ScriptableObject$Slot;
    .locals 3

    iget-object v0, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->slots:[Lorg/mozilla/javascript/ScriptableObject$Slot;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p2

    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->slots:[Lorg/mozilla/javascript/ScriptableObject$Slot;

    array-length v0, v0

    invoke-static {v0, p2}, Lorg/mozilla/javascript/EmbeddedSlotMap;->getSlotIndex(II)I

    move-result v0

    iget-object p0, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->slots:[Lorg/mozilla/javascript/ScriptableObject$Slot;

    aget-object p0, p0, v0

    :goto_0
    if-eqz p0, :cond_4

    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject$Slot;->name:Ljava/lang/Object;

    iget v2, p0, Lorg/mozilla/javascript/ScriptableObject$Slot;->indexOrHash:I

    if-ne p2, v2, :cond_3

    if-eq v0, p1, :cond_2

    if-eqz p1, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    return-object p0

    :cond_3
    iget-object p0, p0, Lorg/mozilla/javascript/ScriptableObject$Slot;->next:Lorg/mozilla/javascript/ScriptableObject$Slot;

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method public remove(Ljava/lang/Object;I)V
    .locals 5

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p2

    :cond_0
    iget v0, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->count:I

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->slots:[Lorg/mozilla/javascript/ScriptableObject$Slot;

    array-length v0, v0

    invoke-static {v0, p2}, Lorg/mozilla/javascript/EmbeddedSlotMap;->getSlotIndex(II)I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->slots:[Lorg/mozilla/javascript/ScriptableObject$Slot;

    aget-object v1, v1, v0

    move-object v2, v1

    :goto_0
    if-eqz v1, :cond_2

    iget v3, v1, Lorg/mozilla/javascript/ScriptableObject$Slot;->indexOrHash:I

    if-ne v3, p2, :cond_1

    iget-object v3, v1, Lorg/mozilla/javascript/ScriptableObject$Slot;->name:Ljava/lang/Object;

    if-eq v3, p1, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, v1, Lorg/mozilla/javascript/ScriptableObject$Slot;->next:Lorg/mozilla/javascript/ScriptableObject$Slot;

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lorg/mozilla/javascript/ScriptableObject$Slot;->getAttributes()I

    move-result p2

    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_4

    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object p0

    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->isStrictMode()Z

    move-result p0

    if-nez p0, :cond_3

    return-void

    :cond_3
    const-string p0, "msg.delete.property.with.configurable.false"

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0

    :cond_4
    iget p1, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->count:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->count:I

    if-ne v2, v1, :cond_5

    iget-object p1, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->slots:[Lorg/mozilla/javascript/ScriptableObject$Slot;

    iget-object p2, v1, Lorg/mozilla/javascript/ScriptableObject$Slot;->next:Lorg/mozilla/javascript/ScriptableObject$Slot;

    aput-object p2, p1, v0

    goto :goto_2

    :cond_5
    iget-object p1, v1, Lorg/mozilla/javascript/ScriptableObject$Slot;->next:Lorg/mozilla/javascript/ScriptableObject$Slot;

    iput-object p1, v2, Lorg/mozilla/javascript/ScriptableObject$Slot;->next:Lorg/mozilla/javascript/ScriptableObject$Slot;

    :goto_2
    iget-object p1, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->firstAdded:Lorg/mozilla/javascript/ScriptableObject$Slot;

    if-ne v1, p1, :cond_6

    iget-object p1, v1, Lorg/mozilla/javascript/ScriptableObject$Slot;->orderedNext:Lorg/mozilla/javascript/ScriptableObject$Slot;

    iput-object p1, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->firstAdded:Lorg/mozilla/javascript/ScriptableObject$Slot;

    const/4 p1, 0x0

    goto :goto_4

    :cond_6
    :goto_3
    iget-object p2, p1, Lorg/mozilla/javascript/ScriptableObject$Slot;->orderedNext:Lorg/mozilla/javascript/ScriptableObject$Slot;

    if-eq p2, v1, :cond_7

    move-object p1, p2

    goto :goto_3

    :cond_7
    iget-object p2, v1, Lorg/mozilla/javascript/ScriptableObject$Slot;->orderedNext:Lorg/mozilla/javascript/ScriptableObject$Slot;

    iput-object p2, p1, Lorg/mozilla/javascript/ScriptableObject$Slot;->orderedNext:Lorg/mozilla/javascript/ScriptableObject$Slot;

    :goto_4
    iget-object p2, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->lastAdded:Lorg/mozilla/javascript/ScriptableObject$Slot;

    if-ne v1, p2, :cond_8

    iput-object p1, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->lastAdded:Lorg/mozilla/javascript/ScriptableObject$Slot;

    :cond_8
    return-void
.end method

.method public size()I
    .locals 0

    iget p0, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->count:I

    return p0
.end method
