.class Lcom/transsion/athena/enatha/enatha$anateh;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/gslb/GslbSdk$InitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/athena/enatha/enatha;->a(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/transsion/athena/config/data/model/athena;

.field final synthetic d:Lcom/transsion/athena/enatha/enatha;


# direct methods
.method constructor <init>(Lcom/transsion/athena/enatha/enatha;Ljava/lang/String;ILcom/transsion/athena/config/data/model/athena;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/athena/enatha/enatha$anateh;->d:Lcom/transsion/athena/enatha/enatha;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/athena/enatha/enatha$anateh;->a:Ljava/lang/String;

    .line 4
    .line 5
    iput p3, p0, Lcom/transsion/athena/enatha/enatha$anateh;->b:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsion/athena/enatha/enatha$anateh;->c:Lcom/transsion/athena/config/data/model/athena;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onInitFail()V
    .locals 0

    .line 1
    return-void
.end method

.method public onInitSuccess(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transsion/athena/enatha/enatha$anateh;->d:Lcom/transsion/athena/enatha/enatha;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/athena/enatha/enatha$anateh;->a:Ljava/lang/String;

    .line 4
    .line 5
    iget v2, p0, Lcom/transsion/athena/enatha/enatha$anateh;->b:I

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/athena/enatha/enatha$anateh;->c:Lcom/transsion/athena/config/data/model/athena;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const-string p1, ""

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    :goto_0
    invoke-static {v0, v1, v2, v3, p1}, Lcom/transsion/athena/enatha/enatha;->a(Lcom/transsion/athena/enatha/enatha;Ljava/lang/String;ILcom/transsion/athena/config/data/model/athena;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
