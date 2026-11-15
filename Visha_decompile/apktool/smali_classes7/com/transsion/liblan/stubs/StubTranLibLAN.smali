.class public Lcom/transsion/liblan/stubs/StubTranLibLAN;
.super Lcom/transsion/liblan/stubs/StubTranLANObject;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/liblan/interfaces/ITranLibLAN;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/liblan/stubs/StubTranLANObject<",
        "Lcom/transsion/liblan/interfaces/ITranLibLAN$EventTran;",
        ">;",
        "Lcom/transsion/liblan/interfaces/ITranLibLAN;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/transsion/liblan/stubs/StubTranLibLAN;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/transsion/liblan/stubs/StubTranLANObject;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/transsion/liblan/stubs/StubTranLibLAN;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getAppContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/liblan/stubs/StubTranLibLAN;->mContext:Landroid/content/Context;

    return-object p0
.end method
