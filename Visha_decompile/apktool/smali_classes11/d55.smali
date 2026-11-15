.class public final synthetic Ld55;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/onlinevideo/mangotv/IntroDialog;

.field public final synthetic c:Lcom/transsion/onlinevideo/adapter/TagAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/onlinevideo/mangotv/IntroDialog;Lcom/transsion/onlinevideo/adapter/TagAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld55;->b:Lcom/transsion/onlinevideo/mangotv/IntroDialog;

    iput-object p2, p0, Ld55;->c:Lcom/transsion/onlinevideo/adapter/TagAdapter;

    return-void
.end method


# virtual methods
.method public final onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Ld55;->b:Lcom/transsion/onlinevideo/mangotv/IntroDialog;

    iget-object p0, p0, Ld55;->c:Lcom/transsion/onlinevideo/adapter/TagAdapter;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/transsion/onlinevideo/mangotv/IntroDialog;->E(Lcom/transsion/onlinevideo/mangotv/IntroDialog;Lcom/transsion/onlinevideo/adapter/TagAdapter;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method
