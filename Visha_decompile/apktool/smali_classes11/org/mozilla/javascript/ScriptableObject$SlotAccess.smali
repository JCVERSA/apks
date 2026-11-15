.class final enum Lorg/mozilla/javascript/ScriptableObject$SlotAccess;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/ScriptableObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SlotAccess"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/mozilla/javascript/ScriptableObject$SlotAccess;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CONVERT_ACCESSOR_TO_DATA:Lorg/mozilla/javascript/ScriptableObject$SlotAccess;

.field public static final enum MODIFY:Lorg/mozilla/javascript/ScriptableObject$SlotAccess;

.field public static final enum MODIFY_CONST:Lorg/mozilla/javascript/ScriptableObject$SlotAccess;

.field public static final enum MODIFY_GETTER_SETTER:Lorg/mozilla/javascript/ScriptableObject$SlotAccess;

.field public static final enum QUERY:Lorg/mozilla/javascript/ScriptableObject$SlotAccess;

.field public static final synthetic b:[Lorg/mozilla/javascript/ScriptableObject$SlotAccess;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/mozilla/javascript/ScriptableObject$SlotAccess;

    const-string v1, "QUERY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/ScriptableObject$SlotAccess;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/javascript/ScriptableObject$SlotAccess;->QUERY:Lorg/mozilla/javascript/ScriptableObject$SlotAccess;

    new-instance v1, Lorg/mozilla/javascript/ScriptableObject$SlotAccess;

    const-string v2, "MODIFY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/mozilla/javascript/ScriptableObject$SlotAccess;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/mozilla/javascript/ScriptableObject$SlotAccess;->MODIFY:Lorg/mozilla/javascript/ScriptableObject$SlotAccess;

    new-instance v2, Lorg/mozilla/javascript/ScriptableObject$SlotAccess;

    const-string v3, "MODIFY_CONST"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/mozilla/javascript/ScriptableObject$SlotAccess;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/mozilla/javascript/ScriptableObject$SlotAccess;->MODIFY_CONST:Lorg/mozilla/javascript/ScriptableObject$SlotAccess;

    new-instance v3, Lorg/mozilla/javascript/ScriptableObject$SlotAccess;

    const-string v4, "MODIFY_GETTER_SETTER"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/mozilla/javascript/ScriptableObject$SlotAccess;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/mozilla/javascript/ScriptableObject$SlotAccess;->MODIFY_GETTER_SETTER:Lorg/mozilla/javascript/ScriptableObject$SlotAccess;

    new-instance v4, Lorg/mozilla/javascript/ScriptableObject$SlotAccess;

    const-string v5, "CONVERT_ACCESSOR_TO_DATA"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lorg/mozilla/javascript/ScriptableObject$SlotAccess;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/mozilla/javascript/ScriptableObject$SlotAccess;->CONVERT_ACCESSOR_TO_DATA:Lorg/mozilla/javascript/ScriptableObject$SlotAccess;

    filled-new-array {v0, v1, v2, v3, v4}, [Lorg/mozilla/javascript/ScriptableObject$SlotAccess;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/ScriptableObject$SlotAccess;->b:[Lorg/mozilla/javascript/ScriptableObject$SlotAccess;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/mozilla/javascript/ScriptableObject$SlotAccess;
    .locals 1

    const-class v0, Lorg/mozilla/javascript/ScriptableObject$SlotAccess;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/mozilla/javascript/ScriptableObject$SlotAccess;

    return-object p0
.end method

.method public static values()[Lorg/mozilla/javascript/ScriptableObject$SlotAccess;
    .locals 1

    sget-object v0, Lorg/mozilla/javascript/ScriptableObject$SlotAccess;->b:[Lorg/mozilla/javascript/ScriptableObject$SlotAccess;

    invoke-virtual {v0}, [Lorg/mozilla/javascript/ScriptableObject$SlotAccess;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mozilla/javascript/ScriptableObject$SlotAccess;

    return-object v0
.end method
