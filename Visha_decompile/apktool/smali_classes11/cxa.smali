.class public final synthetic Lcxa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/api/dragdrop/TranDragDropManager$DrawShadowCallback;


# instance fields
.field public final synthetic a:Lexa$a;


# direct methods
.method public synthetic constructor <init>(Lexa$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcxa;->a:Lexa$a;

    return-void
.end method


# virtual methods
.method public final onUpdateDrawShadow(Ljava/lang/String;I)V
    .locals 0

    iget-object p0, p0, Lcxa;->a:Lexa$a;

    invoke-static {p0, p1, p2}, Lexa$a;->b(Lexa$a;Ljava/lang/String;I)V

    return-void
.end method
