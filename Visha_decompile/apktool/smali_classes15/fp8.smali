.class public final synthetic Lfp8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfp8;->b:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lfp8;->b:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    invoke-static {p0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->a(Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;)V

    return-void
.end method
