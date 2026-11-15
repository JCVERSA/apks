.class public final Lcom/cloud/hisavana/protocol/okhttptransport/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lys8;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/protocol/okhttptransport/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/protocol/okhttptransport/a$c$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/hisavana/protocol/okhttptransport/a$c;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public a(Lokhttp3/RequestBody;I)Lorg/chromium/net/UploadDataProvider;
    .locals 8

    new-instance v7, Lcom/cloud/hisavana/protocol/okhttptransport/a$c$a;

    new-instance v2, Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker;

    invoke-direct {v2}, Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker;-><init>()V

    iget-object v3, p0, Lcom/cloud/hisavana/protocol/okhttptransport/a$c;->a:Ljava/util/concurrent/ExecutorService;

    int-to-long v4, p2

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/cloud/hisavana/protocol/okhttptransport/a$c$a;-><init>(Lokhttp3/RequestBody;Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker;Ljava/util/concurrent/ExecutorService;JLcom/cloud/hisavana/protocol/okhttptransport/a$a;)V

    return-object v7
.end method
