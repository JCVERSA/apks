.class public final synthetic Lu41;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu74;


# instance fields
.field public final synthetic b:Lcom/transsion/cloud/viewmodel/CloudViewModel;

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/cloud/viewmodel/CloudViewModel;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu41;->b:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    iput p2, p0, Lu41;->c:I

    iput p3, p0, Lu41;->d:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lu41;->b:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    iget v1, p0, Lu41;->c:I

    iget v2, p0, Lu41;->d:I

    move-object v3, p1

    check-cast v3, Ljava/util/List;

    move-object v4, p2

    check-cast v4, Ljava/util/List;

    move-object v5, p3

    check-cast v5, Ljava/util/List;

    invoke-static/range {v0 .. v5}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->a(Lcom/transsion/cloud/viewmodel/CloudViewModel;IILjava/util/List;Ljava/util/List;Ljava/util/List;)Lzfb;

    move-result-object p0

    return-object p0
.end method
