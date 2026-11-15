.class public final synthetic Lmbc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Lcom/transsion/tools/covert/fragments/VideosSelectFragment;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/tools/covert/fragments/VideosSelectFragment;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmbc;->b:Lcom/transsion/tools/covert/fragments/VideosSelectFragment;

    iput-boolean p2, p0, Lmbc;->c:Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lmbc;->b:Lcom/transsion/tools/covert/fragments/VideosSelectFragment;

    iget-boolean p0, p0, Lmbc;->c:Z

    check-cast p1, Lcom/transsion/tools/covert/fragments/VideosSelectFragment;

    invoke-static {v0, p0, p1}, Lcom/transsion/tools/covert/fragments/VideosSelectFragment;->D1(Lcom/transsion/tools/covert/fragments/VideosSelectFragment;ZLcom/transsion/tools/covert/fragments/VideosSelectFragment;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method
