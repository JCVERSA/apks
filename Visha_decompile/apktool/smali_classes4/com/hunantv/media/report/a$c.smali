.class final enum Lcom/hunantv/media/report/a$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/report/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hunantv/media/report/a$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/hunantv/media/report/a$c;

.field public static final enum b:Lcom/hunantv/media/report/a$c;

.field public static final enum c:Lcom/hunantv/media/report/a$c;

.field public static final enum d:Lcom/hunantv/media/report/a$c;

.field public static final enum e:Lcom/hunantv/media/report/a$c;

.field private static final synthetic g:[Lcom/hunantv/media/report/a$c;


# instance fields
.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/hunantv/media/report/a$c;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/hunantv/media/report/a$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hunantv/media/report/a$c;->a:Lcom/hunantv/media/report/a$c;

    new-instance v1, Lcom/hunantv/media/report/a$c;

    const-string v2, "PV"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/hunantv/media/report/a$c;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/hunantv/media/report/a$c;->b:Lcom/hunantv/media/report/a$c;

    new-instance v2, Lcom/hunantv/media/report/a$c;

    const-string v3, "VV"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/hunantv/media/report/a$c;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/hunantv/media/report/a$c;->c:Lcom/hunantv/media/report/a$c;

    new-instance v3, Lcom/hunantv/media/report/a$c;

    const-string v4, "ERR"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/hunantv/media/report/a$c;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/hunantv/media/report/a$c;->d:Lcom/hunantv/media/report/a$c;

    new-instance v4, Lcom/hunantv/media/report/a$c;

    const-string v5, "END"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/hunantv/media/report/a$c;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/hunantv/media/report/a$c;->e:Lcom/hunantv/media/report/a$c;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/hunantv/media/report/a$c;

    move-result-object v0

    sput-object v0, Lcom/hunantv/media/report/a$c;->g:[Lcom/hunantv/media/report/a$c;

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

    iput p3, p0, Lcom/hunantv/media/report/a$c;->f:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hunantv/media/report/a$c;
    .locals 1

    const-class v0, Lcom/hunantv/media/report/a$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hunantv/media/report/a$c;

    return-object p0
.end method

.method public static values()[Lcom/hunantv/media/report/a$c;
    .locals 1

    sget-object v0, Lcom/hunantv/media/report/a$c;->g:[Lcom/hunantv/media/report/a$c;

    invoke-virtual {v0}, [Lcom/hunantv/media/report/a$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hunantv/media/report/a$c;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/report/a$c;->f:I

    return p0
.end method
