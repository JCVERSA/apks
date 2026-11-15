.class public Lcom/cloud/hisavana/sdk/U0$b;
.super Lcom/cloud/hisavana/net/impl/StringCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/U0;->R(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZILjava/lang/String;)V
    .locals 0

    iput p2, p0, Lcom/cloud/hisavana/sdk/U0$b;->c:I

    iput-object p3, p0, Lcom/cloud/hisavana/sdk/U0$b;->d:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/net/impl/StringCallback;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public x(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    invoke-static {}, Likd;->b()Likd;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sumbit form failure----->code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "  message: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "ssp"

    invoke-virtual {p3, p2, p1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lcom/cloud/hisavana/sdk/U0$b;->c:I

    add-int/lit8 p1, p1, 0x1

    const/4 p2, 0x3

    if-ge p1, p2, :cond_0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/U0$b;->d:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/U0;->R(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public y(ILjava/lang/String;)V
    .locals 1

    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "sumbit form success----->"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "ssp"

    invoke-virtual {p0, p2, p1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
