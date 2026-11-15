.class public Lcom/transsion/athena/enatha/enatha$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/gslb/GslbSdk$InitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/athena/enatha/enatha;->R()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/athena/enatha/enatha;


# direct methods
.method public constructor <init>(Lcom/transsion/athena/enatha/enatha;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/athena/enatha/enatha$b;->a:Lcom/transsion/athena/enatha/enatha;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitFail()V
    .locals 0

    return-void
.end method

.method public onInitSuccess(Ljava/util/Map;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/athena/enatha/enatha$b;->a:Lcom/transsion/athena/enatha/enatha;

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p0, p1}, Lcom/transsion/athena/enatha/enatha;->n(Lcom/transsion/athena/enatha/enatha;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
