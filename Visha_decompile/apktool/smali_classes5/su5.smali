.class public final synthetic Lsu5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Lcom/transsion/audio/lyrics/LrcSearcher;

.field public final synthetic c:Lcom/transsion/audio/lyrics/LrcSearcher$i;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/lyrics/LrcSearcher;Lcom/transsion/audio/lyrics/LrcSearcher$i;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsu5;->b:Lcom/transsion/audio/lyrics/LrcSearcher;

    iput-object p2, p0, Lsu5;->c:Lcom/transsion/audio/lyrics/LrcSearcher$i;

    iput-boolean p3, p0, Lsu5;->d:Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lsu5;->b:Lcom/transsion/audio/lyrics/LrcSearcher;

    iget-object v1, p0, Lsu5;->c:Lcom/transsion/audio/lyrics/LrcSearcher$i;

    iget-boolean p0, p0, Lsu5;->d:Z

    check-cast p1, Lcom/transsion/retrofit/reponse/BaseResponse;

    invoke-static {v0, v1, p0, p1}, Lcom/transsion/audio/lyrics/LrcSearcher;->a(Lcom/transsion/audio/lyrics/LrcSearcher;Lcom/transsion/audio/lyrics/LrcSearcher$i;ZLcom/transsion/retrofit/reponse/BaseResponse;)Lld7;

    move-result-object p0

    return-object p0
.end method
