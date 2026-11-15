.class final enum Lcom/bumptech/glide/repackaged/com/google/common/collect/AbstractIterator$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/repackaged/com/google/common/collect/AbstractIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bumptech/glide/repackaged/com/google/common/collect/AbstractIterator$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bumptech/glide/repackaged/com/google/common/collect/AbstractIterator$State;

.field public static final enum DONE:Lcom/bumptech/glide/repackaged/com/google/common/collect/AbstractIterator$State;

.field public static final enum FAILED:Lcom/bumptech/glide/repackaged/com/google/common/collect/AbstractIterator$State;

.field public static final enum NOT_READY:Lcom/bumptech/glide/repackaged/com/google/common/collect/AbstractIterator$State;

.field public static final enum READY:Lcom/bumptech/glide/repackaged/com/google/common/collect/AbstractIterator$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/bumptech/glide/repackaged/com/google/common/collect/AbstractIterator$State;

    const-string v1, "READY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/repackaged/com/google/common/collect/AbstractIterator$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/repackaged/com/google/common/collect/AbstractIterator$State;->READY:Lcom/bumptech/glide/repackaged/com/google/common/collect/AbstractIterator$State;

    new-instance v1, Lcom/bumptech/glide/repackaged/com/google/common/collect/AbstractIterator$State;

    const-string v2, "NOT_READY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/bumptech/glide/repackaged/com/google/common/collect/AbstractIterator$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/bumptech/glide/repackaged/com/google/common/collect/AbstractIterator$State;->NOT_READY:Lcom/bumptech/glide/repackaged/com/google/common/collect/AbstractIterator$State;

    new-instance v2, Lcom/bumptech/glide/repackaged/com/google/common/collect/AbstractIterator$State;

    const-string v3, "DONE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/bumptech/glide/repackaged/com/google/common/collect/AbstractIterator$State;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/bumptech/glide/repackaged/com/google/common/collect/AbstractIterator$State;->DONE:Lcom/bumptech/glide/repackaged/com/google/common/collect/AbstractIterator$State;

    new-instance v3, Lcom/bumptech/glide/repackaged/com/google/common/collect/AbstractIterator$State;

    const-string v4, "FAILED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/bumptech/glide/repackaged/com/google/common/collect/AbstractIterator$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/bumptech/glide/repackaged/com/google/common/collect/AbstractIterator$State;->FAILED:Lcom/bumptech/glide/repackaged/com/google/common/collect/AbstractIterator$State;

    filled-new-array {v0, v1, v2, v3}, [Lcom/bumptech/glide/repackaged/com/google/common/collect/AbstractIterator$State;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/repackaged/com/google/common/collect/AbstractIterator$State;->$VALUES:[Lcom/bumptech/glide/repackaged/com/google/common/collect/AbstractIterator$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/bumptech/glide/repackaged/com/google/common/collect/AbstractIterator$State;
    .locals 1

    sget-object v0, Lcom/bumptech/glide/repackaged/com/google/common/collect/AbstractIterator$State;->$VALUES:[Lcom/bumptech/glide/repackaged/com/google/common/collect/AbstractIterator$State;

    invoke-virtual {v0}, [Lcom/bumptech/glide/repackaged/com/google/common/collect/AbstractIterator$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bumptech/glide/repackaged/com/google/common/collect/AbstractIterator$State;

    return-object v0
.end method
