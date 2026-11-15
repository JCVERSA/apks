.class public final synthetic Ljp9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzf1;


# instance fields
.field public final synthetic b:Lcom/transsion/tools/model/SkinsViewModel;

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/tools/model/SkinsViewModel;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljp9;->b:Lcom/transsion/tools/model/SkinsViewModel;

    iput p2, p0, Ljp9;->c:I

    iput p3, p0, Ljp9;->d:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Ljp9;->b:Lcom/transsion/tools/model/SkinsViewModel;

    iget v1, p0, Ljp9;->c:I

    iget p0, p0, Ljp9;->d:I

    check-cast p1, Ljava/util/List;

    invoke-static {v0, v1, p0, p1}, Lcom/transsion/tools/model/SkinsViewModel;->a(Lcom/transsion/tools/model/SkinsViewModel;IILjava/util/List;)V

    return-void
.end method
