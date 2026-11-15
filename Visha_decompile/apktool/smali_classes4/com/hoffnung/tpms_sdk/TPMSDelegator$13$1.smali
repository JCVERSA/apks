.class final Lcom/hoffnung/tpms_sdk/TPMSDelegator$13$1;
.super Lcom/hoffnung/a/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hoffnung/tpms_sdk/TPMSDelegator$13;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hoffnung/tpms_sdk/TPMSDelegator$13;


# direct methods
.method public constructor <init>(Lcom/hoffnung/tpms_sdk/TPMSDelegator$13;)V
    .locals 0

    iput-object p1, p0, Lcom/hoffnung/tpms_sdk/TPMSDelegator$13$1;->a:Lcom/hoffnung/tpms_sdk/TPMSDelegator$13;

    invoke-direct {p0}, Lcom/hoffnung/a/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hoffnung/tpms_sdk/TPMSDelegator$13$1;->a:Lcom/hoffnung/tpms_sdk/TPMSDelegator$13;

    iget-object p0, p0, Lcom/hoffnung/tpms_sdk/TPMSDelegator$13;->d:Lcom/hoffnung/tpms_sdk/TPMSDelegator$a;

    invoke-interface {p0}, Lcom/hoffnung/tpms_sdk/TPMSDelegator$a;->onSuccess()V

    return-void
.end method

.method public final a(I)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/hoffnung/tpms_sdk/TPMSDelegator$13$1;->a:Lcom/hoffnung/tpms_sdk/TPMSDelegator$13;

    iget-object p0, p0, Lcom/hoffnung/tpms_sdk/TPMSDelegator$13;->d:Lcom/hoffnung/tpms_sdk/TPMSDelegator$a;

    invoke-interface {p0, p1}, Lcom/hoffnung/tpms_sdk/TPMSDelegator$a;->a(I)V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3
    return-void
.end method
