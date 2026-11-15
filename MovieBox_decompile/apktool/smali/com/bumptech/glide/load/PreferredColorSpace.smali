.class public final enum Lcom/bumptech/glide/load/PreferredColorSpace;
.super Ljava/lang/Enum;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bumptech/glide/load/PreferredColorSpace;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bumptech/glide/load/PreferredColorSpace;

.field public static final enum DISPLAY_P3:Lcom/bumptech/glide/load/PreferredColorSpace;

.field public static final enum SRGB:Lcom/bumptech/glide/load/PreferredColorSpace;


# direct methods
.method private static synthetic $values()[Lcom/bumptech/glide/load/PreferredColorSpace;
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Lcom/bumptech/glide/load/PreferredColorSpace;

    .line 3
    .line 4
    sget-object v1, Lcom/bumptech/glide/load/PreferredColorSpace;->SRGB:Lcom/bumptech/glide/load/PreferredColorSpace;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lcom/bumptech/glide/load/PreferredColorSpace;->DISPLAY_P3:Lcom/bumptech/glide/load/PreferredColorSpace;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/bumptech/glide/load/PreferredColorSpace;

    .line 2
    .line 3
    const-string v1, "SRGB"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/PreferredColorSpace;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/bumptech/glide/load/PreferredColorSpace;->SRGB:Lcom/bumptech/glide/load/PreferredColorSpace;

    .line 10
    .line 11
    new-instance v0, Lcom/bumptech/glide/load/PreferredColorSpace;

    .line 12
    .line 13
    const-string v1, "DISPLAY_P3"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/PreferredColorSpace;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/bumptech/glide/load/PreferredColorSpace;->DISPLAY_P3:Lcom/bumptech/glide/load/PreferredColorSpace;

    .line 20
    .line 21
    invoke-static {}, Lcom/bumptech/glide/load/PreferredColorSpace;->$values()[Lcom/bumptech/glide/load/PreferredColorSpace;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lcom/bumptech/glide/load/PreferredColorSpace;->$VALUES:[Lcom/bumptech/glide/load/PreferredColorSpace;

    .line 26
    .line 27
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bumptech/glide/load/PreferredColorSpace;
    .locals 1

    .line 1
    const-class v0, Lcom/bumptech/glide/load/PreferredColorSpace;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/bumptech/glide/load/PreferredColorSpace;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/bumptech/glide/load/PreferredColorSpace;
    .locals 1

    .line 1
    sget-object v0, Lcom/bumptech/glide/load/PreferredColorSpace;->$VALUES:[Lcom/bumptech/glide/load/PreferredColorSpace;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/bumptech/glide/load/PreferredColorSpace;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/bumptech/glide/load/PreferredColorSpace;

    .line 8
    .line 9
    return-object v0
.end method
