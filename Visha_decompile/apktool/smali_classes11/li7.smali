.class public final synthetic Lli7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lli7;->a:Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lli7;->a:Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->v0(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;Ljava/util/List;)V

    return-void
.end method
