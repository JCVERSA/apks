.class public final enum Landroidx/datastore/preferences/protobuf/DescriptorProtos$ExtensionRangeOptions$VerificationState;
.super Ljava/lang/Enum;
.source "source.java"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/w$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/datastore/preferences/protobuf/DescriptorProtos$ExtensionRangeOptions$VerificationState$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/datastore/preferences/protobuf/DescriptorProtos$ExtensionRangeOptions$VerificationState;",
        ">;",
        "Landroidx/datastore/preferences/protobuf/w$a;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/datastore/preferences/protobuf/DescriptorProtos$ExtensionRangeOptions$VerificationState;

.field public static final enum DECLARATION:Landroidx/datastore/preferences/protobuf/DescriptorProtos$ExtensionRangeOptions$VerificationState;

.field public static final DECLARATION_VALUE:I = 0x0

.field public static final enum UNVERIFIED:Landroidx/datastore/preferences/protobuf/DescriptorProtos$ExtensionRangeOptions$VerificationState;

.field public static final UNVERIFIED_VALUE:I = 0x1

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
    .locals 5

    .line 1
    new-instance v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$ExtensionRangeOptions$VerificationState;

    .line 2
    .line 3
    const-string v1, "DECLARATION"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$ExtensionRangeOptions$VerificationState;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$ExtensionRangeOptions$VerificationState;->DECLARATION:Landroidx/datastore/preferences/protobuf/DescriptorProtos$ExtensionRangeOptions$VerificationState;

    .line 10
    .line 11
    new-instance v1, Landroidx/datastore/preferences/protobuf/DescriptorProtos$ExtensionRangeOptions$VerificationState;

    .line 12
    .line 13
    const-string v3, "UNVERIFIED"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4, v4}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$ExtensionRangeOptions$VerificationState;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Landroidx/datastore/preferences/protobuf/DescriptorProtos$ExtensionRangeOptions$VerificationState;->UNVERIFIED:Landroidx/datastore/preferences/protobuf/DescriptorProtos$ExtensionRangeOptions$VerificationState;

    .line 20
    .line 21
    const/4 v3, 0x2

    .line 22
    new-array v3, v3, [Landroidx/datastore/preferences/protobuf/DescriptorProtos$ExtensionRangeOptions$VerificationState;

    .line 23
    .line 24
    aput-object v0, v3, v2

    .line 25
    .line 26
    aput-object v1, v3, v4

    .line 27
    .line 28
    sput-object v3, Landroidx/datastore/preferences/protobuf/DescriptorProtos$ExtensionRangeOptions$VerificationState;->$VALUES:[Landroidx/datastore/preferences/protobuf/DescriptorProtos$ExtensionRangeOptions$VerificationState;

    .line 29
    .line 30
    new-instance v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$ExtensionRangeOptions$VerificationState$a;

    .line 31
    .line 32
    invoke-direct {v0}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$ExtensionRangeOptions$VerificationState$a;-><init>()V

    .line 33
    .line 34
    .line 35
    sput-object v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$ExtensionRangeOptions$VerificationState;->internalValueMap:Landroidx/datastore/preferences/protobuf/w$b;

    .line 36
    .line 37
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
    iput p3, p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$ExtensionRangeOptions$VerificationState;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static forNumber(I)Landroidx/datastore/preferences/protobuf/DescriptorProtos$ExtensionRangeOptions$VerificationState;
    .locals 1

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    return-object p0

    .line 8
    :cond_0
    sget-object p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$ExtensionRangeOptions$VerificationState;->UNVERIFIED:Landroidx/datastore/preferences/protobuf/DescriptorProtos$ExtensionRangeOptions$VerificationState;

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_1
    sget-object p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$ExtensionRangeOptions$VerificationState;->DECLARATION:Landroidx/datastore/preferences/protobuf/DescriptorProtos$ExtensionRangeOptions$VerificationState;

    .line 12
    .line 13
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
    sget-object v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$ExtensionRangeOptions$VerificationState;->internalValueMap:Landroidx/datastore/preferences/protobuf/w$b;

    .line 2
    .line 3
    return-object v0
.end method

.method public static internalGetVerifier()Landroidx/datastore/preferences/protobuf/w$c;
    .locals 1

    .line 1
    sget-object v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$ExtensionRangeOptions$VerificationState$b;->a:Landroidx/datastore/preferences/protobuf/w$c;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(I)Landroidx/datastore/preferences/protobuf/DescriptorProtos$ExtensionRangeOptions$VerificationState;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$ExtensionRangeOptions$VerificationState;->forNumber(I)Landroidx/datastore/preferences/protobuf/DescriptorProtos$ExtensionRangeOptions$VerificationState;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/datastore/preferences/protobuf/DescriptorProtos$ExtensionRangeOptions$VerificationState;
    .locals 1

    .line 1
    const-class v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$ExtensionRangeOptions$VerificationState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$ExtensionRangeOptions$VerificationState;

    return-object p0
.end method

.method public static values()[Landroidx/datastore/preferences/protobuf/DescriptorProtos$ExtensionRangeOptions$VerificationState;
    .locals 1

    .line 1
    sget-object v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$ExtensionRangeOptions$VerificationState;->$VALUES:[Landroidx/datastore/preferences/protobuf/DescriptorProtos$ExtensionRangeOptions$VerificationState;

    .line 2
    .line 3
    invoke-virtual {v0}, [Landroidx/datastore/preferences/protobuf/DescriptorProtos$ExtensionRangeOptions$VerificationState;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Landroidx/datastore/preferences/protobuf/DescriptorProtos$ExtensionRangeOptions$VerificationState;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$ExtensionRangeOptions$VerificationState;->value:I

    .line 2
    .line 3
    return v0
.end method
