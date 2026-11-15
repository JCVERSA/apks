.class Lcom/transsion/compressor/image/h$a$a;
.super Lcom/transsion/compressor/image/c;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/compressor/image/h$a;->l(Ljava/lang/String;)Lcom/transsion/compressor/image/h$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/transsion/compressor/image/h$a;


# direct methods
.method constructor <init>(Lcom/transsion/compressor/image/h$a;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/compressor/image/h$a$a;->c:Lcom/transsion/compressor/image/h$a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/compressor/image/h$a$a;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/transsion/compressor/image/c;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()Ljava/io/InputStream;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/FileInputStream;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/compressor/image/h$a$a;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/compressor/image/h$a$a;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
