.class public final enum Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Algorithm;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Algorithm"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Algorithm$AlgorithmVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Algorithm;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Algorithm;

.field public static final enum AESCTR:Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Algorithm;

.field public static final AESCTR_VALUE:I = 0x1

.field public static final enum UNENCRYPTED:Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Algorithm;

.field public static final UNENCRYPTED_VALUE:I

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Algorithm;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Algorithm;

    const-string v1, "UNENCRYPTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Algorithm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Algorithm;->UNENCRYPTED:Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Algorithm;

    new-instance v1, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Algorithm;

    const-string v2, "AESCTR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Algorithm;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Algorithm;->AESCTR:Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Algorithm;

    filled-new-array {v0, v1}, [Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Algorithm;

    move-result-object v0

    sput-object v0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Algorithm;->$VALUES:[Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Algorithm;

    new-instance v0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Algorithm$1;

    invoke-direct {v0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Algorithm$1;-><init>()V

    sput-object v0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Algorithm;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Algorithm;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Algorithm;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Algorithm;->AESCTR:Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Algorithm;

    return-object p0

    :cond_1
    sget-object p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Algorithm;->UNENCRYPTED:Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Algorithm;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Algorithm;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Algorithm;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    sget-object v0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Algorithm$AlgorithmVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Algorithm;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Algorithm;->forNumber(I)Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Algorithm;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Algorithm;
    .locals 1

    .line 2
    const-class v0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Algorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Algorithm;

    return-object p0
.end method

.method public static values()[Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Algorithm;
    .locals 1

    sget-object v0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Algorithm;->$VALUES:[Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Algorithm;

    invoke-virtual {v0}, [Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Algorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Algorithm;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Algorithm;->value:I

    return p0
.end method
