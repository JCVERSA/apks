.class public Lcom/transsion/tools/fragments/SkinsPreviewFragment$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tools/fragments/SkinsPreviewFragment;->j0(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/transsion/tools/fragments/SkinsPreviewFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/tools/fragments/SkinsPreviewFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment$d;->c:Lcom/transsion/tools/fragments/SkinsPreviewFragment;

    iput-object p2, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment$d;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lokhttp3/ResponseBody;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment$d;->c:Lcom/transsion/tools/fragments/SkinsPreviewFragment;

    invoke-static {v0}, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->V(Lcom/transsion/tools/fragments/SkinsPreviewFragment;)Lt03;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment$d;->b:Ljava/lang/String;

    invoke-virtual {v0, p1, p0}, Lt03;->a(Lokhttp3/ResponseBody;Ljava/lang/String;)V

    return-void
.end method

.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment$d;->c:Lcom/transsion/tools/fragments/SkinsPreviewFragment;

    invoke-static {p1}, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->V(Lcom/transsion/tools/fragments/SkinsPreviewFragment;)Lt03;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment$d;->b:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lt03;->b(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    sget p0, Lcom/transsion/tools/R$string;->network_error:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lokhttp3/ResponseBody;

    invoke-virtual {p0, p1}, Lcom/transsion/tools/fragments/SkinsPreviewFragment$d;->a(Lokhttp3/ResponseBody;)V

    return-void
.end method

.method public onSubscribe(Lrc2;)V
    .locals 0

    return-void
.end method
