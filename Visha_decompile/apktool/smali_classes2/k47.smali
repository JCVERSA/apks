.class public final synthetic Lk47;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cloud/hisavana/sdk/l$e;


# instance fields
.field public final synthetic a:Lcom/cloud/hisavana/sdk/l;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/hisavana/sdk/l;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk47;->a:Lcom/cloud/hisavana/sdk/l;

    iput-object p2, p0, Lk47;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lk47;->a:Lcom/cloud/hisavana/sdk/l;

    iget-object p0, p0, Lk47;->b:Ljava/util/List;

    invoke-static {v0, p0}, Lcom/cloud/hisavana/sdk/l;->a(Lcom/cloud/hisavana/sdk/l;Ljava/util/List;)V

    return-void
.end method
