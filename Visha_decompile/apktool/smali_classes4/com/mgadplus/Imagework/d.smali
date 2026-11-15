.class public final enum Lcom/mgadplus/Imagework/d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mgadplus/Imagework/d;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mgadplus/Imagework/d;

.field public static final enum ALL:Lcom/mgadplus/Imagework/d;

.field public static final enum NONE:Lcom/mgadplus/Imagework/d;


# instance fields
.field private strategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/mgadplus/Imagework/d;

    const/4 v1, 0x0

    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    const-string v3, "NONE"

    invoke-direct {v0, v3, v1, v2}, Lcom/mgadplus/Imagework/d;-><init>(Ljava/lang/String;ILcom/bumptech/glide/load/engine/DiskCacheStrategy;)V

    sput-object v0, Lcom/mgadplus/Imagework/d;->NONE:Lcom/mgadplus/Imagework/d;

    new-instance v1, Lcom/mgadplus/Imagework/d;

    const/4 v2, 0x1

    sget-object v3, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    const-string v4, "ALL"

    invoke-direct {v1, v4, v2, v3}, Lcom/mgadplus/Imagework/d;-><init>(Ljava/lang/String;ILcom/bumptech/glide/load/engine/DiskCacheStrategy;)V

    sput-object v1, Lcom/mgadplus/Imagework/d;->ALL:Lcom/mgadplus/Imagework/d;

    filled-new-array {v0, v1}, [Lcom/mgadplus/Imagework/d;

    move-result-object v0

    sput-object v0, Lcom/mgadplus/Imagework/d;->$VALUES:[Lcom/mgadplus/Imagework/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/bumptech/glide/load/engine/DiskCacheStrategy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/DiskCacheStrategy;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/mgadplus/Imagework/d;->strategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mgadplus/Imagework/d;
    .locals 1

    const-class v0, Lcom/mgadplus/Imagework/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mgadplus/Imagework/d;

    return-object p0
.end method

.method public static values()[Lcom/mgadplus/Imagework/d;
    .locals 1

    sget-object v0, Lcom/mgadplus/Imagework/d;->$VALUES:[Lcom/mgadplus/Imagework/d;

    invoke-virtual {v0}, [Lcom/mgadplus/Imagework/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mgadplus/Imagework/d;

    return-object v0
.end method


# virtual methods
.method public getStrategy()Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/Imagework/d;->strategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    return-object p0
.end method
