.class public final enum Lcom/mgadplus/mgutil/SourceKitLogger$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgadplus/mgutil/SourceKitLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mgadplus/mgutil/SourceKitLogger$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mgadplus/mgutil/SourceKitLogger$a;

.field public static final enum alldebug:Lcom/mgadplus/mgutil/SourceKitLogger$a;

.field public static final enum debug:Lcom/mgadplus/mgutil/SourceKitLogger$a;

.field public static final enum error:Lcom/mgadplus/mgutil/SourceKitLogger$a;

.field public static final enum info:Lcom/mgadplus/mgutil/SourceKitLogger$a;

.field public static final enum invalid:Lcom/mgadplus/mgutil/SourceKitLogger$a;

.field public static final enum verbose:Lcom/mgadplus/mgutil/SourceKitLogger$a;

.field public static final enum warning:Lcom/mgadplus/mgutil/SourceKitLogger$a;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/mgadplus/mgutil/SourceKitLogger$a;

    const-string v1, "verbose"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/mgadplus/mgutil/SourceKitLogger$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mgadplus/mgutil/SourceKitLogger$a;->verbose:Lcom/mgadplus/mgutil/SourceKitLogger$a;

    new-instance v1, Lcom/mgadplus/mgutil/SourceKitLogger$a;

    const-string v2, "debug"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/mgadplus/mgutil/SourceKitLogger$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/mgadplus/mgutil/SourceKitLogger$a;->debug:Lcom/mgadplus/mgutil/SourceKitLogger$a;

    new-instance v2, Lcom/mgadplus/mgutil/SourceKitLogger$a;

    const-string v3, "info"

    const/4 v5, 0x3

    invoke-direct {v2, v3, v4, v5}, Lcom/mgadplus/mgutil/SourceKitLogger$a;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/mgadplus/mgutil/SourceKitLogger$a;->info:Lcom/mgadplus/mgutil/SourceKitLogger$a;

    new-instance v3, Lcom/mgadplus/mgutil/SourceKitLogger$a;

    const-string v4, "warning"

    const/4 v6, 0x4

    invoke-direct {v3, v4, v5, v6}, Lcom/mgadplus/mgutil/SourceKitLogger$a;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/mgadplus/mgutil/SourceKitLogger$a;->warning:Lcom/mgadplus/mgutil/SourceKitLogger$a;

    new-instance v4, Lcom/mgadplus/mgutil/SourceKitLogger$a;

    const-string v5, "error"

    const/4 v7, 0x5

    invoke-direct {v4, v5, v6, v7}, Lcom/mgadplus/mgutil/SourceKitLogger$a;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/mgadplus/mgutil/SourceKitLogger$a;->error:Lcom/mgadplus/mgutil/SourceKitLogger$a;

    new-instance v5, Lcom/mgadplus/mgutil/SourceKitLogger$a;

    const-string v6, "alldebug"

    const/4 v8, 0x6

    invoke-direct {v5, v6, v7, v8}, Lcom/mgadplus/mgutil/SourceKitLogger$a;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/mgadplus/mgutil/SourceKitLogger$a;->alldebug:Lcom/mgadplus/mgutil/SourceKitLogger$a;

    new-instance v6, Lcom/mgadplus/mgutil/SourceKitLogger$a;

    const-string v7, "invalid"

    const/4 v9, 0x7

    invoke-direct {v6, v7, v8, v9}, Lcom/mgadplus/mgutil/SourceKitLogger$a;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/mgadplus/mgutil/SourceKitLogger$a;->invalid:Lcom/mgadplus/mgutil/SourceKitLogger$a;

    filled-new-array/range {v0 .. v6}, [Lcom/mgadplus/mgutil/SourceKitLogger$a;

    move-result-object v0

    sput-object v0, Lcom/mgadplus/mgutil/SourceKitLogger$a;->$VALUES:[Lcom/mgadplus/mgutil/SourceKitLogger$a;

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

    iput p3, p0, Lcom/mgadplus/mgutil/SourceKitLogger$a;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mgadplus/mgutil/SourceKitLogger$a;
    .locals 1

    const-class v0, Lcom/mgadplus/mgutil/SourceKitLogger$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mgadplus/mgutil/SourceKitLogger$a;

    return-object p0
.end method

.method public static values()[Lcom/mgadplus/mgutil/SourceKitLogger$a;
    .locals 1

    sget-object v0, Lcom/mgadplus/mgutil/SourceKitLogger$a;->$VALUES:[Lcom/mgadplus/mgutil/SourceKitLogger$a;

    invoke-virtual {v0}, [Lcom/mgadplus/mgutil/SourceKitLogger$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mgadplus/mgutil/SourceKitLogger$a;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    iget p0, p0, Lcom/mgadplus/mgutil/SourceKitLogger$a;->value:I

    return p0
.end method
