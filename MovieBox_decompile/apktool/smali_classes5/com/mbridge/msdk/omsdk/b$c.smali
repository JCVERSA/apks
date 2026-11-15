.class Lcom/mbridge/msdk/omsdk/b$c;
.super Lcom/mbridge/msdk/foundation/same/net/handler/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/omsdk/b;->c(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/omsdk/b$c;->b:Landroid/content/Context;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/mbridge/msdk/foundation/same/net/handler/a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "fetch OMJSH5Content failed, errorCode = "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v0, "OMSDK"

    .line 19
    .line 20
    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    new-instance v1, Lcom/mbridge/msdk/foundation/same/report/h;

    .line 24
    .line 25
    iget-object p1, p0, Lcom/mbridge/msdk/omsdk/b$c;->b:Landroid/content/Context;

    .line 26
    .line 27
    invoke-direct {v1, p1}, Lcom/mbridge/msdk/foundation/same/report/h;-><init>(Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    const-string v5, ""

    .line 31
    .line 32
    const-string v6, "fetch OM H5 failed, request failed"

    .line 33
    .line 34
    const-string v2, ""

    .line 35
    .line 36
    const-string v3, ""

    .line 37
    .line 38
    const-string v4, ""

    .line 39
    .line 40
    invoke-virtual/range {v1 .. v6}, Lcom/mbridge/msdk/foundation/same/report/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p1, Lcom/mbridge/msdk/MBridgeConstans;->OMID_JS_H5_CONTENT:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/mbridge/msdk/omsdk/b;->c(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
