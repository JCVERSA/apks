.class public final enum Lcom/hunantv/media/utils/LocalHelper$MediaType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/utils/LocalHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MediaType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hunantv/media/utils/LocalHelper$MediaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hunantv/media/utils/LocalHelper$MediaType;

.field public static final enum HLS:Lcom/hunantv/media/utils/LocalHelper$MediaType;

.field public static final enum MP4:Lcom/hunantv/media/utils/LocalHelper$MediaType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/hunantv/media/utils/LocalHelper$MediaType;

    const-string v1, "MP4"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hunantv/media/utils/LocalHelper$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hunantv/media/utils/LocalHelper$MediaType;->MP4:Lcom/hunantv/media/utils/LocalHelper$MediaType;

    new-instance v1, Lcom/hunantv/media/utils/LocalHelper$MediaType;

    const-string v2, "HLS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/hunantv/media/utils/LocalHelper$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hunantv/media/utils/LocalHelper$MediaType;->HLS:Lcom/hunantv/media/utils/LocalHelper$MediaType;

    filled-new-array {v0, v1}, [Lcom/hunantv/media/utils/LocalHelper$MediaType;

    move-result-object v0

    sput-object v0, Lcom/hunantv/media/utils/LocalHelper$MediaType;->$VALUES:[Lcom/hunantv/media/utils/LocalHelper$MediaType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/hunantv/media/utils/LocalHelper$MediaType;
    .locals 1

    const-class v0, Lcom/hunantv/media/utils/LocalHelper$MediaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hunantv/media/utils/LocalHelper$MediaType;

    return-object p0
.end method

.method public static values()[Lcom/hunantv/media/utils/LocalHelper$MediaType;
    .locals 1

    sget-object v0, Lcom/hunantv/media/utils/LocalHelper$MediaType;->$VALUES:[Lcom/hunantv/media/utils/LocalHelper$MediaType;

    invoke-virtual {v0}, [Lcom/hunantv/media/utils/LocalHelper$MediaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hunantv/media/utils/LocalHelper$MediaType;

    return-object v0
.end method
