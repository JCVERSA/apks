.class public final enum Lcom/google/android/gms/fido/fido2/api/common/EC2Algorithm;
.super Ljava/lang/Enum;
.source "source.java"

# interfaces
.implements Lcom/google/android/gms/fido/fido2/api/common/Algorithm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/fido/fido2/api/common/EC2Algorithm;",
        ">;",
        "Lcom/google/android/gms/fido/fido2/api/common/Algorithm;"
    }
.end annotation


# static fields
.field public static final enum ED25519:Lcom/google/android/gms/fido/fido2/api/common/EC2Algorithm;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final enum ED256:Lcom/google/android/gms/fido/fido2/api/common/EC2Algorithm;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final enum ED512:Lcom/google/android/gms/fido/fido2/api/common/EC2Algorithm;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final enum ES256:Lcom/google/android/gms/fido/fido2/api/common/EC2Algorithm;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final enum ES384:Lcom/google/android/gms/fido/fido2/api/common/EC2Algorithm;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final enum ES512:Lcom/google/android/gms/fido/fido2/api/common/EC2Algorithm;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private static final synthetic zza:[Lcom/google/android/gms/fido/fido2/api/common/EC2Algorithm;


# instance fields
.field private final zzb:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Lcom/google/android/gms/fido/fido2/api/common/EC2Algorithm;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, -0x104

    .line 5
    .line 6
    const-string v3, "ED256"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/fido/fido2/api/common/EC2Algorithm;-><init>(Ljava/lang/String;II)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/google/android/gms/fido/fido2/api/common/EC2Algorithm;->ED256:Lcom/google/android/gms/fido/fido2/api/common/EC2Algorithm;

    .line 12
    .line 13
    new-instance v2, Lcom/google/android/gms/fido/fido2/api/common/EC2Algorithm;

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    const/16 v4, -0x105

    .line 17
    .line 18
    const-string v5, "ED512"

    .line 19
    .line 20
    invoke-direct {v2, v5, v3, v4}, Lcom/google/android/gms/fido/fido2/api/common/EC2Algorithm;-><init>(Ljava/lang/String;II)V

    .line 21
    .line 22
    .line 23
    sput-object v2, Lcom/google/android/gms/fido/fido2/api/common/EC2Algorithm;->ED512:Lcom/google/android/gms/fido/fido2/api/common/EC2Algorithm;

    .line 24
    .line 25
    new-instance v4, Lcom/google/android/gms/fido/fido2/api/common/EC2Algorithm;

    .line 26
    .line 27
    const/4 v5, 0x2

    .line 28
    const/4 v6, -0x8

    .line 29
    const-string v7, "ED25519"

    .line 30
    .line 31
    invoke-direct {v4, v7, v5, v6}, Lcom/google/android/gms/fido/fido2/api/common/EC2Algorithm;-><init>(Ljava/lang/String;II)V

    .line 32
    .line 33
    .line 34
    sput-object v4, Lcom/google/android/gms/fido/fido2/api/common/EC2Algorithm;->ED25519:Lcom/google/android/gms/fido/fido2/api/common/EC2Algorithm;

    .line 35
    .line 36
    new-instance v6, Lcom/google/android/gms/fido/fido2/api/common/EC2Algorithm;

    .line 37
    .line 38
    const/4 v7, 0x3

    .line 39
    const/4 v8, -0x7

    .line 40
    const-string v9, "ES256"

    .line 41
    .line 42
    invoke-direct {v6, v9, v7, v8}, Lcom/google/android/gms/fido/fido2/api/common/EC2Algorithm;-><init>(Ljava/lang/String;II)V

    .line 43
    .line 44
    .line 45
    sput-object v6, Lcom/google/android/gms/fido/fido2/api/common/EC2Algorithm;->ES256:Lcom/google/android/gms/fido/fido2/api/common/EC2Algorithm;

    .line 46
    .line 47
    new-instance v8, Lcom/google/android/gms/fido/fido2/api/common/EC2Algorithm;

    .line 48
    .line 49
    const/4 v9, 0x4

    .line 50
    const/16 v10, -0x23

    .line 51
    .line 52
    const-string v11, "ES384"

    .line 53
    .line 54
    invoke-direct {v8, v11, v9, v10}, Lcom/google/android/gms/fido/fido2/api/common/EC2Algorithm;-><init>(Ljava/lang/String;II)V

    .line 55
    .line 56
    .line 57
    sput-object v8, Lcom/google/android/gms/fido/fido2/api/common/EC2Algorithm;->ES384:Lcom/google/android/gms/fido/fido2/api/common/EC2Algorithm;

    .line 58
    .line 59
    new-instance v10, Lcom/google/android/gms/fido/fido2/api/common/EC2Algorithm;

    .line 60
    .line 61
    const/4 v11, 0x5

    .line 62
    const/16 v12, -0x24

    .line 63
    .line 64
    const-string v13, "ES512"

    .line 65
    .line 66
    invoke-direct {v10, v13, v11, v12}, Lcom/google/android/gms/fido/fido2/api/common/EC2Algorithm;-><init>(Ljava/lang/String;II)V

    .line 67
    .line 68
    .line 69
    sput-object v10, Lcom/google/android/gms/fido/fido2/api/common/EC2Algorithm;->ES512:Lcom/google/android/gms/fido/fido2/api/common/EC2Algorithm;

    .line 70
    .line 71
    const/4 v12, 0x6

    .line 72
    new-array v12, v12, [Lcom/google/android/gms/fido/fido2/api/common/EC2Algorithm;

    .line 73
    .line 74
    aput-object v0, v12, v1

    .line 75
    .line 76
    aput-object v2, v12, v3

    .line 77
    .line 78
    aput-object v4, v12, v5

    .line 79
    .line 80
    aput-object v6, v12, v7

    .line 81
    .line 82
    aput-object v8, v12, v9

    .line 83
    .line 84
    aput-object v10, v12, v11

    .line 85
    .line 86
    sput-object v12, Lcom/google/android/gms/fido/fido2/api/common/EC2Algorithm;->zza:[Lcom/google/android/gms/fido/fido2/api/common/EC2Algorithm;

    .line 87
    .line 88
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/google/android/gms/fido/fido2/api/common/EC2Algorithm;->zzb:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gms/fido/fido2/api/common/EC2Algorithm;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const-class v0, Lcom/google/android/gms/fido/fido2/api/common/EC2Algorithm;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/android/gms/fido/fido2/api/common/EC2Algorithm;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/google/android/gms/fido/fido2/api/common/EC2Algorithm;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/fido/fido2/api/common/EC2Algorithm;->zza:[Lcom/google/android/gms/fido/fido2/api/common/EC2Algorithm;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/android/gms/fido/fido2/api/common/EC2Algorithm;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/android/gms/fido/fido2/api/common/EC2Algorithm;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getAlgoValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/fido/fido2/api/common/EC2Algorithm;->zzb:I

    .line 2
    .line 3
    return v0
.end method
