.class public final enum Lcom/mgadplus/permission/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mgadplus/permission/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mgadplus/permission/b;

.field public static final enum DENIED:Lcom/mgadplus/permission/b;

.field public static final enum GRANT:Lcom/mgadplus/permission/b;

.field public static final enum IGNORE:Lcom/mgadplus/permission/b;


# instance fields
.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/mgadplus/permission/b;

    const-string v1, "GRANT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/mgadplus/permission/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mgadplus/permission/b;->GRANT:Lcom/mgadplus/permission/b;

    new-instance v1, Lcom/mgadplus/permission/b;

    const/4 v2, 0x1

    const/4 v3, -0x1

    const-string v4, "DENIED"

    invoke-direct {v1, v4, v2, v3}, Lcom/mgadplus/permission/b;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/mgadplus/permission/b;->DENIED:Lcom/mgadplus/permission/b;

    new-instance v2, Lcom/mgadplus/permission/b;

    const/4 v3, 0x2

    const/4 v4, -0x2

    const-string v5, "IGNORE"

    invoke-direct {v2, v5, v3, v4}, Lcom/mgadplus/permission/b;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/mgadplus/permission/b;->IGNORE:Lcom/mgadplus/permission/b;

    filled-new-array {v0, v1, v2}, [Lcom/mgadplus/permission/b;

    move-result-object v0

    sput-object v0, Lcom/mgadplus/permission/b;->$VALUES:[Lcom/mgadplus/permission/b;

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

    iput p3, p0, Lcom/mgadplus/permission/b;->type:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mgadplus/permission/b;
    .locals 1

    const-class v0, Lcom/mgadplus/permission/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mgadplus/permission/b;

    return-object p0
.end method

.method public static values()[Lcom/mgadplus/permission/b;
    .locals 1

    sget-object v0, Lcom/mgadplus/permission/b;->$VALUES:[Lcom/mgadplus/permission/b;

    invoke-virtual {v0}, [Lcom/mgadplus/permission/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mgadplus/permission/b;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    iget p0, p0, Lcom/mgadplus/permission/b;->type:I

    return p0
.end method
