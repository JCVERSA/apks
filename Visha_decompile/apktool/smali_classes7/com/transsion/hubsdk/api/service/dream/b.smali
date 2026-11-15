.class public final synthetic Lcom/transsion/hubsdk/api/service/dream/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/hubsdk/api/service/dream/TranDreamService$ITranDreamService;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/api/service/dream/TranDreamService$ITranDreamService;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/service/dream/b;->b:Lcom/transsion/hubsdk/api/service/dream/TranDreamService$ITranDreamService;

    iput p2, p0, Lcom/transsion/hubsdk/api/service/dream/b;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/hubsdk/api/service/dream/b;->b:Lcom/transsion/hubsdk/api/service/dream/TranDreamService$ITranDreamService;

    iget p0, p0, Lcom/transsion/hubsdk/api/service/dream/b;->c:I

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/api/service/dream/TranDreamService$1;->a(Lcom/transsion/hubsdk/api/service/dream/TranDreamService$ITranDreamService;I)V

    return-void
.end method
