.class public Lcom/transsion/liblan/stubs/StubTranLibLANFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/liblan/interfaces/ITranLibLANFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLibLanFromContext(Landroid/content/Context;)Lcom/transsion/liblan/interfaces/ITranLibLAN;
    .locals 0

    new-instance p0, Lcom/transsion/liblan/stubs/StubTranLibLAN;

    invoke-direct {p0, p1}, Lcom/transsion/liblan/stubs/StubTranLibLAN;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public getLibLanFromOptions(Landroid/content/Context;Ljava/util/List;)Lcom/transsion/liblan/interfaces/ITranLibLAN;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/transsion/liblan/interfaces/ITranLibLAN;"
        }
    .end annotation

    new-instance p0, Lcom/transsion/liblan/stubs/StubTranLibLAN;

    invoke-direct {p0, p1, p2}, Lcom/transsion/liblan/stubs/StubTranLibLAN;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-object p0
.end method
