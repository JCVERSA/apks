.class public final enum Lcom/transsion/aicore/nexusflow/b$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/aicore/nexusflow/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/aicore/nexusflow/b$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic a:[Lcom/transsion/aicore/nexusflow/b$b;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/transsion/aicore/nexusflow/b$b;

    const-string v1, "START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/aicore/nexusflow/b$b;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/aicore/nexusflow/b$b;

    const-string v2, "COMPONENT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/transsion/aicore/nexusflow/b$b;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lcom/transsion/aicore/nexusflow/b$b;

    const-string v3, "COMPLETE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/transsion/aicore/nexusflow/b$b;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lcom/transsion/aicore/nexusflow/b$b;

    const-string v4, "ERROR"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/transsion/aicore/nexusflow/b$b;-><init>(Ljava/lang/String;I)V

    new-instance v4, Lcom/transsion/aicore/nexusflow/b$b;

    const-string v5, "COMPONENT_TRICKLE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/transsion/aicore/nexusflow/b$b;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/transsion/aicore/nexusflow/b$b;

    move-result-object v0

    sput-object v0, Lcom/transsion/aicore/nexusflow/b$b;->a:[Lcom/transsion/aicore/nexusflow/b$b;

    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Ldb3;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/aicore/nexusflow/b$b;
    .locals 1

    const-class v0, Lcom/transsion/aicore/nexusflow/b$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/aicore/nexusflow/b$b;

    return-object p0
.end method

.method public static values()[Lcom/transsion/aicore/nexusflow/b$b;
    .locals 1

    sget-object v0, Lcom/transsion/aicore/nexusflow/b$b;->a:[Lcom/transsion/aicore/nexusflow/b$b;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/aicore/nexusflow/b$b;

    return-object v0
.end method
