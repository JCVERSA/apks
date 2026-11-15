.class public final synthetic Lzs8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lcom/cloud/hisavana/protocol/okhttptransport/a$c$a;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/hisavana/protocol/okhttptransport/a$c$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzs8;->b:Lcom/cloud/hisavana/protocol/okhttptransport/a$c$a;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lzs8;->b:Lcom/cloud/hisavana/protocol/okhttptransport/a$c$a;

    invoke-static {p0}, Lcom/cloud/hisavana/protocol/okhttptransport/a$c$a;->a(Lcom/cloud/hisavana/protocol/okhttptransport/a$c$a;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method
