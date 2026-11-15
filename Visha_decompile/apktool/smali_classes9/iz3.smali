.class public final synthetic Liz3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzf1;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liz3;->b:Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;

    iput p2, p0, Liz3;->c:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Liz3;->b:Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;

    iget p0, p0, Liz3;->c:I

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p0, p1}, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->b(Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;ILjava/util/List;)V

    return-void
.end method
