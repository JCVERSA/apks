.class public final enum Lcom/transsion/http/request/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/http/request/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/transsion/http/request/a;

.field public static final enum b:Lcom/transsion/http/request/a;

.field public static final enum c:Lcom/transsion/http/request/a;


# instance fields
.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/transsion/http/request/a;

    const/4 v1, 0x0

    const-string v2, "application/x-www-form-urlencoded"

    const-string v3, "FORM"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/http/request/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/http/request/a;->a:Lcom/transsion/http/request/a;

    new-instance v0, Lcom/transsion/http/request/a;

    const/4 v1, 0x1

    const-string v2, "application/json"

    const-string v3, "JSON"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/http/request/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/http/request/a;->b:Lcom/transsion/http/request/a;

    new-instance v0, Lcom/transsion/http/request/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "multipart/form-data;boundary=--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FILE"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lcom/transsion/http/request/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/http/request/a;->c:Lcom/transsion/http/request/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/transsion/http/request/a;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/http/request/a;->d:Ljava/lang/String;

    return-object p0
.end method
