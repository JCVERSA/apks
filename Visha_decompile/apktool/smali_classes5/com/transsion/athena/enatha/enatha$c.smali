.class public Lcom/transsion/athena/enatha/enatha$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/gslb/GslbSdk$InitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/athena/enatha/enatha;->p(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:I

.field public final synthetic c:Lcom/transsion/athena/config/data/model/athena;

.field public final synthetic d:Lcom/transsion/athena/enatha/enatha;


# direct methods
.method public constructor <init>(Lcom/transsion/athena/enatha/enatha;Ljava/lang/String;ILcom/transsion/athena/config/data/model/athena;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/athena/enatha/enatha$c;->d:Lcom/transsion/athena/enatha/enatha;

    iput-object p2, p0, Lcom/transsion/athena/enatha/enatha$c;->a:Ljava/lang/String;

    iput p3, p0, Lcom/transsion/athena/enatha/enatha$c;->b:I

    iput-object p4, p0, Lcom/transsion/athena/enatha/enatha$c;->c:Lcom/transsion/athena/config/data/model/athena;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitFail()V
    .locals 0

    return-void
.end method

.method public onInitSuccess(Ljava/util/Map;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/athena/enatha/enatha$c;->d:Lcom/transsion/athena/enatha/enatha;

    iget-object v1, p0, Lcom/transsion/athena/enatha/enatha$c;->a:Ljava/lang/String;

    iget v2, p0, Lcom/transsion/athena/enatha/enatha$c;->b:I

    iget-object p0, p0, Lcom/transsion/athena/enatha/enatha$c;->c:Lcom/transsion/athena/config/data/model/athena;

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {v0, v1, v2, p0, p1}, Lcom/transsion/athena/enatha/enatha;->z(Lcom/transsion/athena/enatha/enatha;Ljava/lang/String;ILcom/transsion/athena/config/data/model/athena;Ljava/lang/String;)V

    return-void
.end method
