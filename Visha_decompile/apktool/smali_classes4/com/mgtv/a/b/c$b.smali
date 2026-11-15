.class public final enum Lcom/mgtv/a/b/c$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgtv/a/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mgtv/a/b/c$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mgtv/a/b/c$b;

.field public static final enum Closed:Lcom/mgtv/a/b/c$b;

.field public static final enum Dead:Lcom/mgtv/a/b/c$b;

.field public static final enum Idle:Lcom/mgtv/a/b/c$b;

.field public static final enum hided:Lcom/mgtv/a/b/c$b;

.field public static final enum showing:Lcom/mgtv/a/b/c$b;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/mgtv/a/b/c$b;

    const-string v1, "Idle"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mgtv/a/b/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mgtv/a/b/c$b;->Idle:Lcom/mgtv/a/b/c$b;

    new-instance v1, Lcom/mgtv/a/b/c$b;

    const-string v2, "showing"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/mgtv/a/b/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/mgtv/a/b/c$b;->showing:Lcom/mgtv/a/b/c$b;

    new-instance v2, Lcom/mgtv/a/b/c$b;

    const-string v3, "Closed"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/mgtv/a/b/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/mgtv/a/b/c$b;->Closed:Lcom/mgtv/a/b/c$b;

    new-instance v3, Lcom/mgtv/a/b/c$b;

    const-string v4, "Dead"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/mgtv/a/b/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/mgtv/a/b/c$b;->Dead:Lcom/mgtv/a/b/c$b;

    new-instance v4, Lcom/mgtv/a/b/c$b;

    const-string v5, "hided"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/mgtv/a/b/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/mgtv/a/b/c$b;->hided:Lcom/mgtv/a/b/c$b;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/mgtv/a/b/c$b;

    move-result-object v0

    sput-object v0, Lcom/mgtv/a/b/c$b;->$VALUES:[Lcom/mgtv/a/b/c$b;

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

.method public static valueOf(Ljava/lang/String;)Lcom/mgtv/a/b/c$b;
    .locals 1

    const-class v0, Lcom/mgtv/a/b/c$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mgtv/a/b/c$b;

    return-object p0
.end method

.method public static values()[Lcom/mgtv/a/b/c$b;
    .locals 1

    sget-object v0, Lcom/mgtv/a/b/c$b;->$VALUES:[Lcom/mgtv/a/b/c$b;

    invoke-virtual {v0}, [Lcom/mgtv/a/b/c$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mgtv/a/b/c$b;

    return-object v0
.end method
