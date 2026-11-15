.class public final synthetic Lh41;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le74;


# instance fields
.field public final synthetic b:Lcom/transsion/cloud/fragment/CloudUploadFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/cloud/fragment/CloudUploadFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh41;->b:Lcom/transsion/cloud/fragment/CloudUploadFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lh41;->b:Lcom/transsion/cloud/fragment/CloudUploadFragment;

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/transsion/cloud/fragment/CloudUploadFragment;->t0(Lcom/transsion/cloud/fragment/CloudUploadFragment;Ljava/util/List;)Lzfb;

    move-result-object p0

    return-object p0
.end method
