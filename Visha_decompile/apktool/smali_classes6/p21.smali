.class public final synthetic Lp21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljn9;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp21;->a:Ljava/lang/String;

    iput-object p2, p0, Lp21;->b:Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;

    return-void
.end method


# virtual methods
.method public final subscribe(Lzm9;)V
    .locals 1

    iget-object v0, p0, Lp21;->a:Ljava/lang/String;

    iget-object p0, p0, Lp21;->b:Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;

    invoke-static {v0, p0, p1}, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;->q(Ljava/lang/String;Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;Lzm9;)V

    return-void
.end method
