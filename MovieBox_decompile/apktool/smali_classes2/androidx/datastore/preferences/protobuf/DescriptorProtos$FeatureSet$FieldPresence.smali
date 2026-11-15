.class public final enum Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$FieldPresence;
.super Ljava/lang/Enum;
.source "source.java"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/w$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$FieldPresence$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$FieldPresence;",
        ">;",
        "Landroidx/datastore/preferences/protobuf/w$a;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$FieldPresence;

.field public static final enum EXPLICIT:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$FieldPresence;

.field public static final EXPLICIT_VALUE:I = 0x1

.field public static final enum FIELD_PRESENCE_UNKNOWN:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$FieldPresence;

.field public static final FIELD_PRESENCE_UNKNOWN_VALUE:I = 0x0

.field public static final enum IMPLICIT:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$FieldPresence;

.field public static final IMPLICIT_VALUE:I = 0x2

.field public static final enum LEGACY_REQUIRED:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$FieldPresence;

.field public static final LEGACY_REQUIRED_VALUE:I = 0x3

.field private static final internalValueMap:Landroidx/datastore/preferences/protobuf/w$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/protobuf/w$b;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$FieldPresence;

    .line 2
    .line 3
    const-string v1, "FIELD_PRESENCE_UNKNOWN"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$FieldPresence;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$FieldPresence;->FIELD_PRESENCE_UNKNOWN:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$FieldPresence;

    .line 10
    .line 11
    new-instance v1, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$FieldPresence;

    .line 12
    .line 13
    const-string v3, "EXPLICIT"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4, v4}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$FieldPresence;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$FieldPresence;->EXPLICIT:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$FieldPresence;

    .line 20
    .line 21
    new-instance v3, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$FieldPresence;

    .line 22
    .line 23
    const-string v5, "IMPLICIT"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6, v6}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$FieldPresence;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$FieldPresence;->IMPLICIT:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$FieldPresence;

    .line 30
    .line 31
    new-instance v5, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$FieldPresence;

    .line 32
    .line 33
    const-string v7, "LEGACY_REQUIRED"

    .line 34
    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8, v8}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$FieldPresence;-><init>(Ljava/lang/String;II)V

    .line 37
    .line 38
    .line 39
    sput-object v5, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$FieldPresence;->LEGACY_REQUIRED:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$FieldPresence;

    .line 40
    .line 41
    const/4 v7, 0x4

    .line 42
    new-array v7, v7, [Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$FieldPresence;

    .line 43
    .line 44
    aput-object v0, v7, v2

    .line 45
    .line 46
    aput-object v1, v7, v4

    .line 47
    .line 48
    aput-object v3, v7, v6

    .line 49
    .line 50
    aput-object v5, v7, v8

    .line 51
    .line 52
    sput-object v7, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$FieldPresence;->$VALUES:[Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$FieldPresence;

    .line 53
    .line 54
    new-instance v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$FieldPresence$a;

    .line 55
    .line 56
    invoke-direct {v0}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$FieldPresence$a;-><init>()V

    .line 57
    .line 58
    .line 59
    sput-object v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$FieldPresence;->internalValueMap:Landroidx/datastore/preferences/protobuf/w$b;

    .line 60
    .line 61
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$FieldPresence;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static forNumber(I)Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$FieldPresence;
    .locals 1

    .line 1
    if-eqz p0, :cond_3

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_2

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p0, v0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    return-object p0

    .line 14
    :cond_0
    sget-object p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$FieldPresence;->LEGACY_REQUIRED:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$FieldPresence;

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_1
    sget-object p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$FieldPresence;->IMPLICIT:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$FieldPresence;

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_2
    sget-object p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$FieldPresence;->EXPLICIT:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$FieldPresence;

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_3
    sget-object p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$FieldPresence;->FIELD_PRESENCE_UNKNOWN:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$FieldPresence;

    .line 24
    .line 25
    return-object p0
.end method

.method public static internalGetValueMap()Landroidx/datastore/preferences/protobuf/w$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/protobuf/w$b;"
        }
    .end annotation

    .line 1
    sget-object v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$FieldPresence;->internalValueMap:Landroidx/datastore/preferences/protobuf/w$b;

    .line 2
    .line 3
    return-object v0
.end method

.method public static internalGetVerifier()Landroidx/datastore/preferences/protobuf/w$c;
    .locals 1

    .line 1
    sget-object v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$FieldPresence$b;->a:Landroidx/datastore/preferences/protobuf/w$c;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(I)Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$FieldPresence;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$FieldPresence;->forNumber(I)Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$FieldPresence;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$FieldPresence;
    .locals 1

    .line 1
    const-class v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$FieldPresence;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$FieldPresence;

    return-object p0
.end method

.method public static values()[Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$FieldPresence;
    .locals 1

    .line 1
    sget-object v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$FieldPresence;->$VALUES:[Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$FieldPresence;

    .line 2
    .line 3
    invoke-virtual {v0}, [Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$FieldPresence;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$FieldPresence;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$FieldPresence;->value:I

    .line 2
    .line 3
    return v0
.end method
