.class public Lcom/transsion/playercommon/widgets/SearchFileView$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/widgets/SearchFileView;->initSearchView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/widgets/SearchFileView;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/widgets/SearchFileView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/SearchFileView$c;->b:Lcom/transsion/playercommon/widgets/SearchFileView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/SearchFileView$c;->b:Lcom/transsion/playercommon/widgets/SearchFileView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/transsion/playercommon/widgets/SearchFileView;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/SearchFileView$c;->b:Lcom/transsion/playercommon/widgets/SearchFileView;

    invoke-static {p1}, Lcom/transsion/playercommon/widgets/SearchFileView;->l(Lcom/transsion/playercommon/widgets/SearchFileView;)Lcom/transsion/playercommon/widgets/SearchFileView$f;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/SearchFileView$c;->b:Lcom/transsion/playercommon/widgets/SearchFileView;

    invoke-static {p0}, Lcom/transsion/playercommon/widgets/SearchFileView;->l(Lcom/transsion/playercommon/widgets/SearchFileView;)Lcom/transsion/playercommon/widgets/SearchFileView$f;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/playercommon/widgets/SearchFileView$f;->b()V

    :cond_0
    return-void
.end method
