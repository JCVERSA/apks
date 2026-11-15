.class public Lcom/hunantv/imgo/report/Sid;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static instance:Lcom/hunantv/imgo/report/Sid; = null

.field private static final serialVersionUID:J = 0x5725f530e870bdadL


# instance fields
.field private sid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/hunantv/imgo/report/Sid;
    .locals 1

    sget-object v0, Lcom/hunantv/imgo/report/Sid;->instance:Lcom/hunantv/imgo/report/Sid;

    if-nez v0, :cond_0

    new-instance v0, Lcom/hunantv/imgo/report/Sid;

    invoke-direct {v0}, Lcom/hunantv/imgo/report/Sid;-><init>()V

    sput-object v0, Lcom/hunantv/imgo/report/Sid;->instance:Lcom/hunantv/imgo/report/Sid;

    invoke-virtual {v0}, Lcom/hunantv/imgo/report/Sid;->rebuild()V

    :cond_0
    sget-object v0, Lcom/hunantv/imgo/report/Sid;->instance:Lcom/hunantv/imgo/report/Sid;

    return-object v0
.end method

.method private getSId()Ljava/lang/String;
    .locals 2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public get()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/report/Sid;->sid:Ljava/lang/String;

    return-object p0
.end method

.method public rebuild()V
    .locals 1

    invoke-direct {p0}, Lcom/hunantv/imgo/report/Sid;->getSId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/imgo/report/Sid;->sid:Ljava/lang/String;

    return-void
.end method
