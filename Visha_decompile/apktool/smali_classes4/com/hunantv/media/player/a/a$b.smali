.class public final enum Lcom/hunantv/media/player/a/a$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/player/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hunantv/media/player/a/a$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/hunantv/media/player/a/a$b;

.field public static final enum b:Lcom/hunantv/media/player/a/a$b;

.field private static final synthetic c:[Lcom/hunantv/media/player/a/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/hunantv/media/player/a/a$b;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hunantv/media/player/a/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hunantv/media/player/a/a$b;->a:Lcom/hunantv/media/player/a/a$b;

    new-instance v1, Lcom/hunantv/media/player/a/a$b;

    const-string v2, "FREE_HTTP_DNS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/hunantv/media/player/a/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hunantv/media/player/a/a$b;->b:Lcom/hunantv/media/player/a/a$b;

    filled-new-array {v0, v1}, [Lcom/hunantv/media/player/a/a$b;

    move-result-object v0

    sput-object v0, Lcom/hunantv/media/player/a/a$b;->c:[Lcom/hunantv/media/player/a/a$b;

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

.method public static valueOf(Ljava/lang/String;)Lcom/hunantv/media/player/a/a$b;
    .locals 1

    const-class v0, Lcom/hunantv/media/player/a/a$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hunantv/media/player/a/a$b;

    return-object p0
.end method

.method public static values()[Lcom/hunantv/media/player/a/a$b;
    .locals 1

    sget-object v0, Lcom/hunantv/media/player/a/a$b;->c:[Lcom/hunantv/media/player/a/a$b;

    invoke-virtual {v0}, [Lcom/hunantv/media/player/a/a$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hunantv/media/player/a/a$b;

    return-object v0
.end method
